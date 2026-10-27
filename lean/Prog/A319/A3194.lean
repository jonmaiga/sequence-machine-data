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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A319401: Number of partitions of n into exactly eight positive Fibonacci numbers.

The programs for A319401, there is no canonical definition to state claims against.
-/

/-! ## A319401.P1063747161899545493

`A319394(∑[A160755(n+1)])`
-/

namespace A319401.P1063747161899545493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319401.P1063747161899545493

/-!
# A319403: Number of partitions of n into exactly ten positive Fibonacci numbers.

The programs for A319403, there is no canonical definition to state claims against.
-/

/-! ## A319403.P15200242145140277297

`∑[(A029220(n)-A029240(n))%A146193(n+1)]`
-/

namespace A319403.P15200242145140277297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029220 n - A029240 n) (A146193 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319403.P15200242145140277297

/-!
# A319404: a(n) is the period of the periodic k-sequence q_k=lcm(k+1,k+2,...,k+n)/(n*binomial(k+n,n)).

The programs for A319404, there is no canonical definition to state claims against.
-/

/-! ## A319404.P3206119380644492997

`gcd(A056606(n)^4, A003418(n))`
-/

namespace A319404.P3206119380644492997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056606 n ^ 4) (A003418 n)

end

end A319404.P3206119380644492997

/-! ## A319404.P8948087320084640242

`gcd(A002944(n+1)^4, A067391(n+1))`
-/

namespace A319404.P8948087320084640242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1) ^ 4) (A067391 (n + 1))

end

end A319404.P8948087320084640242

/-! ## A319404.P13173559860165362168

`A002944(n+1)*A051119(A256017(n+1))`
-/

namespace A319404.P13173559860165362168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A051119 (A256017 (n + 1)).toNat

end

end A319404.P13173559860165362168

/-! ## A319404.P13998226800948073952

`gcd(A001142(n), A003418(n))`
-/

namespace A319404.P13998226800948073952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001142 n) (A003418 n)

end

end A319404.P13998226800948073952

/-! ## A319404.P3061221425394890549

`gcd(A208650(n+1)/(n+1), Δ[A236856(n)])`
-/

namespace A319404.P3061221425394890549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A208650 (n + 1) : ℚ) / (n + 1 : ℚ))) (f1 (n + 1) - f1 n)

end

end A319404.P3061221425394890549

/-!
# A319405: Column 3 of triangle A318945.

The programs for A319405, there is no canonical definition to state claims against.
-/

/-! ## A319405.P6718995513049487087

`∑[∑[A307230(A233139(n))]]`
-/

namespace A319405.P6718995513049487087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307230 (A233139 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319405.P6718995513049487087

/-! ## A319405.P17036484298985408637

`A085810(n+1)-A064455(A077846(n))`
-/

namespace A319405.P17036484298985408637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) - A064455 (A077846 n).toNat

end

end A319405.P17036484298985408637

/-! ## A319405.P12244278420397167799

`A065744(A302242(n+2)+A259792(n))`
-/

namespace A319405.P12244278420397167799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A302242 (n + 2) + A259792 n).toNat

end

end A319405.P12244278420397167799

/-! ## A319405.P17288490275071682545

`A334273(or(A139398(n), A283634(n+3)))`
-/

namespace A319405.P17288490275071682545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (Int.lor (A139398 n) (A283634 (n + 3))).toNat

end

end A319405.P17288490275071682545

/-! ## A319405.P13872715984842130738

`A066888(floor(A318270(n)/A112054(n+3)))`
-/

namespace A319405.P13872715984842130738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 ⌊(A318270 n : ℚ) / (A112054 (n + 3) : ℚ)⌋.toNat

end

end A319405.P13872715984842130738

/-!
# A319406: Write n-th prime in binary, then increase each run of 0's by one 0, and increase each run of 1's by one 1. a(n) is the decimal equivalent of the result.

The programs for A319406, there is no canonical definition to state claims against.
-/

/-! ## A319406.P17009546061530624596

`A319407(A000040(n+1))+A000040(n+1)`
-/

namespace A319406.P17009546061530624596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (A000040 (n + 1)).toNat + A000040 (n + 1)

end

end A319406.P17009546061530624596

/-! ## A319406.P12482705469277420223

`A175046(p?[comp[n²]])`
-/

namespace A319406.P12482705469277420223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A319406.P12482705469277420223

/-! ## A319406.P5209308296018541139

`A175046(A000040(n+1))`
-/

namespace A319406.P5209308296018541139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A000040 (n + 1)).toNat

end

end A319406.P5209308296018541139

/-! ## A319406.P245336884149717265

`A175046(A008578(n+2))`
-/

namespace A319406.P245336884149717265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A008578 (n + 2)).toNat

end

end A319406.P245336884149717265

/-! ## A319406.P10026518262551783263

`A175046(A182986(n+2))`
-/

namespace A319406.P10026518262551783263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A182986 (n + 2)).toNat

end

end A319406.P10026518262551783263

/-! ## A319406.P7554123558096754897

`A175046(∑[A054541(n+1)])`
-/

namespace A319406.P7554123558096754897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319406.P7554123558096754897

/-! ## A319406.P14803094393439789816

`A175046(record[A006530(n+2)])`
-/

namespace A319406.P14803094393439789816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319406.P14803094393439789816

/-! ## A319406.P14718261274633966355

`A175046(record[A014963(n+2)])`
-/

namespace A319406.P14718261274633966355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319406.P14718261274633966355

/-! ## A319406.P3948781936145534959

`A175046(record[A020639(n+2)])`
-/

namespace A319406.P3948781936145534959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319406.P3948781936145534959

/-! ## A319406.P16784887295241809921

`A175046(A028815(n+1)-1)`
-/

namespace A319406.P16784887295241809921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A028815 (n + 1) - 1).toNat

end

end A319406.P16784887295241809921

/-! ## A319406.P5037705889262462233

`A175046(A095116(n+1)-n)`
-/

namespace A319406.P5037705889262462233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A095116 (n + 1) - (n : ℤ)).toNat

end

end A319406.P5037705889262462233

/-!
# A319407: a(n) = A175046(n)-n.

The programs for A319407, there is no canonical definition to state claims against.
-/

/-! ## A319407.P11128476736316127855

`A175046(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319407.P11128476736316127855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1) - (n + 1 : ℤ)

end

end A319407.P11128476736316127855

/-! ## A319407.P17150496947008900763

`2*A319408(n+1)`
-/

namespace A319407.P17150496947008900763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319408 (n + 1)

end

end A319407.P17150496947008900763

/-! ## A319407.P11515848193335441730

`2*(A320038(n+1)-A110654(n))`
-/

namespace A319407.P11515848193335441730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A320038 (n + 1) - A110654 n)

end

end A319407.P11515848193335441730

/-! ## A319407.P10747023455008992912

`and(A320039(n+1), A320261(n+1))-(n+1)`
-/

namespace A319407.P10747023455008992912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320039 (n + 1)) (A320261 (n + 1)) - (n + 1 : ℤ)

end

end A319407.P10747023455008992912

/-! ## A319407.P4753642641640139320

`or(A320262(n+1), A320263(n+1))-(n+1)`
-/

namespace A319407.P4753642641640139320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320262 (n + 1)) (A320263 (n + 1)) - (n + 1 : ℤ)

end

end A319407.P4753642641640139320

/-! ## A319407.P12540709195362436869

`A319408(A000027(n+1))+A319408(n+1)`
-/

namespace A319407.P12540709195362436869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (A000027 (n + 1)).toNat + A319408 (n + 1)

end

end A319407.P12540709195362436869

/-! ## A319407.P14191279075488328760

`A319408(∑[and(2, n²-1)]+n+1)`
-/

namespace A319407.P14191279075488328760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A319407.P14191279075488328760

/-! ## A319407.P5607430647191272876

`A319408(A014601(n+1))`
-/

namespace A319407.P5607430647191272876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (A014601 (n + 1)).toNat

end

end A319407.P5607430647191272876

/-! ## A319407.P1654318780310700444

`A319408(A154708(n+1))`
-/

namespace A319407.P1654318780310700444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (A154708 (n + 1)).toNat

end

end A319407.P1654318780310700444

/-! ## A319407.P6576327407001981056

`A319408(A053438(n+1)+1)`
-/

namespace A319407.P6576327407001981056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (A053438 (n + 1) + 1).toNat

end

end A319407.P6576327407001981056

/-! ## A319407.P3085915018059242350

`A319408(lt[A319373(n+1)+2, 1])`
-/

namespace A319407.P3085915018059242350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A319407.P3085915018059242350

/-! ## A319407.P136279818759757503

`A319408(lt[A319373(n+1), A319419(n)])`
-/

namespace A319407.P136279818759757503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319407.P136279818759757503

/-! ## A319407.P11493120083254375693

`(A320038(A341522(n))-A341522(n))/2`
-/

namespace A319407.P11493120083254375693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320038 (A341522 n).toNat - A341522 n : ℚ) / 2

end

end A319407.P11493120083254375693

/-! ## A319407.P4374556629339302429

`A175048(A175047(n+1))-(n+1)`
-/

namespace A319407.P4374556629339302429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175048 (A175047 (n + 1)).toNat - (n + 1 : ℤ)

end

end A319407.P4374556629339302429

/-! ## A319407.P9451315495320167867

`filter[A319408(n+2), A354034(#)]`
-/

namespace A319407.P9451315495320167867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A319407.P9451315495320167867

/-! ## A319407.P11923061057680911612

`2*A319409(A320038(n+1))`
-/

namespace A319407.P11923061057680911612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319409 (A320038 (n + 1)).toNat

end

end A319407.P11923061057680911612

/-! ## A319407.P5468820860630882887

`A163617(A320263(n+1))-(n+1)`
-/

namespace A319407.P5468820860630882887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A320263 (n + 1)).toNat - (n + 1 : ℤ)

end

end A319407.P5468820860630882887

/-! ## A319407.P3330831597270133112

`A004277(A319408(n+1))`
-/

namespace A319407.P3330831597270133112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A319408 (n + 1)).toNat

end

end A319407.P3330831597270133112

/-! ## A319407.P16089256286960244594

`A319409(A175046(n+1))`
-/

namespace A319407.P16089256286960244594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 (A175046 (n + 1)).toNat

end

end A319407.P16089256286960244594

/-! ## A319407.P17385381835789723144

`A269170(A320262(n+1))-(n+1)`
-/

namespace A319407.P17385381835789723144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A320262 (n + 1)).toNat - (n + 1 : ℤ)

end

end A319407.P17385381835789723144

/-!
# A319408: a(n) = A319407(n)/2.

The programs for A319408, there is no canonical definition to state claims against.
-/

/-! ## A319408.P11020503282737465420

`A319407(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319408.P11020503282737465420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319407 (n + 1) : ℚ) / 2

end

end A319408.P11020503282737465420

/-! ## A319408.P3474674968121323194

`floor((A175046(n+1)-n)/2)`
-/

namespace A319408.P3474674968121323194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175046 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A319408.P3474674968121323194

/-! ## A319408.P4069302529735590039

`A320038(n+1)-∑[n%2]`
-/

namespace A319408.P4069302529735590039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A319408.P4069302529735590039

/-! ## A319408.P7292090090158016470

`A320038(n+1)-A110654(n)`
-/

namespace A319408.P7292090090158016470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (n + 1) - A110654 n

end

end A319408.P7292090090158016470

/-! ## A319408.P11878408034519685546

`A320038(n+1)-∑[A000035(n)]`
-/

namespace A319408.P11878408034519685546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319408.P11878408034519685546

/-! ## A319408.P4083147934383887988

`(A175048(A175047(n+1))-(n+1))/2`
-/

namespace A319408.P4083147934383887988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175048 (A175047 (n + 1)).toNat - (n + 1 : ℤ) : ℚ) / 2

end

end A319408.P4083147934383887988

/-! ## A319408.P7349902794100094635

`A319409(A320038(n+1))`
-/

namespace A319408.P7349902794100094635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 (A320038 (n + 1)).toNat

end

end A319408.P7349902794100094635

/-! ## A319408.P16471373894681878916

`A319409(A175046(n+1))/2`
-/

namespace A319408.P16471373894681878916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319409 (A175046 (n + 1)).toNat : ℚ) / 2

end

end A319408.P16471373894681878916

/-! ## A319408.P13234671178251075737

`A001281(A319407(n+1))`
-/

namespace A319408.P13234671178251075737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319407 (n + 1)).toNat

end

end A319408.P13234671178251075737

/-! ## A319408.P9117769040242570863

`A004524(A175046(n+1)-n)`
-/

namespace A319408.P9117769040242570863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A175046 (n + 1) - (n : ℤ)).toNat

end

end A319408.P9117769040242570863

/-!
# A319409: a(n) = n - A318921(n).

The programs for A319409, there is no canonical definition to state claims against.
-/

/-! ## A319409.P1403551634866847488

`n-A318921(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319409.P1403551634866847488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A318921 n

end

end A319409.P1403551634866847488

/-! ## A319409.P5017375550989218141

`abs(A318921(n)+A001489(n))`
-/

namespace A319409.P5017375550989218141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318921 n + A001489 n|

end

end A319409.P5017375550989218141

/-! ## A319409.P4725191942012980682

`n-A319419(n)%A344180(n)`
-/

namespace A319409.P4725191942012980682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A319419 n) (A344180 n)

end

end A319409.P4725191942012980682

/-! ## A319409.P7319857692715720555

`A016777(n)%(A318921(n)+Δ[n²])`
-/

namespace A319409.P7319857692715720555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A318921 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A319409.P7319857692715720555

/-! ## A319409.P4610464678889922565

`n-(A319419(n)+A000007(A319419(n)+1))`
-/

namespace A319409.P4610464678889922565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A319419 n + A000007 (A319419 n + 1).toNat)

end

end A319409.P4610464678889922565

/-! ## A319409.P7162725243949579685

`A008683(A111337(n+1))*A318921(n)+n`
-/

namespace A319409.P7162725243949579685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A111337 (n + 1)).toNat * A318921 n + (n : ℤ)

end

end A319409.P7162725243949579685

/-! ## A319409.P4735221694971803404

`A025581(A318921(n)+∑[n])`
-/

namespace A319409.P4735221694971803404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A318921 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A319409.P4735221694971803404

/-! ## A319409.P14775807407119095556

`n-A126308(A065423(n+1))`
-/

namespace A319409.P14775807407119095556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A126308 (A065423 (n + 1)).toNat

end

end A319409.P14775807407119095556

/-! ## A319409.P14560139674954074956

`n-A126308(A026741(n+1)-1)`
-/

namespace A319409.P14560139674954074956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A126308 (A026741 (n + 1) - 1).toNat

end

end A319409.P14560139674954074956

/-!
# A319410: Twice A032741.

The programs for A319410, the canonical program `A319410.P2679207827576530815` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319410 has offset 0).

The definition of A319410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319410.P2679207827576530815

`∑{d}[n, 2%#²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319410

/-- `∑{d}[n, 2%#²]` -/
def P2679207827576530815.Spec : Prop :=
  ∀ n, (P2679207827576530815.a n : ℤ) = A319410 n

theorem P2679207827576530815.correct : P2679207827576530815.Spec := by
  intro n
  simp only [A319410]

end A319410

/-! ## A319410.P5866671185370192914

`∑{d}[n, 2-C(2, #²)]`
-/

namespace A319410.P5866671185370192914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.choose 2 (d ^ 2) : ℤ))

end

end A319410.P5866671185370192914

namespace A319410

/-- `∑{d}[n, 2-C(2, #²)]` -/
def P5866671185370192914.Spec : Prop :=
  ∀ n, P5866671185370192914.a n = A319410 n

end A319410

/-! ## A319410.P4205615362152518465

`∑{d}[n, #-abs(2-#)]`
-/

namespace A319410.P4205615362152518465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - |2 - (d : ℤ)|)

end

end A319410.P4205615362152518465

namespace A319410

/-- `∑{d}[n, #-abs(2-#)]` -/
def P4205615362152518465.Spec : Prop :=
  ∀ n, P4205615362152518465.a n = A319410 n

end A319410

/-! ## A319410.P3750416712742098504

`2*(∏{e}[n, #+1]-1)`
-/

namespace A319410.P3750416712742098504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A319410.P3750416712742098504

namespace A319410

/-- `2*(∏{e}[n, #+1]-1)` -/
def P3750416712742098504.Spec : Prop :=
  ∀ n, P3750416712742098504.a n = A319410 n

end A319410

/-! ## A319410.P16239936014205441640

`2*∑{d}[n, (n+1)%#]`
-/

namespace A319410.P16239936014205441640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (n + 1) % d)

end

end A319410.P16239936014205441640

namespace A319410

/-- `2*∑{d}[n, (n+1)%#]` -/
def P16239936014205441640.Spec : Prop :=
  ∀ n, (P16239936014205441640.a n : ℤ) = A319410 n

end A319410

/-! ## A319410.P7456216130802521236

`∏{e}[n, #+1]+∏{e}[n, #+1]-2`
-/

namespace A319410.P7456216130802521236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 2)

end

end A319410.P7456216130802521236

namespace A319410

/-- `∏{e}[n, #+1]+∏{e}[n, #+1]-2` -/
def P7456216130802521236.Spec : Prop :=
  ∀ n, P7456216130802521236.a n = A319410 n

end A319410

/-! ## A319410.P4736201969242730805

`2*A032741(n)`
-/

namespace A319410.P4736201969242730805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032741 n

end

end A319410.P4736201969242730805

namespace A319410

/-- `2*A032741(n)` -/
def P4736201969242730805.Spec : Prop :=
  ∀ n, P4736201969242730805.a n = A319410 n

end A319410

/-! ## A319410.P15023333633939913060

`2*∑{d}[n, A060576(#)]`
-/

namespace A319410.P15023333633939913060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A060576 d)

end

end A319410.P15023333633939913060

namespace A319410

/-- `2*∑{d}[n, A060576(#)]` -/
def P15023333633939913060.Spec : Prop :=
  ∀ n, P15023333633939913060.a n = A319410 n

end A319410

/-! ## A319410.P7662977268677237252

`2*∑{d}[n, A157928(#)]`
-/

namespace A319410.P7662977268677237252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A157928 d)

end

end A319410.P7662977268677237252

namespace A319410

/-- `2*∑{d}[n, A157928(#)]` -/
def P7662977268677237252.Spec : Prop :=
  ∀ n, P7662977268677237252.a n = A319410 n

end A319410

/-! ## A319410.P3491323995597710366

`A004277(∏{e}[n, #+1])-2`
-/

namespace A319410.P3491323995597710366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - 2

end

end A319410.P3491323995597710366

namespace A319410

/-- `A004277(∏{e}[n, #+1])-2` -/
def P3491323995597710366.Spec : Prop :=
  ∀ n, P3491323995597710366.a n = A319410 n

end A319410

/-! ## A319410.P2092281946024596069

`2*A274010(n)-a(n-1)` with `a(0)=0`
-/

namespace A319410.P2092281946024596069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A274010 n - a (n - 1)

end

end A319410.P2092281946024596069

namespace A319410

/-- `2*A274010(n)-a(n-1)` -/
def P2092281946024596069.Spec : Prop :=
  ∀ n, P2092281946024596069.a n = A319410 n

end A319410

/-! ## A319410.P1623451785298345037

`2*A000005(floor(acot(n)+n))-2`
-/

namespace A319410.P1623451785298345037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 2

end

end A319410.P1623451785298345037

namespace A319410

/-- `2*A000005(floor(acot(n)+n))-2` -/
def P1623451785298345037.Spec : Prop :=
  ∀ n, P1623451785298345037.a n = A319410 n

end A319410

/-! ## A319410.P1356211747238396685

`(A000005(n)-1)*gcd(2, a(n-1))` with `a(0)=0`
-/

namespace A319410.P1356211747238396685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (A000005 n - 1) * (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A319410.P1356211747238396685

namespace A319410

/-- `(A000005(n)-1)*gcd(2, a(n-1))` -/
def P1356211747238396685.Spec : Prop :=
  ∀ n, P1356211747238396685.a n = A319410 n

end A319410

/-! ## A319410.P13799500746171251008

`A005843(A032741(n))`
-/

namespace A319410.P13799500746171251008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A032741 n).toNat

end

end A319410.P13799500746171251008

namespace A319410

/-- `A005843(A032741(n))` -/
def P13799500746171251008.Spec : Prop :=
  ∀ n, P13799500746171251008.a n = A319410 n

end A319410

/-! ## A319410.P17584018417998201007

`2*A059169(A145154(n))`
-/

namespace A319410.P17584018417998201007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059169 (A145154 n).toNat

end

end A319410.P17584018417998201007

namespace A319410

/-- `2*A059169(A145154(n))` -/
def P17584018417998201007.Spec : Prop :=
  ∀ n, P17584018417998201007.a n = A319410 n

end A319410

/-! ## A319410.P2365873590562905825

`2*A338117(A004277(n))`
-/

namespace A319410.P2365873590562905825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338117 (A004277 n).toNat

end

end A319410.P2365873590562905825

namespace A319410

/-- `2*A338117(A004277(n))` -/
def P2365873590562905825.Spec : Prop :=
  ∀ n, P2365873590562905825.a n = A319410 n

end A319410

/-! ## A319410.P9646332743699066464

`2*A338117(A257088(n))`
-/

namespace A319410.P9646332743699066464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338117 (A257088 n).toNat

end

end A319410.P9646332743699066464

namespace A319410

/-- `2*A338117(A257088(n))` -/
def P9646332743699066464.Spec : Prop :=
  ∀ n, P9646332743699066464.a n = A319410 n

end A319410

/-! ## A319410.P11971402482824901922

`A068527(A032741(n)²+1)`
-/

namespace A319410.P11971402482824901922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A032741 n ^ 2 + 1).toNat

end

end A319410.P11971402482824901922

namespace A319410

/-- `A068527(A032741(n)²+1)` -/
def P11971402482824901922.Spec : Prop :=
  ∀ n, P11971402482824901922.a n = A319410 n

end A319410

/-! ## A319410.P10093286340537612912

`2*(A000005(A028310(n))-1)`
-/

namespace A319410.P10093286340537612912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000005 (A028310 n).toNat - 1)

end

end A319410.P10093286340537612912

namespace A319410

/-- `2*(A000005(A028310(n))-1)` -/
def P10093286340537612912.Spec : Prop :=
  ∀ n, P10093286340537612912.a n = A319410 n

end A319410

/-! ## A319410.P13624638081874449375

`2*(A092338(n+1)-A000005(n+1))`
-/

namespace A319410.P13624638081874449375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092338 (n + 1) - A000005 (n + 1))

end

end A319410.P13624638081874449375

namespace A319410

/-- `2*(A092338(n+1)-A000005(n+1))` -/
def P13624638081874449375.Spec : Prop :=
  ∀ n, P13624638081874449375.a n = A319410 n

end A319410

/-!
# A319411: Triangle read by rows: T(n,k) = number of binary vectors of length n with runs-resistance k (1 <= k <= n).

The programs for A319411, there is no canonical definition to state claims against.
-/

/-! ## A319411.P17812799984327442822

`2*A329744(n+1)`
-/

namespace A319411.P17812799984327442822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329744 (n + 1)

end

end A319411.P17812799984327442822

/-! ## A319411.P549975377937315179

`2*A329750(∑[char[∑[n]]]²-n)`
-/

namespace A319411.P549975377937315179
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329750 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A319411.P549975377937315179

/-! ## A319411.P2562546867193372099

`A329744(C(n+1, n))/(1-1/2)`
-/

namespace A319411.P2562546867193372099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329744 (Nat.choose (n + 1) n) : ℚ) / (1 - (1 : ℚ) / 2)

end

end A319411.P2562546867193372099

/-! ## A319411.P276836934752233047

`A005843(A329744(n+1))`
-/

namespace A319411.P276836934752233047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A329744 (n + 1)).toNat

end

end A319411.P276836934752233047

/-! ## A319411.P2346181765220528153

`A004275(A329744(n+1)+2)-2`
-/

namespace A319411.P2346181765220528153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A329744 (n + 1) + 2).toNat - 2

end

end A319411.P2346181765220528153

/-! ## A319411.P8229554005678733364

`A002264(6*A329744(Δ[n²]-n))`
-/

namespace A319411.P8229554005678733364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (6 * A329744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A319411.P8229554005678733364

/-! ## A319411.P16528601966020199073

`A329744(C(n+1, n))+A329744(n+1)`
-/

namespace A319411.P16528601966020199073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (Nat.choose (n + 1) n) + A329744 (n + 1)

end

end A319411.P16528601966020199073

/-! ## A319411.P12455718571996083444

`A329744(n+1)+A329744(Δ[n²]-n)`
-/

namespace A319411.P12455718571996083444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (n + 1) + A329744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A319411.P12455718571996083444

/-!
# A319412: Maximal runs-resistance of a binary vector of length n.

The programs for A319412, there is no canonical definition to state claims against.
-/

/-! ## A319412.P4457199476497751704

`round(log(2*(n+1)*floor(3^log2(n+1))))`
-/

namespace A319412.P4457199476497751704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (2 * ((n + 1 : ℤ) * ⌊(3 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))⌋) : ℝ))

end

end A319412.P4457199476497751704

/-! ## A319412.P1416657200155252997

`ceil(log(∑[A214627(n+1)]))`
-/

namespace A319412.P1416657200155252997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A319412.P1416657200155252997

/-! ## A319412.P8013525488072455164

`∑[char[∑[A056513(n)]]]+1`
-/

namespace A319412.P8013525488072455164
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319412.P8013525488072455164

/-! ## A319412.P1614751080368296606

`1-A319413(n+1)+n`
-/

namespace A319412.P1614751080368296606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A319413 (n + 1) + (n : ℤ)

end

end A319412.P1614751080368296606

/-! ## A319412.P18237800250710234219

`floor(log(A051788(3*n+2)))`
-/

namespace A319412.P18237800250710234219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A051788 (3 * n + 2) : ℝ)⌋

end

end A319412.P18237800250710234219

/-! ## A319412.P10019297173400867298

`∑[char[ceil(γ*A261082(n))-1]]`
-/

namespace A319412.P10019297173400867298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A261082 n : ℝ)⌉ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319412.P10019297173400867298

/-! ## A319412.P684053120725871509

`floor(log(A014106(∑[∏{e}[n, #+1]])))`
-/

namespace A319412.P684053120725871509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A014106 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A319412.P684053120725871509

/-! ## A319412.P17553349044435289251

`1-(A319413(Δ[n²]-n)-n)`
-/

namespace A319412.P17553349044435289251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A319413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A319412.P17553349044435289251

/-! ## A319412.P8792249784973319561

`1-(n-2*n)-A319413(1-(n-2*n))`
-/

namespace A319412.P8792249784973319561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A319413 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A319412.P8792249784973319561

/-! ## A319412.P17161092732206901608

`A096365(n+1)+A000007(n)`
-/

namespace A319412.P17161092732206901608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096365 (n + 1) + A000007 n

end

end A319412.P17161092732206901608

/-!
# A319413: Number of trailing zero entries in row n of triangle A319411.

The programs for A319413, there is no canonical definition to state claims against.
-/

/-! ## A319413.P7170643771223145047

`n-(round(log(2*(n+1)*floor(3^log2(n+1))))-1)`
-/

namespace A319413.P7170643771223145047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.roundAway (Real.log (2 * ((n + 1 : ℤ) * ⌊(3 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))⌋) : ℝ)) - 1)

end

end A319413.P7170643771223145047

/-! ## A319413.P14566311007299204910

`abs(n+1-A319412(n+1))`
-/

namespace A319413.P14566311007299204910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A319412 (n + 1)|

end

end A319413.P14566311007299204910

/-! ## A319413.P10298336287734984237

`ceil(n-log(∑[A214627(n+1)]))`
-/

namespace A319413.P10298336287734984237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A319413.P10298336287734984237

/-! ## A319413.P334828500965719843

`(n*A096365(n+1))%(n+1)`
-/

namespace A319413.P334828500965719843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A096365 (n + 1)) (n + 1 : ℤ)

end

end A319413.P334828500965719843

/-! ## A319413.P15075511935286624313

`floor(A171356(n+2)/A171341(n+5))`
-/

namespace A319413.P15075511935286624313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171356 (n + 2) : ℚ) / (A171341 (n + 5) : ℚ)⌋

end

end A319413.P15075511935286624313

/-!
# A319414: Number of binary vectors of length n having maximal runs-resistance.

The programs for A319414, there is no canonical definition to state claims against.
-/

/-! ## A319414.P3242517227839894276

`A319411(A319412(n+1)+∑[n])`
-/

namespace A319414.P3242517227839894276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319411 (A319412 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A319414.P3242517227839894276

/-! ## A319414.P2445068069699033507

`A319411(∑[n+1]-A319413(n+1))`
-/

namespace A319414.P2445068069699033507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319411 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A319413 (n + 1)).toNat

end

end A319414.P2445068069699033507

/-! ## A319414.P687827644477666102

`A319411(A000124(n)+A319412(n+1)-1)`
-/

namespace A319414.P687827644477666102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319411 (A000124 n + (A319412 (n + 1) - 1)).toNat

end

end A319414.P687827644477666102

/-! ## A319414.P10408635021242711031

`A385435(A056433(n+1))`
-/

namespace A319414.P10408635021242711031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385435 (A056433 (n + 1)).toNat

end

end A319414.P10408635021242711031

/-! ## A319414.P10883916442236842242

`gcd(∏[A308364(5*n+14)], A350634(8*n+4))`
-/

namespace A319414.P10883916442236842242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (5 * n + 14)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A350634 (8 * n + 4))

end

end A319414.P10883916442236842242

/-!
# A319415: Total runs-resistance of all binary vectors of length n.

The programs for A319415, there is no canonical definition to state claims against.
-/

/-! ## A319415.P9081148824031090713

`xor(2, A027709(A099195(n)))`
-/

namespace A319415.P9081148824031090713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A027709 (A099195 n).toNat)

end

end A319415.P9081148824031090713

/-! ## A319415.P9874632309209571891

`A298422(A298422(3*(n+1)))+A241794(n+3)`
-/

namespace A319415.P9874632309209571891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (A298422 (3 * (n + 1))).toNat + A241794 (n + 3)

end

end A319415.P9874632309209571891

/-!
# A319416: Cuts-resistance of n: number of applications of Lenormand's "raboter" map needed to transform the binary expansion of n to the empty string.

The programs for A319416, there is no canonical definition to state claims against.
-/

/-! ## A319416.P8720260144737713421

`A272604(A290254(abs(1-n)+2))`
-/

namespace A319416.P8720260144737713421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A319416.P8720260144737713421

/-! ## A319416.P15892992051314976032

`A272604(A290254(n+1))^floor(atan(n))`
-/

namespace A319416.P15892992051314976032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272604 (A290254 (n + 1)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A319416.P15892992051314976032

/-! ## A319416.P825087439166702708

`A272604(A290254(n+1)+A000007(n))`
-/

namespace A319416.P825087439166702708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1) + A000007 n).toNat

end

end A319416.P825087439166702708

/-! ## A319416.P1408892714211506573

`A272604(A290254(n+1)+A000038(n))`
-/

namespace A319416.P1408892714211506573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1) + A000038 n).toNat

end

end A319416.P1408892714211506573

/-! ## A319416.P6730626503058637841

`A272604(∏{d}[A290254(n+1), A014963(#)])`
-/

namespace A319416.P6730626503058637841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A319416.P6730626503058637841

/-! ## A319416.P7781995417649144202

`A272604(A290254(n+1)+A036987(n²))`
-/

namespace A319416.P7781995417649144202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1) + A036987 (n ^ 2)).toNat

end

end A319416.P7781995417649144202

/-! ## A319416.P3619498559206130482

`A272604(A290254(n+1)+and(1, A001316(n)))`
-/

namespace A319416.P3619498559206130482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1) + Int.land 1 (A001316 n)).toNat

end

end A319416.P3619498559206130482

/-! ## A319416.P11477978549999969658

`A272604(A290254(n+1))+A008683((n+1)²)`
-/

namespace A319416.P11477978549999969658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A008683 ((n + 1) ^ 2)

end

end A319416.P11477978549999969658

/-! ## A319416.P4601710755379019379

`A272604(A290254(n+1))+A255308(n²+8)`
-/

namespace A319416.P4601710755379019379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A255308 (n ^ 2 + 8)

end

end A319416.P4601710755379019379

/-! ## A319416.P7410233115677687236

`A272604(A290254(n+1))^ceil(n/A000041(n))`
-/

namespace A319416.P7410233115677687236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272604 (A290254 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A319416.P7410233115677687236

/-! ## A319416.P16396552737151312432

`A272604(A290254(n+1))^(A000040(n+1)%2)`
-/

namespace A319416.P16396552737151312432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272604 (A290254 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A319416.P16396552737151312432

/-! ## A319416.P16896704439655144336

`A272604(A290254(n+1))+A001222(ceil(2/(n+1)))`
-/

namespace A319416.P16896704439655144336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A319416.P16896704439655144336

/-! ## A319416.P11192352721622502494

`A272604(A290254(n+1))+A000035(A008458(n))`
-/

namespace A319416.P11192352721622502494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A000035 (A008458 n).toNat

end

end A319416.P11192352721622502494

/-! ## A319416.P18165931004939901208

`A272604(A290254(n+1))+A017909(A000120(n))`
-/

namespace A319416.P18165931004939901208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A017909 (A000120 n).toNat

end

end A319416.P18165931004939901208

/-! ## A319416.P17839895495960685173

`A272604(A290254(n+1))+A036987(A005843(n))`
-/

namespace A319416.P17839895495960685173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A036987 (A005843 n).toNat

end

end A319416.P17839895495960685173

/-! ## A319416.P13630247414167603089

`A272604(A290254(n+1))+A017909(A272604(n))`
-/

namespace A319416.P13630247414167603089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A290254 (n + 1)).toNat + A017909 (A272604 n).toNat

end

end A319416.P13630247414167603089

/-! ## A319416.P13210263664670972544

`A272604(A290254(n+1))^A000045(A178334(n))`
-/

namespace A319416.P13210263664670972544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272604 (A290254 (n + 1)).toNat : ℚ) ^ (A000045 (A178334 n).toNat : ℤ)

end

end A319416.P13210263664670972544

/-! ## A319416.P7527362094231503183

`A272604(A290254(n+1))^A008683(2*A000040(n+1))`
-/

namespace A319416.P7527362094231503183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272604 (A290254 (n + 1)).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A319416.P7527362094231503183

/-!
# A319417: Records in A318928.

The programs for A319417, there is no canonical definition to state claims against.
-/

/-! ## A319417.P8553684867836022661

`A319103(comp[(n+1)²²])`
-/

namespace A319417.P8553684867836022661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319103 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A319417.P8553684867836022661

/-! ## A319417.P10354656479197386699

`and(record[A319103(n)], A319103(n+1))`
-/

namespace A319417.P10354656479197386699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A319103 (n + 1))

end

end A319417.P10354656479197386699

/-! ## A319417.P1777626475712044162

`A319103(n+1)-2*A096500(2*n+1)`
-/

namespace A319417.P1777626475712044162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319103 (n + 1) - 2 * A096500 (2 * n + 1)

end

end A319417.P1777626475712044162

/-! ## A319417.P11246391708599785884

`A319103(n+1)-A096500(A000230(n))`
-/

namespace A319417.P11246391708599785884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319103 (n + 1) - A096500 (A000230 n).toNat

end

end A319417.P11246391708599785884

/-! ## A319417.P17825140545110583290

`A319103(n+1)/A126646(A097479(n))`
-/

namespace A319417.P17825140545110583290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319103 (n + 1) : ℚ) / (A126646 (A097479 n).toNat : ℚ)

end

end A319417.P17825140545110583290

/-!
# A319418: Records in A318928, written in base 2.

The programs for A319418, there is no canonical definition to state claims against.
-/

/-! ## A319418.P15808831008178139033

`A007088(A319417(n+1))`
-/

namespace A319418.P15808831008178139033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A319417 (n + 1)).toNat

end

end A319418.P15808831008178139033

/-! ## A319418.P12078066152124459010

`A007088(A319103(comp[(n+1)²²]))`
-/

namespace A319418.P12078066152124459010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A319103 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A319418.P12078066152124459010

/-! ## A319418.P15261056337600768330

`gcd(A007088(A319103(n+1)), A114099(n))`
-/

namespace A319418.P15261056337600768330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A319103 (n + 1)).toNat) (A114099 n)

end

end A319418.P15261056337600768330

/-! ## A319418.P4818393954660957568

`A007088(A319103(n+1)-2*A096500(2*n+1))`
-/

namespace A319418.P4818393954660957568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A319103 (n + 1) - 2 * A096500 (2 * n + 1)).toNat

end

end A319418.P4818393954660957568

/-!
# A319419: In binary expansion of n, delete one symbol from each run. Set a(n)=-1 if the result is the empty string.

The programs for A319419, there is no canonical definition to state claims against.
-/

/-! ## A319419.P3610658284670852495

`A318921(n)-char[A000975(n)]`
-/

namespace A319419.P3610658284670852495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319419.P3610658284670852495

/-! ## A319419.P17167740873650377866

`A318921(n)-A147612(2*n+1)`
-/

namespace A319419.P17167740873650377866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n - A147612 (2 * n + 1)

end

end A319419.P17167740873650377866

/-! ## A319419.P12977280977321560139

`A318921(n)-A008683(A319416(n)²)`
-/

namespace A319419.P12977280977321560139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n - A008683 (A319416 n ^ 2).toNat

end

end A319419.P12977280977321560139

/-! ## A319419.P15684952723190731951

`A318921(n)-A209229(A047235(n+1))`
-/

namespace A319419.P15684952723190731951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n - A209229 (A047235 (n + 1)).toNat

end

end A319419.P15684952723190731951

/-! ## A319419.P10530520824740466128

`A318921(n)-char[A090079(n)]`
-/

namespace A319419.P10530520824740466128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319419.P10530520824740466128

/-!
# A319420: Irregular triangle read by rows: row n lists the cuts-resistances of the 2^n binary vectors of length n.

The programs for A319420, there is no canonical definition to state claims against.
-/

/-! ## A319420.P15113121507596008781

`(A319416(A320037(n+1))-1)%A247432(n+1)`
-/

namespace A319420.P15113121507596008781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319416 (A320037 (n + 1)).toNat - 1) (A247432 (n + 1))

end

end A319420.P15113121507596008781

/-! ## A319420.P14306037223074606433

`A319416(A320037(n+1))-A010051(A023290(n+1))`
-/

namespace A319420.P14306037223074606433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A320037 (n + 1)).toNat - A010051 (A023290 (n + 1)).toNat

end

end A319420.P14306037223074606433

/-! ## A319420.P14791198080414904584

`A000038(A064400(n+1))+A319416(A320037(n+1))-1`
-/

namespace A319420.P14791198080414904584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A064400 (n + 1)).toNat + (A319416 (A320037 (n + 1)).toNat - 1)

end

end A319420.P14791198080414904584

/-! ## A319420.P8167555532145285570

`A000038(A196167(n+1))+A319416(A320037(n+1))-1`
-/

namespace A319420.P8167555532145285570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A196167 (n + 1)).toNat + (A319416 (A320037 (n + 1)).toNat - 1)

end

end A319420.P8167555532145285570

/-! ## A319420.P439120077994406028

`A244145(A248003(n+2))`
-/

namespace A319420.P439120077994406028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244145 (A248003 (n + 2)).toNat

end

end A319420.P439120077994406028

/-!
# A319421: Triangle read by rows: T(n,k) (1 <= k <= n) = one-half of the number of binary vectors of length n and cuts-resistance k.

The programs for A319421, there is no canonical definition to state claims against.
-/

/-! ## A319421.P1935358728226013325

`A110971(A038722(A233583(n+1)))`
-/

namespace A319421.P1935358728226013325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110971 (A038722 (A233583 (n + 1)).toNat).toNat

end

end A319421.P1935358728226013325

/-! ## A319421.P10845701486747782285

`A329860(comp[∑[n]])/2`
-/

namespace A319421.P10845701486747782285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329860 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A319421.P10845701486747782285

/-! ## A319421.P14266314624531872235

`A110971(∑[char[∑[n]]]²-n+1)`
-/

namespace A319421.P14266314624531872235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110971 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A319421.P14266314624531872235

/-! ## A319421.P14048598831235686047

`A004525(A329860(comp[∑[n]]))`
-/

namespace A319421.P14048598831235686047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A329860 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A319421.P14048598831235686047

/-! ## A319421.P3076708789510820110

`A106466(A329860(comp[∑[n]])-2)`
-/

namespace A319421.P3076708789510820110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A329860 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2).toNat

end

end A319421.P3076708789510820110

/-!
# A319422: Records in A175046.

The programs for A319422, there is no canonical definition to state claims against.
-/

/-! ## A319422.P3352281532984057388

`record[A319407(n+1)+1+n]`
-/

namespace A319422.P3352281532984057388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319422.P3352281532984057388

/-! ## A319422.P3418954915359998242

`record[2*A319408(n+1)+n+1]`
-/

namespace A319422.P3418954915359998242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319408 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319422.P3418954915359998242

/-! ## A319422.P13864767974044355818

`A319423(n+1)+A319407(A319423(n+1))`
-/

namespace A319422.P13864767974044355818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319423 (n + 1) + A319407 (A319423 (n + 1)).toNat

end

end A319422.P13864767974044355818

/-! ## A319422.P14954947462536642674

`record[A175046(n+1)]`
-/

namespace A319422.P14954947462536642674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319422.P14954947462536642674

/-! ## A319422.P13092397814504891626

`record[3*A320263(n+1)]`
-/

namespace A319422.P13092397814504891626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A320263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319422.P13092397814504891626

/-! ## A319422.P17668290857119518534

`A175046(A319423(n+1))`
-/

namespace A319422.P17668290857119518534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A319423 (n + 1)).toNat

end

end A319422.P17668290857119518534

/-! ## A319422.P373566819362448407

`record[A320263(n+1)+A320262(n+1)]`
-/

namespace A319422.P373566819362448407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320263 (n + 1) + A320262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319422.P373566819362448407

/-!
# A319423: Indices of records in A175046.

The programs for A319423, the canonical program `A319423.P11981827917797193009` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319423 has offset 1).

The definition of A319423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319423.P11981827917797193009

`∑[A011782(A082375(n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319423

/-- `∑[A011782(A082375(n))]` -/
def P11981827917797193009.Spec : Prop :=
  ∀ n, P11981827917797193009.a n = A319423 (n + 1)

theorem P11981827917797193009.correct : P11981827917797193009.Spec := by
  intro n
  simp only [A319423, Nat.add_sub_cancel]

end A319423

/-! ## A319423.P3828160375640350573

`∑[A076736(2*A082375(n)+3)]`
-/

namespace A319423.P3828160375640350573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (2 * A082375 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319423.P3828160375640350573

namespace A319423

/-- `∑[A076736(2*A082375(n)+3)]` -/
def P3828160375640350573.Spec : Prop :=
  ∀ n, P3828160375640350573.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P10507166331691942550

`∑[A129952(A122196(n+1))/A122196(n+1)]`
-/

namespace A319423.P10507166331691942550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129952 (A122196 (n + 1)).toNat : ℚ) / (A122196 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319423.P10507166331691942550

namespace A319423

/-- `∑[A129952(A122196(n+1))/A122196(n+1)]` -/
def P10507166331691942550.Spec : Prop :=
  ∀ n, P10507166331691942550.a n = (A319423 (n + 1) : ℚ)

end A319423

/-! ## A319423.P9449040759521548196

`∑[A057728(∑[2-char[(n+1)²]])]`
-/

namespace A319423.P9449040759521548196
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319423.P9449040759521548196

namespace A319423

/-- `∑[A057728(∑[2-char[(n+1)²]])]` -/
def P9449040759521548196.Spec : Prop :=
  ∀ n, P9449040759521548196.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P14554665222147001502

`∑[A130321(n+1-A000196(n+1)+n)]`
-/

namespace A319423.P14554665222147001502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 ((n + 1 : ℤ) - A000196 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319423.P14554665222147001502

namespace A319423

/-- `∑[A130321(n+1-A000196(n+1)+n)]` -/
def P14554665222147001502.Spec : Prop :=
  ∀ n, P14554665222147001502.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P3204854228222536474

`∑[A000010(2^A082375(n))]`
-/

namespace A319423.P3204854228222536474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A082375 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319423.P3204854228222536474

namespace A319423

/-- `∑[A000010(2^A082375(n))]` -/
def P3204854228222536474.Spec : Prop :=
  ∀ n, P3204854228222536474.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P12659247427912534485

`A003714(A169693(n+2)-1)`
-/

namespace A319423.P12659247427912534485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A169693 (n + 2) - 1).toNat

end

end A319423.P12659247427912534485

namespace A319423

/-- `A003714(A169693(n+2)-1)` -/
def P12659247427912534485.Spec : Prop :=
  ∀ n, P12659247427912534485.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P12224422599885493608

`A319422(n+1)-record[A319407(n+1)]`
-/

namespace A319423.P12224422599885493608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319422 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319423.P12224422599885493608

namespace A319423

/-- `A319422(n+1)-record[A319407(n+1)]` -/
def P12224422599885493608.Spec : Prop :=
  ∀ n, P12224422599885493608.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P12405285043059970187

`filter[A351993(n+2), A085357(#)]`
-/

namespace A319423.P12405285043059970187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A319423.P12405285043059970187

namespace A319423

/-- `filter[A351993(n+2), A085357(#)]` -/
def P12405285043059970187.Spec : Prop :=
  ∀ n, P12405285043059970187.a n = A319423 (n + 1)

end A319423

/-! ## A319423.P16491015392134894201

`record[A184615(A184615(n+1)-n)+n]`
-/

namespace A319423.P16491015392134894201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (A184615 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319423.P16491015392134894201

namespace A319423

/-- `record[A184615(A184615(n+1)-n)+n]` -/
def P16491015392134894201.Spec : Prop :=
  ∀ n, P16491015392134894201.a n = A319423 (n + 1)

end A319423

/-!
# A319424: Records in A175046 (but written in base 2).

The programs for A319424, there is no canonical definition to state claims against.
-/

/-! ## A319424.P10325850424843268962

`A007088(A319422(n+1))`
-/

namespace A319424.P10325850424843268962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A319422 (n + 1)).toNat

end

end A319424.P10325850424843268962

/-! ## A319424.P3926089130369290804

`A007088(record[A175046(n+1)])`
-/

namespace A319424.P3926089130369290804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319424.P3926089130369290804

/-! ## A319424.P2619023658882487094

`A007088(record[3*A320263(n+1)])`
-/

namespace A319424.P2619023658882487094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A320263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319424.P2619023658882487094

/-! ## A319424.P6850899082805444839

`A007088(record[A319407(n+1)+1+n])`
-/

namespace A319424.P6850899082805444839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319424.P6850899082805444839

/-! ## A319424.P14738760736358823659

`A007088(record[2*A319408(n+1)+1+n])`
-/

namespace A319424.P14738760736358823659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319408 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319424.P14738760736358823659

/-!
# A319425: Number of cyclically 3-connected cubic planar graphs without triangles and containing 2n nodes.

The programs for A319425, there is no canonical definition to state claims against.
-/

/-! ## A319425.P7284548861064391398

`xor(∑[char[n!]]², A105488(n+4))`
-/

namespace A319425.P7284548861064391398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A105488 (n + 4))

end

end A319425.P7284548861064391398

/-!
# A319426: Number of cyclically 3-connected cubic planar graphs with triangles and containing 2n nodes.

The programs for A319426, there is no canonical definition to state claims against.
-/

/-! ## A319426.P17473147110185645391

`A319427(n)-A319425(n)`
-/

namespace A319426.P17473147110185645391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319427 (n + 12) - A319425 (n + 12)

end

end A319426.P17473147110185645391

/-!
# A319427: Number of cyclically 3-connected cubic planar graphs containing 2n nodes.

The programs for A319427, there is no canonical definition to state claims against.
-/

/-! ## A319427.P8420276697374364986

`A319426(n)+A319425(n)`
-/

namespace A319427.P8420276697374364986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319426 (n + 12) + A319425 (n + 12)

end

end A319427.P8420276697374364986

/-!
# A319430: First differences of the tribonacci representation numbers (A003726 or A278038).

The programs for A319430, the canonical program `A319430.P4261334974448909778` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319430 has offset 0).

The definition of A319430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319430.P4027953048326355296

`ceil(A319431(n+1)/8)`
-/

namespace A319430.P4027953048326355296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319431 (n + 1) : ℚ) / 8⌉

end

end A319430.P4027953048326355296

namespace A319430

/-- `ceil(A319431(n+1)/8)` -/
def P4027953048326355296.Spec : Prop :=
  ∀ n, P4027953048326355296.a n = A319430 n

end A319430

/-! ## A319430.P4261334974448909778

`Δ[eq[0, and(n, 2*and(n, 2*n))]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319430

/-- `Δ[eq[0, and(n, 2*and(n, 2*n))]]` -/
def P4261334974448909778.Spec : Prop :=
  ∀ n, P4261334974448909778.a n = A319430 n

theorem P4261334974448909778.correct : P4261334974448909778.Spec := by
  intro n
  simp only [A319430]

end A319430

/-! ## A319430.P12618303931860356597

`Δ[A003726(n+1)]`
-/

namespace A319430.P12618303931860356597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319430.P12618303931860356597

namespace A319430

/-- `Δ[A003726(n+1)]` -/
def P12618303931860356597.Spec : Prop :=
  ∀ n, P12618303931860356597.a n = A319430 n

theorem P12618303931860356597.correct : P12618303931860356597.Spec := by
  intro n
  simp only [A319430, Nat.add_sub_cancel, A319430.P12618303931860356597.f1, A319430.P12618303931860356597.a, A319430.P4261334974448909778.f2, A319430.P4261334974448909778.f3, A319430.P4261334974448909778.f1, A319430.P4261334974448909778.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319430

/-! ## A319430.P6832068571696540643

`A003726(n+2)-A003726(n+1)`
-/

namespace A319430.P6832068571696540643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 2) - A003726 (n + 1)

end

end A319430.P6832068571696540643

namespace A319430

/-- `A003726(n+2)-A003726(n+1)` -/
def P6832068571696540643.Spec : Prop :=
  ∀ n, P6832068571696540643.a n = A319430 n

theorem P6832068571696540643.correct : P6832068571696540643.Spec := by
  intro n
  simp only [A319430, Nat.add_sub_cancel, A319430.P6832068571696540643.a, A319430.P4261334974448909778.f2, A319430.P4261334974448909778.f3, A319430.P4261334974448909778.f1, A319430.P4261334974448909778.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319430

/-! ## A319430.P12842236786783786959

`A110656(A319431(n+1))`
-/

namespace A319430.P12842236786783786959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A319431 (n + 1)).toNat

end

end A319430.P12842236786783786959

namespace A319430

/-- `A110656(A319431(n+1))` -/
def P12842236786783786959.Spec : Prop :=
  ∀ n, P12842236786783786959.a n = A319430 n

end A319430

/-! ## A319430.P12411870192532394862

`Δ[lt[A284569(n), 3]]`
-/

namespace A319430.P12411870192532394862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A319430.P12411870192532394862

namespace A319430

/-- `Δ[lt[A284569(n), 3]]` -/
def P12411870192532394862.Spec : Prop :=
  ∀ n, P12411870192532394862.a n = A319430 n

end A319430

/-! ## A319430.P16464949291883303023

`Δ[eq[0, A014082(n)]]`
-/

namespace A319430.P16464949291883303023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A319430.P16464949291883303023

namespace A319430

/-- `Δ[eq[0, A014082(n)]]` -/
def P16464949291883303023.Spec : Prop :=
  ∀ n, P16464949291883303023.a n = A319430 n

end A319430

/-! ## A319430.P10807476811487219592

`Δ[lt[A048735(A048735(n)), 1]]`
-/

namespace A319430.P10807476811487219592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A048735 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A319430.P10807476811487219592

namespace A319430

/-- `Δ[lt[A048735(A048735(n)), 1]]` -/
def P10807476811487219592.Spec : Prop :=
  ∀ n, P10807476811487219592.a n = A319430 n

end A319430

/-! ## A319430.P4552043133605652123

`Δ[lt[A348710(A348710(n)), 1]]`
-/

namespace A319430.P4552043133605652123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (A348710 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A319430.P4552043133605652123

namespace A319430

/-- `Δ[lt[A348710(A348710(n)), 1]]` -/
def P4552043133605652123.Spec : Prop :=
  ∀ n, P4552043133605652123.a n = A319430 n

end A319430

/-! ## A319430.P6822566961133657350

`Δ[lt[A048728(A048728(n)), 1]]`
-/

namespace A319430.P6822566961133657350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (A048728 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A319430.P6822566961133657350

namespace A319430

/-- `Δ[lt[A048728(A048728(n)), 1]]` -/
def P6822566961133657350.Spec : Prop :=
  ∀ n, P6822566961133657350.a n = A319430 n

end A319430

/-! ## A319430.P12099755947957840894

`Δ[record[n-A292264(A292264(n))]]`
-/

namespace A319430.P12099755947957840894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292264 (A292264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319430.P12099755947957840894

namespace A319430

/-- `Δ[record[n-A292264(A292264(n))]]` -/
def P12099755947957840894.Spec : Prop :=
  ∀ n, P12099755947957840894.a n = A319430 n

end A319430

/-! ## A319430.P6095365999815310745

`Δ[record[n-A255298(A255298(n))]]`
-/

namespace A319430.P6095365999815310745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255298 (A255298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319430.P6095365999815310745

namespace A319430

/-- `Δ[record[n-A255298(A255298(n))]]` -/
def P6095365999815310745.Spec : Prop :=
  ∀ n, P6095365999815310745.a n = A319430 n

end A319430

/-!
# A319431: The first differences (A319430) of the tribonacci representation numbers (A003726 or A278038) consists of runs of 1's separated by the terms of the present sequence.

The programs for A319431, the canonical program `A319431.P10212227212782014410` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319431 has offset 1).

The definition of A319431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319431.P10212227212782014410

`A319430(lt[1, A319430(n)])`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319431

/-- `A319430(lt[1, A319430(n)])` -/
def P10212227212782014410.Spec : Prop :=
  ∀ n, P10212227212782014410.a n = A319431 (n + 1)

theorem P10212227212782014410.correct : P10212227212782014410.Spec := by
  intro n
  simp only [A319431, Nat.add_sub_cancel]

end A319431

/-! ## A319431.P1865326806667374282

`A319430(∑[A275925(n+2)]+n)`
-/

namespace A319431.P1865326806667374282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A319431.P1865326806667374282

namespace A319431

/-- `A319430(∑[A275925(n+2)]+n)` -/
def P1865326806667374282.Spec : Prop :=
  ∀ n, P1865326806667374282.a n = A319431 (n + 1)

end A319431

/-! ## A319431.P2979762322382249813

`A319430(eq[0, A000122(A319430(n))])`
-/

namespace A319431.P2979762322382249813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A319430 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319431.P2979762322382249813

namespace A319431

/-- `A319430(eq[0, A000122(A319430(n))])` -/
def P2979762322382249813.Spec : Prop :=
  ∀ n, P2979762322382249813.a n = A319431 (n + 1)

end A319431

/-! ## A319431.P7956364970049241345

`A319430(eq[2, A303579(A319430(n))])`
-/

namespace A319431.P7956364970049241345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303579 (A319430 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319431.P7956364970049241345

namespace A319431

/-- `A319430(eq[2, A303579(A319430(n))])` -/
def P7956364970049241345.Spec : Prop :=
  ∀ n, P7956364970049241345.a n = A319431 (n + 1)

end A319431

/-! ## A319431.P4750073880706233930

`A064553(p?[A008578(A319430(n))])`
-/

namespace A319431.P4750073880706233930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A319430 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319431.P4750073880706233930

namespace A319431

/-- `A064553(p?[A008578(A319430(n))])` -/
def P4750073880706233930.Spec : Prop :=
  ∀ n, P4750073880706233930.a n = A319431 (n + 1)

end A319431

/-!
# A319432: The first differences (A129761) of the tribonacci representation numbers (A003714 or A014417) consists of runs of 1's separated by the terms of the present sequence.

The programs for A319432, the canonical program `A319432.P3337669572153252279` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319432 has offset 1).

The definition of A319432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319432.P3337669572153252279

`A085358(n)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A319432

/-- `A085358(n)+1` -/
def P3337669572153252279.Spec : Prop :=
  ∀ n, P3337669572153252279.a n = A319432 (n + 1)

theorem P3337669572153252279.correct : P3337669572153252279.Spec := by
  intro n
  simp only [A319432, Nat.add_sub_cancel]

end A319432

/-! ## A319432.P6028705290724296433

`A005578(A035614(n)+2)`
-/

namespace A319432.P6028705290724296433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035614 n + 2).toNat

end

end A319432.P6028705290724296433

namespace A319432

/-- `A005578(A035614(n)+2)` -/
def P6028705290724296433.Spec : Prop :=
  ∀ n, P6028705290724296433.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P164159181634349633

`A000975(A035612(n+1))+1`
-/

namespace A319432.P164159181634349633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A035612 (n + 1)).toNat + 1

end

end A319432.P164159181634349633

namespace A319432

/-- `A000975(A035612(n+1))+1` -/
def P164159181634349633.Spec : Prop :=
  ∀ n, P164159181634349633.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P1608031167742322154

`A000975(A035614(n)+1)+1`
-/

namespace A319432.P1608031167742322154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A035614 n + 1).toNat + 1

end

end A319432.P1608031167742322154

namespace A319432

/-- `A000975(A035614(n)+1)+1` -/
def P1608031167742322154.Spec : Prop :=
  ∀ n, P1608031167742322154.a n = A319432 (n + 1)

theorem P1608031167742322154.correct : P1608031167742322154.Spec := by
  intro n
  simp only [A319432, Nat.add_sub_cancel, A319432.P1608031167742322154.a, A319432.P3337669572153252279.a, A000975, A000975.P3065139855509220403.a, A035614, A035614.P1531182426394583162.a, A085358, A085358.P10431996975946605734.a, A035612, A035612.P7106491847305260424.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319432

/-! ## A319432.P3814090323162650025

`A005578(A035612(n+1)+1)`
-/

namespace A319432.P3814090323162650025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035612 (n + 1) + 1).toNat

end

end A319432.P3814090323162650025

namespace A319432

/-- `A005578(A035612(n+1)+1)` -/
def P3814090323162650025.Spec : Prop :=
  ∀ n, P3814090323162650025.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P4204745775577481697

`A057337(A139764(n+1))+1`
-/

namespace A319432.P4204745775577481697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057337 (A139764 (n + 1)).toNat + 1

end

end A319432.P4204745775577481697

namespace A319432

/-- `A057337(A139764(n+1))+1` -/
def P4204745775577481697.Spec : Prop :=
  ∀ n, P4204745775577481697.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P12261369474088856749

`A287744(2*A035614(n))+1`
-/

namespace A319432.P12261369474088856749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (2 * A035614 n).toNat + 1

end

end A319432.P12261369474088856749

namespace A319432

/-- `A287744(2*A035614(n))+1` -/
def P12261369474088856749.Spec : Prop :=
  ∀ n, P12261369474088856749.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P4730613705879446999

`A003849(n)+2*A001045(A035612(n+1))`
-/

namespace A319432.P4730613705879446999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + 2 * A001045 (A035612 (n + 1)).toNat

end

end A319432.P4730613705879446999

namespace A319432

/-- `A003849(n)+2*A001045(A035612(n+1))` -/
def P4730613705879446999.Spec : Prop :=
  ∀ n, P4730613705879446999.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P16270047106844630959

`Δ[A022341(n)-A022342(n+1)]`
-/

namespace A319432.P16270047106844630959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n - A022342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319432.P16270047106844630959

namespace A319432

/-- `Δ[A022341(n)-A022342(n+1)]` -/
def P16270047106844630959.Spec : Prop :=
  ∀ n, P16270047106844630959.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P3284096131456811179

`A129761(A057843(n+2))`
-/

namespace A319432.P3284096131456811179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A057843 (n + 2)).toNat

end

end A319432.P3284096131456811179

namespace A319432

/-- `A129761(A057843(n+2))` -/
def P3284096131456811179.Spec : Prop :=
  ∀ n, P3284096131456811179.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P12227580996839201827

`A129761(lt[1, A129761(n)])`
-/

namespace A319432.P12227580996839201827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A319432.P12227580996839201827

namespace A319432

/-- `A129761(lt[1, A129761(n)])` -/
def P12227580996839201827.Spec : Prop :=
  ∀ n, P12227580996839201827.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P12720001193347841044

`A129761(A026274(n+1)-1)`
-/

namespace A319432.P12720001193347841044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A026274 (n + 1) - 1).toNat

end

end A319432.P12720001193347841044

namespace A319432

/-- `A129761(A026274(n+1)-1)` -/
def P12720001193347841044.Spec : Prop :=
  ∀ n, P12720001193347841044.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P3952581987378072283

`A129761(A003622(n+2)-2)`
-/

namespace A319432.P3952581987378072283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A003622 (n + 2) - 2).toNat

end

end A319432.P3952581987378072283

namespace A319432

/-- `A129761(A003622(n+2)-2)` -/
def P3952581987378072283.Spec : Prop :=
  ∀ n, P3952581987378072283.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P14791800159610909404

`A129761(A022342(n+2)+n)`
-/

namespace A319432.P14791800159610909404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A022342 (n + 2) + (n : ℤ)).toNat

end

end A319432.P14791800159610909404

namespace A319432

/-- `A129761(A022342(n+2)+n)` -/
def P14791800159610909404.Spec : Prop :=
  ∀ n, P14791800159610909404.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P8438575263557104518

`A129761(A058065(n)+2+n)`
-/

namespace A319432.P8438575263557104518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A058065 n + 2 + (n : ℤ)).toNat

end

end A319432.P8438575263557104518

namespace A319432

/-- `A129761(A058065(n)+2+n)` -/
def P8438575263557104518.Spec : Prop :=
  ∀ n, P8438575263557104518.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P861023338323215290

`A129761(A026273(n+1)+1+n)`
-/

namespace A319432.P861023338323215290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A026273 (n + 1) + 1 + (n : ℤ)).toNat

end

end A319432.P861023338323215290

namespace A319432

/-- `A129761(A026273(n+1)+1+n)` -/
def P861023338323215290.Spec : Prop :=
  ∀ n, P861023338323215290.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P7118789497926344449

`A129761(record[2-A129761(n)+n]+n+1)`
-/

namespace A319432.P7118789497926344449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A129761 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)).toNat

end

end A319432.P7118789497926344449

namespace A319432

/-- `A129761(record[2-A129761(n)+n]+n+1)` -/
def P7118789497926344449.Spec : Prop :=
  ∀ n, P7118789497926344449.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P5450085699680744459

`A129761(record[(n+1)/A129761(n)]+n+1)`
-/

namespace A319432.P5450085699680744459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A129761 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℚ))).toNat

end

end A319432.P5450085699680744459

namespace A319432

/-- `A129761(record[(n+1)/A129761(n)]+n+1)` -/
def P5450085699680744459.Spec : Prop :=
  ∀ n, P5450085699680744459.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P13283263926595508876

`filter[A129761(n), A014306(#)]`
-/

namespace A319432.P13283263926595508876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A319432.P13283263926595508876

namespace A319432

/-- `filter[A129761(n), A014306(#)]` -/
def P13283263926595508876.Spec : Prop :=
  ∀ n, P13283263926595508876.a n = A319432 (n + 1)

end A319432

/-! ## A319432.P4723729392365832521

`filter[A129761(n), A049240(#)]`
-/

namespace A319432.P4723729392365832521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A319432.P4723729392365832521

namespace A319432

/-- `filter[A129761(n), A049240(#)]` -/
def P4723729392365832521.Spec : Prop :=
  ∀ n, P4723729392365832521.a n = A319432 (n + 1)

end A319432

/-!
# A319433: Take the Zeckendorf representation of n (A014417(n)), drop least significant bit, take the inverse Zeckendorf representation.

The programs for A319433, the canonical program `A319433.P14844052608801202059` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319433 has offset 0).

The definition of A319433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319433.P14844052608801202059

`floor((n+2)/ϕ)-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319433

/-- `floor((n+2)/ϕ)-1` -/
def P14844052608801202059.Spec : Prop :=
  ∀ n, P14844052608801202059.a n = A319433 n

theorem P14844052608801202059.correct : P14844052608801202059.Spec := by
  intro n
  simp only [A319433]

end A319433

/-! ## A319433.P8378333606579523062

`∑[char[A380960(n+1)]]`
-/

namespace A319433.P8378333606579523062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319433.P8378333606579523062

namespace A319433

/-- `∑[char[A380960(n+1)]]` -/
def P8378333606579523062.Spec : Prop :=
  ∀ n, (P8378333606579523062.a n : ℤ) = A319433 n

end A319433

/-! ## A319433.P16077278963035731891

`∑[char[A022342(n+2)]]`
-/

namespace A319433.P16077278963035731891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319433.P16077278963035731891

namespace A319433

/-- `∑[char[A022342(n+2)]]` -/
def P16077278963035731891.Spec : Prop :=
  ∀ n, (P16077278963035731891.a n : ℤ) = A319433 n

end A319433

/-! ## A319433.P12340789103204813732

`A026273(n+1)%(n+1)`
-/

namespace A319433.P12340789103204813732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026273 (n + 1)) (n + 1 : ℤ)

end

end A319433.P12340789103204813732

namespace A319433

/-- `A026273(n+1)%(n+1)` -/
def P12340789103204813732.Spec : Prop :=
  ∀ n, P12340789103204813732.a n = A319433 n

end A319433

/-! ## A319433.P8306180812773508402

`A003622(n+2)%(n+2)`
-/

namespace A319433.P8306180812773508402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (n + 2)) (n + 2 : ℤ)

end

end A319433.P8306180812773508402

namespace A319433

/-- `A003622(n+2)%(n+2)` -/
def P8306180812773508402.Spec : Prop :=
  ∀ n, P8306180812773508402.a n = A319433 n

end A319433

/-! ## A319433.P13795993891285749412

`A060143(A005614(n)+n)`
-/

namespace A319433.P13795993891285749412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A005614 n + (n : ℤ)).toNat

end

end A319433.P13795993891285749412

namespace A319433

/-- `A060143(A005614(n)+n)` -/
def P13795993891285749412.Spec : Prop :=
  ∀ n, P13795993891285749412.a n = A319433 n

end A319433

/-! ## A319433.P1923570293929009056

`A005206(n-A003849(n))`
-/

namespace A319433.P1923570293929009056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n : ℤ) - A003849 n).toNat

end

end A319433.P1923570293929009056

namespace A319433

/-- `A005206(n-A003849(n))` -/
def P1923570293929009056.Spec : Prop :=
  ∀ n, P1923570293929009056.a n = A319433 n

end A319433

/-! ## A319433.P18267169169877867453

`A101803(n-A003849(n))`
-/

namespace A319433.P18267169169877867453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 ((n : ℤ) - A003849 n).toNat

end

end A319433.P18267169169877867453

namespace A319433

/-- `A101803(n-A003849(n))` -/
def P18267169169877867453.Spec : Prop :=
  ∀ n, P18267169169877867453.a n = A319433 n

end A319433

/-! ## A319433.P4460817564312826628

`A261094(n-A007895(n))`
-/

namespace A319433.P4460817564312826628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 ((n : ℤ) - A007895 n).toNat

end

end A319433.P4460817564312826628

namespace A319433

/-- `A261094(n-A007895(n))` -/
def P4460817564312826628.Spec : Prop :=
  ∀ n, P4460817564312826628.a n = A319433 n

end A319433

/-! ## A319433.P9459034675883751096

`A058065(n)%A028310(n)`
-/

namespace A319433.P9459034675883751096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058065 n) (A028310 n)

end

end A319433.P9459034675883751096

namespace A319433

/-- `A058065(n)%A028310(n)` -/
def P9459034675883751096.Spec : Prop :=
  ∀ n, P9459034675883751096.a n = A319433 n

end A319433

/-! ## A319433.P5883545136986725544

`A191403(n)%A022413(n)`
-/

namespace A319433.P5883545136986725544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191403 n) (A022413 n)

end

end A319433.P5883545136986725544

namespace A319433

/-- `A191403(n)%A022413(n)` -/
def P5883545136986725544.Spec : Prop :=
  ∀ n, P5883545136986725544.a n = A319433 n

end A319433

/-! ## A319433.P18010339401542212928

`A060143(A096270(n+1)+n)`
-/

namespace A319433.P18010339401542212928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A096270 (n + 1) + (n : ℤ)).toNat

end

end A319433.P18010339401542212928

namespace A319433

/-- `A060143(A096270(n+1)+n)` -/
def P18010339401542212928.Spec : Prop :=
  ∀ n, P18010339401542212928.a n = A319433 n

end A319433

/-! ## A319433.P9972220952461720118

`A101803(n-A005614(n+1))`
-/

namespace A319433.P9972220952461720118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 ((n : ℤ) - A005614 (n + 1)).toNat

end

end A319433.P9972220952461720118

namespace A319433

/-- `A101803(n-A005614(n+1))` -/
def P9972220952461720118.Spec : Prop :=
  ∀ n, P9972220952461720118.a n = A319433 n

end A319433

/-! ## A319433.P5223818833102370126

`A026274(n+1)%A144396(n+1)`
-/

namespace A319433.P5223818833102370126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026274 (n + 1)) (A144396 (n + 1))

end

end A319433.P5223818833102370126

namespace A319433

/-- `A026274(n+1)%A144396(n+1)` -/
def P5223818833102370126.Spec : Prop :=
  ∀ n, P5223818833102370126.a n = A319433 n

end A319433

/-! ## A319433.P11432178919981021552

`A005206(A022342(A005206(n+1)))`
-/

namespace A319433.P11432178919981021552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A022342 (A005206 (n + 1)).toNat).toNat

end

end A319433.P11432178919981021552

namespace A319433

/-- `A005206(A022342(A005206(n+1)))` -/
def P11432178919981021552.Spec : Prop :=
  ∀ n, P11432178919981021552.a n = A319433 n

end A319433

/-! ## A319433.P5894026196736421235

`A057843(n+2)%(n+1)`
-/

namespace A319433.P5894026196736421235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057843 (n + 2)) (n + 1 : ℤ)

end

end A319433.P5894026196736421235

namespace A319433

/-- `A057843(n+2)%(n+1)` -/
def P5894026196736421235.Spec : Prop :=
  ∀ n, P5894026196736421235.a n = A319433 n

end A319433

/-! ## A319433.P5923167653979874815

`A054770(n+2)%(n+2)`
-/

namespace A319433.P5923167653979874815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054770 (n + 2)) (n + 2 : ℤ)

end

end A319433.P5923167653979874815

namespace A319433

/-- `A054770(n+2)%(n+2)` -/
def P5923167653979874815.Spec : Prop :=
  ∀ n, P5923167653979874815.a n = A319433 n

end A319433

/-! ## A319433.P16151884230104699855

`A004957(n+2)%(n+3)`
-/

namespace A319433.P16151884230104699855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004957 (n + 2)) (n + 3 : ℤ)

end

end A319433.P16151884230104699855

namespace A319433

/-- `A004957(n+2)%(n+3)` -/
def P16151884230104699855.Spec : Prop :=
  ∀ n, P16151884230104699855.a n = A319433 n

end A319433

/-! ## A319433.P1652332718201181192

`A023444(A019446(n+2))`
-/

namespace A319433.P1652332718201181192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A019446 (n + 2)).toNat

end

end A319433.P1652332718201181192

namespace A319433

/-- `A023444(A019446(n+2))` -/
def P1652332718201181192.Spec : Prop :=
  ∀ n, P1652332718201181192.a n = A319433 n

end A319433

/-! ## A319433.P3662318157239074218

`A026352(n+2)%(n+3)`
-/

namespace A319433.P3662318157239074218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026352 (n + 2)) (n + 3 : ℤ)

end

end A319433.P3662318157239074218

namespace A319433

/-- `A026352(n+2)%(n+3)` -/
def P3662318157239074218.Spec : Prop :=
  ∀ n, P3662318157239074218.a n = A319433 n

end A319433

/-!
# A319434: Take Golomb's sequence A001462 and shorten all the runs by 1.

The programs for A319434, the canonical program `A319434.P4760502082362804090` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319434 has offset 1).

The definition of A319434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319434.P4760502082362804090

`A001462(A001462(A001462(n+1)+n+1)+n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319434

/-- `A001462(A001462(A001462(n+1)+n+1)+n+1)` -/
def P4760502082362804090.Spec : Prop :=
  ∀ n, P4760502082362804090.a n = A319434 (n + 1)

theorem P4760502082362804090.correct : P4760502082362804090.Spec := by
  intro n
  simp only [A319434, Nat.add_sub_cancel]

end A319434

/-! ## A319434.P2668834912662589400

`comp[A109512(n)-n]-n`
-/

namespace A319434.P2668834912662589400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A319434.P2668834912662589400

namespace A319434

/-- `comp[A109512(n)-n]-n` -/
def P2668834912662589400.Spec : Prop :=
  ∀ n, P2668834912662589400.a n = A319434 (n + 1)

end A319434

/-! ## A319434.P8848597001416267491

`∑[char[∑[A001462(n+1)-1]]]+1`
-/

namespace A319434.P8848597001416267491
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319434.P8848597001416267491

namespace A319434

/-- `∑[char[∑[A001462(n+1)-1]]]+1` -/
def P8848597001416267491.Spec : Prop :=
  ∀ n, (P8848597001416267491.a n : ℤ) = A319434 (n + 1)

end A319434

/-! ## A319434.P9749676053842707160

`∑[char[A109512(n+1)-n-(n+1)]]+1`
-/

namespace A319434.P9749676053842707160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1) - (n : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319434.P9749676053842707160

namespace A319434

/-- `∑[char[A109512(n+1)-n-(n+1)]]+1` -/
def P9749676053842707160.Spec : Prop :=
  ∀ n, (P9749676053842707160.a n : ℤ) = A319434 (n + 1)

end A319434

/-! ## A319434.P11440957139437141083

`comp[∑[A001463(n+1)+1-A095114(n+1)]-1]+1-n`
-/

namespace A319434.P11440957139437141083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1) + (1 - A095114 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A319434.P11440957139437141083

namespace A319434

/-- `comp[∑[A001463(n+1)+1-A095114(n+1)]-1]+1-n` -/
def P11440957139437141083.Spec : Prop :=
  ∀ n, P11440957139437141083.a n = A319434 (n + 1)

end A319434

/-! ## A319434.P11622675897108506636

`A001462(comp[∑[A001462(n+1)]-1]+1)`
-/

namespace A319434.P11622675897108506636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A319434.P11622675897108506636

namespace A319434

/-- `A001462(comp[∑[A001462(n+1)]-1]+1)` -/
def P11622675897108506636.Spec : Prop :=
  ∀ n, P11622675897108506636.a n = A319434 (n + 1)

end A319434

/-! ## A319434.P18024694391091688051

`A001462(a(n-1)+1+n)` with `a(0)=2`
-/

namespace A319434.P18024694391091688051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001462 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A319434.P18024694391091688051

namespace A319434

/-- `A001462(a(n-1)+1+n)` -/
def P18024694391091688051.Spec : Prop :=
  ∀ n, P18024694391091688051.a n = A319434 (n + 1)

end A319434

/-! ## A319434.P17774209098953168390

`A001462(a(n-1)-xor(n, -1))` with `a(0)=2`
-/

namespace A319434.P17774209098953168390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001462 (a (n - 1) - Int.xor (n : ℤ) (-1)).toNat

end

end A319434.P17774209098953168390

namespace A319434

/-- `A001462(a(n-1)-xor(n, -1))` -/
def P17774209098953168390.Spec : Prop :=
  ∀ n, P17774209098953168390.a n = A319434 (n + 1)

end A319434

/-! ## A319434.P7688696630996415918

`A001462(comp[∑[A001462(n+1)]]+2)`
-/

namespace A319434.P7688696630996415918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A319434.P7688696630996415918

namespace A319434

/-- `A001462(comp[∑[A001462(n+1)]]+2)` -/
def P7688696630996415918.Spec : Prop :=
  ∀ n, P7688696630996415918.a n = A319434 (n + 1)

end A319434

/-! ## A319434.P8094456479695844897

`A001462(A001462(A224731(n+1))+n+1)`
-/

namespace A319434.P8094456479695844897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001462 (A224731 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A319434.P8094456479695844897

namespace A319434

/-- `A001462(A001462(A224731(n+1))+n+1)` -/
def P8094456479695844897.Spec : Prop :=
  ∀ n, P8094456479695844897.a n = A319434 (n + 1)

end A319434

/-!
# A319435: Number of partitions of n^2 into exactly n nonzero squares.

The programs for A319435, there is no canonical definition to state claims against.
-/

/-! ## A319435.P14838223213506523265

`A243148(C(n²+1, 2)+n)`
-/

namespace A319435.P14838223213506523265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (Nat.choose (n ^ 2 + 1) 2 + n)

end

end A319435.P14838223213506523265

/-! ## A319435.P4173043446991741952

`A243148((n^4+n²)/2+n)`
-/

namespace A319435.P4173043446991741952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (SequenceMachineLib.roundAway ((n ^ 4 + n ^ 2 : ℚ) / 2 + (n : ℚ))).toNat

end

end A319435.P4173043446991741952

/-!
# A319436: Number of palindromic plane trees with n nodes.

The programs for A319436, there is no canonical definition to state claims against.
-/

/-! ## A319436.P8968992893656910651

`A026034(n)-A285006(A080476(n+1))`
-/

namespace A319436.P8968992893656910651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 n - A285006 (A080476 (n + 1)).toNat

end

end A319436.P8968992893656910651

/-! ## A319436.P13975615992293494239

`A026034(n)-A133165(A133165(n+1)+1)`
-/

namespace A319436.P13975615992293494239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 n - A133165 (A133165 (n + 1) + 1).toNat

end

end A319436.P13975615992293494239

/-! ## A319436.P6334750817120324466

`A003056(A148230(n)+A148182(n))`
-/

namespace A319436.P6334750817120324466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148230 n + A148182 n).toNat

end

end A319436.P6334750817120324466

/-! ## A319436.P9729063273898462415

`A003056(A148230(n)+A148184(n))`
-/

namespace A319436.P9729063273898462415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148230 n + A148184 n).toNat

end

end A319436.P9729063273898462415

/-! ## A319436.P6262034755597155254

`A003056(A148230(n)+A148187(n))`
-/

namespace A319436.P6262034755597155254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148230 n + A148187 n).toNat

end

end A319436.P6262034755597155254

/-!
# A319437: Number of series-reduced palindromic plane trees with n nodes.

The programs for A319437, there is no canonical definition to state claims against.
-/

/-! ## A319437.P2082959497144705799

`Δ[A022860(n+1)%A132334(2*(n+1))]`
-/

namespace A319437.P2082959497144705799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022860 (n + 1)) (A132334 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319437.P2082959497144705799

/-! ## A319437.P2980799044676623027

`A003056(A006127(n))%A173497(n)`
-/

namespace A319437.P2980799044676623027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A006127 n).toNat) (A173497 n)

end

end A319437.P2980799044676623027

/-! ## A319437.P3615246458980467032

`A373811(A192654(n))`
-/

namespace A319437.P3615246458980467032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A192654 n).toNat

end

end A319437.P3615246458980467032

/-! ## A319437.P10710253535691035806

`A373811(A192675(n+1))`
-/

namespace A319437.P10710253535691035806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A192675 (n + 1)).toNat

end

end A319437.P10710253535691035806

/-! ## A319437.P4172785625069569510

`A056556(A005645(n+6))`
-/

namespace A319437.P4172785625069569510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A005645 (n + 6)).toNat

end

end A319437.P4172785625069569510

/-!
# A319439: Number of ways to write n as the sum, u + v + w, of three base-2 palindromes (from A006995) with 0 <= u <= v <= w.

The programs for A319439, there is no canonical definition to state claims against.
-/

/-! ## A319439.P13807847713713980789

`A237271(A333225(n+1)-n)`
-/

namespace A319439.P13807847713713980789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A333225 (n + 1) - (n : ℤ)).toNat

end

end A319439.P13807847713713980789

/-! ## A319439.P1140375832333729463

`A193169(∑[record[A207024(n+1)]])`
-/

namespace A319439.P1140375832333729463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319439.P1140375832333729463

/-! ## A319439.P17951495296818941399

`A001221(A237667(n)+A107248(n))`
-/

namespace A319439.P17951495296818941399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237667 n + A107248 n).toNat

end

end A319439.P17951495296818941399

/-! ## A319439.P14450208126287972983

`A086435(A011782(n)+A006519(3*n+5))`
-/

namespace A319439.P14450208126287972983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A011782 n + A006519 (3 * n + 5)).toNat

end

end A319439.P14450208126287972983

/-! ## A319439.P17501202362615445395

`A055642(A015440(n)%A229337(3*n+5))`
-/

namespace A319439.P17501202362615445395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A015440 n) (A229337 (3 * n + 5))).toNat

end

end A319439.P17501202362615445395

/-!
# A319440: Squares of non-palindromic number.

The programs for A319440, the canonical program `A319440.P13665761079487371990` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319440 has offset 1).

The definition of A319440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319440.P13665761079487371990

`A029742(n+1)²`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A319440

/-- `A029742(n+1)²` -/
def P13665761079487371990.Spec : Prop :=
  ∀ n, P13665761079487371990.a n = A319440 (n + 1)

theorem P13665761079487371990.correct : P13665761079487371990.Spec := by
  intro n
  simp only [A319440, Nat.add_sub_cancel]

end A319440

/-! ## A319440.P8815791456810631299

`comp[A261914(n)]²`
-/

namespace A319440.P8815791456810631299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A319440.P8815791456810631299

namespace A319440

/-- `comp[A261914(n)]²` -/
def P8815791456810631299.Spec : Prop :=
  ∀ n, (P8815791456810631299.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P592088507147264134

`comp[A330420(n)]²`
-/

namespace A319440.P592088507147264134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A319440.P592088507147264134

namespace A319440

/-- `comp[A330420(n)]²` -/
def P592088507147264134.Spec : Prop :=
  ∀ n, (P592088507147264134.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P17776114244872880717

`lt[0, A261424(n)]²`
-/

namespace A319440.P17776114244872880717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A319440.P17776114244872880717

namespace A319440

/-- `lt[0, A261424(n)]²` -/
def P17776114244872880717.Spec : Prop :=
  ∀ n, (P17776114244872880717.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P15752731711818245224

`comp[A002113(n+1)]²`
-/

namespace A319440.P15752731711818245224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A319440.P15752731711818245224

namespace A319440

/-- `comp[A002113(n+1)]²` -/
def P15752731711818245224.Spec : Prop :=
  ∀ n, (P15752731711818245224.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P2448556033179404757

`A319441(n+1)^(2/3)`
-/

namespace A319440.P2448556033179404757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A319441 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A319440.P2448556033179404757

namespace A319440

/-- `A319441(n+1)^(2/3)` -/
def P2448556033179404757.Spec : Prop :=
  ∀ n, P2448556033179404757.a n = (A319440 (n + 1) : ℝ)

end A319440

/-! ## A319440.P12473374397735883472

`lt[1, (n-A004086(n))²]²`
-/

namespace A319440.P12473374397735883472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004086 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A319440.P12473374397735883472

namespace A319440

/-- `lt[1, (n-A004086(n))²]²` -/
def P12473374397735883472.Spec : Prop :=
  ∀ n, (P12473374397735883472.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P15741269068144764215

`A029742(2*(n+1)-(n+1))^2`
-/

namespace A319440.P15741269068144764215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (2 * (n + 1) - (n + 1)) ^ 2

end

end A319440.P15741269068144764215

namespace A319440

/-- `A029742(2*(n+1)-(n+1))^2` -/
def P15741269068144764215.Spec : Prop :=
  ∀ n, P15741269068144764215.a n = A319440 (n + 1)

end A319440

/-! ## A319440.P7969083570463370068

`A319441(n+1)/A029742(n+1)`
-/

namespace A319440.P7969083570463370068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319441 (n + 1) : ℚ) / (A029742 (n + 1) : ℚ)

end

end A319440.P7969083570463370068

namespace A319440

/-- `A319441(n+1)/A029742(n+1)` -/
def P7969083570463370068.Spec : Prop :=
  ∀ n, P7969083570463370068.a n = (A319440 (n + 1) : ℚ)

end A319440

/-! ## A319440.P1869762168972366715

`lt[0, A256756(n)]²`
-/

namespace A319440.P1869762168972366715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A319440.P1869762168972366715

namespace A319440

/-- `lt[0, A256756(n)]²` -/
def P1869762168972366715.Spec : Prop :=
  ∀ n, (P1869762168972366715.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P4298989445136297489

`lt[0, A319387(n)]²`
-/

namespace A319440.P4298989445136297489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A319440.P4298989445136297489

namespace A319440

/-- `lt[0, A319387(n)]²` -/
def P4298989445136297489.Spec : Prop :=
  ∀ n, (P4298989445136297489.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P13460589322432774642

`lt[0, A338827(n)]²`
-/

namespace A319440.P13460589322432774642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A319440.P13460589322432774642

namespace A319440

/-- `lt[0, A338827(n)]²` -/
def P13460589322432774642.Spec : Prop :=
  ∀ n, (P13460589322432774642.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P16379937072731496974

`lt[A047813(n), n]²`
-/

namespace A319440.P16379937072731496974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A319440.P16379937072731496974

namespace A319440

/-- `lt[A047813(n), n]²` -/
def P16379937072731496974.Spec : Prop :=
  ∀ n, (P16379937072731496974.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P2275025298668871385

`lt[0, A262038(n)-n]²`
-/

namespace A319440.P2275025298668871385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A319440.P2275025298668871385

namespace A319440

/-- `lt[0, A262038(n)-n]²` -/
def P2275025298668871385.Spec : Prop :=
  ∀ n, (P2275025298668871385.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P966381318319244710

`lt[A265525(n), n]²`
-/

namespace A319440.P966381318319244710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A319440.P966381318319244710

namespace A319440

/-- `lt[A265525(n), n]²` -/
def P966381318319244710.Spec : Prop :=
  ∀ n, (P966381318319244710.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P8209088333712538636

`lt[lt[1, A214950(n)], A082216(n)]²`
-/

namespace A319440.P8209088333712538636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n ^ 2

end

end A319440.P8209088333712538636

namespace A319440

/-- `lt[lt[1, A214950(n)], A082216(n)]²` -/
def P8209088333712538636.Spec : Prop :=
  ∀ n, (P8209088333712538636.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P5086554668214792850

`lt[lt[1, A347323(n)], A082216(n)]²`
-/

namespace A319440.P5086554668214792850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n ^ 2

end

end A319440.P5086554668214792850

namespace A319440

/-- `lt[lt[1, A347323(n)], A082216(n)]²` -/
def P5086554668214792850.Spec : Prop :=
  ∀ n, (P5086554668214792850.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P13017735501193267305

`comp[A082216(n)]²`
-/

namespace A319440.P13017735501193267305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A319440.P13017735501193267305

namespace A319440

/-- `comp[A082216(n)]²` -/
def P13017735501193267305.Spec : Prop :=
  ∀ n, (P13017735501193267305.a n : ℤ) = A319440 (n + 1)

end A319440

/-! ## A319440.P13994024375276652424

`lt[lt[n, A086066(n)], A082216(n)]²`
-/

namespace A319440.P13994024375276652424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n ^ 2

end

end A319440.P13994024375276652424

namespace A319440

/-- `lt[lt[n, A086066(n)], A082216(n)]²` -/
def P13994024375276652424.Spec : Prop :=
  ∀ n, (P13994024375276652424.a n : ℤ) = A319440 (n + 1)

end A319440

/-!
# A319441: Cubes of non-palindromic numbers.

The programs for A319441, the canonical program `A319441.P373140411895671791` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319441 has offset 1).

The definition of A319441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319441.P373140411895671791

`A029742(n+1)^3`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A319441

/-- `A029742(n+1)^3` -/
def P373140411895671791.Spec : Prop :=
  ∀ n, P373140411895671791.a n = A319441 (n + 1)

theorem P373140411895671791.correct : P373140411895671791.Spec := by
  intro n
  simp only [A319441, Nat.add_sub_cancel]

end A319441

/-! ## A319441.P7342595612310127554

`comp[A330420(n)]^3`
-/

namespace A319441.P7342595612310127554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A319441.P7342595612310127554

namespace A319441

/-- `comp[A330420(n)]^3` -/
def P7342595612310127554.Spec : Prop :=
  ∀ n, (P7342595612310127554.a n : ℤ) = A319441 (n + 1)

end A319441

/-! ## A319441.P2049061459417888810

`sqrt(A319440(n+1)^3)`
-/

namespace A319441.P2049061459417888810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319440 (n + 1) ^ 3 : ℝ)

end

end A319441.P2049061459417888810

namespace A319441

/-- `sqrt(A319440(n+1)^3)` -/
def P2049061459417888810.Spec : Prop :=
  ∀ n, P2049061459417888810.a n = (A319441 (n + 1) : ℝ)

end A319441

/-! ## A319441.P4959429096890668584

`comp[A002113(n+1)]^3`
-/

namespace A319441.P4959429096890668584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A319441.P4959429096890668584

namespace A319441

/-- `comp[A002113(n+1)]^3` -/
def P4959429096890668584.Spec : Prop :=
  ∀ n, (P4959429096890668584.a n : ℤ) = A319441 (n + 1)

end A319441

/-! ## A319441.P14375800123816850278

`comp[A329796(n+1)]^3`
-/

namespace A319441.P14375800123816850278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A319441.P14375800123816850278

namespace A319441

/-- `comp[A329796(n+1)]^3` -/
def P14375800123816850278.Spec : Prop :=
  ∀ n, (P14375800123816850278.a n : ℤ) = A319441 (n + 1)

end A319441

/-! ## A319441.P16976383875825858035

`comp[A261914(n)]²*comp[A261914(n)]`
-/

namespace A319441.P16976383875825858035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A319441.P16976383875825858035

namespace A319441

/-- `comp[A261914(n)]²*comp[A261914(n)]` -/
def P16976383875825858035.Spec : Prop :=
  ∀ n, (P16976383875825858035.a n : ℤ) = A319441 (n + 1)

end A319441

/-! ## A319441.P7101075429221342155

`A029742(n+1)*A319440(n+1)`
-/

namespace A319441.P7101075429221342155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1) * A319440 (n + 1)

end

end A319441.P7101075429221342155

namespace A319441

/-- `A029742(n+1)*A319440(n+1)` -/
def P7101075429221342155.Spec : Prop :=
  ∀ n, P7101075429221342155.a n = A319441 (n + 1)

theorem P7101075429221342155.correct : P7101075429221342155.Spec := by
  intro n
  simp only [A319441, Nat.add_sub_cancel, A319441.P7101075429221342155.a, A319441.P373140411895671791.a, A029742, A029742.P171420543975748930.f1, A029742.P171420543975748930.a, A319440, A319440.P13665761079487371990.a, A262037, A262037.P5725581086224179713.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, A051022, A051022.P12829567687202286752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319441

/-! ## A319441.P3975721409402094231

`A000578(A029742(n+1))`
-/

namespace A319441.P3975721409402094231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029742 (n + 1)).toNat

end

end A319441.P3975721409402094231

namespace A319441

/-- `A000578(A029742(n+1))` -/
def P3975721409402094231.Spec : Prop :=
  ∀ n, P3975721409402094231.a n = A319441 (n + 1)

end A319441

/-! ## A319441.P17293197517073291631

`comp[A082216(n)]²*comp[A082216(n)]`
-/

namespace A319441.P17293197517073291631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A319441.P17293197517073291631

namespace A319441

/-- `comp[A082216(n)]²*comp[A082216(n)]` -/
def P17293197517073291631.Spec : Prop :=
  ∀ n, (P17293197517073291631.a n : ℤ) = A319441 (n + 1)

end A319441

/-! ## A319441.P16213369359325742691

`A185549(A319440(n+1))`
-/

namespace A319441.P16213369359325742691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A319440 (n + 1)).toNat

end

end A319441.P16213369359325742691

namespace A319441

/-- `A185549(A319440(n+1))` -/
def P16213369359325742691.Spec : Prop :=
  ∀ n, P16213369359325742691.a n = A319441 (n + 1)

end A319441

/-!
# A319442: Number of divisors of n over the Eisenstein integers.

The programs for A319442, the canonical program `A319442.P11992192506322077877` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319442 has offset 1).

The definition of A319442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319442.P18379230191234650339

`∑{d}[n+1, A000005(#)*A000086((n+1)/#)]`
-/

namespace A319442.P18379230191234650339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319442.P18379230191234650339

namespace A319442

/-- `∑{d}[n+1, A000005(#)*A000086((n+1)/#)]` -/
def P18379230191234650339.Spec : Prop :=
  ∀ n, P18379230191234650339.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P15317227188600013390

`∑{d}[n+1, A002324(#)*A034444((n+1)/#)]`
-/

namespace A319442.P15317227188600013390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319442.P15317227188600013390

namespace A319442

/-- `∑{d}[n+1, A002324(#)*A034444((n+1)/#)]` -/
def P15317227188600013390.Spec : Prop :=
  ∀ n, P15317227188600013390.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P5446795864477296620

`∑{d}[n+1, A035178(#)*A068068((n+1)/#)]`
-/

namespace A319442.P5446795864477296620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035178 d * A068068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319442.P5446795864477296620

namespace A319442

/-- `∑{d}[n+1, A035178(#)*A068068((n+1)/#)]` -/
def P5446795864477296620.Spec : Prop :=
  ∀ n, P5446795864477296620.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P13270189382272116552

`∑{d}[n+1, A255648(#)*A385044((n+1)/#)]`
-/

namespace A319442.P13270189382272116552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255648 d * A385044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319442.P13270189382272116552

namespace A319442

/-- `∑{d}[n+1, A255648(#)*A385044((n+1)/#)]` -/
def P13270189382272116552.Spec : Prop :=
  ∀ n, P13270189382272116552.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P6472557472712015843

`∑{d}[n+1, A048691(#)*A049347((n+1)/#-1)]`
-/

namespace A319442.P6472557472712015843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A049347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A319442.P6472557472712015843

namespace A319442

/-- `∑{d}[n+1, A048691(#)*A049347((n+1)/#-1)]` -/
def P6472557472712015843.Spec : Prop :=
  ∀ n, P6472557472712015843.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P11992192506322077877

`A002265(A054584(n+1)*A054584(A248909(n+1)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319442

/-- `A002265(A054584(n+1)*A054584(A248909(n+1)))` -/
def P11992192506322077877.Spec : Prop :=
  ∀ n, P11992192506322077877.a n = A319442 (n + 1)

theorem P11992192506322077877.correct : P11992192506322077877.Spec := by
  intro n
  simp only [A319442, Nat.add_sub_cancel]

end A319442

/-! ## A319442.P3076008689238548867

`∑{d}[n+1, A113063(#²)]`
-/

namespace A319442.P3076008689238548867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113063 (d ^ 2)

end

end A319442.P3076008689238548867

namespace A319442

/-- `∑{d}[n+1, A113063(#²)]` -/
def P3076008689238548867.Spec : Prop :=
  ∀ n, P3076008689238548867.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P7156335329408881772

`∑{d}[n+1, A255648(#²)]`
-/

namespace A319442.P7156335329408881772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255648 (d ^ 2)

end

end A319442.P7156335329408881772

namespace A319442

/-- `∑{d}[n+1, A255648(#²)]` -/
def P7156335329408881772.Spec : Prop :=
  ∀ n, P7156335329408881772.a n = A319442 (n + 1)

end A319442

/-! ## A319442.P4322294702358216465

`∑{d}[2*(n+1)², A088534(#)]`
-/

namespace A319442.P4322294702358216465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088534 d

end

end A319442.P4322294702358216465

namespace A319442

/-- `∑{d}[2*(n+1)², A088534(#)]` -/
def P4322294702358216465.Spec : Prop :=
  ∀ n, P4322294702358216465.a n = A319442 (n + 1)

end A319442

/-!
# A319443: Number of distinct Eisenstein primes in the factorization of n.

The programs for A319443, the canonical program `A319443.P8498089989198390355` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319443 has offset 1).

The definition of A319443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319443.P8498089989198390355

`∑{p}[n+1, C(2, #%3)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319443

/-- `∑{p}[n+1, C(2, #%3)]` -/
def P8498089989198390355.Spec : Prop :=
  ∀ n, (P8498089989198390355.a n : ℤ) = A319443 (n + 1)

theorem P8498089989198390355.correct : P8498089989198390355.Spec := by
  intro n
  simp only [A319443, Nat.add_sub_cancel]

end A319443

/-! ## A319443.P912405013847668868

`∑{p}[n+1, A001817(#)]`
-/

namespace A319443.P912405013847668868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001817 p

end

end A319443.P912405013847668868

namespace A319443

/-- `∑{p}[n+1, A001817(#)]` -/
def P912405013847668868.Spec : Prop :=
  ∀ n, P912405013847668868.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P18308577305538468095

`∑{p}[n+1, A082478(#)]`
-/

namespace A319443.P18308577305538468095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A082478 p

end

end A319443.P18308577305538468095

namespace A319443

/-- `∑{p}[n+1, A082478(#)]` -/
def P18308577305538468095.Spec : Prop :=
  ∀ n, P18308577305538468095.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P15159000653583629854

`∑{p}[n+1, A131534(#)]`
-/

namespace A319443.P15159000653583629854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A131534 p

end

end A319443.P15159000653583629854

namespace A319443

/-- `∑{p}[n+1, A131534(#)]` -/
def P15159000653583629854.Spec : Prop :=
  ∀ n, P15159000653583629854.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P1638450881602546010

`∑{p}[n+1, A279060(#)]`
-/

namespace A319443.P1638450881602546010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A279060 p

end

end A319443.P1638450881602546010

namespace A319443

/-- `∑{p}[n+1, A279060(#)]` -/
def P1638450881602546010.Spec : Prop :=
  ∀ n, P1638450881602546010.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P13557018122200873489

`∑{p}[n+1, A319447(#)]`
-/

namespace A319443.P13557018122200873489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A319447 p

end

end A319443.P13557018122200873489

namespace A319443

/-- `∑{p}[n+1, A319447(#)]` -/
def P13557018122200873489.Spec : Prop :=
  ∀ n, P13557018122200873489.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P8772428821600712802

`∑{p}[n+1, A364011(#)]`
-/

namespace A319443.P8772428821600712802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A364011 p

end

end A319443.P8772428821600712802

namespace A319443

/-- `∑{p}[n+1, A364011(#)]` -/
def P8772428821600712802.Spec : Prop :=
  ∀ n, P8772428821600712802.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P2049034672741200345

`A319447(∏{p}[n+1, #])`
-/

namespace A319443.P2049034672741200345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319447 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A319443.P2049034672741200345

namespace A319443

/-- `A319447(∏{p}[n+1, #])` -/
def P2049034672741200345.Spec : Prop :=
  ∀ n, P2049034672741200345.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P17477172534332712412

`∑{p}[n+1, (A000203(#)%3)!]`
-/

namespace A319443.P17477172534332712412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Int.tmod (A000203 p) 3).toNat

end

end A319443.P17477172534332712412

namespace A319443

/-- `∑{p}[n+1, (A000203(#)%3)!]` -/
def P17477172534332712412.Spec : Prop :=
  ∀ n, (P17477172534332712412.a n : ℤ) = A319443 (n + 1)

end A319443

/-! ## A319443.P17217718472997636778

`∑{p}[n+1, A000217(#)%3+1]`
-/

namespace A319443.P17217718472997636778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Int.tmod (A000217 p) 3 + 1)

end

end A319443.P17217718472997636778

namespace A319443

/-- `∑{p}[n+1, A000217(#)%3+1]` -/
def P17217718472997636778.Spec : Prop :=
  ∀ n, P17217718472997636778.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P17295543179780220291

`A319447(A007947(n+1))`
-/

namespace A319443.P17295543179780220291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319447 (A007947 (n + 1)).toNat

end

end A319443.P17295543179780220291

namespace A319443

/-- `A319447(A007947(n+1))` -/
def P17295543179780220291.Spec : Prop :=
  ∀ n, P17295543179780220291.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P14096079488601076717

`∑{p}[n+1, A138805(A138805(#))]`
-/

namespace A319443.P14096079488601076717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A138805 (A138805 p).toNat

end

end A319443.P14096079488601076717

namespace A319443

/-- `∑{p}[n+1, A138805(A138805(#))]` -/
def P14096079488601076717.Spec : Prop :=
  ∀ n, P14096079488601076717.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P11777402138570663808

`∑{p}[n+1, A319100(A319100(#))]`
-/

namespace A319443.P11777402138570663808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A319100 (A319100 p).toNat

end

end A319443.P11777402138570663808

namespace A319443

/-- `∑{p}[n+1, A319100(A319100(#))]` -/
def P11777402138570663808.Spec : Prop :=
  ∀ n, P11777402138570663808.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P4250613579089887944

`A005088(n+1)+A001221(n+1)`
-/

namespace A319443.P4250613579089887944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1) + A001221 (n + 1)

end

end A319443.P4250613579089887944

namespace A319443

/-- `A005088(n+1)+A001221(n+1)` -/
def P4250613579089887944.Spec : Prop :=
  ∀ n, P4250613579089887944.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P3294042040504637555

`A001221(n+1)+A001221(A170824(n+1))`
-/

namespace A319443.P3294042040504637555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (A170824 (n + 1)).toNat

end

end A319443.P3294042040504637555

namespace A319443

/-- `A001221(n+1)+A001221(A170824(n+1))` -/
def P3294042040504637555.Spec : Prop :=
  ∀ n, P3294042040504637555.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P12869090887294207034

`A001221(n+1)+A001221(A248909(n+1))`
-/

namespace A319443.P12869090887294207034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (A248909 (n + 1)).toNat

end

end A319443.P12869090887294207034

namespace A319443

/-- `A001221(n+1)+A001221(A248909(n+1))` -/
def P12869090887294207034.Spec : Prop :=
  ∀ n, P12869090887294207034.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P1399628263519671352

`A001221(n+1)+A005090(n+1)-A368647(n+1)`
-/

namespace A319443.P1399628263519671352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A005090 (n + 1) - A368647 (n + 1))

end

end A319443.P1399628263519671352

namespace A319443

/-- `A001221(n+1)+A005090(n+1)-A368647(n+1)` -/
def P1399628263519671352.Spec : Prop :=
  ∀ n, P1399628263519671352.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P15242290401585501450

`∑{p}[n+1, A320001(#²)]`
-/

namespace A319443.P15242290401585501450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A320001 (p ^ 2)

end

end A319443.P15242290401585501450

namespace A319443

/-- `∑{p}[n+1, A320001(#²)]` -/
def P15242290401585501450.Spec : Prop :=
  ∀ n, P15242290401585501450.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P9858718335708751627

`∑{p}[n+1, A293895(#²)]`
-/

namespace A319443.P9858718335708751627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A293895 (p ^ 2)

end

end A319443.P9858718335708751627

namespace A319443

/-- `∑{p}[n+1, A293895(#²)]` -/
def P9858718335708751627.Spec : Prop :=
  ∀ n, P9858718335708751627.a n = A319443 (n + 1)

end A319443

/-! ## A319443.P9549709450786030188

`∑{p}[n+1, A073809(#²)]`
-/

namespace A319443.P9549709450786030188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A073809 (p ^ 2)

end

end A319443.P9549709450786030188

namespace A319443

/-- `∑{p}[n+1, A073809(#²)]` -/
def P9549709450786030188.Spec : Prop :=
  ∀ n, P9549709450786030188.a n = A319443 (n + 1)

end A319443

/-!
# A319444: Total number of factors in a factorization of n into Eisenstein primes.

The programs for A319444, the canonical program `A319444.P14641291008283883018` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319444 has offset 1).

The definition of A319444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319444.P13969958070621994503

`A255201(n+1)-A373592(n+1)`
-/

namespace A319444.P13969958070621994503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A373592 (n + 1)

end

end A319444.P13969958070621994503

namespace A319444

/-- `A255201(n+1)-A373592(n+1)` -/
def P13969958070621994503.Spec : Prop :=
  ∀ n, P13969958070621994503.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P18284809109009779816

`2*A001222(n+1)-A373592(n+1)`
-/

namespace A319444.P18284809109009779816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A373592 (n + 1)

end

end A319444.P18284809109009779816

namespace A319444

/-- `2*A001222(n+1)-A373592(n+1)` -/
def P18284809109009779816.Spec : Prop :=
  ∀ n, P18284809109009779816.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P14641291008283883018

`2*A001222(n+1)-A001222(A343430(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319444

/-- `2*A001222(n+1)-A001222(A343430(n+1))` -/
def P14641291008283883018.Spec : Prop :=
  ∀ n, P14641291008283883018.a n = A319444 (n + 1)

theorem P14641291008283883018.correct : P14641291008283883018.Spec := by
  intro n
  simp only [A319444, Nat.add_sub_cancel]

end A319444

/-! ## A319444.P15695017076150052366

`A001222(n+1)+A373591(n+1)+A007949(n+1)`
-/

namespace A319444.P15695017076150052366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A373591 (n + 1) + A007949 (n + 1))

end

end A319444.P15695017076150052366

namespace A319444

/-- `A001222(n+1)+A373591(n+1)+A007949(n+1)` -/
def P15695017076150052366.Spec : Prop :=
  ∀ n, P15695017076150052366.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P13761468038131492788

`A078458(A319985(n+1))`
-/

namespace A319444.P13761468038131492788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A319985 (n + 1)).toNat

end

end A319444.P13761468038131492788

namespace A319444

/-- `A078458(A319985(n+1))` -/
def P13761468038131492788.Spec : Prop :=
  ∀ n, P13761468038131492788.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P2117548896414562309

`A078458(A319986(n+1))`
-/

namespace A319444.P2117548896414562309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A319986 (n + 1)).toNat

end

end A319444.P2117548896414562309

namespace A319444

/-- `A078458(A319986(n+1))` -/
def P2117548896414562309.Spec : Prop :=
  ∀ n, P2117548896414562309.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P3579707124997003326

`A255201(n+1)-A065339(A319985(n+1))`
-/

namespace A319444.P3579707124997003326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A065339 (A319985 (n + 1)).toNat

end

end A319444.P3579707124997003326

namespace A319444

/-- `A255201(n+1)-A065339(A319985(n+1))` -/
def P3579707124997003326.Spec : Prop :=
  ∀ n, P3579707124997003326.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P7607531665478018516

`A255201(n+1)-A065339(A319986(n+1))`
-/

namespace A319444.P7607531665478018516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A065339 (A319986 (n + 1)).toNat

end

end A319444.P7607531665478018516

namespace A319444

/-- `A255201(n+1)-A065339(A319986(n+1))` -/
def P7607531665478018516.Spec : Prop :=
  ∀ n, P7607531665478018516.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P3265701713819531561

`2*A001222(n+1)-A065339(A319985(n+1))`
-/

namespace A319444.P3265701713819531561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A065339 (A319985 (n + 1)).toNat

end

end A319444.P3265701713819531561

namespace A319444

/-- `2*A001222(n+1)-A065339(A319985(n+1))` -/
def P3265701713819531561.Spec : Prop :=
  ∀ n, P3265701713819531561.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P9471073612053736753

`A001222((n+1)²/A343430(n+1))`
-/

namespace A319444.P9471073612053736753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A343430 (n + 1) : ℚ))).toNat

end

end A319444.P9471073612053736753

namespace A319444

/-- `A001222((n+1)²/A343430(n+1))` -/
def P9471073612053736753.Spec : Prop :=
  ∀ n, P9471073612053736753.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P12328400833172177523

`A001222((n+1)²)-A001222(A343430(n+1))`
-/

namespace A319444.P12328400833172177523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A001222 (A343430 (n + 1)).toNat

end

end A319444.P12328400833172177523

namespace A319444

/-- `A001222((n+1)²)-A001222(A343430(n+1))` -/
def P12328400833172177523.Spec : Prop :=
  ∀ n, P12328400833172177523.a n = A319444 (n + 1)

end A319444

/-! ## A319444.P10420287216117011303

`A001222((n+1)²)-A065339(A319985(n+1))`
-/

namespace A319444.P10420287216117011303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A065339 (A319985 (n + 1)).toNat

end

end A319444.P10420287216117011303

namespace A319444

/-- `A001222((n+1)²)-A065339(A319985(n+1))` -/
def P10420287216117011303.Spec : Prop :=
  ∀ n, P10420287216117011303.a n = A319444 (n + 1)

end A319444

/-!
# A319445: Number of Eisenstein integers in a reduced system modulo n.

The programs for A319445, the canonical program `A319445.P13237704803151138138` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319445 has offset 1).

The definition of A319445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319445.P3903820366777450072

`Δ[A002088(n)]*A227128(n+1)`
-/

namespace A319445.P3903820366777450072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A227128 (n + 1)

end

end A319445.P3903820366777450072

namespace A319445

/-- `Δ[A002088(n)]*A227128(n+1)` -/
def P3903820366777450072.Spec : Prop :=
  ∀ n, P3903820366777450072.a n = A319445 (n + 1)

end A319445

/-! ## A319445.P1599671019970906913

`Δ[A005728(n)]*A227128(n+1)`
-/

namespace A319445.P1599671019970906913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A227128 (n + 1)

end

end A319445.P1599671019970906913

namespace A319445

/-- `Δ[A005728(n)]*A227128(n+1)` -/
def P1599671019970906913.Spec : Prop :=
  ∀ n, P1599671019970906913.a n = A319445 (n + 1)

end A319445

/-! ## A319445.P8925117991558072

`A000010(n+1)*A227128(n+1)`
-/

namespace A319445.P8925117991558072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A227128 (n + 1)

end

end A319445.P8925117991558072

namespace A319445

/-- `A000010(n+1)*A227128(n+1)` -/
def P8925117991558072.Spec : Prop :=
  ∀ n, P8925117991558072.a n = A319445 (n + 1)

end A319445

/-! ## A319445.P12361771631638953784

`sqrt(A127473(n+1))*A227128(n+1)`
-/

namespace A319445.P12361771631638953784
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * (A227128 (n + 1) : ℝ)

end

end A319445.P12361771631638953784

namespace A319445

/-- `sqrt(A127473(n+1))*A227128(n+1)` -/
def P12361771631638953784.Spec : Prop :=
  ∀ n, P12361771631638953784.a n = (A319445 (n + 1) : ℝ)

end A319445

/-! ## A319445.P6191648970586748181

`(A039649(n+1)-1)*A227128(n+1)`
-/

namespace A319445.P6191648970586748181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A227128 (n + 1)

end

end A319445.P6191648970586748181

namespace A319445

/-- `(A039649(n+1)-1)*A227128(n+1)` -/
def P6191648970586748181.Spec : Prop :=
  ∀ n, P6191648970586748181.a n = A319445 (n + 1)

end A319445

/-! ## A319445.P18110785068899094879

`(n-A219428(n+1))*A227128(n+1)`
-/

namespace A319445.P18110785068899094879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A227128 (n + 1)

end

end A319445.P18110785068899094879

namespace A319445

/-- `(n-A219428(n+1))*A227128(n+1)` -/
def P18110785068899094879.Spec : Prop :=
  ∀ n, P18110785068899094879.a n = A319445 (n + 1)

end A319445

/-! ## A319445.P10576558910371538283

`∑{d}[n+1, (n+1)/#*A008683(#)]*A227128(n+1)`
-/

namespace A319445.P10576558910371538283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) * (A227128 (n + 1) : ℚ)

end

end A319445.P10576558910371538283

namespace A319445

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]*A227128(n+1)` -/
def P10576558910371538283.Spec : Prop :=
  ∀ n, P10576558910371538283.a n = (A319445 (n + 1) : ℚ)

end A319445

/-! ## A319445.P3952941673161588225

`abs(Δ[A327442(n)]*A227128(n+1))`
-/

namespace A319445.P3952941673161588225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A227128 (n + 1)|

end

end A319445.P3952941673161588225

namespace A319445

/-- `abs(Δ[A327442(n)]*A227128(n+1))` -/
def P3952941673161588225.Spec : Prop :=
  ∀ n, P3952941673161588225.a n = A319445 (n + 1)

end A319445

/-! ## A319445.P13237704803151138138

`sqrt(Δ[A049454(n)])*A227128(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319445

/-- `sqrt(Δ[A049454(n)])*A227128(n+1)` -/
def P13237704803151138138.Spec : Prop :=
  ∀ n, P13237704803151138138.a n = (A319445 (n + 1) : ℝ)

end A319445

/-! ## A319445.P11257172467651379245

`A227128(n+1)*A282634(A000124(n))`
-/

namespace A319445.P11257172467651379245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227128 (n + 1) * A282634 (A000124 n).toNat

end

end A319445.P11257172467651379245

namespace A319445

/-- `A227128(n+1)*A282634(A000124(n))` -/
def P11257172467651379245.Spec : Prop :=
  ∀ n, P11257172467651379245.a n = A319445 (n + 1)

end A319445

/-!
# A319446: Exponent of the group of the Eisenstein integers in a reduced system modulo n.

The programs for A319446, there is no canonical definition to state claims against.
-/

/-! ## A319446.P7397676141913820717

`A175291(gcd(A088557(n+1), A237836(n+1)))`
-/

namespace A319446.P7397676141913820717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175291 (Int.gcd (A088557 (n + 1)) (A237836 (n + 1)))

end

end A319446.P7397676141913820717

/-!
# A319447: a(n) is the rank of the multiplicative group of Eisenstein integers modulo n.

The programs for A319447, there is no canonical definition to state claims against.
-/

/-! ## A319447.P10085545376290428945

`A252464(A117660(n+1))-A222061(A185203(n))`
-/

namespace A319447.P10085545376290428945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A117660 (n + 1)).toNat - A222061 (A185203 n).toNat

end

end A319447.P10085545376290428945

/-! ## A319447.P7649211988858867891

`A252464(A117660(n+1)%A141739(n+1))`
-/

namespace A319447.P7649211988858867891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (Int.tmod (A117660 (n + 1)) (A141739 (n + 1))).toNat

end

end A319447.P7649211988858867891

/-! ## A319447.P440713704888592215

`A252464(A117660(n+1))%A108517(n+2)`
-/

namespace A319447.P440713704888592215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A117660 (n + 1)).toNat) (A108517 (n + 2))

end

end A319447.P440713704888592215

/-! ## A319447.P17533343656326851953

`A252464(A117660(n+1))+A185203(A185203(n)²)`
-/

namespace A319447.P17533343656326851953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A117660 (n + 1)).toNat + A185203 (A185203 n ^ 2).toNat

end

end A319447.P17533343656326851953

/-! ## A319447.P17024363116168508761

`A001222(A228171(n))*A252464(A117660(n+1))`
-/

namespace A319447.P17024363116168508761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A228171 n).toNat * A252464 (A117660 (n + 1)).toNat

end

end A319447.P17024363116168508761

/-!
# A319448: Moebius function mu(n) defined for the Eisenstein integers.

The programs for A319448, the canonical program `A319448.P9881597321087846825` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319448 has offset 1).

The definition of A319448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319448.P9881597321087846825

`(C(∏{p}[n+1, #], n)+1)%3-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319448

/-- `(C(∏{p}[n+1, #], n)+1)%3-1` -/
def P9881597321087846825.Spec : Prop :=
  ∀ n, P9881597321087846825.a n = A319448 (n + 1)

theorem P9881597321087846825.correct : P9881597321087846825.Spec := by
  intro n
  simp only [A319448, Nat.add_sub_cancel]

end A319448

/-! ## A319448.P167665538055012753

`A008966(n+1)*A049347(n)`
-/

namespace A319448.P167665538055012753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A049347 n

end

end A319448.P167665538055012753

namespace A319448

/-- `A008966(n+1)*A049347(n)` -/
def P167665538055012753.Spec : Prop :=
  ∀ n, P167665538055012753.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P12405578451152996282

`A010892(n)*A359155(n+1)`
-/

namespace A319448.P12405578451152996282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A359155 (n + 1)

end

end A319448.P12405578451152996282

namespace A319448

/-- `A010892(n)*A359155(n+1)` -/
def P12405578451152996282.Spec : Prop :=
  ∀ n, P12405578451152996282.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P10250307113600124140

`A049347(n)*A353559(n+1)`
-/

namespace A319448.P10250307113600124140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A353559 (n + 1)

end

end A319448.P10250307113600124140

namespace A319448

/-- `A049347(n)*A353559(n+1)` -/
def P10250307113600124140.Spec : Prop :=
  ∀ n, P10250307113600124140.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P5240934384386937945

`A049347(n)*A359377(n+1)`
-/

namespace A319448.P5240934384386937945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A359377 (n + 1)

end

end A319448.P5240934384386937945

namespace A319448

/-- `A049347(n)*A359377(n+1)` -/
def P5240934384386937945.Spec : Prop :=
  ∀ n, P5240934384386937945.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P16881848735553501115

`A257075(n)*A359377(n+1)`
-/

namespace A319448.P16881848735553501115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n * A359377 (n + 1)

end

end A319448.P16881848735553501115

namespace A319448

/-- `A257075(n)*A359377(n+1)` -/
def P16881848735553501115.Spec : Prop :=
  ∀ n, P16881848735553501115.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P4380032398009594897

`A008683(n+1)²*A049347(n)`
-/

namespace A319448.P4380032398009594897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A049347 n

end

end A319448.P4380032398009594897

namespace A319448

/-- `A008683(n+1)²*A049347(n)` -/
def P4380032398009594897.Spec : Prop :=
  ∀ n, P4380032398009594897.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P17574853132623441490

`A069158(n+1)²*A049347(n)`
-/

namespace A319448.P17574853132623441490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) ^ 2 * A049347 n

end

end A319448.P17574853132623441490

namespace A319448

/-- `A069158(n+1)²*A049347(n)` -/
def P17574853132623441490.Spec : Prop :=
  ∀ n, P17574853132623441490.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P10968298262961703045

`A085097(n+1)²*A049347(n)`
-/

namespace A319448.P10968298262961703045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (n + 1) ^ 2 * A049347 n

end

end A319448.P10968298262961703045

namespace A319448

/-- `A085097(n+1)²*A049347(n)` -/
def P10968298262961703045.Spec : Prop :=
  ∀ n, P10968298262961703045.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P10139468987439352820

`A117997(n+1)²*A049347(n)`
-/

namespace A319448.P10139468987439352820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117997 (n + 1) ^ 2 * A049347 n

end

end A319448.P10139468987439352820

namespace A319448

/-- `A117997(n+1)²*A049347(n)` -/
def P10139468987439352820.Spec : Prop :=
  ∀ n, P10139468987439352820.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P7247594809883078140

`A156277(n+1)²*A049347(n)`
-/

namespace A319448.P7247594809883078140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (n + 1) ^ 2 * A049347 n

end

end A319448.P7247594809883078140

namespace A319448

/-- `A156277(n+1)²*A049347(n)` -/
def P7247594809883078140.Spec : Prop :=
  ∀ n, P7247594809883078140.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P11048215083089169005

`A156277(n+1)²*A257075(n)`
-/

namespace A319448.P11048215083089169005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (n + 1) ^ 2 * A257075 n

end

end A319448.P11048215083089169005

namespace A319448

/-- `A156277(n+1)²*A257075(n)` -/
def P11048215083089169005.Spec : Prop :=
  ∀ n, P11048215083089169005.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P6488392413297224402

`A365428(n+1)²*A049347(n)`
-/

namespace A319448.P6488392413297224402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (n + 1) ^ 2 * A049347 n

end

end A319448.P6488392413297224402

namespace A319448

/-- `A365428(n+1)²*A049347(n)` -/
def P6488392413297224402.Spec : Prop :=
  ∀ n, P6488392413297224402.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P11452857010198743591

`A365428(n+1)²*A257075(n)`
-/

namespace A319448.P11452857010198743591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (n + 1) ^ 2 * A257075 n

end

end A319448.P11452857010198743591

namespace A319448

/-- `A365428(n+1)²*A257075(n)` -/
def P11452857010198743591.Spec : Prop :=
  ∀ n, P11452857010198743591.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P15830467211421671080

`A008683(n+1)*A365428(n+1)`
-/

namespace A319448.P15830467211421671080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A365428 (n + 1)

end

end A319448.P15830467211421671080

namespace A319448

/-- `A008683(n+1)*A365428(n+1)` -/
def P15830467211421671080.Spec : Prop :=
  ∀ n, P15830467211421671080.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P1505259224236667262

`A008836(n+1)*A365428(n+1)`
-/

namespace A319448.P1505259224236667262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A365428 (n + 1)

end

end A319448.P1505259224236667262

namespace A319448

/-- `A008836(n+1)*A365428(n+1)` -/
def P1505259224236667262.Spec : Prop :=
  ∀ n, P1505259224236667262.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P5243049669057020838

`A010555(n+1)*A365428(n+1)`
-/

namespace A319448.P5243049669057020838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1) * A365428 (n + 1)

end

end A319448.P5243049669057020838

namespace A319448

/-- `A010555(n+1)*A365428(n+1)` -/
def P5243049669057020838.Spec : Prop :=
  ∀ n, P5243049669057020838.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P15832222637329763040

`A064179(n+1)*A365428(n+1)`
-/

namespace A319448.P15832222637329763040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A365428 (n + 1)

end

end A319448.P15832222637329763040

namespace A319448

/-- `A064179(n+1)*A365428(n+1)` -/
def P15832222637329763040.Spec : Prop :=
  ∀ n, P15832222637329763040.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P12852225027127870260

`A076479(n+1)*A365428(n+1)`
-/

namespace A319448.P12852225027127870260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A365428 (n + 1)

end

end A319448.P12852225027127870260

namespace A319448

/-- `A076479(n+1)*A365428(n+1)` -/
def P12852225027127870260.Spec : Prop :=
  ∀ n, P12852225027127870260.a n = A319448 (n + 1)

end A319448

/-! ## A319448.P1044725841058279073

`A085097(n+1)*A365428(n+1)`
-/

namespace A319448.P1044725841058279073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (n + 1) * A365428 (n + 1)

end

end A319448.P1044725841058279073

namespace A319448

/-- `A085097(n+1)*A365428(n+1)` -/
def P1044725841058279073.Spec : Prop :=
  ∀ n, P1044725841058279073.a n = A319448 (n + 1)

end A319448

/-!
# A319449: Sum of the norm of divisors of n over Eisenstein integers, with associated divisors counted only once.

The programs for A319449, the canonical program `A319449.P14170580802697613063` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319449 has offset 1).

The definition of A319449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319449.P11603480609536032426

`∑{d}[n+1, A034676(#)*A131099((n+1)/#)]`
-/

namespace A319449.P11603480609536032426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A131099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319449.P11603480609536032426

namespace A319449

/-- `∑{d}[n+1, A034676(#)*A131099((n+1)/#)]` -/
def P11603480609536032426.Spec : Prop :=
  ∀ n, P11603480609536032426.a n = A319449 (n + 1)

end A319449

/-! ## A319449.P14170580802697613063

`∑{d}[n+1, A065764(#)*A162397((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319449

/-- `∑{d}[n+1, A065764(#)*A162397((n+1)/#)]` -/
def P14170580802697613063.Spec : Prop :=
  ∀ n, P14170580802697613063.a n = A319449 (n + 1)

theorem P14170580802697613063.correct : P14170580802697613063.Spec := by
  intro n
  simp only [A319449, Nat.add_sub_cancel]

end A319449

/-! ## A319449.P12618890503393204761

`∑{d}[n+1, A000082(#)*A326503((n+1)/#)]`
-/

namespace A319449.P12618890503393204761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A326503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319449.P12618890503393204761

namespace A319449

/-- `∑{d}[n+1, A000082(#)*A326503((n+1)/#)]` -/
def P12618890503393204761.Spec : Prop :=
  ∀ n, P12618890503393204761.a n = A319449 (n + 1)

end A319449

/-!
# A319450: Numbers k such that k and k + 1 both have primitive roots.

The programs for A319450, the canonical program `A319450.P261748575354384773` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319450 has offset 1).

The definition of A319450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319450.P8611451214188380090

`∩[A033948(n+1)-1, A033948(n+1)]`
-/

namespace A319450.P8611451214188380090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319450.P8611451214188380090

namespace A319450

/-- `∩[A033948(n+1)-1, A033948(n+1)]` -/
def P8611451214188380090.Spec : Prop :=
  ∀ n, (P8611451214188380090.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P261748575354384773

`A033948(eq[1, A033948(n+2)-A033948(n+1)]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A319450

/-- `A033948(eq[1, A033948(n+2)-A033948(n+1)]+1)` -/
def P261748575354384773.Spec : Prop :=
  ∀ n, P261748575354384773.a n = A319450 (n + 1)

theorem P261748575354384773.correct : P261748575354384773.Spec := by
  intro n
  simp only [A319450, Nat.add_sub_cancel]

end A319450

/-! ## A319450.P13609559758888374461

`A033948(lt[A033948(n+2)-A033948(n+1), 2]+1)`
-/

namespace A319450.P13609559758888374461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 2) - A033948 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A319450.P13609559758888374461

namespace A319450

/-- `A033948(lt[A033948(n+2)-A033948(n+1), 2]+1)` -/
def P13609559758888374461.Spec : Prop :=
  ∀ n, P13609559758888374461.a n = A319450 (n + 1)

end A319450

/-! ## A319450.P16208781147954173553

`record[A070667(A033948(n+1)+1)]`
-/

namespace A319450.P16208781147954173553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A033948 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319450.P16208781147954173553

namespace A319450

/-- `record[A070667(A033948(n+1)+1)]` -/
def P16208781147954173553.Spec : Prop :=
  ∀ n, P16208781147954173553.a n = A319450 (n + 1)

end A319450

/-! ## A319450.P2860903506416035038

`record[A160377(A033948(n+1)+1)]`
-/

namespace A319450.P2860903506416035038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (A033948 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319450.P2860903506416035038

namespace A319450

/-- `record[A160377(A033948(n+1)+1)]` -/
def P2860903506416035038.Spec : Prop :=
  ∀ n, P2860903506416035038.a n = A319450 (n + 1)

end A319450

/-! ## A319450.P13974712687181087680

`record[A160377(A160377(n+1)+2)]`
-/

namespace A319450.P13974712687181087680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (A160377 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319450.P13974712687181087680

namespace A319450

/-- `record[A160377(A160377(n+1)+2)]` -/
def P13974712687181087680.Spec : Prop :=
  ∀ n, P13974712687181087680.a n = A319450 (n + 1)

end A319450

/-! ## A319450.P2485825216080512257

`eq[char[A033948(n+1)], A034380(n+1)]`
-/

namespace A319450.P2485825216080512257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A319450.P2485825216080512257

namespace A319450

/-- `eq[char[A033948(n+1)], A034380(n+1)]` -/
def P2485825216080512257.Spec : Prop :=
  ∀ n, (P2485825216080512257.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P12927410736399179010

`eq[char[A033948(n+1)], A046072(n+1)]`
-/

namespace A319450.P12927410736399179010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A319450.P12927410736399179010

namespace A319450

/-- `eq[char[A033948(n+1)], A046072(n+1)]` -/
def P12927410736399179010.Spec : Prop :=
  ∀ n, (P12927410736399179010.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P13175251610338338148

`eq[char[A033948(n+1)], A290084(n+1)]`
-/

namespace A319450.P13175251610338338148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A319450.P13175251610338338148

namespace A319450

/-- `eq[char[A033948(n+1)], A290084(n+1)]` -/
def P13175251610338338148.Spec : Prop :=
  ∀ n, (P13175251610338338148.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P1946229654909853752

`lt[A104194(n+1), char[A033948(n+1)]]`
-/

namespace A319450.P1946229654909853752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A319450.P1946229654909853752

namespace A319450

/-- `lt[A104194(n+1), char[A033948(n+1)]]` -/
def P1946229654909853752.Spec : Prop :=
  ∀ n, (P1946229654909853752.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P7404150126491402893

`lt[char[A033949(n+1)], A211487(n+1)]`
-/

namespace A319450.P7404150126491402893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A319450.P7404150126491402893

namespace A319450

/-- `lt[char[A033949(n+1)], A211487(n+1)]` -/
def P7404150126491402893.Spec : Prop :=
  ∀ n, (P7404150126491402893.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P9707681654240984464

`eq[A104194(n+2)², A104194(n+1)]+1`
-/

namespace A319450.P9707681654240984464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319450.P9707681654240984464

namespace A319450

/-- `eq[A104194(n+2)², A104194(n+1)]+1` -/
def P9707681654240984464.Spec : Prop :=
  ∀ n, (P9707681654240984464.a n : ℤ) = A319450 (n + 1)

end A319450

/-! ## A319450.P2184275034275952420

`record[A141258(and(n+1, A141258(n+1))+1)-1]`
-/

namespace A319450.P2184275034275952420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (Int.land (n + 1 : ℤ) (A141258 (n + 1)) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319450.P2184275034275952420

namespace A319450

/-- `record[A141258(and(n+1, A141258(n+1))+1)-1]` -/
def P2184275034275952420.Spec : Prop :=
  ∀ n, P2184275034275952420.a n = A319450 (n + 1)

end A319450

/-!
# A319451: Numbers that are congruent to {0, 3, 6} mod 12; a(n) = 3*floor(4*n/3).

The programs for A319451, the canonical program `A319451.P9408328462750984537` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319451 has offset 0).

The definition of A319451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*floor(4*n/3)` (program `A319451.P9408328462750984537`, by `A319451.P9408328462750984537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319451.P9408328462750984537

`3*floor(4*n/3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319451

/-- `3*floor(4*n/3)` -/
def P9408328462750984537.Spec : Prop :=
  ∀ n, P9408328462750984537.a n = A319451 n

theorem P9408328462750984537.correct : P9408328462750984537.Spec := by
  intro n
  simp only [A319451]

end A319451

/-! ## A319451.P16772226435388381403

`a(n-3)+12` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A319451.P16772226435388381403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n a =>
  a (n - 3) + 12

end

end A319451.P16772226435388381403

namespace A319451

/-- `a(n-3)+12` -/
def P16772226435388381403.Spec : Prop :=
  ∀ n, (P16772226435388381403.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P4513036938788819686

`4*n-1+sin(π/3*(2*n+1))/sin(π/3)`
-/

namespace A319451.P4513036938788819686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - 1 : ℝ) + Real.sin (Real.pi / 3 * (2 * n + 1 : ℝ)) / Real.sin (Real.pi / 3)

end

end A319451.P4513036938788819686

namespace A319451

/-- `4*n-1+sin(π/3*(2*n+1))/sin(π/3)` -/
def P4513036938788819686.Spec : Prop :=
  ∀ n, P4513036938788819686.a n = (A319451 n : ℝ)

end A319451

/-! ## A319451.P3641082705641151356

`4*n-n%3`
-/

namespace A319451.P3641082705641151356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((n % 3 : ℕ) : ℤ)

end

end A319451.P3641082705641151356

namespace A319451

/-- `4*n-n%3` -/
def P3641082705641151356.Spec : Prop :=
  ∀ n, P3641082705641151356.a n = A319451 n

end A319451

/-! ## A319451.P13920415029380854534

`∑[gcd(6, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A319451.P13920415029380854534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319451.P13920415029380854534

namespace A319451

/-- `∑[gcd(6, a(n-3))]` -/
def P13920415029380854534.Spec : Prop :=
  ∀ n, (P13920415029380854534.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P5473110701937106038

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A319451.P5473110701937106038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319451.P5473110701937106038

namespace A319451

/-- `∑[floor(a(n-3))]` -/
def P5473110701937106038.Spec : Prop :=
  ∀ n, (P5473110701937106038.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P17731901018466477329

`record[3*(n-val(n+1, 4))]`
-/

namespace A319451.P17731901018466477329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - (SequenceMachineLib.valuation (n + 1) 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319451.P17731901018466477329

namespace A319451

/-- `record[3*(n-val(n+1, 4))]` -/
def P17731901018466477329.Spec : Prop :=
  ∀ n, P17731901018466477329.a n = A319451 n

end A319451

/-! ## A319451.P9670189869877867040

`record[3/2*and(n, n+3)]`
-/

namespace A319451.P9670189869877867040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (Nat.land n (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319451.P9670189869877867040

namespace A319451

/-- `record[3/2*and(n, n+3)]` -/
def P9670189869877867040.Spec : Prop :=
  ∀ n, P9670189869877867040.a n = (A319451 n : ℚ)

end A319451

/-! ## A319451.P12479607991553909592

`∑[a(n-3)%7]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=6`
-/

namespace A319451.P12479607991553909592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319451.P12479607991553909592

namespace A319451

/-- `∑[a(n-3)%7]` -/
def P12479607991553909592.Spec : Prop :=
  ∀ n, (P12479607991553909592.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P9210201702350306856

`∑[a(∑[n+1]%3)+3]` with `a(0)=0`
-/

namespace A319451.P9210201702350306856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319451.P9210201702350306856

namespace A319451

/-- `∑[a(∑[n+1]%3)+3]` -/
def P9210201702350306856.Spec : Prop :=
  ∀ n, (P9210201702350306856.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P3417523781898078053

`∑[dr(3-n*a(n-1))]` with `a(0)=0`
-/

namespace A319451.P3417523781898078053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.digitalRoot (3 - (n * f1 (n - 1) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319451.P3417523781898078053

namespace A319451

/-- `∑[dr(3-n*a(n-1))]` -/
def P3417523781898078053.Spec : Prop :=
  ∀ n, (P3417523781898078053.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P10952505867091093346

`eq[gcd(n+3, C(n, 2))+n, n+3]`
-/

namespace A319451.P10952505867091093346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (Nat.choose n 2) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319451.P10952505867091093346

namespace A319451

/-- `eq[gcd(n+3, C(n, 2))+n, n+3]` -/
def P10952505867091093346.Spec : Prop :=
  ∀ n, (P10952505867091093346.a n : ℤ) = A319451 n

end A319451

/-! ## A319451.P17559747410947157297

`∑[∑[ogf((1+3x+3x^2+5x^3)/(1+x+x^2))]]-1`
-/

namespace A319451.P17559747410947157297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 5] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A319451.P17559747410947157297

namespace A319451

/-- `∑[∑[ogf((1+3x+3x^2+5x^3)/(1+x+x^2))]]-1` -/
def P17559747410947157297.Spec : Prop :=
  ∀ n, P17559747410947157297.a n = A319451 n

end A319451

/-! ## A319451.P8830282184798272492

`∑[∑[ogf((x+x^2+4x^3)/(1+x+x^2))]]+n+n`
-/

namespace A319451.P8830282184798272492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 4] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + (n : ℤ)

end

end A319451.P8830282184798272492

namespace A319451

/-- `∑[∑[ogf((x+x^2+4x^3)/(1+x+x^2))]]+n+n` -/
def P8830282184798272492.Spec : Prop :=
  ∀ n, P8830282184798272492.a n = A319451 n

end A319451

/-! ## A319451.P1055727483284078966

`A350668(n)-2+n`
-/

namespace A319451.P1055727483284078966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n - 2 + (n : ℤ)

end

end A319451.P1055727483284078966

namespace A319451

/-- `A350668(n)-2+n` -/
def P1055727483284078966.Spec : Prop :=
  ∀ n, P1055727483284078966.a n = A319451 n

end A319451

/-! ## A319451.P18365285566771071078

`4*n-A010872(n)`
-/

namespace A319451.P18365285566771071078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A010872 n

end

end A319451.P18365285566771071078

namespace A319451

/-- `4*n-A010872(n)` -/
def P18365285566771071078.Spec : Prop :=
  ∀ n, P18365285566771071078.a n = A319451 n

end A319451

/-! ## A319451.P5364003384775992521

`3*A047464(n+1)/2`
-/

namespace A319451.P5364003384775992521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A047464 (n + 1) : ℚ) / 2

end

end A319451.P5364003384775992521

namespace A319451

/-- `3*A047464(n+1)/2` -/
def P5364003384775992521.Spec : Prop :=
  ∀ n, P5364003384775992521.a n = (A319451 n : ℚ)

end A319451

/-! ## A319451.P4534063998303882291

`A047240(n+1)+2*n`
-/

namespace A319451.P4534063998303882291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1) + (2 * n : ℤ)

end

end A319451.P4534063998303882291

namespace A319451

/-- `A047240(n+1)+2*n` -/
def P4534063998303882291.Spec : Prop :=
  ∀ n, P4534063998303882291.a n = A319451 n

end A319451

/-! ## A319451.P9405041039088685634

`record[n*(A087810(n+1)+2)]`
-/

namespace A319451.P9405041039088685634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A087810 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319451.P9405041039088685634

namespace A319451

/-- `record[n*(A087810(n+1)+2)]` -/
def P9405041039088685634.Spec : Prop :=
  ∀ n, P9405041039088685634.a n = A319451 n

end A319451

/-! ## A319451.P13300806946795716367

`∑[A000032(gcd(n, n-3))]+2*(n-2)`
-/

namespace A319451.P13300806946795716367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.gcd (n : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * ((n : ℤ) - 2)

end

end A319451.P13300806946795716367

namespace A319451

/-- `∑[A000032(gcd(n, n-3))]+2*(n-2)` -/
def P13300806946795716367.Spec : Prop :=
  ∀ n, P13300806946795716367.a n = A319451 n

end A319451

/-!
# A319452: Numbers that are congruent to {0, 3, 6, 10} mod 12.

The programs for A319452, the canonical program `A319452.P8370900397958976137` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319452 has offset 1).

The definition of A319452 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A319452.anchor (n : ℕ) (hn : 1 ≤ n) : A319452 n = (Nat.nth (fun k => k % 12 ∈ ({0, 3, 6, 10} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A319.A319452`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319452.P8370900397958976137

`a(n-4)+12` with `a(0)=0, a(1)=3, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319452

/-- `a(n-4)+12` -/
def P8370900397958976137.Spec : Prop :=
  ∀ n, (P8370900397958976137.a n : ℤ) = A319452 (n + 1)

theorem P8370900397958976137.correct : P8370900397958976137.Spec := by
  intro n
  simp only [A319452, Nat.add_sub_cancel]

end A319452

/-! ## A319452.P3361606156611336248

`(12*(n+1)-11+(-1)^(n+1)+2*cos(π*(n+1)/2))/4`
-/

namespace A319452.P3361606156611336248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((12 * (n + 1) : ℤ) - 11 + (-1) ^ (n + 1) : ℝ) + 2 * Real.cos (Real.pi * (n + 1 : ℝ) / 2)) / 4

end

end A319452.P3361606156611336248

namespace A319452

/-- `(12*(n+1)-11+(-1)^(n+1)+2*cos(π*(n+1)/2))/4` -/
def P3361606156611336248.Spec : Prop :=
  ∀ n, P3361606156611336248.a n = (A319452 (n + 1) : ℝ)

end A319452

/-! ## A319452.P18165655662907340444

`char[or(3, n)]+3*n`
-/

namespace A319452.P18165655662907340444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * n

end

end A319452.P18165655662907340444

namespace A319452

/-- `char[or(3, n)]+3*n` -/
def P18165655662907340444.Spec : Prop :=
  ∀ n, (P18165655662907340444.a n : ℤ) = A319452 (n + 1)

end A319452

/-! ## A319452.P5666184457227434122

`Δ[floor(n/4)]+3*n`
-/

namespace A319452.P5666184457227434122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 * n : ℤ)

end

end A319452.P5666184457227434122

namespace A319452

/-- `Δ[floor(n/4)]+3*n` -/
def P5666184457227434122.Spec : Prop :=
  ∀ n, P5666184457227434122.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P5303394058941790509

`floor(n%4/3+3*n)`
-/

namespace A319452.P5303394058941790509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 4 : ℕ) : ℚ) / 3 + (3 * n : ℚ)⌋

end

end A319452.P5303394058941790509

namespace A319452

/-- `floor(n%4/3+3*n)` -/
def P5303394058941790509.Spec : Prop :=
  ∀ n, P5303394058941790509.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P6733784690447773037

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=4, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A319452.P6733784690447773037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 4, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319452.P6733784690447773037

namespace A319452

/-- `∑[floor(a(n-4))]` -/
def P6733784690447773037.Spec : Prop :=
  ∀ n, (P6733784690447773037.a n : ℤ) = A319452 (n + 1)

end A319452

/-! ## A319452.P2037370523312467748

`comp[round(1/gcd(12, 5-n))+n]`
-/

namespace A319452.P2037370523312467748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (Int.gcd 12 (5 - (n : ℤ)) : ℚ)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A319452.P2037370523312467748

namespace A319452

/-- `comp[round(1/gcd(12, 5-n))+n]` -/
def P2037370523312467748.Spec : Prop :=
  ∀ n, (P2037370523312467748.a n : ℤ) = A319452 (n + 1)

end A319452

/-! ## A319452.P3931196893577471098

`∑[a(n-4)%5]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=4, a(4)=2`
-/

namespace A319452.P3931196893577471098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 4, 2] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319452.P3931196893577471098

namespace A319452

/-- `∑[a(n-4)%5]` -/
def P3931196893577471098.Spec : Prop :=
  ∀ n, (P3931196893577471098.a n : ℤ) = A319452 (n + 1)

end A319452

/-! ## A319452.P8070256373812754902

`∑[∑[2-gcd(4, a(n-2))]]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A319452.P8070256373812754902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n f2 =>
  2 - (Int.gcd 4 (f2 (n - 2)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319452.P8070256373812754902

namespace A319452

/-- `∑[∑[2-gcd(4, a(n-2))]]` -/
def P8070256373812754902.Spec : Prop :=
  ∀ n, P8070256373812754902.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P10885077128083375645

`floor(∑[gcd(n+1, n-3)/2]+2*n)`
-/

namespace A319452.P10885077128083375645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℚ)⌋

end

end A319452.P10885077128083375645

namespace A319452

/-- `floor(∑[gcd(n+1, n-3)/2]+2*n)` -/
def P10885077128083375645.Spec : Prop :=
  ∀ n, P10885077128083375645.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P3585193079893030976

`∑[a(n-2)-(-1)^a(n-1)]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A319452.P3585193079893030976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  f1 (n - 2) - (-1 : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319452.P3585193079893030976

namespace A319452

/-- `∑[a(n-2)-(-1)^a(n-1)]` -/
def P3585193079893030976.Spec : Prop :=
  ∀ n, P3585193079893030976.a n = (A319452 (n + 1) : ℝ)

end A319452

/-! ## A319452.P391992026117430915

`abs(1-(A177704(n)+3*n))`
-/

namespace A319452.P391992026117430915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A177704 n + (3 * n : ℤ))|

end

end A319452.P391992026117430915

namespace A319452

/-- `abs(1-(A177704(n)+3*n))` -/
def P391992026117430915.Spec : Prop :=
  ∀ n, P391992026117430915.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P2094771701307779602

`abs(3*n+1-A166486(n+1))`
-/

namespace A319452.P2094771701307779602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n + 1 : ℤ) - A166486 (n + 1)|

end

end A319452.P2094771701307779602

namespace A319452

/-- `abs(3*n+1-A166486(n+1))` -/
def P2094771701307779602.Spec : Prop :=
  ∀ n, P2094771701307779602.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P10904768447815867790

`∪[A017641(n), A319451(n)]`
-/

namespace A319452.P10904768447815867790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319452.P10904768447815867790

namespace A319452

/-- `∪[A017641(n), A319451(n)]` -/
def P10904768447815867790.Spec : Prop :=
  ∀ n, (P10904768447815867790.a n : ℤ) = A319452 (n + 1)

end A319452

/-! ## A319452.P16318215355441468750

`and(A178890(n), A319279(n+1))`
-/

namespace A319452.P16318215355441468750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178890 n) (A319279 (n + 1))

end

end A319452.P16318215355441468750

namespace A319452

/-- `and(A178890(n), A319279(n+1))` -/
def P16318215355441468750.Spec : Prop :=
  ∀ n, P16318215355441468750.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P13602482668472125867

`xor(A047238(n+1), A131743(n))`
-/

namespace A319452.P13602482668472125867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047238 (n + 1)) (A131743 n)

end

end A319452.P13602482668472125867

namespace A319452

/-- `xor(A047238(n+1), A131743(n))` -/
def P13602482668472125867.Spec : Prop :=
  ∀ n, P13602482668472125867.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P10142107181515489552

`xor(A047239(n+1), A177704(n))`
-/

namespace A319452.P10142107181515489552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047239 (n + 1)) (A177704 n)

end

end A319452.P10142107181515489552

namespace A319452

/-- `xor(A047239(n+1), A177704(n))` -/
def P10142107181515489552.Spec : Prop :=
  ∀ n, P10142107181515489552.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P6235670650172927794

`and(A218155(n+1), A319279(n+1))`
-/

namespace A319452.P6235670650172927794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218155 (n + 1)) (A319279 (n + 1))

end

end A319452.P6235670650172927794

namespace A319452

/-- `and(A218155(n+1), A319279(n+1))` -/
def P6235670650172927794.Spec : Prop :=
  ∀ n, P6235670650172927794.a n = A319452 (n + 1)

end A319452

/-! ## A319452.P16765462276971218042

`3*n*A016777(n)/(3*n+2-A177704(n))`
-/

namespace A319452.P16765462276971218042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((n : ℤ) * A016777 n) : ℚ) / ((3 * n + 2 : ℤ) - A177704 n : ℚ)

end

end A319452.P16765462276971218042

namespace A319452

/-- `3*n*A016777(n)/(3*n+2-A177704(n))` -/
def P16765462276971218042.Spec : Prop :=
  ∀ n, P16765462276971218042.a n = (A319452 (n + 1) : ℚ)

end A319452

/-! ## A319452.P1469370245537796226

`A047231(A047237(n+2))`
-/

namespace A319452.P1469370245537796226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (A047237 (n + 2)).toNat

end

end A319452.P1469370245537796226

namespace A319452

/-- `A047231(A047237(n+2))` -/
def P1469370245537796226.Spec : Prop :=
  ∀ n, P1469370245537796226.a n = A319452 (n + 1)

end A319452

/-!
# A319453: Number T(n,k) of partitions of n into exactly k nonzero decimal palindromes; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319453, there is no canonical definition to state claims against.
-/

/-! ## A319453.P14343664141908932485

`A072233(n)-A025439(A128559(n+1))`
-/

namespace A319453.P14343664141908932485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A025439 (A128559 (n + 1)).toNat

end

end A319453.P14343664141908932485

/-! ## A319453.P8445284684927506982

`A327549(n)/A130321(n)-A025439(A128559(n+1))`
-/

namespace A319453.P8445284684927506982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A130321 n : ℚ) - (A025439 (A128559 (n + 1)).toNat : ℚ)

end

end A319453.P8445284684927506982

/-! ## A319453.P14145469484731600610

`A327549(n)/A057728(n+1)-A025439(A128559(n+1))`
-/

namespace A319453.P14145469484731600610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A057728 (n + 1) : ℚ) - (A025439 (A128559 (n + 1)).toNat : ℚ)

end

end A319453.P14145469484731600610

/-! ## A319453.P7050929325926255624

`A072233(n)-A025464(A008000(n+2))`
-/

namespace A319453.P7050929325926255624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A025464 (A008000 (n + 2)).toNat

end

end A319453.P7050929325926255624

/-! ## A319453.P5045154721353888443

`C(A072233(n), A098824(A098824(n)))`
-/

namespace A319453.P5045154721353888443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072233 n).toNat (A098824 (A098824 n).toNat).toNat

end

end A319453.P5045154721353888443

/-! ## A319453.P7941490112365293919

`A072233(n)-A277007(A023929(n))`
-/

namespace A319453.P7941490112365293919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A277007 (A023929 n).toNat

end

end A319453.P7941490112365293919

/-! ## A319453.P16265086041262435316

`A327549(n)/A130321(n)-A277007(A023929(n))`
-/

namespace A319453.P16265086041262435316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A130321 n : ℚ) - (A277007 (A023929 n).toNat : ℚ)

end

end A319453.P16265086041262435316

/-! ## A319453.P11355238188833347061

`A327549(n)/A057728(n+1)-A277007(A023929(n))`
-/

namespace A319453.P11355238188833347061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A057728 (n + 1) : ℚ) - (A277007 (A023929 n).toNat : ℚ)

end

end A319453.P11355238188833347061

/-! ## A319453.P12762182705348940311

`A072233(n)*A186726(A185246(n))`
-/

namespace A319453.P12762182705348940311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A186726 (A185246 n).toNat

end

end A319453.P12762182705348940311

/-! ## A319453.P10407641542865650790

`A072233(n)-A011731(A326033(n+1))`
-/

namespace A319453.P10407641542865650790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A011731 (A326033 (n + 1)).toNat

end

end A319453.P10407641542865650790

/-!
# A319454: Number of partitions of 2n into exactly n nonzero decimal palindromes.

The programs for A319454, there is no canonical definition to state claims against.
-/

/-! ## A319454.P16741794057688928166

`A319453(∑[4*n])`
-/

namespace A319454.P16741794057688928166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319454.P16741794057688928166

/-! ## A319454.P16185058630220544501

`or(char[1], A319453(2*(n²+n)))`
-/

namespace A319454.P16185058630220544501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319453 (2 * (n ^ 2 + n)))

end

end A319454.P16185058630220544501

/-! ## A319454.P8150835008568696535

`A319453(2*(n²+n))%A002755(n)`
-/

namespace A319454.P8150835008568696535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319453 (2 * (n ^ 2 + n))) (A002755 n)

end

end A319454.P8150835008568696535

/-! ## A319454.P8345336746871322811

`A319453(2*(n²+n))-A000038(n+1)`
-/

namespace A319454.P8345336746871322811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (2 * (n ^ 2 + n)) - A000038 (n + 1)

end

end A319454.P8345336746871322811

/-! ## A319454.P7957967586159862062

`A007318(C(2, n))*A319453(2*(n²+n))`
-/

namespace A319454.P7957967586159862062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P7957967586159862062

/-! ## A319454.P18247893619726759044

`A319453(2*(n²+n))^A000041(C(2, n))`
-/

namespace A319454.P18247893619726759044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319453 (2 * (n ^ 2 + n)) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A319454.P18247893619726759044

/-! ## A319454.P3802033029497497357

`a(A000038(n))*A319453(2*(n²+n))` with `a(0)=1`
-/

namespace A319454.P3802033029497497357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A000038 n).toNat * A319453 (2 * (n ^ 2 + n))

end

end A319454.P3802033029497497357

/-! ## A319454.P7713294724074157506

`A014963(12*(n+1))*A319453(2*(n²+n))`
-/

namespace A319454.P7713294724074157506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P7713294724074157506

/-! ## A319454.P4565677290287846375

`gcd(2, A000040(n+2))*A319453(2*(n²+n))`
-/

namespace A319454.P4565677290287846375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P4565677290287846375

/-! ## A319454.P6262808627334458678

`A000041(C(2, n+2))*A319453(2*(n²+n))`
-/

namespace A319454.P6262808627334458678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P6262808627334458678

/-! ## A319454.P16440048328326810844

`A000045(gcd(n, n+1))*A319453(2*(n²+n))`
-/

namespace A319454.P16440048328326810844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P16440048328326810844

/-! ## A319454.P718432313398293933

`((-1)^A007318(n))²*A319453(2*(n²+n))`
-/

namespace A319454.P718432313398293933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A319453 (2 * (n ^ 2 + n)) : ℚ)

end

end A319454.P718432313398293933

/-! ## A319454.P11152270804411623219

`A007318((n%2)^n)*A319453(2*(n²+n))`
-/

namespace A319454.P11152270804411623219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n % 2) ^ n) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P11152270804411623219

/-! ## A319454.P1256185500392601111

`lcm(A007318(or(3, n)-n), A319453(2*(n²+n)))`
-/

namespace A319454.P1256185500392601111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (Nat.lor 3 n - n)) (A319453 (2 * (n ^ 2 + n)))

end

end A319454.P1256185500392601111

/-! ## A319454.P13113703084487743364

`A007318(val(n²+1, 2))*A319453(2*(n²+n))`
-/

namespace A319454.P13113703084487743364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P13113703084487743364

/-! ## A319454.P10095472840054259250

`A319453(2*(n²+n))^A005117(ceil(2/(n+1)))`
-/

namespace A319454.P10095472840054259250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319453 (2 * (n ^ 2 + n)) : ℚ) ^ (A005117 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A319454.P10095472840054259250

/-! ## A319454.P13427942122414095544

`A007318(n²%(n+1))*A319453(2*(n²+n))`
-/

namespace A319454.P13427942122414095544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n ^ 2 % (n + 1)) * A319453 (2 * (n ^ 2 + n))

end

end A319454.P13427942122414095544

/-! ## A319454.P188734054351444853

`A000005(gcd(n, n+1))*A319453(A046092(n))`
-/

namespace A319454.P188734054351444853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A319453 (A046092 n).toNat

end

end A319454.P188734054351444853

/-! ## A319454.P17101591354277778584

`A318809(A000005(n+1))*A319453(2*(n²+n))`
-/

namespace A319454.P17101591354277778584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A000005 (n + 1)).toNat * A319453 (2 * (n ^ 2 + n))

end

end A319454.P17101591354277778584

/-!
# A319455: Expansion of Product_{k>=1} 1/((1 - x^k)*(1 - x^(2*k)))^2.

The programs for A319455, there is no canonical definition to state claims against.
-/

/-! ## A319455.P17869202492568470306

`A123578(A005993(n)*A052366(n))`
-/

namespace A319455.P17869202492568470306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A005993 n * A052366 n).toNat

end

end A319455.P17869202492568470306

/-! ## A319455.P4936493747995183154

`or(A001222(A206397(n+1)), A327050(n))`
-/

namespace A319455.P4936493747995183154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A206397 (n + 1)).toNat) (A327050 n)

end

end A319455.P4936493747995183154

/-! ## A319455.P17292184379050471981

`A073188(A092982(n+1)*A116841(n+1))`
-/

namespace A319455.P17292184379050471981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A092982 (n + 1) * A116841 (n + 1)).toNat

end

end A319455.P17292184379050471981

/-!
# A319457: a(n) = [x^n] Product_{k>=1} 1/((1 - x^k)*(1 - x^(2*k)))^n.

The programs for A319457, there is no canonical definition to state claims against.
-/

/-! ## A319457.P10163286466124036146

`or(A064539(A071207(n)), A162475(n))`
-/

namespace A319457.P10163286466124036146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064539 (A071207 n).toNat) (A162475 n)

end

end A319457.P10163286466124036146

/-! ## A319457.P1702321343033208294

`or(A025644(A294216(n)), A162475(n))`
-/

namespace A319457.P1702321343033208294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025644 (A294216 n).toNat) (A162475 n)

end

end A319457.P1702321343033208294

/-!
# A319466: G.f.: Sum_{n>=0} ( (1+x)^n - 1/(1+x)^n )^n.

The programs for A319466, there is no canonical definition to state claims against.
-/

/-! ## A319466.P5614469475401129541

`A342256(A121422(n))-(n+1)`
-/

namespace A319466.P5614469475401129541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (A121422 n).toNat - (n + 1 : ℤ)

end

end A319466.P5614469475401129541

/-!
# A319467: G.f. A(x) satisfies: Sum_{n>=0} x^n * ( 1/(1-x)^n - A(x) )^n = 1.

The programs for A319467, there is no canonical definition to state claims against.
-/

/-! ## A319467.P5991959255747993432

`A347655(A221948(n))`
-/

namespace A319467.P5991959255747993432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A221948 n).toNat

end

end A319467.P5991959255747993432

/-! ## A319467.P7188499633218639677

`A285899(A351846(n!))`
-/

namespace A319467.P7188499633218639677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285899 (A351846 (Nat.factorial n)).toNat

end

end A319467.P7188499633218639677

/-! ## A319467.P4871342108031520425

`A285899(round(sqrt(A001710(n))))`
-/

namespace A319467.P4871342108031520425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285899 (SequenceMachineLib.roundAway (Real.sqrt (A001710 n : ℝ))).toNat

end

end A319467.P4871342108031520425

/-! ## A319467.P8328181409073033362

`A008618(A197549(n+1))+1`
-/

namespace A319467.P8328181409073033362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A197549 (n + 1)).toNat + 1

end

end A319467.P8328181409073033362

/-!
# A319468: Number of partitions of n into exactly two nonzero decimal palindromes.

The programs for A319468, there is no canonical definition to state claims against.
-/

/-! ## A319468.P17244635679714850711

`A260254(n)-A136522(n)`
-/

namespace A319468.P17244635679714850711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - A136522 n

end

end A319468.P17244635679714850711

/-! ## A319468.P12059856389711230606

`A260254(n)-char[A002113(n+1)]`
-/

namespace A319468.P12059856389711230606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319468.P12059856389711230606

/-! ## A319468.P17811508430191916943

`A260254(n)-A000007(A064834(n))`
-/

namespace A319468.P17811508430191916943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - A000007 (A064834 n).toNat

end

end A319468.P17811508430191916943

/-! ## A319468.P4880791972280478059

`A260254(n)-A000007(A241173(n))`
-/

namespace A319468.P4880791972280478059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - A000007 (A241173 n).toNat

end

end A319468.P4880791972280478059

/-! ## A319468.P12215725708422004376

`A260254(n)-A000007(A261424(n))`
-/

namespace A319468.P12215725708422004376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - A000007 (A261424 n).toNat

end

end A319468.P12215725708422004376

/-! ## A319468.P11115238858340044184

`A261132(n)-(A261131(n)+A136522(n))`
-/

namespace A319468.P11115238858340044184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A261131 n + A136522 n)

end

end A319468.P11115238858340044184

/-! ## A319468.P11900531372508897208

`A260254(n)-char[A262087(n)]`
-/

namespace A319468.P11900531372508897208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319468.P11900531372508897208

/-! ## A319468.P14176225738390576168

`A260254(n)-char[n-A319387(n)]`
-/

namespace A319468.P14176225738390576168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A319387 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319468.P14176225738390576168

/-! ## A319468.P6749553559655808129

`A319453(A133263(n))`
-/

namespace A319468.P6749553559655808129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A133263 n).toNat

end

end A319468.P6749553559655808129

/-! ## A319468.P11368756543905526079

`A319453(A238531(n+1))`
-/

namespace A319468.P11368756543905526079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A238531 (n + 1)).toNat

end

end A319468.P11368756543905526079

/-!
# A319469: Number of partitions of n into exactly four nonzero decimal palindromes.

The programs for A319469, there is no canonical definition to state claims against.
-/

/-! ## A319469.P4950232406166760068

`A319453(∑[n+2]-A004278(n+1))`
-/

namespace A319469.P4950232406166760068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004278 (n + 1)).toNat

end

end A319469.P4950232406166760068

/-! ## A319469.P18363554901788487795

`A319453(A145018(n+1))%(n²-(n+1))`
-/

namespace A319469.P18363554901788487795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319453 (A145018 (n + 1)).toNat) ((n ^ 2 : ℤ) - (n + 1 : ℤ))

end

end A319469.P18363554901788487795

/-! ## A319469.P8329475337520461291

`A319453(A034856(n+1)-A004274(n))`
-/

namespace A319469.P8329475337520461291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A034856 (n + 1) - A004274 n).toNat

end

end A319469.P8329475337520461291

/-! ## A319469.P4508803236084835545

`A319453(A145018(n+1))+a(A014963(6*(n+2)))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A319469.P4508803236084835545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A319453 (A145018 (n + 1)).toNat + a (A014963 (6 * (n + 2))).toNat

end

end A319469.P4508803236084835545

/-! ## A319469.P3325400810181045832

`A319453(A145018(n+1))-A182492(A236840(n))`
-/

namespace A319469.P3325400810181045832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A145018 (n + 1)).toNat - A182492 (A236840 n).toNat

end

end A319469.P3325400810181045832

/-!
# A319471: Number of partitions of n into exactly six nonzero decimal palindromes.

The programs for A319471, there is no canonical definition to state claims against.
-/

/-! ## A319471.P10585278866900111669

`A026812(n)-A178798(A308931(n))`
-/

namespace A319471.P10585278866900111669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n - A178798 (A308931 n).toNat

end

end A319471.P10585278866900111669

/-! ## A319471.P9417088976183303810

`A026812(n)-A324234(A117683(n+1))`
-/

namespace A319471.P9417088976183303810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n - A324234 (A117683 (n + 1)).toNat

end

end A319471.P9417088976183303810

/-! ## A319471.P5696539884433490403

`A026812(n)-A178798(A332641(n+1))`
-/

namespace A319471.P5696539884433490403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n - A178798 (A332641 (n + 1)).toNat

end

end A319471.P5696539884433490403

/-! ## A319471.P8845210928210010880

`A026812(n)-A054973(A161409(2*(n+2)))`
-/

namespace A319471.P8845210928210010880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n - A054973 (A161409 (2 * (n + 2))).toNat

end

end A319471.P8845210928210010880

/-!
# A319472: Number of partitions of n into exactly seven nonzero decimal palindromes.

The programs for A319472, there is no canonical definition to state claims against.
-/

/-! ## A319472.P18335127617749900558

`A008636(n)-A001402(n)-A178798(A332641(n))`
-/

namespace A319472.P18335127617749900558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A001402 n - A178798 (A332641 n).toNat

end

end A319472.P18335127617749900558

/-! ## A319472.P2362946408022509057

`A308926(n)/A233583(n+1)-A178798(A332641(n))`
-/

namespace A319472.P2362946408022509057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308926 n : ℚ) / (A233583 (n + 1) : ℚ) - (A178798 (A332641 n).toNat : ℚ)

end

end A319472.P2362946408022509057

/-! ## A319472.P4186253027911828325

`A266770(2*n)-A001402(n)-A178798(A332641(n))`
-/

namespace A319472.P4186253027911828325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (2 * n) - A001402 n - A178798 (A332641 n).toNat

end

end A319472.P4186253027911828325

/-! ## A319472.P1067884907732963661

`A008636(n)-A026812(n+6)-A178798(A332641(n))`
-/

namespace A319472.P1067884907732963661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026812 (n + 6) - A178798 (A332641 n).toNat

end

end A319472.P1067884907732963661

/-! ## A319472.P17792578330273619372

`A026814(n+1)-A026814(n-7%(n+1))-A178798(A332641(n))`
-/

namespace A319472.P17792578330273619372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 1) - A026814 (n - 7 % (n + 1)) - A178798 (A332641 n).toNat

end

end A319472.P17792578330273619372

/-!
# A319473: Number of partitions of n into exactly eight nonzero decimal palindromes.

The programs for A319473, there is no canonical definition to state claims against.
-/

/-! ## A319473.P3903954495815462164

`A319453(∑[A160755(n+1)])`
-/

namespace A319473.P3903954495815462164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319473.P3903954495815462164

/-! ## A319473.P314808034413376801

`A326446(n)+A111660(A026815(n))`
-/

namespace A319473.P314808034413376801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326446 n + A111660 (A026815 n).toNat

end

end A319473.P314808034413376801

/-! ## A319473.P9398607483131845268

`A062108(A308997(A000038(A023427(n))+n))`
-/

namespace A319473.P9398607483131845268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A308997 (A000038 (A023427 n).toNat + (n : ℤ)).toNat).toNat

end

end A319473.P9398607483131845268

/-! ## A319473.P5946711978402547709

`A062108(A308997(n)-A000038(A023427(n)))`
-/

namespace A319473.P5946711978402547709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A308997 n - A000038 (A023427 n).toNat).toNat

end

end A319473.P5946711978402547709

/-!
# A319474: Number of partitions of n into exactly nine nonzero decimal palindromes.

The programs for A319474, there is no canonical definition to state claims against.
-/

/-! ## A319474.P11191531145426767536

`∑[A024794(n+1)-A347520(A326589(n))]`
-/

namespace A319474.P11191531145426767536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024794 (n + 1) - A347520 (A326589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319474.P11191531145426767536

/-!
# A319475: Number of partitions of n into exactly ten nonzero decimal palindromes.

The programs for A319475, there is no canonical definition to state claims against.
-/

/-! ## A319475.P1515220592006951143

`A004525(A259361(A308991(n)²))`
-/

namespace A319475.P1515220592006951143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259361 (A308991 n ^ 2).toNat).toNat

end

end A319475.P1515220592006951143

/-! ## A319475.P2029703864014846428

`A026816(n)-A185284(A094210(n+2))`
-/

namespace A319475.P2029703864014846428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 n - A185284 (A094210 (n + 2)).toNat

end

end A319475.P2029703864014846428

/-!
# A319477: Nonnegative integers which cannot be obtained by adding exactly two nonzero decimal palindromes.

The programs for A319477, there is no canonical definition to state claims against.
-/

/-! ## A319477.P16347433099349398005

`eq[0, A319468(n)]`
-/

namespace A319477.P16347433099349398005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319477.P16347433099349398005

/-! ## A319477.P4693582822284751664

`eq[A136522(n), A260254(n)]`
-/

namespace A319477.P4693582822284751664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319477.P4693582822284751664

/-! ## A319477.P6292776625310162633

`eq[n*A260254(n), A262087(n)]`
-/

namespace A319477.P6292776625310162633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319477.P6292776625310162633

/-! ## A319477.P18023153562056408132

`eq[A000007(A064834(n)), A260254(n)]`
-/

namespace A319477.P18023153562056408132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064834 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319477.P18023153562056408132

/-! ## A319477.P18102948920065710807

`eq[A000007(A241173(n)), A260254(n)]`
-/

namespace A319477.P18102948920065710807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A241173 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319477.P18102948920065710807

/-! ## A319477.P7196040033616186355

`eq[A000007(A261424(n)), A260254(n)]`
-/

namespace A319477.P7196040033616186355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A261424 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319477.P7196040033616186355

/-! ## A319477.P12240974339945130740

`eq[A262087(n)^A064834(n), A260254(n)]`
-/

namespace A319477.P12240974339945130740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262087 n : ℚ) ^ (A064834 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A319477.P12240974339945130740

/-!
# A319478: a(n) is the least base b > 1 such that the product n * n can be computed without carry by long multiplication.

The programs for A319478, there is no canonical definition to state claims against.
-/

/-! ## A319478.P11795334217980716786

`A362367(∑[4*n])`
-/

namespace A319478.P11795334217980716786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319478.P11795334217980716786

/-!
# A319479: Lexicographically earliest sequence such that for every n and every sequence 1 <= b_1 < b_2 < ... < b_t = n, the values of barycenter((b_1, a(b_1)), (b_2, a(b_2)), ..., (b_t, a(b_t))) are distinct.

The programs for A319479, there is no canonical definition to state claims against.
-/

/-! ## A319479.P1895884891578596933

`and(A060945(n), A166136(A050574(n+1)))`
-/

namespace A319479.P1895884891578596933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060945 n) (A166136 (A050574 (n + 1)).toNat)

end

end A319479.P1895884891578596933

/-! ## A319479.P16533693884232507727

`A000196(A049311(n+2))-A324583(n+1)`
-/

namespace A319479.P16533693884232507727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A049311 (n + 2)).toNat - A324583 (n + 1)

end

end A319479.P16533693884232507727

/-!
# A319481: Integers k such that uphi(k) divides k, where uphi is the unitary phi function (A047994).

The programs for A319481, there is no canonical definition to state claims against.
-/

/-! ## A319481.P9294063666770016035

`eq[A323408(n+1)-A323407(n+1), A323409(n+1)]+1`
-/

namespace A319481.P9294063666770016035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A323407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319481.P9294063666770016035

/-! ## A319481.P15995277122535304960

`eq[A345937(n+1)*A345938(n+1), A323409(n+1)]+1`
-/

namespace A319481.P15995277122535304960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345937 (n + 1) * A345938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319481.P15995277122535304960

/-!
# A319482: 

The programs for A319482, there is no canonical definition to state claims against.
-/

/-! ## A319482.P4364177749425143335

`A133901(n+1)²`
-/

namespace A319482.P4364177749425143335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133901 (n + 1) ^ 2

end

end A319482.P4364177749425143335

/-! ## A319482.P1206833609970414516

`A133901(n+1)*A133901(A334139(n+1))`
-/

namespace A319482.P1206833609970414516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133901 (n + 1) * A133901 (A334139 (n + 1)).toNat

end

end A319482.P1206833609970414516

/-!
# A319483: a(n) = A128921(n)^2.

The programs for A319483, there is no canonical definition to state claims against.
-/

/-! ## A319483.P15545748589978879013

`A128921(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319483.P15545748589978879013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (n + 1) ^ 2

end

end A319483.P15545748589978879013

/-! ## A319483.P6985093559287570783

`A128921(A000027(n+1))^2`
-/

namespace A319483.P6985093559287570783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (A000027 (n + 1)).toNat ^ 2

end

end A319483.P6985093559287570783

/-! ## A319483.P2524929003557660405

`A128921(A153671(n+1))^2`
-/

namespace A319483.P2524929003557660405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (A153671 (n + 1)).toNat ^ 2

end

end A319483.P2524929003557660405

/-! ## A319483.P13381808586330575403

`∩[A014186(n+1), A061457(n+1)]`
-/

namespace A319483.P13381808586330575403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319483.P13381808586330575403

/-! ## A319483.P5872284109357871707

`∩[A002113(n+1)², A061457(n+1)]`
-/

namespace A319483.P5872284109357871707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319483.P5872284109357871707

/-!
# A319484: a(n) is the smallest k > 1 such that n^k == n (mod k) and gcd(k, b^k-b) = 1 for some b <> n.

The programs for A319484, there is no canonical definition to state claims against.
-/

/-! ## A319484.P10358271739257582758

`A316940(n^A085697(n))`
-/

namespace A319484.P10358271739257582758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316940 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A085697 n : ℤ))).toNat

end

end A319484.P10358271739257582758

/-!
# A319485: Numbers k such that 473*2^k+1 is prime.

The programs for A319485, there is no canonical definition to state claims against.
-/

/-! ## A319485.P344939521639033585

`A045520(A063007(2*n)+A001044(n))`
-/

namespace A319485.P344939521639033585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045520 (A063007 (2 * n) + A001044 n).toNat

end

end A319485.P344939521639033585

/-!
# A319486: Numbers k such that 475*2^k+1 is prime.

The programs for A319486, there is no canonical definition to state claims against.
-/

/-! ## A319486.P10227908023473341124

`A339771(n)+A006530(A021772(n))`
-/

namespace A319486.P10227908023473341124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339771 n + A006530 (A021772 n).toNat

end

end A319486.P10227908023473341124

/-!
# A319488: Numbers k such that 479*2^k+1 is prime.

The programs for A319488, there is no canonical definition to state claims against.
-/

/-! ## A319488.P15746875057095582248

`A086748(A117719(n))`
-/

namespace A319488.P15746875057095582248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (A117719 n).toNat

end

end A319488.P15746875057095582248

/-!
# A319489: Number of non-isomorphic connected graphs on n vertices with representation number 2.

The programs for A319489, there is no canonical definition to state claims against.
-/

/-! ## A319489.P11564071414087106870

`A156808(n+1)-1`
-/

namespace A319489.P11564071414087106870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156808 (n + 1) - 1

end

end A319489.P11564071414087106870

/-! ## A319489.P7201257195218807572

`A113679(2*(n+1))+A156808(n+1)+1`
-/

namespace A319489.P7201257195218807572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (2 * (n + 1)) + (A156808 (n + 1) + 1)

end

end A319489.P7201257195218807572

/-! ## A319489.P6076271997789805897

`A229894(val(n+1, 10)+1)+A156808(n+1)`
-/

namespace A319489.P6076271997789805897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229894 (SequenceMachineLib.valuation (n + 1) 10 + 1) + A156808 (n + 1)

end

end A319489.P6076271997789805897

/-! ## A319489.P8611727144629016672

`A252750(A065710(n))+A156808(n+1)`
-/

namespace A319489.P8611727144629016672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252750 (A065710 n).toNat + A156808 (n + 1)

end

end A319489.P8611727144629016672

/-! ## A319489.P14858519222503066996

`A252750(A110656(n))+A156808(n+1)`
-/

namespace A319489.P14858519222503066996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252750 (A110656 n).toNat + A156808 (n + 1)

end

end A319489.P14858519222503066996

/-!
# A319490: Number of non-isomorphic connected graphs on n vertices with representation number 3.

The programs for A319490, there is no canonical definition to state claims against.
-/

/-! ## A319490.P15725284555718495458

`A335464(A335464(n))%A347420(n)`
-/

namespace A319490.P15725284555718495458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335464 (A335464 n).toNat) (A347420 n)

end

end A319490.P15725284555718495458

/-! ## A319490.P13229037238821231955

`A056538(2*(n+2))*A240500(A121352(n))`
-/

namespace A319490.P13229037238821231955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (2 * (n + 2)) * A240500 (A121352 n).toNat

end

end A319490.P13229037238821231955

/-! ## A319490.P7774078865765222685

`A057506(and(A056324(2*n+1), A076281(n+1)))`
-/

namespace A319490.P7774078865765222685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (Int.land (A056324 (2 * n + 1)) (A076281 (n + 1))).toNat

end

end A319490.P7774078865765222685

/-!
# A319491: Number of minimal non-word-representable connected graphs on n vertices.

The programs for A319491, there is no canonical definition to state claims against.
-/

/-! ## A319491.P11967214317965132301

`ogf((x+6x^2+7x^3-9x^4)/(1-4x))`
-/

namespace A319491.P11967214317965132301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6, 7, -9] [1, -4] n

end

end A319491.P11967214317965132301

/-!
# A319494: Triangle of the consecutive absolute differences between consecutive elements of the previous row, first row being the prime numbers (A000040), read by columns.

The programs for A319494, there is no canonical definition to state claims against.
-/

/-! ## A319494.P12185849509374884709

`A036262(A090894(n))`
-/

namespace A319494.P12185849509374884709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A090894 n).toNat

end

end A319494.P12185849509374884709

/-! ## A319494.P2636708777366500196

`A036262(A091995(n+1)-1)`
-/

namespace A319494.P2636708777366500196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A091995 (n + 1) - 1).toNat

end

end A319494.P2636708777366500196

/-! ## A319494.P6945629391738348057

`A363486(A194436(3*n+5)+A162974(n))`
-/

namespace A319494.P6945629391738348057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (A194436 (3 * n + 5) + A162974 n).toNat

end

end A319494.P6945629391738348057

/-!
# A319495: Number T(n,k) of multisets of nonempty words with a total of n letters over k-ary alphabet such that for k>0 the k-th letter occurs at least once and within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319495, there is no canonical definition to state claims against.
-/

/-! ## A319495.P600653047565655858

`A276167(6*A269957(n))`
-/

namespace A319495.P600653047565655858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276167 (6 * A269957 n).toNat

end

end A319495.P600653047565655858

/-! ## A319495.P16911679862514126421

`A246359(A330473(n)^4)`
-/

namespace A319495.P16911679862514126421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A330473 n ^ 4).toNat

end

end A319495.P16911679862514126421

/-! ## A319495.P8600710055211917037

`A246359(A330473(n)²²)`
-/

namespace A319495.P8600710055211917037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 ((A330473 n ^ 2) ^ 2).toNat

end

end A319495.P8600710055211917037

/-! ## A319495.P338400692006771513

`A000120(A008281(n)*A283877(n))`
-/

namespace A319495.P338400692006771513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008281 n * A283877 n).toNat

end

end A319495.P338400692006771513

/-! ## A319495.P8507655773579296844

`A000120(A061198(n)*A283877(n))`
-/

namespace A319495.P8507655773579296844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A061198 n * A283877 n).toNat

end

end A319495.P8507655773579296844

/-!
# A319496: Numbers whose prime indices are distinct and pairwise indivisible and whose own prime indices are connected and span an initial interval of positive integers.

The programs for A319496, there is no canonical definition to state claims against.
-/

/-! ## A319496.P5176808256277040346

`record[∏{p}[A320275(n+1), #]]`
-/

namespace A319496.P5176808256277040346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320275 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319496.P5176808256277040346

/-! ## A319496.P7373576393387038341

`record[A007913(A320275(n+1))]`
-/

namespace A319496.P7373576393387038341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319496.P7373576393387038341

/-! ## A319496.P10851916438160898059

`filter[A320275(n+1), A008966(#)]`
-/

namespace A319496.P10851916438160898059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A319496.P10851916438160898059

/-! ## A319496.P12442909159343745139

`filter[A320275(n+1), A323154(#)]`
-/

namespace A319496.P12442909159343745139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A319496.P12442909159343745139

/-! ## A319496.P8994455883862041146

`filter[A320275(n+1), A341642(#)]`
-/

namespace A319496.P8994455883862041146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A319496.P8994455883862041146

/-!
# A319497: a(0)=0, a(3*n)=9*a(n), a(3*n+1)=9*a(n)+1, a(3*n+2)=9*a(n)+3.

The programs for A319497, the canonical program `A319497.P5407658520446915927` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319497 has offset 0).

The definition of A319497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319497.P5407658520446915927

`A005823(A023717(n)+1)/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319497

/-- `A005823(A023717(n)+1)/2` -/
def P5407658520446915927.Spec : Prop :=
  ∀ n, P5407658520446915927.a n = (A319497 n : ℚ)

end A319497

/-! ## A319497.P4706916601715124876

`A005836(A023717(n)+1)`
-/

namespace A319497.P4706916601715124876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A023717 n + 1).toNat

end

end A319497.P4706916601715124876

namespace A319497

/-- `A005836(A023717(n)+1)` -/
def P4706916601715124876.Spec : Prop :=
  ∀ n, P4706916601715124876.a n = A319497 n

end A319497

/-! ## A319497.P8687388927360271904

`A003278(A023717(n)+1)-1`
-/

namespace A319497.P8687388927360271904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A023717 n + 1).toNat - 1

end

end A319497.P8687388927360271904

namespace A319497

/-- `A003278(A023717(n)+1)-1` -/
def P8687388927360271904.Spec : Prop :=
  ∀ n, P8687388927360271904.a n = A319497 n

end A319497

/-! ## A319497.P1717607147874931014

`record[gcd(A005836(n+1), A292373(n))]`
-/

namespace A319497.P1717607147874931014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005836 (n + 1)) (A292373 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319497.P1717607147874931014

namespace A319497

/-- `record[gcd(A005836(n+1), A292373(n))]` -/
def P1717607147874931014.Spec : Prop :=
  ∀ n, (P1717607147874931014.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P13222323434284813411

`A037463(A023713(n+1))`
-/

namespace A319497.P13222323434284813411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A023713 (n + 1)).toNat

end

end A319497.P13222323434284813411

namespace A319497

/-- `A037463(A023713(n+1))` -/
def P13222323434284813411.Spec : Prop :=
  ∀ n, P13222323434284813411.a n = A319497 n

end A319497

/-! ## A319497.P16517911105632957966

`∩[A005836(n+1), A037463(n)]`
-/

namespace A319497.P16517911105632957966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P16517911105632957966

namespace A319497

/-- `∩[A005836(n+1), A037463(n)]` -/
def P16517911105632957966.Spec : Prop :=
  ∀ n, (P16517911105632957966.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P13082013002562047403

`∩[A082575(n+1), A037463(n)]`
-/

namespace A319497.P13082013002562047403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P13082013002562047403

namespace A319497

/-- `∩[A082575(n+1), A037463(n)]` -/
def P13082013002562047403.Spec : Prop :=
  ∀ n, (P13082013002562047403.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P9311545890175986097

`∩[A039092(n+1), A037463(n)]`
-/

namespace A319497.P9311545890175986097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P9311545890175986097

namespace A319497

/-- `∩[A039092(n+1), A037463(n)]` -/
def P9311545890175986097.Spec : Prop :=
  ∀ n, (P9311545890175986097.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P15871540022219388133

`∩[A039093(n+1), A037463(n)]`
-/

namespace A319497.P15871540022219388133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P15871540022219388133

namespace A319497

/-- `∩[A039093(n+1), A037463(n)]` -/
def P15871540022219388133.Spec : Prop :=
  ∀ n, (P15871540022219388133.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P8827566879108954027

`∩[A039094(n+1), A037463(n)]`
-/

namespace A319497.P8827566879108954027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P8827566879108954027

namespace A319497

/-- `∩[A039094(n+1), A037463(n)]` -/
def P8827566879108954027.Spec : Prop :=
  ∀ n, (P8827566879108954027.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P5809492079470680968

`∩[A039095(n+1), A037463(n)]`
-/

namespace A319497.P5809492079470680968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P5809492079470680968

namespace A319497

/-- `∩[A039095(n+1), A037463(n)]` -/
def P5809492079470680968.Spec : Prop :=
  ∀ n, (P5809492079470680968.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P8856487160000816081

`∩[A039096(n+1), A037463(n)]`
-/

namespace A319497.P8856487160000816081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P8856487160000816081

namespace A319497

/-- `∩[A039096(n+1), A037463(n)]` -/
def P8856487160000816081.Spec : Prop :=
  ∀ n, (P8856487160000816081.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P10821985376494069561

`∩[A005836(n+1), A039092(n+1)]`
-/

namespace A319497.P10821985376494069561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P10821985376494069561

namespace A319497

/-- `∩[A005836(n+1), A039092(n+1)]` -/
def P10821985376494069561.Spec : Prop :=
  ∀ n, (P10821985376494069561.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P493503639043251905

`∩[A005836(n+1), A039102(n+1)]`
-/

namespace A319497.P493503639043251905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P493503639043251905

namespace A319497

/-- `∩[A005836(n+1), A039102(n+1)]` -/
def P493503639043251905.Spec : Prop :=
  ∀ n, (P493503639043251905.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P2255436362308578443

`∩[A005836(n+1), A039103(n+1)]`
-/

namespace A319497.P2255436362308578443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P2255436362308578443

namespace A319497

/-- `∩[A005836(n+1), A039103(n+1)]` -/
def P2255436362308578443.Spec : Prop :=
  ∀ n, (P2255436362308578443.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P16018639154701278935

`∩[A005836(n+1), A039104(n+1)]`
-/

namespace A319497.P16018639154701278935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P16018639154701278935

namespace A319497

/-- `∩[A005836(n+1), A039104(n+1)]` -/
def P16018639154701278935.Spec : Prop :=
  ∀ n, (P16018639154701278935.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P5156535164763148993

`∩[A005836(n+1), A039105(n+1)]`
-/

namespace A319497.P5156535164763148993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319497.P5156535164763148993

namespace A319497

/-- `∩[A005836(n+1), A039105(n+1)]` -/
def P5156535164763148993.Spec : Prop :=
  ∀ n, (P5156535164763148993.a n : ℤ) = A319497 n

end A319497

/-! ## A319497.P3522613725836321527

`A060372(A037314(n))`
-/

namespace A319497.P3522613725836321527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A037314 n).toNat

end

end A319497.P3522613725836321527

namespace A319497

/-- `A060372(A037314(n))` -/
def P3522613725836321527.Spec : Prop :=
  ∀ n, P3522613725836321527.a n = A319497 n

end A319497

/-! ## A319497.P9224926489030709136

`filter[A037463(n), A039966(#)]`
-/

namespace A319497.P9224926489030709136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A319497.P9224926489030709136

namespace A319497

/-- `filter[A037463(n), A039966(#)]` -/
def P9224926489030709136.Spec : Prop :=
  ∀ n, P9224926489030709136.a n = A319497 n

end A319497

/-!
# A319498: Number T(n,k) of sets of nonempty words with a total of n letters over k-ary alphabet such that for k>0 the k-th letter occurs at least once and within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319498, there is no canonical definition to state claims against.
-/

/-! ## A319498.P6716625115347952545

`A222819(A261781(n)+2)`
-/

namespace A319498.P6716625115347952545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222819 (A261781 n + 2).toNat

end

end A319498.P6716625115347952545

/-! ## A319498.P397143381487707070

`and(A283809(A290415(n)), A349782(n))`
-/

namespace A319498.P397143381487707070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283809 (A290415 n).toNat) (A349782 n)

end

end A319498.P397143381487707070

/-! ## A319498.P14763624157632640240

`A330240(A088969(n))`
-/

namespace A319498.P14763624157632640240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (A088969 n).toNat

end

end A319498.P14763624157632640240

/-! ## A319498.P1280893102537518224

`∑{e}[A007052(A309973(n)), #]`
-/

namespace A319498.P1280893102537518224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (A309973 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A319498.P1280893102537518224

/-! ## A319498.P8843737282831561513

`A088043(n+1)%A088079(A327116(n))`
-/

namespace A319498.P8843737282831561513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088043 (n + 1)) (A088079 (A327116 n).toNat)

end

end A319498.P8843737282831561513

