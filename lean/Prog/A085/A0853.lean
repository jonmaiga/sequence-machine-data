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
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A085300: a(n) is the least prime x such that when reversed it is a power of prime(n).

The programs for A085300, there is no canonical definition to state claims against.
-/

/-! ## A085300.P6928838457068803256

`A085326(p?[comp[n²]])`
-/

namespace A085300.P6928838457068803256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085326 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A085300.P6928838457068803256

/-! ## A085300.P788860015742525005

`A085326(Δ[A007504(n)])`
-/

namespace A085300.P788860015742525005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085326 (f1 (n + 1) - f1 n).toNat

end

end A085300.P788860015742525005

/-! ## A085300.P13137964685655256439

`A085326(A000040(n+1))`
-/

namespace A085300.P13137964685655256439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085326 (A000040 (n + 1)).toNat

end

end A085300.P13137964685655256439

/-! ## A085300.P18261239132123325437

`A085326(A058853(n+1))`
-/

namespace A085300.P18261239132123325437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085326 (A058853 (n + 1)).toNat

end

end A085300.P18261239132123325437

/-! ## A085300.P17414099139450141211

`A085326(A077359(n+1))`
-/

namespace A085300.P17414099139450141211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085326 (A077359 (n + 1)).toNat

end

end A085300.P17414099139450141211

/-!
# A085301: Number of factorials between two primorials.

The programs for A085301, there is no canonical definition to state claims against.
-/

/-! ## A085301.P3099233180167486144

`gcd(2, Δ[A085302(A028310(n))])`
-/

namespace A085301.P3099233180167486144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085302 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A085301.P3099233180167486144

/-! ## A085301.P12586742867947599761

`abs(Δ[A085302(A000038(n)+n)])`
-/

namespace A085301.P12586742867947599761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085302 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A085301.P12586742867947599761

/-! ## A085301.P6346927340166155439

`A029635(Δ[A073071(A233583(n+1))])`
-/

namespace A085301.P6346927340166155439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (f1 (n + 1) - f1 n).toNat

end

end A085301.P6346927340166155439

/-! ## A085301.P13847291689257916954

`A052954(Δ[A073071(A233583(n+1))])`
-/

namespace A085301.P13847291689257916954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (f1 (n + 1) - f1 n).toNat

end

end A085301.P13847291689257916954

/-! ## A085301.P2577150242373067066

`gcd(A078880(n+1), A078880(A374689(n)))`
-/

namespace A085301.P2577150242373067066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078880 (n + 1)) (A078880 (A374689 n).toNat)

end

end A085301.P2577150242373067066

/-!
# A085302: Partial sums of A085301.

The programs for A085302, there is no canonical definition to state claims against.
-/

/-! ## A085302.P9607867903259569782

`∑[A085301(n+1)]`
-/

namespace A085302.P9607867903259569782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085302.P9607867903259569782

/-! ## A085302.P108861966162769119

`A048964(n+1)+char[1]`
-/

namespace A085302.P108861966162769119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048964 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A085302.P108861966162769119

/-! ## A085302.P12145051103432080305

`A073071(n+1)-floor(acot(n))`
-/

namespace A085302.P12145051103432080305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A085302.P12145051103432080305

/-! ## A085302.P10514805927716581060

`A073071((n+1)%(2*n+1))`
-/

namespace A085302.P10514805927716581060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 ((n + 1) % (2 * n + 1))

end

end A085302.P10514805927716581060

/-! ## A085302.P5216635608286644656

`A073071(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A085302.P5216635608286644656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073071 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A085302.P5216635608286644656

/-! ## A085302.P13079879196494154838

`A073071(A087156(n+1))`
-/

namespace A085302.P13079879196494154838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (A087156 (n + 1)).toNat

end

end A085302.P13079879196494154838

/-! ## A085302.P9366948955258178856

`A063524(n)+A048964(n+1)`
-/

namespace A085302.P9366948955258178856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A048964 (n + 1)

end

end A085302.P9366948955258178856

/-! ## A085302.P14177083704893388322

`A073071(n+1)-A000007(n)`
-/

namespace A085302.P14177083704893388322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - A000007 n

end

end A085302.P14177083704893388322

/-! ## A085302.P6399001030269671143

`A073071(n+1)+A057427(n)-1`
-/

namespace A085302.P6399001030269671143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) + (A057427 n - 1)

end

end A085302.P6399001030269671143

/-! ## A085302.P16089075918369549161

`A073071(n+1)-A000038(n)/2`
-/

namespace A085302.P16089075918369549161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073071 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A085302.P16089075918369549161

/-! ## A085302.P5223959029940525622

`A073071(A199969(n+2))`
-/

namespace A085302.P5223959029940525622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (A199969 (n + 2)).toNat

end

end A085302.P5223959029940525622

/-! ## A085302.P16264017860700023016

`A073071(n+2)-A085301(n+2)`
-/

namespace A085302.P16264017860700023016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 2) - A085301 (n + 2)

end

end A085302.P16264017860700023016

/-! ## A085302.P13864407069536894507

`A073071(n+1)+A048964(n+2)-A073071(n+2)`
-/

namespace A085302.P13864407069536894507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) + (A048964 (n + 2) - A073071 (n + 2))

end

end A085302.P13864407069536894507

/-! ## A085302.P4985960933948618197

`and(A073071(n+1), A130567(n+1))`
-/

namespace A085302.P4985960933948618197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073071 (n + 1)) (A130567 (n + 1))

end

end A085302.P4985960933948618197

/-!
# A085303: Positions of 2 in A085301.

The programs for A085303, there is no canonical definition to state claims against.
-/

/-! ## A085303.P17316834885679892532

`eq[2, A085301(n+1)]+1`
-/

namespace A085303.P17316834885679892532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085303.P17316834885679892532

/-! ## A085303.P2336252778396239751

`A047222(2*n+1)+A010815(A101586(n+1))`
-/

namespace A085303.P2336252778396239751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (2 * n + 1) + A010815 (A101586 (n + 1)).toNat

end

end A085303.P2336252778396239751

/-!
# A085305: Numbers such that first reversing digits and then squaring equals the result of first squaring and then reversing.

The programs for A085305, there is no canonical definition to state claims against.
-/

/-! ## A085305.P13473075279333395212

`∪[A057135(n+1), A140212(n+1)]`
-/

namespace A085305.P13473075279333395212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085305.P13473075279333395212

/-! ## A085305.P6783261691357621250

`record[A004086(A004086(A061909(n+1)))]`
-/

namespace A085305.P6783261691357621250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A061909 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085305.P6783261691357621250

/-! ## A085305.P15597999886923505400

`∩[A061909(n+1), A342851(n+1)]`
-/

namespace A085305.P15597999886923505400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085305.P15597999886923505400

/-! ## A085305.P9268039814822856260

`record[A091703(A061909(n+1))]`
-/

namespace A085305.P9268039814822856260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A061909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085305.P9268039814822856260

/-! ## A085305.P3331877129646558231

`record[A091703(gcd(n, A069912(n)))]`
-/

namespace A085305.P3331877129646558231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (Int.gcd (n : ℤ) (A069912 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085305.P3331877129646558231

/-! ## A085305.P14051418046692610692

`record[A091703(sqrt(A129967(n+1)))]`
-/

namespace A085305.P14051418046692610692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085305.P14051418046692610692

/-! ## A085305.P15455592553870146988

`eq[A067552(n), A102679(A004273(n))]`
-/

namespace A085305.P15455592553870146988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085305.P15455592553870146988

/-! ## A085305.P4960792908349589084

`eq[n, A004086(A067552(n)+A004086(n))]`
-/

namespace A085305.P4960792908349589084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A067552 n + A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085305.P4960792908349589084

/-! ## A085305.P16331505099075221200

`eq[n, A004086(A069912(n)+A004086(n))]`
-/

namespace A085305.P16331505099075221200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A069912 n + A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085305.P16331505099075221200

/-! ## A085305.P15913390587476723690

`eq[n, A004086(A004086(n)-A069912(n))]`
-/

namespace A085305.P15913390587476723690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n - A069912 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085305.P15913390587476723690

/-!
# A085306: Prime numbers such that first reversing digits and after squaring equals the result of first-squaring and after-reversing. Primes in A085305.

The programs for A085306, there is no canonical definition to state claims against.
-/

/-! ## A085306.P1329739491191760635

`∩[A061909(n+1), A107715(n+1)]`
-/

namespace A085306.P1329739491191760635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P1329739491191760635

/-! ## A085306.P1770043571989717513

`∩[A102859(n+1), A107715(n+1)]`
-/

namespace A085306.P1770043571989717513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P1770043571989717513

/-! ## A085306.P4675099084071023325

`∩[A036956(n+1), A061909(n+1)]`
-/

namespace A085306.P4675099084071023325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P4675099084071023325

/-! ## A085306.P13402329468023194449

`∩[A036956(n+1), A102859(n+1)]`
-/

namespace A085306.P13402329468023194449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P13402329468023194449

/-! ## A085306.P5153886394938049207

`∩[A036956(n+1), A085305(n+1)]`
-/

namespace A085306.P5153886394938049207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P5153886394938049207

/-! ## A085306.P5174049727421287203

`∩[A085305(n+1), A107715(n+1)]`
-/

namespace A085306.P5174049727421287203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P5174049727421287203

/-! ## A085306.P1598315284872421871

`∩[A035122(n+1), A036956(n+1)]`
-/

namespace A085306.P1598315284872421871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P1598315284872421871

/-! ## A085306.P11246366505101182295

`∩[A035122(n+1), A036958(n+1)]`
-/

namespace A085306.P11246366505101182295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P11246366505101182295

/-! ## A085306.P8392258417639236365

`∩[A036958(n+1), A061909(n+1)]`
-/

namespace A085306.P8392258417639236365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P8392258417639236365

/-! ## A085306.P17744010826162960841

`∩[A036958(n+1), A085305(n+1)]`
-/

namespace A085306.P17744010826162960841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P17744010826162960841

/-! ## A085306.P9442773380800023475

`∩[A036958(n+1), A102859(n+1)]`
-/

namespace A085306.P9442773380800023475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P9442773380800023475

/-! ## A085306.P4169129415334772638

`∩[A035122(n+1), A107715(n+1)]`
-/

namespace A085306.P4169129415334772638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P4169129415334772638

/-! ## A085306.P11883098766795967026

`∩[A035122(n+1), A036960(n+1)]`
-/

namespace A085306.P11883098766795967026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P11883098766795967026

/-! ## A085306.P17995445625562018730

`∩[A036960(n+1), A061909(n+1)]`
-/

namespace A085306.P17995445625562018730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P17995445625562018730

/-! ## A085306.P13125409592418772231

`∩[A038617(n+1), A061909(n+1)]`
-/

namespace A085306.P13125409592418772231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P13125409592418772231

/-! ## A085306.P6202643994768659663

`∩[A036960(n+1), A085305(n+1)]`
-/

namespace A085306.P6202643994768659663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P6202643994768659663

/-! ## A085306.P6801958521987013609

`∩[A038617(n+1), A085305(n+1)]`
-/

namespace A085306.P6801958521987013609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P6801958521987013609

/-! ## A085306.P123825707647531206

`∩[A036960(n+1), A102859(n+1)]`
-/

namespace A085306.P123825707647531206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P123825707647531206

/-! ## A085306.P13259633111736722354

`∩[A035122(n+1), A372629(n+1)]`
-/

namespace A085306.P13259633111736722354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P13259633111736722354

/-! ## A085306.P15481935204799101222

`∩[A061909(n+1), A372629(n+1)]`
-/

namespace A085306.P15481935204799101222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085306.P15481935204799101222

/-!
# A085307: a(1) = 1; for n > 1, concatenate distinct prime factors of n in decreasing order.

The programs for A085307, there is no canonical definition to state claims against.
-/

/-! ## A085307.P17446645387172617435

`A084796(∏{p}[n+1, #])`
-/

namespace A085307.P17446645387172617435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A085307.P17446645387172617435

/-! ## A085307.P12587478989563554605

`A084796(A007947(n+1))`
-/

namespace A085307.P12587478989563554605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A007947 (n + 1)).toNat

end

end A085307.P12587478989563554605

/-! ## A085307.P12592886911835613452

`A084796(A075423(n+1)+1)`
-/

namespace A085307.P12592886911835613452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A075423 (n + 1) + 1).toNat

end

end A085307.P12592886911835613452

/-! ## A085307.P9070121174084983680

`A084796(A000203(n+1)-A326142(n+1))`
-/

namespace A085307.P9070121174084983680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A000203 (n + 1) - A326142 (n + 1)).toNat

end

end A085307.P9070121174084983680

/-! ## A085307.P8056638642952392273

`A084796(A144845(n)/A318256(n))`
-/

namespace A085307.P8056638642952392273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.roundAway ((A144845 n : ℚ) / (A318256 n : ℚ))).toNat

end

end A085307.P8056638642952392273

/-! ## A085307.P7975275297091246

`A084796(gcd(n+1, A225481(n)))`
-/

namespace A085307.P7975275297091246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (Int.gcd (n + 1 : ℤ) (A225481 n))

end

end A085307.P7975275297091246

/-!
# A085308: Iterate function described in A085307 (= reverse concatenation of prime factors); a(n) is either (i) the fixed point [=prime] if it exists, (ii) a(n)=1 if no convergence occurs (most even initial values); (iii) a(n)=0 if n=1 or if the iteration results in a nontrivial cycle.

The programs for A085308, there is no canonical definition to state claims against.
-/

/-! ## A085308.P7420289432568581116

`A020639(n+1)-and(char[n²], A130476(n+1))`
-/

namespace A085308.P7420289432568581116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A130476 (n + 1))

end

end A085308.P7420289432568581116

/-! ## A085308.P273064050798377314

`A020639((n+1)/10^val(n+1, 10))%A193940(n)`
-/

namespace A085308.P273064050798377314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat) (A193940 n)

end

end A085308.P273064050798377314

/-! ## A085308.P9222904503168886425

`gcd(1-∑[2^n], (n+1)²)-A010054(A172229(n+1))`
-/

namespace A085308.P9222904503168886425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((n + 1) ^ 2 : ℤ) : ℤ) - A010054 (A172229 (n + 1)).toNat

end

end A085308.P9222904503168886425

/-! ## A085308.P17370096606611386959

`A020639(A077168(n))-A014063(n)`
-/

namespace A085308.P17370096606611386959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077168 n).toNat - A014063 n

end

end A085308.P17370096606611386959

/-!
# A085310: Number of distinct 7th powers modulo n.

The programs for A085310, there is no canonical definition to state claims against.
-/

/-! ## A085310.P2355758872625785375

`A055653(n+1)%A209874(A188163(n+1))`
-/

namespace A085310.P2355758872625785375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055653 (n + 1)) (A209874 (A188163 (n + 1)).toNat)

end

end A085310.P2355758872625785375

/-! ## A085310.P8473348069579312763

`∑{d}[n+1, A114810(#)]%A209874(A188163(n+1))`
-/

namespace A085310.P8473348069579312763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A114810 d) (A209874 (A188163 (n + 1)).toNat)

end

end A085310.P8473348069579312763

/-! ## A085310.P1709059583943651518

`(A117656((n+1)²)/(n+1))%A209874(A188163(n+1))`
-/

namespace A085310.P1709059583943651518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A117656 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))) (A209874 (A188163 (n + 1)).toNat)

end

end A085310.P1709059583943651518

/-! ## A085310.P3436947580271137772

`(n-A023443(A055654(n+1)))%A209874(A188163(n+1))`
-/

namespace A085310.P3436947580271137772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A023443 (A055654 (n + 1)).toNat) (A209874 (A188163 (n + 1)).toNat)

end

end A085310.P3436947580271137772

/-! ## A085310.P14052874697432294070

`A055653(n+1)%A319057(A155212(n))`
-/

namespace A085310.P14052874697432294070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055653 (n + 1)) (A319057 (A155212 n).toNat)

end

end A085310.P14052874697432294070

/-!
# A085311: Number of distinct 8th powers modulo n.

The programs for A085311, there is no canonical definition to state claims against.
-/

/-! ## A085311.P17010226678381219779

`A234586(A052273(n+1)%A122097(n))`
-/

namespace A085311.P17010226678381219779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (Int.tmod (A052273 (n + 1)) (A122097 (n + 64))).toNat

end

end A085311.P17010226678381219779

/-! ## A085311.P156195622581390895

`A234586(A052273(n+1))%A123142(n)`
-/

namespace A085311.P156195622581390895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234586 (A052273 (n + 1)).toNat) (A123142 (n + 64))

end

end A085311.P156195622581390895

/-! ## A085311.P11965211184905856164

`A277847(n+1)+A193095(A046685(n+1))`
-/

namespace A085311.P11965211184905856164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277847 (n + 1) + A193095 (A046685 (n + 1)).toNat

end

end A085311.P11965211184905856164

/-! ## A085311.P5336993021376459226

`A219196(n)-xor(A052273(n+1), A219196(n))`
-/

namespace A085311.P5336993021376459226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219196 n - Int.xor (A052273 (n + 1)) (A219196 n)

end

end A085311.P5336993021376459226

/-! ## A085311.P7840279639135056576

`A234586((1-A257302(n+1)+n)%A122097(n))`
-/

namespace A085311.P7840279639135056576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (Int.tmod (1 - A257302 (n + 1) + (n : ℤ)) (A122097 (n + 64))).toNat

end

end A085311.P7840279639135056576

/-!
# A085312: Number of distinct 9th powers modulo n.

The programs for A085312, there is no canonical definition to state claims against.
-/

/-! ## A085312.P7194385843460166126

`A046530(n+1)-A101637(A002531(n))`
-/

namespace A085312.P7194385843460166126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A101637 (A002531 n).toNat

end

end A085312.P7194385843460166126

/-! ## A085312.P15987188497908870349

`A046530(n+1)-A101637(A112841(n))`
-/

namespace A085312.P15987188497908870349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A101637 (A112841 n).toNat

end

end A085312.P15987188497908870349

/-! ## A085312.P11923093815267372409

`A046530(n+1)-A186748(A185214(n))`
-/

namespace A085312.P11923093815267372409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A186748 (A185214 n).toNat

end

end A085312.P11923093815267372409

/-! ## A085312.P3138100301831409060

`A046530(n+1)-A326499(A326486(n))`
-/

namespace A085312.P3138100301831409060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A326499 ((A326486 n).toNat + 51)

end

end A085312.P3138100301831409060

/-! ## A085312.P12683783136599643326

`A046530(n+1)-A090330(A074229(n+1))`
-/

namespace A085312.P12683783136599643326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A090330 (A074229 (n + 1)).toNat

end

end A085312.P12683783136599643326

/-!
# A085314: Number of distinct 11th powers modulo n.

The programs for A085314, there is no canonical definition to state claims against.
-/

/-! ## A085314.P8718686487910884735

`A055653(n+1)%A225353(A173462(n+1))`
-/

namespace A085314.P8718686487910884735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055653 (n + 1)) (A225353 (A173462 (n + 1)).toNat)

end

end A085314.P8718686487910884735

/-! ## A085314.P8768832212345241406

`∑{d}[n+1, A114810(#)]%A225353(A173462(n+1))`
-/

namespace A085314.P8768832212345241406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A114810 d) (A225353 (A173462 (n + 1)).toNat)

end

end A085314.P8768832212345241406

/-! ## A085314.P16667581717381354520

`(1-A055654(n+1)+n)%A225353(A173462(n+1))`
-/

namespace A085314.P16667581717381354520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A055654 (n + 1) + (n : ℤ)) (A225353 (A173462 (n + 1)).toNat)

end

end A085314.P16667581717381354520

/-! ## A085314.P15846474713120236941

`(A117656((n+1)²)/(n+1))%A225353(A173462(n+1))`
-/

namespace A085314.P15846474713120236941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A117656 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))) (A225353 (A173462 (n + 1)).toNat)

end

end A085314.P15846474713120236941

/-! ## A085314.P392207088367297058

`A085310(n+1)%A007947(A291925(n+1))`
-/

namespace A085314.P392207088367297058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085310 (n + 1)) (A007947 (A291925 (n + 1)).toNat)

end

end A085314.P392207088367297058

/-!
# A085315: Numbers such that first reversing digits and after forming its cube equals the result of first-form-cube and after-reverse operation with exclusion of cases divisible by 10.

The programs for A085315, there is no canonical definition to state claims against.
-/

/-! ## A085315.P6947649460294374808

`filter[A069494(n+1), A011558(#)]`
-/

namespace A085315.P6947649460294374808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A085315.P6947649460294374808

/-! ## A085315.P12769382358356275052

`∩[A069494(n+1), A337184(n+1)]`
-/

namespace A085315.P12769382358356275052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085315.P12769382358356275052

/-! ## A085315.P9594053718709109513

`filter[A069494(n+1), A168184(#)]`
-/

namespace A085315.P9594053718709109513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A085315.P9594053718709109513

/-!
# A085317: Primes which are the sum of three nonzero squares.

The programs for A085317, there is no canonical definition to state claims against.
-/

/-! ## A085317.P15022401249229215425

`p?[A223731(n+1)]`
-/

namespace A085317.P15022401249229215425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085317.P15022401249229215425

/-! ## A085317.P10018795463251269484

`filter[A223731(n+1), A010051(#)]`
-/

namespace A085317.P10018795463251269484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A085317.P10018795463251269484

/-! ## A085317.P3451368094184958708

`∩[A000040(n+1), A223731(n+1)]`
-/

namespace A085317.P3451368094184958708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P3451368094184958708

/-! ## A085317.P17039966420510534042

`∩[A004139(n+1), A223731(n+1)]`
-/

namespace A085317.P17039966420510534042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P17039966420510534042

/-! ## A085317.P13664095167182324809

`∩[A006005(n+1), A223731(n+1)]`
-/

namespace A085317.P13664095167182324809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P13664095167182324809

/-! ## A085317.P9148689694503591381

`∩[A008578(n+1), A223731(n+1)]`
-/

namespace A085317.P9148689694503591381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P9148689694503591381

/-! ## A085317.P16730459708961301489

`∩[A042998(n+1), A223731(n+1)]`
-/

namespace A085317.P16730459708961301489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P16730459708961301489

/-! ## A085317.P3525182801413378520

`∩[A045319(n+1), A223731(n+1)]`
-/

namespace A085317.P3525182801413378520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P3525182801413378520

/-! ## A085317.P17168456448945390459

`∩[A045403(n+1), A223731(n+1)]`
-/

namespace A085317.P17168456448945390459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P17168456448945390459

/-! ## A085317.P721149429361177942

`∩[A046022(n+1), A223731(n+1)]`
-/

namespace A085317.P721149429361177942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P721149429361177942

/-! ## A085317.P7774586792599707403

`∩[A062972(n+1), A223731(n+1)]`
-/

namespace A085317.P7774586792599707403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P7774586792599707403

/-! ## A085317.P5127761898510469714

`∩[A065091(n+1), A223731(n+1)]`
-/

namespace A085317.P5127761898510469714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P5127761898510469714

/-! ## A085317.P5694673070907874197

`∩[A066191(n+1), A223731(n+1)]`
-/

namespace A085317.P5694673070907874197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P5694673070907874197

/-! ## A085317.P16176031726985623561

`∩[A066542(n+1), A223731(n+1)]`
-/

namespace A085317.P16176031726985623561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P16176031726985623561

/-! ## A085317.P7737642716815952700

`∩[A158611(n+1), A223731(n+1)]`
-/

namespace A085317.P7737642716815952700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P7737642716815952700

/-! ## A085317.P3645548530683603312

`∩[A174090(n+1), A223731(n+1)]`
-/

namespace A085317.P3645548530683603312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P3645548530683603312

/-! ## A085317.P9593323667098911521

`∩[A175787(n+1), A223731(n+1)]`
-/

namespace A085317.P9593323667098911521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P9593323667098911521

/-! ## A085317.P13358711538625220863

`∩[A182986(n+1), A223731(n+1)]`
-/

namespace A085317.P13358711538625220863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085317.P13358711538625220863

/-! ## A085317.P13219631162317578708

`p?[A000408(n+1)]`
-/

namespace A085317.P13219631162317578708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085317.P13219631162317578708

/-! ## A085317.P15512710499542337715

`p?[comp[A004214(n+1)]]`
-/

namespace A085317.P15512710499542337715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A085317.P15512710499542337715

/-!
# A085318: Primes which are the sum of three positive 4th powers.

The programs for A085318, there is no canonical definition to state claims against.
-/

/-! ## A085318.P6339440023157517500

`∩[A003337(n+1), A140834(n+1)]`
-/

namespace A085318.P6339440023157517500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085318.P6339440023157517500

/-! ## A085318.P10505398217778844380

`p?[A003337(n+1)]`
-/

namespace A085318.P10505398217778844380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085318.P10505398217778844380

/-! ## A085318.P7700065458532100615

`p?[∪[A309762(n+1), A344188(n+1)]]`
-/

namespace A085318.P7700065458532100615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309762 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344188 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A085318.P7700065458532100615

/-! ## A085318.P3467695974437336815

`A000027(p?[A003337(n%a(n-1))])` with `a(0)=4`
-/

namespace A085318.P3467695974437336815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A003337 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085318.P3467695974437336815

/-! ## A085318.P16183857544632203416

`∩[A003337(n+1), A033200(n+1)]`
-/

namespace A085318.P16183857544632203416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085318.P16183857544632203416

/-! ## A085318.P6405096513030965828

`∩[A003337(n+1), A033203(n+1)]`
-/

namespace A085318.P6405096513030965828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085318.P6405096513030965828

/-! ## A085318.P5371835931738369137

`∩[A045321(n+1), A003337(n+1)]`
-/

namespace A085318.P5371835931738369137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085318.P5371835931738369137

/-!
# A085319: Primes which are the sum of three 5th powers.

The programs for A085319, there is no canonical definition to state claims against.
-/

/-! ## A085319.P6561502798726242764

`p?[A003348(n+1)]`
-/

namespace A085319.P6561502798726242764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085319.P6561502798726242764

/-! ## A085319.P11141880512312413320

`record[p?[A003348(A052938(n))]]`
-/

namespace A085319.P11141880512312413320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003348 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085319.P11141880512312413320

/-!
# A085320: First difference sequence of A003349; i.e., consecutive differences between those consecutive numbers which are sums of four 5th powers.

The programs for A085320, there is no canonical definition to state claims against.
-/

/-! ## A085320.P16062177091237878446

`Δ[A003349(n+1)]`
-/

namespace A085320.P16062177091237878446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085320.P16062177091237878446

/-! ## A085320.P534095994433443607

`A003349(n+2)-A003349(n+1)`
-/

namespace A085320.P534095994433443607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (n + 2) - A003349 (n + 1)

end

end A085320.P534095994433443607

/-! ## A085320.P13103614547357514937

`Δ[A345619(n+1)%A394640(2*n+5)]`
-/

namespace A085320.P13103614547357514937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345619 (n + 1)) (A394640 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085320.P13103614547357514937

/-!
# A085321: First difference sequence of A003337; i.e., consecutive differences between those consecutive numbers which are sums of three 4th powers.

The programs for A085321, there is no canonical definition to state claims against.
-/

/-! ## A085321.P4437043439755436151

`Δ[A003337(n+1)]`
-/

namespace A085321.P4437043439755436151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085321.P4437043439755436151

/-! ## A085321.P14335817443118115423

`Δ[record[A003337(A344180(n))]]`
-/

namespace A085321.P14335817443118115423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085321.P14335817443118115423

/-! ## A085321.P5479139440286973426

`A003337(n+2)-A003337(n+1)`
-/

namespace A085321.P5479139440286973426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 2) - A003337 (n + 1)

end

end A085321.P5479139440286973426

/-! ## A085321.P9678072459410542802

`abs(Δ[A003337(A008619(2*n))])`
-/

namespace A085321.P9678072459410542802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A085321.P9678072459410542802

/-! ## A085321.P4279828536830832829

`Δ[A345824(n+1)]%A112073(2*(n+2))`
-/

namespace A085321.P4279828536830832829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A112073 (2 * (n + 2)))

end

end A085321.P4279828536830832829

/-!
# A085322: Terms m of A003337 such that m+1 is also in A003337; i.e., smaller of two consecutive numbers, both equal to a sum of three 4th powers.

The programs for A085322, there is no canonical definition to state claims against.
-/

/-! ## A085322.P7670020165373041842

`∩[A003337(n+1)-1, A003337(n+1)]`
-/

namespace A085322.P7670020165373041842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085322.P7670020165373041842

/-! ## A085322.P8092349355485235879

`∩[A003337(n+1), A066182(A003337(n+1))]`
-/

namespace A085322.P8092349355485235879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A003337 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085322.P8092349355485235879

/-!
# A085323: Numbers k such that both k and k+1 are sums of two positive cubes.

The programs for A085323, there is no canonical definition to state claims against.
-/

/-! ## A085323.P15595591060901546469

`∩[A003325(n+1)-1, A003325(n+1)]`
-/

namespace A085323.P15595591060901546469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085323.P15595591060901546469

/-! ## A085323.P2046881545064114838

`∩[A338667(n+1)-1, A338667(n+1)]`
-/

namespace A085323.P2046881545064114838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085323.P2046881545064114838

/-! ## A085323.P18365383819657384621

`∩[A294073(n+1)-1, A294073(n+1)]`
-/

namespace A085323.P18365383819657384621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294073 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085323.P18365383819657384621

/-!
# A085324: a(n) is the least exponent so that reverse(n^a(n)) is a prime number. a(n)=0 if no such exponent exists, namely when e.g., n = 3k or n = 11k, k > 1.

The programs for A085324, there is no canonical definition to state claims against.
-/

/-! ## A085324.P6296608647675415303

`or(A058998(n+1), A287372(A341470(n)))`
-/

namespace A085324.P6296608647675415303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058998 (n + 1)) (A287372 (A341470 n).toNat)

end

end A085324.P6296608647675415303

/-! ## A085324.P3159165177024991547

`gcd(A008683(A325306(n+1)), A058998(n+1))`
-/

namespace A085324.P3159165177024991547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A325306 (n + 1)).toNat) (A058998 (n + 1))

end

end A085324.P3159165177024991547

/-! ## A085324.P9337142874722901293

`A058998(A077342(n+1))`
-/

namespace A085324.P9337142874722901293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058998 (A077342 (n + 1)).toNat

end

end A085324.P9337142874722901293

/-! ## A085324.P1074066155453634784

`A058998(A219209(n+1))`
-/

namespace A085324.P1074066155453634784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058998 (A219209 (n + 1)).toNat

end

end A085324.P1074066155453634784

/-! ## A085324.P7323950166567559347

`A058998(A242474(n+1))`
-/

namespace A085324.P7323950166567559347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058998 (A242474 (n + 1)).toNat

end

end A085324.P7323950166567559347

/-!
# A085330: Where records occur in A085068.

The programs for A085330, there is no canonical definition to state claims against.
-/

/-! ## A085330.P6386723871361813509

`A129377(A085328(n+1))%(10^n)`
-/

namespace A085330.P6386723871361813509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129377 (A085328 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A085330.P6386723871361813509

/-! ## A085330.P1253136692796345462

`A057427(n)*A129377(A085328(n+1))`
-/

namespace A085330.P1253136692796345462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A129377 (A085328 (n + 1)).toNat

end

end A085330.P1253136692796345462

/-! ## A085330.P16847476711090090624

`A129377(A085328(n+1))*A178334(n)`
-/

namespace A085330.P16847476711090090624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129377 (A085328 (n + 1)).toNat * A178334 n

end

end A085330.P16847476711090090624

/-! ## A085330.P6112941235253056018

`lcm(A011599(n), A129377(A085328(n+1)))`
-/

namespace A085330.P6112941235253056018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011599 n) (A129377 (A085328 (n + 1)).toNat)

end

end A085330.P6112941235253056018

/-! ## A085330.P1813411117904450023

`A011599(n²)*A129377(A085328(n+1))`
-/

namespace A085330.P1813411117904450023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 (n ^ 2) * A129377 (A085328 (n + 1)).toNat

end

end A085330.P1813411117904450023

/-!
# A085331: Numbers k such that phi(rev(k)) = k.

The programs for A085331, there is no canonical definition to state claims against.
-/

/-! ## A085331.P10238417426650162237

`A000010(A072395(n+1))`
-/

namespace A085331.P10238417426650162237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072395 (n + 1)).toNat

end

end A085331.P10238417426650162237

/-! ## A085331.P2024635790608381069

`A000010(A069215(comp[∑[4*n]]))`
-/

namespace A085331.P2024635790608381069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A069215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A085331.P2024635790608381069

/-!
# A085332: Prime powers that are sums of two positive cubes.

The programs for A085332, there is no canonical definition to state claims against.
-/

/-! ## A085332.P9831549057845040075

`∩[A237282(n+1), A379956(n+1)]`
-/

namespace A085332.P9831549057845040075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085332.P9831549057845040075

/-! ## A085332.P11551013957336918222

`∩[A003325(n+1), A006899(n+1)]`
-/

namespace A085332.P11551013957336918222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085332.P11551013957336918222

/-! ## A085332.P10002927130728148296

`∩[A003325(n+1), A105317(n+1)]`
-/

namespace A085332.P10002927130728148296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085332.P10002927130728148296

/-! ## A085332.P7652021443478643276

`∩[A003325(n+1), A105941(n+1)]`
-/

namespace A085332.P7652021443478643276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085332.P7652021443478643276

/-! ## A085332.P14911122715863267760

`∩[A003325(n+1), A192139(n+1)]`
-/

namespace A085332.P14911122715863267760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085332.P14911122715863267760

/-!
# A085333: a(n) is the least n-th power of a prime that is the sum of two positive cubes, or 0 if no solution exists (for n=3k).

The programs for A085333, the canonical program `A085333.P957206356123088144` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085333 has offset 1).

The definition of A085333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085333.P957206356123088144

`35*a(n-3)-216*a(n-6)` with `a(0)=2, a(1)=9, a(2)=0, a(3)=16, a(4)=243, a(5)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085333

/-- `35*a(n-3)-216*a(n-6)` -/
def P957206356123088144.Spec : Prop :=
  ∀ n, P957206356123088144.a n = A085333 (n + 1)

theorem P957206356123088144.correct : P957206356123088144.Spec := by
  intro n
  simp only [A085333, Nat.add_sub_cancel]

end A085333

/-! ## A085333.P3548728156330580493

`xor(2, n%3)^(n+1)`
-/

namespace A085333.P3548728156330580493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n % 3) ^ (n + 1)

end

end A085333.P3548728156330580493

namespace A085333

/-- `xor(2, n%3)^(n+1)` -/
def P3548728156330580493.Spec : Prop :=
  ∀ n, (P3548728156330580493.a n : ℤ) = A085333 (n + 1)

end A085333

/-! ## A085333.P6397673158550688772

`round(ϕ*(n+1)%3)^(n+1)`
-/

namespace A085333.P6397673158550688772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (((n + 1) % 3 : ℕ) : ℝ)) ^ (n + 1)

end

end A085333.P6397673158550688772

namespace A085333

/-- `round(ϕ*(n+1)%3)^(n+1)` -/
def P6397673158550688772.Spec : Prop :=
  ∀ n, P6397673158550688772.a n = A085333 (n + 1)

end A085333

/-! ## A085333.P6180124910608822057

`(8%((2*n+3)%6))^(n+1)`
-/

namespace A085333.P6180124910608822057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 % ((2 * n + 3) % 6)) ^ (n + 1)

end

end A085333.P6180124910608822057

namespace A085333

/-- `(8%((2*n+3)%6))^(n+1)` -/
def P6180124910608822057.Spec : Prop :=
  ∀ n, (P6180124910608822057.a n : ℤ) = A085333 (n + 1)

end A085333

/-! ## A085333.P13370413073606683290

`∑[floor(a(n-3))]^(n+1)` with `a(0)=2, a(1)=1, a(2)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A085333.P13370413073606683290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A085333.P13370413073606683290

namespace A085333

/-- `∑[floor(a(n-3))]^(n+1)` -/
def P13370413073606683290.Spec : Prop :=
  ∀ n, P13370413073606683290.a n = A085333 (n + 1)

end A085333

/-! ## A085333.P18351474600663875840

`A300290(2*(n+1))^(n+1)`
-/

namespace A085333.P18351474600663875840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300290 (2 * (n + 1)) ^ (n + 1)

end

end A085333.P18351474600663875840

namespace A085333

/-- `A300290(2*(n+1))^(n+1)` -/
def P18351474600663875840.Spec : Prop :=
  ∀ n, P18351474600663875840.a n = A085333 (n + 1)

end A085333

/-! ## A085333.P8802269002853321178

`A109362(2*n+3)^(n+1)`
-/

namespace A085333.P8802269002853321178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109362 (2 * n + 3) ^ (n + 1)

end

end A085333.P8802269002853321178

namespace A085333

/-- `A109362(2*n+3)^(n+1)` -/
def P8802269002853321178.Spec : Prop :=
  ∀ n, P8802269002853321178.a n = A085333 (n + 1)

end A085333

/-! ## A085333.P14146703382285564815

`(∑[gcd(2, A000045(n))]%4)^(n+1)`
-/

namespace A085333.P14146703382285564815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % 4) ^ (n + 1)

end

end A085333.P14146703382285564815

namespace A085333

/-- `(∑[gcd(2, A000045(n))]%4)^(n+1)` -/
def P14146703382285564815.Spec : Prop :=
  ∀ n, (P14146703382285564815.a n : ℤ) = A085333 (n + 1)

end A085333

/-! ## A085333.P2327007102263063287

`and(3, 3-A000032(2*n+1))^(n+1)`
-/

namespace A085333.P2327007102263063287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (3 - A000032 (2 * n + 1)) ^ (n + 1)

end

end A085333.P2327007102263063287

namespace A085333

/-- `and(3, 3-A000032(2*n+1))^(n+1)` -/
def P2327007102263063287.Spec : Prop :=
  ∀ n, P2327007102263063287.a n = A085333 (n + 1)

end A085333

/-!
# A085334: Numbers which are neither sums of 2,3,4,5 or that of 6 nonnegative cubes.

The programs for A085334, there is no canonical definition to state claims against.
-/

/-! ## A085334.P3435394905225593414

`eq[2*A051343(n), A173680(n)]`
-/

namespace A085334.P3435394905225593414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P3435394905225593414

/-! ## A085334.P8331465010354051713

`eq[3*A173677(n), A173680(n)]`
-/

namespace A085334.P8331465010354051713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P8331465010354051713

/-! ## A085334.P9860484382896795073

`eq[A173680(n), A173690(A173678(n))]`
-/

namespace A085334.P9860484382896795073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 (A173678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P9860484382896795073

/-! ## A085334.P17227760782549102176

`eq[A173679(n)+A010057(n), A173680(n)]`
-/

namespace A085334.P17227760782549102176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n + A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P17227760782549102176

/-! ## A085334.P8217956962941790386

`eq[A173678(n)+A173677(n), A173680(n)]`
-/

namespace A085334.P8217956962941790386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n + A173677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P8217956962941790386

/-! ## A085334.P2177049694836027788

`eq[A047878(A173680(n)), A173677(n)]`
-/

namespace A085334.P2177049694836027788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A173680 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P2177049694836027788

/-! ## A085334.P16806231762392529651

`eq[1, A173676(A173680(n)+A010057(n))]`
-/

namespace A085334.P16806231762392529651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 (A173680 n + A010057 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085334.P16806231762392529651

/-! ## A085334.P13984989731674367518

`eq[A025450(n), A320841(A000124(n))]`
-/

namespace A085334.P13984989731674367518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085334.P13984989731674367518

/-!
# A085336: Numbers which are sums of two and also sums of three positive cubes.

The programs for A085336, there is no canonical definition to state claims against.
-/

/-! ## A085336.P3074829445576619900

`∩[A003072(n+1), A003325(n+1)]`
-/

namespace A085336.P3074829445576619900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085336.P3074829445576619900

/-!
# A085338: Numbers which are sums of two, three, four and also sums of five cubes.

The programs for A085338, there is no canonical definition to state claims against.
-/

/-! ## A085338.P8677267762977280443

`record[(1-char[3])*A085337(n+1)]`
-/

namespace A085338.P8677267762977280443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A085337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085338.P8677267762977280443

/-! ## A085338.P11863884680680148869

`A085337(A326178(n)+1)`
-/

namespace A085338.P11863884680680148869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085337 (A326178 n + 1).toNat

end

end A085338.P11863884680680148869

/-! ## A085338.P17514387690983259860

`A085337(A329683(n)+n)`
-/

namespace A085338.P17514387690983259860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085337 (A329683 n + (n : ℤ)).toNat

end

end A085338.P17514387690983259860

/-! ## A085338.P12258399363038372042

`A085337(A293754(n+1))`
-/

namespace A085338.P12258399363038372042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085337 (A293754 (n + 1)).toNat

end

end A085338.P12258399363038372042

/-!
# A085339: Modulo 91 remainders of 6th powers.

The programs for A085339, there is no canonical definition to state claims against.
-/

/-! ## A085339.P13004901877085598797

`(n^6)%91`
-/

namespace A085339.P13004901877085598797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 91

end

end A085339.P13004901877085598797

/-! ## A085339.P6302175256972633600

`abs(-(n*n²)²%91)`
-/

namespace A085339.P6302175256972633600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-((n * n ^ 2) ^ 2 : ℤ)) 91|

end

end A085339.P6302175256972633600

/-! ## A085339.P1535373928702764782

`A002604(n)%91-1`
-/

namespace A085339.P1535373928702764782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002604 n) 91 - 1

end

end A085339.P1535373928702764782

/-! ## A085339.P6664829151584885595

`-(-A001014(n)%91)`
-/

namespace A085339.P6664829151584885595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A001014 n) 91

end

end A085339.P6664829151584885595

/-! ## A085339.P9155249351008175807

`(A001014(n)+1)%A103847(n+1)-1`
-/

namespace A085339.P9155249351008175807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001014 n + 1) (A103847 (n + 1)) - 1

end

end A085339.P9155249351008175807

/-!
# A085340: a(n) is the value of determinant of the following special matrix: diagonal values equal to n-2; upper triangular entries equal to -1; lower triangular values are +1.

The programs for A085340, there is no canonical definition to state claims against.
-/

/-! ## A085340.P12334709296991787322

`((n-2)^(n+1)+n^(n+1))/2`
-/

namespace A085340.P12334709296991787322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) ^ (n + 1) + (n ^ (n + 1) : ℤ) : ℚ) / 2

end

end A085340.P12334709296991787322

/-!
# A085341: Number of primes between sigma(n) and n inclusive.

The programs for A085341, the canonical program `A085341.P4945583305381197546` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085341 has offset 1).

The definition of A085341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085341.P4945583305381197546

`A000720(A000203(n+1))-A000720(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085341

/-- `A000720(A000203(n+1))-A000720(n+1)` -/
def P4945583305381197546.Spec : Prop :=
  ∀ n, P4945583305381197546.a n = A085341 (n + 1)

theorem P4945583305381197546.correct : P4945583305381197546.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel]

end A085341

/-! ## A085341.P15012125990235421062

`A070803(n+1)-A000720(n+1)`
-/

namespace A085341.P15012125990235421062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A000720 (n + 1)

end

end A085341.P15012125990235421062

namespace A085341

/-- `A070803(n+1)-A000720(n+1)` -/
def P15012125990235421062.Spec : Prop :=
  ∀ n, P15012125990235421062.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P4426472623034244286

`A085343(n+1)-A085342(n+1)`
-/

namespace A085341.P4426472623034244286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085343 (n + 1) - A085342 (n + 1)

end

end A085341.P4426472623034244286

namespace A085341

/-- `A085343(n+1)-A085342(n+1)` -/
def P4426472623034244286.Spec : Prop :=
  ∀ n, P4426472623034244286.a n = A085341 (n + 1)

theorem P4426472623034244286.correct : P4426472623034244286.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P4426472623034244286.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085342, A085342.P7672575335003737733.a, A085343, A085343.P16599532433614219245.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P3473595263315419333

`A000720(∑{d}[n+1, #])-A000720(n+1)`
-/

namespace A085341.P3473595263315419333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ d ∈ Nat.divisors (f1 n), d) - A000720 (n + 1)

end

end A085341.P3473595263315419333

namespace A085341

/-- `A000720(∑{d}[n+1, #])-A000720(n+1)` -/
def P3473595263315419333.Spec : Prop :=
  ∀ n, P3473595263315419333.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P18436397145506959834

`A000720(Δ[A160664(n)])-A000720(n+1)`
-/

namespace A085341.P18436397145506959834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat - A000720 (n + 1)

end

end A085341.P18436397145506959834

namespace A085341

/-- `A000720(Δ[A160664(n)])-A000720(n+1)` -/
def P18436397145506959834.Spec : Prop :=
  ∀ n, P18436397145506959834.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P17132101719253108589

`A000720(A245092(Δ[n²]))-A000720(n+1)`
-/

namespace A085341.P17132101719253108589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - A000720 (n + 1)

end

end A085341.P17132101719253108589

namespace A085341

/-- `A000720(A245092(Δ[n²]))-A000720(n+1)` -/
def P17132101719253108589.Spec : Prop :=
  ∀ n, P17132101719253108589.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P12862606589236972702

`A000720(abs(A143348(n+1)))-A000720(n+1)`
-/

namespace A085341.P12862606589236972702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A143348 (n + 1)|.toNat - A000720 (n + 1)

end

end A085341.P12862606589236972702

namespace A085341

/-- `A000720(abs(A143348(n+1)))-A000720(n+1)` -/
def P12862606589236972702.Spec : Prop :=
  ∀ n, P12862606589236972702.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P17913675846543702675

`A000720(sqrt(A072861(n+1)))-A000720(n+1)`
-/

namespace A085341.P17913675846543702675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat - A000720 (n + 1)

end

end A085341.P17913675846543702675

namespace A085341

/-- `A000720(sqrt(A072861(n+1)))-A000720(n+1)` -/
def P17913675846543702675.Spec : Prop :=
  ∀ n, P17913675846543702675.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P9470432975230536162

`A000720(A039653(n+1)+1)-A000720(n+1)`
-/

namespace A085341.P9470432975230536162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A039653 (n + 1) + 1).toNat - A000720 (n + 1)

end

end A085341.P9470432975230536162

namespace A085341

/-- `A000720(A039653(n+1)+1)-A000720(n+1)` -/
def P9470432975230536162.Spec : Prop :=
  ∀ n, P9470432975230536162.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P5010266590162301892

`A000720(A088580(n+1)-1)-A000720(n+1)`
-/

namespace A085341.P5010266590162301892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088580 (n + 1) - 1).toNat - A000720 (n + 1)

end

end A085341.P5010266590162301892

namespace A085341

/-- `A000720(A088580(n+1)-1)-A000720(n+1)` -/
def P5010266590162301892.Spec : Prop :=
  ∀ n, P5010266590162301892.a n = A085341 (n + 1)

theorem P5010266590162301892.correct : P5010266590162301892.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P5010266590162301892.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P12286025263960046197

`A000720(A074400(n+1)/2)-A000720(n+1)`
-/

namespace A085341.P12286025263960046197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat - A000720 (n + 1)

end

end A085341.P12286025263960046197

namespace A085341

/-- `A000720(A074400(n+1)/2)-A000720(n+1)` -/
def P12286025263960046197.Spec : Prop :=
  ∀ n, P12286025263960046197.a n = A085341 (n + 1)

end A085341

/-! ## A085341.P10670333490447169346

`A000720(A001065(n+1)+1+n)-A000720(n+1)`
-/

namespace A085341.P10670333490447169346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001065 (n + 1) + 1 + (n : ℤ)).toNat - A000720 (n + 1)

end

end A085341.P10670333490447169346

namespace A085341

/-- `A000720(A001065(n+1)+1+n)-A000720(n+1)` -/
def P10670333490447169346.Spec : Prop :=
  ∀ n, P10670333490447169346.a n = A085341 (n + 1)

theorem P10670333490447169346.correct : P10670333490447169346.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P10670333490447169346.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P6875302234957772354

`A070804(n+1)+A085343(n+1)-A000720(n+1)`
-/

namespace A085341.P6875302234957772354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (n + 1) + (A085343 (n + 1) - A000720 (n + 1))

end

end A085341.P6875302234957772354

namespace A085341

/-- `A070804(n+1)+A085343(n+1)-A000720(n+1)` -/
def P6875302234957772354.Spec : Prop :=
  ∀ n, P6875302234957772354.a n = A085341 (n + 1)

theorem P6875302234957772354.correct : P6875302234957772354.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P6875302234957772354.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070804, A070804.P12391361706569770465.a, A085343, A085343.P16599532433614219245.a, A000010, A000010.P4673923239450215316.a, A070803, A070803.P520655573842613320.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P3812642534021828446

`A070803(n+1)-(A085342(n+1)+A070804(n+1))`
-/

namespace A085341.P3812642534021828446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - (A085342 (n + 1) + A070804 (n + 1))

end

end A085341.P3812642534021828446

namespace A085341

/-- `A070803(n+1)-(A085342(n+1)+A070804(n+1))` -/
def P3812642534021828446.Spec : Prop :=
  ∀ n, P3812642534021828446.a n = A085341 (n + 1)

theorem P3812642534021828446.correct : P3812642534021828446.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P3812642534021828446.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A085342, A085342.P7672575335003737733.a, A000010, A000010.P4673923239450215316.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P15452577238874789668

`A000720(A155085(n+1)-(n+1))-A000720(n+1)`
-/

namespace A085341.P15452577238874789668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155085 (n + 1) - (n + 1 : ℤ)).toNat - A000720 (n + 1)

end

end A085341.P15452577238874789668

namespace A085341

/-- `A000720(A155085(n+1)-(n+1))-A000720(n+1)` -/
def P15452577238874789668.Spec : Prop :=
  ∀ n, P15452577238874789668.a n = A085341 (n + 1)

theorem P15452577238874789668.correct : P15452577238874789668.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P15452577238874789668.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P4221819847110419526

`A000720(2*(n+1)-A033879(n+1))-A000720(n+1)`
-/

namespace A085341.P4221819847110419526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat - A000720 (n + 1)

end

end A085341.P4221819847110419526

namespace A085341

/-- `A000720(2*(n+1)-A033879(n+1))-A000720(n+1)` -/
def P4221819847110419526.Spec : Prop :=
  ∀ n, P4221819847110419526.a n = A085341 (n + 1)

theorem P4221819847110419526.correct : P4221819847110419526.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P4221819847110419526.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P5808327222818801942

`A000720(A051612(n+1)+A000010(n+1))-A000720(n+1)`
-/

namespace A085341.P5808327222818801942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A051612 (n + 1) + A000010 (n + 1)).toNat - A000720 (n + 1)

end

end A085341.P5808327222818801942

namespace A085341

/-- `A000720(A051612(n+1)+A000010(n+1))-A000720(n+1)` -/
def P5808327222818801942.Spec : Prop :=
  ∀ n, P5808327222818801942.a n = A085341 (n + 1)

theorem P5808327222818801942.correct : P5808327222818801942.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P5808327222818801942.a, A085341.P4945583305381197546.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P7989431963919243112

`A000720(A065608(n+1)+A000005(n+1))-A000720(n+1)`
-/

namespace A085341.P7989431963919243112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065608 (n + 1) + A000005 (n + 1)).toNat - A000720 (n + 1)

end

end A085341.P7989431963919243112

namespace A085341

/-- `A000720(A065608(n+1)+A000005(n+1))-A000720(n+1)` -/
def P7989431963919243112.Spec : Prop :=
  ∀ n, P7989431963919243112.a n = A085341 (n + 1)

theorem P7989431963919243112.correct : P7989431963919243112.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P7989431963919243112.a, A085341.P4945583305381197546.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065608, A065608.P12445239359989980431.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P10203709646413622697

`A000720(A048146(n+1)+A034448(n+1))-A000720(n+1)`
-/

namespace A085341.P10203709646413622697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048146 (n + 1) + A034448 (n + 1)).toNat - A000720 (n + 1)

end

end A085341.P10203709646413622697

namespace A085341

/-- `A000720(A048146(n+1)+A034448(n+1))-A000720(n+1)` -/
def P10203709646413622697.Spec : Prop :=
  ∀ n, P10203709646413622697.a n = A085341 (n + 1)

theorem P10203709646413622697.correct : P10203709646413622697.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P10203709646413622697.a, A085341.P4945583305381197546.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-! ## A085341.P17275035025447645780

`A000720(A000010(n+1))+A085343(n+1)-A000720(n+1)`
-/

namespace A085341.P17275035025447645780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (n + 1)).toNat + (A085343 (n + 1) - A000720 (n + 1))

end

end A085341.P17275035025447645780

namespace A085341

/-- `A000720(A000010(n+1))+A085343(n+1)-A000720(n+1)` -/
def P17275035025447645780.Spec : Prop :=
  ∀ n, P17275035025447645780.a n = A085341 (n + 1)

theorem P17275035025447645780.correct : P17275035025447645780.Spec := by
  intro n
  simp only [A085341, Nat.add_sub_cancel, A085341.P17275035025447645780.a, A085341.P4945583305381197546.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085343, A085343.P16599532433614219245.a, A003557, A003557.P6364735403900941810.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085341

/-!
# A085342: Number of primes between phi(n) and n, where n is included in the count if it is a prime, while phi(n) is never included in the count even if it is a prime.

The programs for A085342, the canonical program `A085342.P7672575335003737733` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085342 has offset 1).

The definition of A085342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085342.P7672575335003737733

`A074398(n+1)+A010051(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085342

/-- `A074398(n+1)+A010051(n+1)` -/
def P7672575335003737733.Spec : Prop :=
  ∀ n, P7672575335003737733.a n = A085342 (n + 1)

theorem P7672575335003737733.correct : P7672575335003737733.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel]

end A085342

/-! ## A085342.P12005886912687125544

`A000720(n+1)-A000720(A000010(n+1))`
-/

namespace A085342.P12005886912687125544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A000010 (n + 1)).toNat

end

end A085342.P12005886912687125544

namespace A085342

/-- `A000720(n+1)-A000720(A000010(n+1))` -/
def P12005886912687125544.Spec : Prop :=
  ∀ n, P12005886912687125544.a n = A085342 (n + 1)

theorem P12005886912687125544.correct : P12005886912687125544.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P12005886912687125544.a, A085342.P7672575335003737733.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P1272850405132257088

`A000720(n+1)-A070804(n+1)`
-/

namespace A085342.P1272850405132257088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A070804 (n + 1)

end

end A085342.P1272850405132257088

namespace A085342

/-- `A000720(n+1)-A070804(n+1)` -/
def P1272850405132257088.Spec : Prop :=
  ∀ n, P1272850405132257088.a n = A085342 (n + 1)

theorem P1272850405132257088.correct : P1272850405132257088.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P1272850405132257088.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A070804, A070804.P12391361706569770465.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P3181674715049256377

`A085343(n+1)-A085341(n+1)`
-/

namespace A085342.P3181674715049256377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085343 (n + 1) - A085341 (n + 1)

end

end A085342.P3181674715049256377

namespace A085342

/-- `A085343(n+1)-A085341(n+1)` -/
def P3181674715049256377.Spec : Prop :=
  ∀ n, P3181674715049256377.a n = A085342 (n + 1)

theorem P3181674715049256377.correct : P3181674715049256377.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P3181674715049256377.a, A085342.P7672575335003737733.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A085341, A085341.P4945583305381197546.a, A085343, A085343.P16599532433614219245.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P7740332295498324685

`gcd(A061007(n+1), A074398(n+1))`
-/

namespace A085342.P7740332295498324685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061007 (n + 1)) (A074398 (n + 1))

end

end A085342.P7740332295498324685

namespace A085342

/-- `gcd(A061007(n+1), A074398(n+1))` -/
def P7740332295498324685.Spec : Prop :=
  ∀ n, (P7740332295498324685.a n : ℤ) = A085342 (n + 1)

end A085342

/-! ## A085342.P1821390899579575169

`A000720(n+1)-A000720((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A085342.P1821390899579575169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A085342.P1821390899579575169

namespace A085342

/-- `A000720(n+1)-A000720((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P1821390899579575169.Spec : Prop :=
  ∀ n, P1821390899579575169.a n = A085342 (n + 1)

end A085342

/-! ## A085342.P18081568782972135794

`A000720(n+1)-A000720(Δ[A002088(n)])`
-/

namespace A085342.P18081568782972135794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (f1 (n + 1) - f1 n).toNat

end

end A085342.P18081568782972135794

namespace A085342

/-- `A000720(n+1)-A000720(Δ[A002088(n)])` -/
def P18081568782972135794.Spec : Prop :=
  ∀ n, P18081568782972135794.a n = A085342 (n + 1)

end A085342

/-! ## A085342.P1857457307135132855

`A000720(n+1)-A000720(Δ[A005728(n)])`
-/

namespace A085342.P1857457307135132855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (f1 (n + 1) - f1 n).toNat

end

end A085342.P1857457307135132855

namespace A085342

/-- `A000720(n+1)-A000720(Δ[A005728(n)])` -/
def P1857457307135132855.Spec : Prop :=
  ∀ n, P1857457307135132855.a n = A085342 (n + 1)

end A085342

/-! ## A085342.P11375709489846626373

`A036234(n+1)-A036234(A000010(n+1))`
-/

namespace A085342.P11375709489846626373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A000010 (n + 1)).toNat

end

end A085342.P11375709489846626373

namespace A085342

/-- `A036234(n+1)-A036234(A000010(n+1))` -/
def P11375709489846626373.Spec : Prop :=
  ∀ n, P11375709489846626373.a n = A085342 (n + 1)

theorem P11375709489846626373.correct : P11375709489846626373.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P11375709489846626373.a, A085342.P7672575335003737733.a, A000010, A000010.P4673923239450215316.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A036234, A036234.P2906282677021386800.a, A074398, A074398.P12832320423602718158.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P3771916452934994454

`A000720(n+1)-A000720(sqrt(A127473(n+1)))`
-/

namespace A085342.P3771916452934994454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A085342.P3771916452934994454

namespace A085342

/-- `A000720(n+1)-A000720(sqrt(A127473(n+1)))` -/
def P3771916452934994454.Spec : Prop :=
  ∀ n, P3771916452934994454.a n = A085342 (n + 1)

end A085342

/-! ## A085342.P12468408512609962611

`A000720(n+1)-A000720(A109606(n+1)+1)`
-/

namespace A085342.P12468408512609962611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A109606 (n + 1) + 1).toNat

end

end A085342.P12468408512609962611

namespace A085342

/-- `A000720(n+1)-A000720(A109606(n+1)+1)` -/
def P12468408512609962611.Spec : Prop :=
  ∀ n, P12468408512609962611.a n = A085342 (n + 1)

theorem P12468408512609962611.correct : P12468408512609962611.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P12468408512609962611.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P7362262392150590413

`A036234(n+1)-A036234(A109606(n+1)+1)`
-/

namespace A085342.P7362262392150590413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A109606 (n + 1) + 1).toNat

end

end A085342.P7362262392150590413

namespace A085342

/-- `A036234(n+1)-A036234(A109606(n+1)+1)` -/
def P7362262392150590413.Spec : Prop :=
  ∀ n, P7362262392150590413.a n = A085342 (n + 1)

theorem P7362262392150590413.correct : P7362262392150590413.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P7362262392150590413.a, A085342.P7672575335003737733.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A036234, A036234.P2906282677021386800.a, A074398, A074398.P12832320423602718158.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P14214062852838601028

`A000720(n+1)-A000720(A039649(n+1)-1)`
-/

namespace A085342.P14214062852838601028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A039649 (n + 1) - 1).toNat

end

end A085342.P14214062852838601028

namespace A085342

/-- `A000720(n+1)-A000720(A039649(n+1)-1)` -/
def P14214062852838601028.Spec : Prop :=
  ∀ n, P14214062852838601028.a n = A085342 (n + 1)

theorem P14214062852838601028.correct : P14214062852838601028.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P14214062852838601028.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A039649, A039649.P16717312505280968063.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P14160264732722338895

`A036234(n+1)-A036234(A039649(n+1)-1)`
-/

namespace A085342.P14160264732722338895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A039649 (n + 1) - 1).toNat

end

end A085342.P14160264732722338895

namespace A085342

/-- `A036234(n+1)-A036234(A039649(n+1)-1)` -/
def P14160264732722338895.Spec : Prop :=
  ∀ n, P14160264732722338895.a n = A085342 (n + 1)

theorem P14160264732722338895.correct : P14160264732722338895.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P14160264732722338895.a, A085342.P7672575335003737733.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A036234, A036234.P2906282677021386800.a, A039649, A039649.P16717312505280968063.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P7285106389403239580

`A000720(n+1)-A000720(n-A219428(n+1))`
-/

namespace A085342.P7285106389403239580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A085342.P7285106389403239580

namespace A085342

/-- `A000720(n+1)-A000720(n-A219428(n+1))` -/
def P7285106389403239580.Spec : Prop :=
  ∀ n, P7285106389403239580.a n = A085342 (n + 1)

theorem P7285106389403239580.correct : P7285106389403239580.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P7285106389403239580.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P7360526615770705344

`A000720(n+1)+A085343(n+1)-A070803(n+1)`
-/

namespace A085342.P7360526615770705344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A085343 (n + 1) - A070803 (n + 1))

end

end A085342.P7360526615770705344

namespace A085342

/-- `A000720(n+1)+A085343(n+1)-A070803(n+1)` -/
def P7360526615770705344.Spec : Prop :=
  ∀ n, P7360526615770705344.a n = A085342 (n + 1)

theorem P7360526615770705344.correct : P7360526615770705344.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P7360526615770705344.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A070803, A070803.P520655573842613320.a, A074398, A074398.P12832320423602718158.a, A085343, A085343.P16599532433614219245.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A070804, A070804.P12391361706569770465.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P572457190936926889

`A070803(n+1)-(A085341(n+1)+A070804(n+1))`
-/

namespace A085342.P572457190936926889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - (A085341 (n + 1) + A070804 (n + 1))

end

end A085342.P572457190936926889

namespace A085342

/-- `A070803(n+1)-(A085341(n+1)+A070804(n+1))` -/
def P572457190936926889.Spec : Prop :=
  ∀ n, P572457190936926889.a n = A085342 (n + 1)

theorem P572457190936926889.correct : P572457190936926889.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P572457190936926889.a, A085342.P7672575335003737733.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A074398, A074398.P12832320423602718158.a, A085341, A085341.P4945583305381197546.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P2826220219476476357

`A000720(n+1)-A000720(1-A051953(n+1)+n)`
-/

namespace A085342.P2826220219476476357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A085342.P2826220219476476357

namespace A085342

/-- `A000720(n+1)-A000720(1-A051953(n+1)+n)` -/
def P2826220219476476357.Spec : Prop :=
  ∀ n, P2826220219476476357.a n = A085342 (n + 1)

theorem P2826220219476476357.correct : P2826220219476476357.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P2826220219476476357.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A051953, A051953.P11179276897610979764.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P85294893148436962

`A000720(n+1)-A000720(∏{p}[n+1, #-1]*A003557(n+1))`
-/

namespace A085342.P85294893148436962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1)).toNat

end

end A085342.P85294893148436962

namespace A085342

/-- `A000720(n+1)-A000720(∏{p}[n+1, #-1]*A003557(n+1))` -/
def P85294893148436962.Spec : Prop :=
  ∀ n, P85294893148436962.a n = A085342 (n + 1)

theorem P85294893148436962.correct : P85294893148436962.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P85294893148436962.f1, A085342.P85294893148436962.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-! ## A085342.P17741383484479570767

`A000720(n+1)-A000720(A037228(n+1)+A000720(n+1))`
-/

namespace A085342.P17741383484479570767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A037228 (n + 1) + A000720 (n + 1)).toNat

end

end A085342.P17741383484479570767

namespace A085342

/-- `A000720(n+1)-A000720(A037228(n+1)+A000720(n+1))` -/
def P17741383484479570767.Spec : Prop :=
  ∀ n, P17741383484479570767.a n = A085342 (n + 1)

theorem P17741383484479570767.correct : P17741383484479570767.Spec := by
  intro n
  simp only [A085342, Nat.add_sub_cancel, A085342.P17741383484479570767.a, A085342.P7672575335003737733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A037228, A037228.P4220557198165153324.a, A074398, A074398.P12832320423602718158.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085342

/-!
# A085343: Number of primes between sigma(n) and phi(n) inclusive.

The programs for A085343, the canonical program `A085343.P16599532433614219245` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085343 has offset 1).

The definition of A085343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085343.P16599532433614219245

`A070803(n+1)-A070804(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085343

/-- `A070803(n+1)-A070804(n+1)` -/
def P16599532433614219245.Spec : Prop :=
  ∀ n, P16599532433614219245.a n = A085343 (n + 1)

theorem P16599532433614219245.correct : P16599532433614219245.Spec := by
  intro n
  simp only [A085343, Nat.add_sub_cancel]

end A085343

/-! ## A085343.P17659112199054218814

`A000720(A000203(n+1))-A000720(A000010(n+1))`
-/

namespace A085343.P17659112199054218814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000203 (n + 1)).toNat - A000720 (A000010 (n + 1)).toNat

end

end A085343.P17659112199054218814

namespace A085343

/-- `A000720(A000203(n+1))-A000720(A000010(n+1))` -/
def P17659112199054218814.Spec : Prop :=
  ∀ n, P17659112199054218814.a n = A085343 (n + 1)

end A085343

/-! ## A085343.P13478459836599609716

`A085342(n+1)+A085341(n+1)`
-/

namespace A085343.P13478459836599609716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085342 (n + 1) + A085341 (n + 1)

end

end A085343.P13478459836599609716

namespace A085343

/-- `A085342(n+1)+A085341(n+1)` -/
def P13478459836599609716.Spec : Prop :=
  ∀ n, P13478459836599609716.a n = A085343 (n + 1)

theorem P13478459836599609716.correct : P13478459836599609716.Spec := by
  intro n
  simp only [A085343, Nat.add_sub_cancel, A085343.P13478459836599609716.a, A085343.P16599532433614219245.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A085341, A085341.P4945583305381197546.a, A085342, A085342.P7672575335003737733.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085343

/-! ## A085343.P3560124078165742990

`A070803(n+1)-A000720(A000010(n+1))`
-/

namespace A085343.P3560124078165742990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A000720 (A000010 (n + 1)).toNat

end

end A085343.P3560124078165742990

namespace A085343

/-- `A070803(n+1)-A000720(A000010(n+1))` -/
def P3560124078165742990.Spec : Prop :=
  ∀ n, P3560124078165742990.a n = A085343 (n + 1)

end A085343

/-! ## A085343.P7398021230454778522

`A000720(A000203(n+1))-A070804(n+1)`
-/

namespace A085343.P7398021230454778522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000203 (n + 1)).toNat - A070804 (n + 1)

end

end A085343.P7398021230454778522

namespace A085343

/-- `A000720(A000203(n+1))-A070804(n+1)` -/
def P7398021230454778522.Spec : Prop :=
  ∀ n, P7398021230454778522.a n = A085343 (n + 1)

end A085343

/-! ## A085343.P13724965121862403712

`A010051(n+1)+A085341(n+1)+A074398(n+1)`
-/

namespace A085343.P13724965121862403712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A085341 (n + 1) + A074398 (n + 1))

end

end A085343.P13724965121862403712

namespace A085343

/-- `A010051(n+1)+A085341(n+1)+A074398(n+1)` -/
def P13724965121862403712.Spec : Prop :=
  ∀ n, P13724965121862403712.a n = A085343 (n + 1)

theorem P13724965121862403712.correct : P13724965121862403712.Spec := by
  intro n
  simp only [A085343, Nat.add_sub_cancel, A085343.P13724965121862403712.a, A085343.P16599532433614219245.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A074398, A074398.P12832320423602718158.a, A085341, A085341.P4945583305381197546.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085343

/-! ## A085343.P16584426490999655477

`A000720(n+1)+A085341(n+1)-A070804(n+1)`
-/

namespace A085343.P16584426490999655477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A085341 (n + 1) - A070804 (n + 1))

end

end A085343.P16584426490999655477

namespace A085343

/-- `A000720(n+1)+A085341(n+1)-A070804(n+1)` -/
def P16584426490999655477.Spec : Prop :=
  ∀ n, P16584426490999655477.a n = A085343 (n + 1)

theorem P16584426490999655477.correct : P16584426490999655477.Spec := by
  intro n
  simp only [A085343, Nat.add_sub_cancel, A085343.P16584426490999655477.a, A085343.P16599532433614219245.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A085341, A085341.P4945583305381197546.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085343

/-! ## A085343.P7780702157153266480

`A070803(n+1)+A085342(n+1)-A000720(n+1)`
-/

namespace A085343.P7780702157153266480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) + (A085342 (n + 1) - A000720 (n + 1))

end

end A085343.P7780702157153266480

namespace A085343

/-- `A070803(n+1)+A085342(n+1)-A000720(n+1)` -/
def P7780702157153266480.Spec : Prop :=
  ∀ n, P7780702157153266480.a n = A085343 (n + 1)

theorem P7780702157153266480.correct : P7780702157153266480.Spec := by
  intro n
  simp only [A085343, Nat.add_sub_cancel, A085343.P7780702157153266480.a, A085343.P16599532433614219245.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070803, A070803.P520655573842613320.a, A070804, A070804.P12391361706569770465.a, A085342, A085342.P7672575335003737733.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085343

/-! ## A085343.P1332227739954755974

`A070804(A074495(n+1))-A070804(n+1)`
-/

namespace A085343.P1332227739954755974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A074495 (n + 1)).toNat - A070804 (n + 1)

end

end A085343.P1332227739954755974

namespace A085343

/-- `A070804(A074495(n+1))-A070804(n+1)` -/
def P1332227739954755974.Spec : Prop :=
  ∀ n, P1332227739954755974.a n = A085343 (n + 1)

end A085343

/-!
# A085345: Least number x such that number of primes between phi(x) and x equals n.

The programs for A085345, there is no canonical definition to state claims against.
-/

/-! ## A085345.P1651123120456322617

`A034699(A349847(n))+1`
-/

namespace A085345.P1651123120456322617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A349847 n).toNat + 1

end

end A085345.P1651123120456322617

/-! ## A085345.P1239528256204634741

`A008458(n)+(n+1)*A108913(A010401(n+1))`
-/

namespace A085345.P1239528256204634741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (n + 1 : ℤ) * A108913 (A010401 (n + 1)).toNat

end

end A085345.P1239528256204634741

/-! ## A085345.P3526661037693425199

`A101328(n+2)+(2*n+3)^A055641(A149321(n))`
-/

namespace A085345.P3526661037693425199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101328 (n + 2) : ℚ) + (2 * n + 3 : ℚ) ^ (A055641 (A149321 n).toNat : ℤ)

end

end A085345.P3526661037693425199

/-!
# A085348: Ratio-determined insertion sequence I(0.264) (see the link below).

The programs for A085348, the canonical program `A085348.P6027960380256093234` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085348 has offset 0).

The definition of A085348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085348.P6027960380256093234

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=72`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085348

/-- `18*a(n-2)-a(n-4)` -/
def P6027960380256093234.Spec : Prop :=
  ∀ n, P6027960380256093234.a n = A085348 n

theorem P6027960380256093234.correct : P6027960380256093234.Spec := by
  intro n
  simp only [A085348]

end A085348

/-! ## A085348.P4638025971796250690

`∑[A237132(3*n+2)/4]`
-/

namespace A085348.P4638025971796250690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237132 (3 * n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085348.P4638025971796250690

namespace A085348

/-- `∑[A237132(3*n+2)/4]` -/
def P4638025971796250690.Spec : Prop :=
  ∀ n, P4638025971796250690.a n = (A085348 n : ℚ)

end A085348

/-! ## A085348.P1183028660967061344

`A005013(3*(n+1))/A028445(A060680(3*(n+1)))`
-/

namespace A085348.P1183028660967061344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005013 (3 * (n + 1)) : ℚ) / (A028445 (A060680 (3 * (n + 1))).toNat : ℚ)

end

end A085348.P1183028660967061344

namespace A085348

/-- `A005013(3*(n+1))/A028445(A060680(3*(n+1)))` -/
def P1183028660967061344.Spec : Prop :=
  ∀ n, P1183028660967061344.a n = (A085348 n : ℚ)

end A085348

/-! ## A085348.P13584592572849194661

`A053606(n)/(2*a(n-1))` with `a(0)=1`
-/

namespace A085348.P13584592572849194661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A053606 n : ℚ) / (2 * a (n - 1))

end

end A085348.P13584592572849194661

namespace A085348

/-- `A053606(n)/(2*a(n-1))` -/
def P13584592572849194661.Spec : Prop :=
  ∀ n, P13584592572849194661.a n = (A085348 n : ℚ)

end A085348

/-!
# A085349: Ratio-determined insertion sequence I(0.26688) (see the link below).

The programs for A085349, the canonical program `A085349.P8683148154665000154` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085349 has offset 1).

The definition of A085349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085349.P8683148154665000154

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=71`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085349

/-- `18*a(n-2)-a(n-4)` -/
def P8683148154665000154.Spec : Prop :=
  ∀ n, P8683148154665000154.a n = A085349 (n + 1)

theorem P8683148154665000154.correct : P8683148154665000154.Spec := by
  intro n
  simp only [A085349, Nat.add_sub_cancel]

end A085349

/-!
# A085350: Binomial transform of poly-Bernoulli numbers A027649.

The programs for A085350, the canonical program `A085350.P14273173048243709078` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085350 has offset 0).

The definition of A085350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085350.P14273173048243709078

`2*4^n-3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085350

/-- `2*4^n-3^n` -/
def P14273173048243709078.Spec : Prop :=
  ∀ n, P14273173048243709078.a n = A085350 n

theorem P14273173048243709078.correct : P14273173048243709078.Spec := by
  intro n
  simp only [A085350]

end A085350

/-! ## A085350.P911238447884380446

`ogf((1-2x)/(1-7x+12x^2))`
-/

namespace A085350.P911238447884380446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, 12] n

end

end A085350.P911238447884380446

namespace A085350

/-- `ogf((1-2x)/(1-7x+12x^2))` -/
def P911238447884380446.Spec : Prop :=
  ∀ n, P911238447884380446.a n = A085350 n

end A085350

/-! ## A085350.P9273794068985496066

`or(4^n-3^n, 4^n)`
-/

namespace A085350.P9273794068985496066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((4 ^ n : ℤ) - (3 ^ n : ℤ)) (4 ^ n : ℤ)

end

end A085350.P9273794068985496066

namespace A085350

/-- `or(4^n-3^n, 4^n)` -/
def P9273794068985496066.Spec : Prop :=
  ∀ n, P9273794068985496066.a n = A085350 n

end A085350

/-! ## A085350.P9578436198494949885

`xor(4^n-3^n, 4^n)`
-/

namespace A085350.P9578436198494949885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((4 ^ n : ℤ) - (3 ^ n : ℤ)) (4 ^ n : ℤ)

end

end A085350.P9578436198494949885

namespace A085350

/-- `xor(4^n-3^n, 4^n)` -/
def P9578436198494949885.Spec : Prop :=
  ∀ n, P9578436198494949885.a n = A085350 n

end A085350

/-! ## A085350.P8084080302010607473

`record[(-2)^n+2^n-3^(n/2)]`
-/

namespace A085350.P8084080302010607473
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n : ℝ) + ((2 ^ n : ℝ) - (3 : ℝ) ^ ((n : ℚ) / 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085350.P8084080302010607473

namespace A085350

/-- `record[(-2)^n+2^n-3^(n/2)]` -/
def P8084080302010607473.Spec : Prop :=
  ∀ n, P8084080302010607473.a n = (A085350 n : ℝ)

end A085350

/-! ## A085350.P3793133610740876623

`Δ[A081674(n)]`
-/

namespace A085350.P3793133610740876623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085350.P3793133610740876623

namespace A085350

/-- `Δ[A081674(n)]` -/
def P3793133610740876623.Spec : Prop :=
  ∀ n, P3793133610740876623.a n = A085350 n

end A085350

/-! ## A085350.P12307904603937822526

`A167936(Δ[n²])`
-/

namespace A085350.P12307904603937822526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085350.P12307904603937822526

namespace A085350

/-- `A167936(Δ[n²])` -/
def P12307904603937822526.Spec : Prop :=
  ∀ n, P12307904603937822526.a n = A085350 n

end A085350

/-! ## A085350.P14702521972176415890

`A080643(n+1)/2`
-/

namespace A085350.P14702521972176415890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080643 (n + 1) : ℚ) / 2

end

end A085350.P14702521972176415890

namespace A085350

/-- `A080643(n+1)/2` -/
def P14702521972176415890.Spec : Prop :=
  ∀ n, P14702521972176415890.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P7032257211788627652

`Δ[A000773(2*(n+1))]`
-/

namespace A085350.P7032257211788627652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000773 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085350.P7032257211788627652

namespace A085350

/-- `Δ[A000773(2*(n+1))]` -/
def P7032257211788627652.Spec : Prop :=
  ∀ n, P7032257211788627652.a n = A085350 n

end A085350

/-! ## A085350.P12463119479072371403

`A366131(2*(n+1))/2`
-/

namespace A085350.P12463119479072371403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366131 (2 * (n + 1)) : ℚ) / 2

end

end A085350.P12463119479072371403

namespace A085350

/-- `A366131(2*(n+1))/2` -/
def P12463119479072371403.Spec : Prop :=
  ∀ n, P12463119479072371403.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P9633605254067893304

`Δ[A000079(n)²-A085282(n)]`
-/

namespace A085350.P9633605254067893304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085350.P9633605254067893304

namespace A085350

/-- `Δ[A000079(n)²-A085282(n)]` -/
def P9633605254067893304.Spec : Prop :=
  ∀ n, P9633605254067893304.a n = A085350 n

end A085350

/-! ## A085350.P605949566555193870

`(A255463(n)+A000079(n)²)/2`
-/

namespace A085350.P605949566555193870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255463 n + A000079 n ^ 2 : ℚ) / 2

end

end A085350.P605949566555193870

namespace A085350

/-- `(A255463(n)+A000079(n)²)/2` -/
def P605949566555193870.Spec : Prop :=
  ∀ n, P605949566555193870.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P4544276625209243733

`(A000244(n)+∑[A255463(n)])/2`
-/

namespace A085350.P4544276625209243733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000244 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A085350.P4544276625209243733

namespace A085350

/-- `(A000244(n)+∑[A255463(n)])/2` -/
def P4544276625209243733.Spec : Prop :=
  ∀ n, P4544276625209243733.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P13733521378869909480

`Δ[A087433(n+1)-A007051(n+1)]`
-/

namespace A085350.P13733521378869909480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 (n + 1) - A007051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085350.P13733521378869909480

namespace A085350

/-- `Δ[A087433(n+1)-A007051(n+1)]` -/
def P13733521378869909480.Spec : Prop :=
  ∀ n, P13733521378869909480.a n = A085350 n

end A085350

/-! ## A085350.P18095251604417334442

`(A003946(n+1)+A002250(n+1))/2`
-/

namespace A085350.P18095251604417334442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 (n + 1) + A002250 (n + 1) : ℚ) / 2

end

end A085350.P18095251604417334442

namespace A085350

/-- `(A003946(n+1)+A002250(n+1))/2` -/
def P18095251604417334442.Spec : Prop :=
  ∀ n, P18095251604417334442.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P11247801751523544200

`(A140429(n+1)+A005061(n+1))/2`
-/

namespace A085350.P11247801751523544200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 (n + 1) + A005061 (n + 1) : ℚ) / 2

end

end A085350.P11247801751523544200

namespace A085350

/-- `(A140429(n+1)+A005061(n+1))/2` -/
def P11247801751523544200.Spec : Prop :=
  ∀ n, P11247801751523544200.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P17221357717014648248

`(A017914(2*n)+A005061(n+1))/2`
-/

namespace A085350.P17221357717014648248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017914 (2 * n) + A005061 (n + 1) : ℚ) / 2

end

end A085350.P17221357717014648248

namespace A085350

/-- `(A017914(2*n)+A005061(n+1))/2` -/
def P17221357717014648248.Spec : Prop :=
  ∀ n, P17221357717014648248.a n = (A085350 n : ℚ)

end A085350

/-! ## A085350.P55281865629501214

`A255463(n+1)/6`
-/

namespace A085350.P55281865629501214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255463 (n + 1) : ℚ) / 6

end

end A085350.P55281865629501214

namespace A085350

/-- `A255463(n+1)/6` -/
def P55281865629501214.Spec : Prop :=
  ∀ n, P55281865629501214.a n = (A085350 n : ℚ)

theorem P55281865629501214.correct : P55281865629501214.Spec := by
  intro n
  simp only [A085350, Nat.add_sub_cancel, A085350.P55281865629501214.a, A085350.P14273173048243709078.a, A255463, A255463.P6563478060669698748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085350

/-!
# A085351: Expansion of g.f. (1-3*x)/((1-4*x)*(1-5*x)).

The programs for A085351, the canonical program `A085351.P4554286552412908784` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085351 has offset 0).

The definition of A085351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-9x+20x^2))` (program `A085351.P4554286552412908784`, by `A085351.P4554286552412908784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085351.P4554286552412908784

`ogf((1-3x)/(1-9x+20x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085351

/-- `ogf((1-3x)/(1-9x+20x^2))` -/
def P4554286552412908784.Spec : Prop :=
  ∀ n, P4554286552412908784.a n = A085351 n

theorem P4554286552412908784.correct : P4554286552412908784.Spec := by
  intro n
  simp only [A085351]

end A085351

/-! ## A085351.P7194790925141149810

`2*5^n-4^n`
-/

namespace A085351.P7194790925141149810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) - (4 ^ n : ℤ)

end

end A085351.P7194790925141149810

namespace A085351

/-- `2*5^n-4^n` -/
def P7194790925141149810.Spec : Prop :=
  ∀ n, P7194790925141149810.a n = A085351 n

end A085351

/-! ## A085351.P17529201720509420366

`Δ[A132079(n)-floor(4^n/3)]`
-/

namespace A085351.P17529201720509420366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - ⌊(4 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P17529201720509420366

namespace A085351

/-- `Δ[A132079(n)-floor(4^n/3)]` -/
def P17529201720509420366.Spec : Prop :=
  ∀ n, P17529201720509420366.a n = A085351 n

end A085351

/-! ## A085351.P16495243465966119607

`abs(A000302(n)-A020729(n))`
-/

namespace A085351.P16495243465966119607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A020729 n|

end

end A085351.P16495243465966119607

namespace A085351

/-- `abs(A000302(n)-A020729(n))` -/
def P16495243465966119607.Spec : Prop :=
  ∀ n, P16495243465966119607.a n = A085351 n

end A085351

/-! ## A085351.P6105698719135406220

`Δ[A034478(n)-A002450(n)]`
-/

namespace A085351.P6105698719135406220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P6105698719135406220

namespace A085351

/-- `Δ[A034478(n)-A002450(n)]` -/
def P6105698719135406220.Spec : Prop :=
  ∀ n, P6105698719135406220.a n = A085351 n

end A085351

/-! ## A085351.P4350740373580927036

`Δ[A034478(n)-A047849(n)]`
-/

namespace A085351.P4350740373580927036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P4350740373580927036

namespace A085351

/-- `Δ[A034478(n)-A047849(n)]` -/
def P4350740373580927036.Spec : Prop :=
  ∀ n, P4350740373580927036.a n = A085351 n

end A085351

/-! ## A085351.P6933096554473653681

`Δ[A137410(n)-A002450(n)]`
-/

namespace A085351.P6933096554473653681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P6933096554473653681

namespace A085351

/-- `Δ[A137410(n)-A002450(n)]` -/
def P6933096554473653681.Spec : Prop :=
  ∀ n, P6933096554473653681.a n = A085351 n

end A085351

/-! ## A085351.P8474871010494401729

`Δ[A137410(n)-A047849(n)]`
-/

namespace A085351.P8474871010494401729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P8474871010494401729

namespace A085351

/-- `Δ[A137410(n)-A047849(n)]` -/
def P8474871010494401729.Spec : Prop :=
  ∀ n, P8474871010494401729.a n = A085351 n

end A085351

/-! ## A085351.P14951706292627217504

`Δ[A121177(n+1)-A002450(n)]`
-/

namespace A085351.P14951706292627217504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P14951706292627217504

namespace A085351

/-- `Δ[A121177(n+1)-A002450(n)]` -/
def P14951706292627217504.Spec : Prop :=
  ∀ n, P14951706292627217504.a n = A085351 n

end A085351

/-! ## A085351.P423468292204918769

`Δ[A121177(n+1)-A047849(n)]`
-/

namespace A085351.P423468292204918769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P423468292204918769

namespace A085351

/-- `Δ[A121177(n+1)-A047849(n)]` -/
def P423468292204918769.Spec : Prop :=
  ∀ n, P423468292204918769.a n = A085351 n

end A085351

/-! ## A085351.P3633029832340845911

`∑[2*A005054(n)-A002001(n)]`
-/

namespace A085351.P3633029832340845911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005054 n - A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085351.P3633029832340845911

namespace A085351

/-- `∑[2*A005054(n)-A002001(n)]` -/
def P3633029832340845911.Spec : Prop :=
  ∀ n, P3633029832340845911.a n = A085351 n

end A085351

/-! ## A085351.P18411986864007642229

`Δ[2*A003463(n)-A002450(n)]`
-/

namespace A085351.P18411986864007642229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P18411986864007642229

namespace A085351

/-- `Δ[2*A003463(n)-A002450(n)]` -/
def P18411986864007642229.Spec : Prop :=
  ∀ n, P18411986864007642229.a n = A085351 n

end A085351

/-! ## A085351.P3923744348322591850

`Δ[2*A003463(n)-A047849(n)]`
-/

namespace A085351.P3923744348322591850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P3923744348322591850

namespace A085351

/-- `Δ[2*A003463(n)-A047849(n)]` -/
def P3923744348322591850.Spec : Prop :=
  ∀ n, P3923744348322591850.a n = A085351 n

end A085351

/-! ## A085351.P12277763987522699734

`Δ[A024049(n)/2-A002450(n)]`
-/

namespace A085351.P12277763987522699734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024049 n : ℚ) / 2 - (A002450 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P12277763987522699734

namespace A085351

/-- `Δ[A024049(n)/2-A002450(n)]` -/
def P12277763987522699734.Spec : Prop :=
  ∀ n, P12277763987522699734.a n = (A085351 n : ℚ)

end A085351

/-! ## A085351.P575624772384975969

`Δ[A034474(n)/2-A002450(n)]`
-/

namespace A085351.P575624772384975969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / 2 - (A002450 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P575624772384975969

namespace A085351

/-- `Δ[A034474(n)/2-A002450(n)]` -/
def P575624772384975969.Spec : Prop :=
  ∀ n, P575624772384975969.a n = (A085351 n : ℚ)

end A085351

/-! ## A085351.P3959548736636765482

`Δ[A000351(n)/2-A047849(n)]`
-/

namespace A085351.P3959548736636765482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / 2 - (A047849 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P3959548736636765482

namespace A085351

/-- `Δ[A000351(n)/2-A047849(n)]` -/
def P3959548736636765482.Spec : Prop :=
  ∀ n, P3959548736636765482.a n = (A085351 n : ℚ)

end A085351

/-! ## A085351.P11758007615705476165

`(A097111(2*n)+A056487(2*n))/2`
-/

namespace A085351.P11758007615705476165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097111 (2 * n) + A056487 (2 * n) : ℚ) / 2

end

end A085351.P11758007615705476165

namespace A085351

/-- `(A097111(2*n)+A056487(2*n))/2` -/
def P11758007615705476165.Spec : Prop :=
  ∀ n, P11758007615705476165.a n = (A085351 n : ℚ)

end A085351

/-! ## A085351.P17804742671933186498

`record[2*A074872(n+1)-A060546(2*n)]`
-/

namespace A085351.P17804742671933186498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074872 (n + 1) - A060546 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085351.P17804742671933186498

namespace A085351

/-- `record[2*A074872(n+1)-A060546(2*n)]` -/
def P17804742671933186498.Spec : Prop :=
  ∀ n, P17804742671933186498.a n = A085351 n

end A085351

/-! ## A085351.P989104056604949954

`Δ[A097165(A004273(n)-n)%A097165(n)]`
-/

namespace A085351.P989104056604949954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097165 (A004273 n - (n : ℤ)).toNat) (A097165 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085351.P989104056604949954

namespace A085351

/-- `Δ[A097165(A004273(n)-n)%A097165(n)]` -/
def P989104056604949954.Spec : Prop :=
  ∀ n, P989104056604949954.a n = A085351 n

end A085351

/-!
# A085352: Expansion of (1-4*x)/((1-5*x)*(1-6*x)).

The programs for A085352, the canonical program `A085352.P7817366229812165275` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085352 has offset 0).

The definition of A085352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-11x+30x^2))` (program `A085352.P7817366229812165275`, by `A085352.P7817366229812165275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085352.P7817366229812165275

`ogf((1-4x)/(1-11x+30x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085352

/-- `ogf((1-4x)/(1-11x+30x^2))` -/
def P7817366229812165275.Spec : Prop :=
  ∀ n, P7817366229812165275.a n = A085352 n

theorem P7817366229812165275.correct : P7817366229812165275.Spec := by
  intro n
  simp only [A085352]

end A085352

/-! ## A085352.P17179227831342630941

`2*6^n-5^n`
-/

namespace A085352.P17179227831342630941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 6 ^ n : ℤ) - (5 ^ n : ℤ)

end

end A085352.P17179227831342630941

namespace A085352

/-- `2*6^n-5^n` -/
def P17179227831342630941.Spec : Prop :=
  ∀ n, P17179227831342630941.a n = A085352 n

end A085352

/-! ## A085352.P3330715783352552153

`abs(A034474(n)-A199317(n))`
-/

namespace A085352.P3330715783352552153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A199317 n|

end

end A085352.P3330715783352552153

namespace A085352

/-- `abs(A034474(n)-A199317(n))` -/
def P3330715783352552153.Spec : Prop :=
  ∀ n, P3330715783352552153.a n = A085352 n

end A085352

/-! ## A085352.P7796384195407092534

`Δ[A152596(n)-A003463(n)]`
-/

namespace A085352.P7796384195407092534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152596 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085352.P7796384195407092534

namespace A085352

/-- `Δ[A152596(n)-A003463(n)]` -/
def P7796384195407092534.Spec : Prop :=
  ∀ n, P7796384195407092534.a n = A085352 n

end A085352

/-! ## A085352.P18054382782700172562

`or(1, A005062(n)+A000400(n))`
-/

namespace A085352.P18054382782700172562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005062 n + A000400 n)

end

end A085352.P18054382782700172562

namespace A085352

/-- `or(1, A005062(n)+A000400(n))` -/
def P18054382782700172562.Spec : Prop :=
  ∀ n, P18054382782700172562.a n = A085352 n

end A085352

/-! ## A085352.P3678325556545065094

`∑[2*A052934(n)-A005054(n)]`
-/

namespace A085352.P3678325556545065094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052934 n - A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085352.P3678325556545065094

namespace A085352

/-- `∑[2*A052934(n)-A005054(n)]` -/
def P3678325556545065094.Spec : Prop :=
  ∀ n, P3678325556545065094.a n = A085352 n

end A085352

/-! ## A085352.P11741122508130167356

`Δ[2*A003464(n)-A003463(n)]`
-/

namespace A085352.P11741122508130167356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003464 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085352.P11741122508130167356

namespace A085352

/-- `Δ[2*A003464(n)-A003463(n)]` -/
def P11741122508130167356.Spec : Prop :=
  ∀ n, P11741122508130167356.a n = A085352 n

end A085352

/-! ## A085352.P14871225445852825086

`(A005062(n)+A000400(n))/A083952(A108783(n+1))`
-/

namespace A085352.P14871225445852825086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005062 n + A000400 n : ℚ) / (A083952 (A108783 (n + 1)).toNat : ℚ)

end

end A085352.P14871225445852825086

namespace A085352

/-- `(A005062(n)+A000400(n))/A083952(A108783(n+1))` -/
def P14871225445852825086.Spec : Prop :=
  ∀ n, P14871225445852825086.a n = (A085352 n : ℚ)

end A085352

/-! ## A085352.P3383238211303167718

`abs(A074615(n)-A169604(n))`
-/

namespace A085352.P3383238211303167718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074615 n - A169604 n|

end

end A085352.P3383238211303167718

namespace A085352

/-- `abs(A074615(n)-A169604(n))` -/
def P3383238211303167718.Spec : Prop :=
  ∀ n, P3383238211303167718.a n = A085352 n

end A085352

/-! ## A085352.P8049867499007533223

`(n+3-A020705(n))*(A074615(n)-A169604(n))`
-/

namespace A085352.P8049867499007533223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A020705 n) * (A074615 n - A169604 n)

end

end A085352.P8049867499007533223

namespace A085352

/-- `(n+3-A020705(n))*(A074615(n)-A169604(n))` -/
def P8049867499007533223.Spec : Prop :=
  ∀ n, P8049867499007533223.a n = A085352 n

end A085352

/-!
# A085353: Expansion of (1-5*x)/((1-6*x)*(1-7*x)).

The programs for A085353, the canonical program `A085353.P6293854485318688790` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085353 has offset 0).

The definition of A085353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-13x+42x^2))` (program `A085353.P6293854485318688790`, by `A085353.P6293854485318688790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085353.P6293854485318688790

`ogf((1-5x)/(1-13x+42x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085353

/-- `ogf((1-5x)/(1-13x+42x^2))` -/
def P6293854485318688790.Spec : Prop :=
  ∀ n, P6293854485318688790.a n = A085353 n

theorem P6293854485318688790.correct : P6293854485318688790.Spec := by
  intro n
  simp only [A085353]

end A085353

/-! ## A085353.P5829989410096098610

`2*7^n-6^n`
-/

namespace A085353.P5829989410096098610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 7 ^ n : ℤ) - (6 ^ n : ℤ)

end

end A085353.P5829989410096098610

namespace A085353

/-- `2*7^n-6^n` -/
def P5829989410096098610.Spec : Prop :=
  ∀ n, P5829989410096098610.a n = A085353 n

end A085353

/-! ## A085353.P4689968008932014252

`abs(6^n-A109808(n+1))`
-/

namespace A085353.P4689968008932014252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - A109808 (n + 1)|

end

end A085353.P4689968008932014252

namespace A085353

/-- `abs(6^n-A109808(n+1))` -/
def P4689968008932014252.Spec : Prop :=
  ∀ n, P4689968008932014252.a n = A085353 n

end A085353

/-! ## A085353.P3392379611756672249

`floor(A270471(n+1)/2-6^n)`
-/

namespace A085353.P3392379611756672249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270471 (n + 1) : ℚ) / 2 - (6 ^ n : ℚ)⌋

end

end A085353.P3392379611756672249

namespace A085353

/-- `floor(A270471(n+1)/2-6^n)` -/
def P3392379611756672249.Spec : Prop :=
  ∀ n, P3392379611756672249.a n = A085353 n

end A085353

/-! ## A085353.P15316637288976582422

`Δ[A125725(n+1)-A003464(n)]`
-/

namespace A085353.P15316637288976582422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) - A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085353.P15316637288976582422

namespace A085353

/-- `Δ[A125725(n+1)-A003464(n)]` -/
def P15316637288976582422.Spec : Prop :=
  ∀ n, P15316637288976582422.a n = A085353 n

end A085353

/-! ## A085353.P16272207590323293790

`Δ[A125725(n+1)-A047851(n)]`
-/

namespace A085353.P16272207590323293790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) - A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085353.P16272207590323293790

namespace A085353

/-- `Δ[A125725(n+1)-A047851(n)]` -/
def P16272207590323293790.Spec : Prop :=
  ∀ n, P16272207590323293790.a n = A085353 n

end A085353

/-! ## A085353.P10032846500846307992

`∑[2*A055272(n)-A052934(n)]`
-/

namespace A085353.P10032846500846307992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055272 n - A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085353.P10032846500846307992

namespace A085353

/-- `∑[2*A055272(n)-A052934(n)]` -/
def P10032846500846307992.Spec : Prop :=
  ∀ n, P10032846500846307992.a n = A085353 n

end A085353

/-! ## A085353.P16595095516709015349

`Δ[2*A023000(n)-A003464(n)]`
-/

namespace A085353.P16595095516709015349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023000 n - A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085353.P16595095516709015349

namespace A085353

/-- `Δ[2*A023000(n)-A003464(n)]` -/
def P16595095516709015349.Spec : Prop :=
  ∀ n, P16595095516709015349.a n = A085353 n

end A085353

/-! ## A085353.P15890069746778453621

`Δ[2*A047852(n)-A047851(n)]`
-/

namespace A085353.P15890069746778453621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047852 n - A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085353.P15890069746778453621

namespace A085353

/-- `Δ[2*A047852(n)-A047851(n)]` -/
def P15890069746778453621.Spec : Prop :=
  ∀ n, P15890069746778453621.a n = A085353 n

end A085353

/-!
# A085354: a(n) = 3*4^n - (n+4)*2^(n-1).

The programs for A085354, the canonical program `A085354.P10152136386130746269` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085354 has offset 0).

The definition of A085354 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A085354.anchor (n : ℕ) : (A085354 n : ℚ) = (3 * 4 ^ n : ℚ) - (n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A085.A085354`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085354.P10152136386130746269

`3*4^n-(n+4)*2^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085354

/-- `3*4^n-(n+4)*2^(n-1)` -/
def P10152136386130746269.Spec : Prop :=
  ∀ n, P10152136386130746269.a n = (A085354 n : ℚ)

end A085354

/-! ## A085354.P7936331703940027099

`Δ[A100575(n+1)]`
-/

namespace A085354.P7936331703940027099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085354.P7936331703940027099

namespace A085354

/-- `Δ[A100575(n+1)]` -/
def P7936331703940027099.Spec : Prop :=
  ∀ n, P7936331703940027099.a n = A085354 n

end A085354

/-! ## A085354.P8160503233857018279

`Δ[A368484(2*n+1)]`
-/

namespace A085354.P8160503233857018279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085354.P8160503233857018279

namespace A085354

/-- `Δ[A368484(2*n+1)]` -/
def P8160503233857018279.Spec : Prop :=
  ∀ n, P8160503233857018279.a n = A085354 n

end A085354

/-! ## A085354.P844942081183805277

`Δ[A000302(n)-(n+2)*2^(n-1)]`
-/

namespace A085354.P844942081183805277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) - (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085354.P844942081183805277

namespace A085354

/-- `Δ[A000302(n)-(n+2)*2^(n-1)]` -/
def P844942081183805277.Spec : Prop :=
  ∀ n, P844942081183805277.a n = (A085354 n : ℚ)

end A085354

/-! ## A085354.P6535188009477131178

`Δ[A344485(2^n)]`
-/

namespace A085354.P6535188009477131178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344485 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085354.P6535188009477131178

namespace A085354

/-- `Δ[A344485(2^n)]` -/
def P6535188009477131178.Spec : Prop :=
  ∀ n, P6535188009477131178.a n = A085354 n

end A085354

/-!
# A085355: a(n) is the difference between A084321(n) and the (n-1)th power of 2.

The programs for A085355, there is no canonical definition to state claims against.
-/

/-! ## A085355.P15082478373518402133

`A084321(n+1)-2^n`
-/

namespace A085355.P15082478373518402133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084321 (n + 1) - (2 ^ n : ℤ)

end

end A085355.P15082478373518402133

/-! ## A085355.P12243376316442226219

`A084321(n+1)%A000079(n)`
-/

namespace A085355.P12243376316442226219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084321 (n + 1)) (A000079 n)

end

end A085355.P12243376316442226219

/-! ## A085355.P2841615814329325500

`and(A000225(n), A084321(n+1))`
-/

namespace A085355.P2841615814329325500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A084321 (n + 1))

end

end A085355.P2841615814329325500

/-! ## A085355.P17327295379514817839

`and(A084321(n+1), A140252(n))`
-/

namespace A085355.P17327295379514817839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A140252 n)

end

end A085355.P17327295379514817839

/-! ## A085355.P142505595814578571

`and(A084321(n+1), A303611(n+2))`
-/

namespace A085355.P142505595814578571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A303611 (n + 2))

end

end A085355.P142505595814578571

/-! ## A085355.P15753830272749582282

`and(A084321(n+1), A140683(n))`
-/

namespace A085355.P15753830272749582282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A140683 n)

end

end A085355.P15753830272749582282

/-! ## A085355.P6205614024176188248

`and(A084321(n+1), A153893(n))`
-/

namespace A085355.P6205614024176188248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A153893 n)

end

end A085355.P6205614024176188248

/-! ## A085355.P1662052187501135589

`and(A084321(n+1), A086224(n))`
-/

namespace A085355.P1662052187501135589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A086224 n)

end

end A085355.P1662052187501135589

/-! ## A085355.P18225141418099751671

`and(A084321(n+1), A153894(n))`
-/

namespace A085355.P18225141418099751671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A153894 n)

end

end A085355.P18225141418099751671

/-! ## A085355.P4031732974533614357

`and(A084321(n+1), A086225(n))`
-/

namespace A085355.P4031732974533614357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A086225 n)

end

end A085355.P4031732974533614357

/-! ## A085355.P1034813510408932775

`and(A084321(n+1), A196305(n))`
-/

namespace A085355.P1034813510408932775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A196305 n)

end

end A085355.P1034813510408932775

/-! ## A085355.P9266414068393675177

`and(A084321(n+1), A198274(n))`
-/

namespace A085355.P9266414068393675177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A198274 n)

end

end A085355.P9266414068393675177

/-! ## A085355.P11131149678350957817

`and(A084321(n+1), A198275(n))`
-/

namespace A085355.P11131149678350957817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A198275 n)

end

end A085355.P11131149678350957817

/-! ## A085355.P7450198017529049592

`and(A084321(n+1), A171389(n))`
-/

namespace A085355.P7450198017529049592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A171389 n)

end

end A085355.P7450198017529049592

/-! ## A085355.P10353976853283149944

`and(A084321(n+1), A198276(n))`
-/

namespace A085355.P10353976853283149944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A198276 n)

end

end A085355.P10353976853283149944

/-! ## A085355.P11382408661644312684

`and(A084321(n+1), A291557(n))`
-/

namespace A085355.P11382408661644312684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A291557 n)

end

end A085355.P11382408661644312684

/-! ## A085355.P9594409855164176725

`and(A084321(n+1), A171390(n+1))`
-/

namespace A085355.P9594409855164176725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A171390 (n + 1))

end

end A085355.P9594409855164176725

/-! ## A085355.P11235968329801080785

`and(A084321(n+1), A201914(n))`
-/

namespace A085355.P11235968329801080785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A201914 n)

end

end A085355.P11235968329801080785

/-! ## A085355.P5361833580382035893

`and(A084321(n+1), A129868(n))`
-/

namespace A085355.P5361833580382035893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A129868 n)

end

end A085355.P5361833580382035893

/-! ## A085355.P14198195891603432028

`and(A084321(n+1), A187560(n))`
-/

namespace A085355.P14198195891603432028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084321 (n + 1)) (A187560 n)

end

end A085355.P14198195891603432028

/-!
# A085356: a(n) = polygorial(n,3)/polygorial(3,n), n >= 3.

The programs for A085356, the canonical program `A085356.P12196543980335412904` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085356 has offset 0).

The definition of A085356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085356.P12196543980335412904

`A067550(n+2)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085356

/-- `A067550(n+2)/2` -/
def P12196543980335412904.Spec : Prop :=
  ∀ n, P12196543980335412904.a n = (A085356 n : ℚ)

end A085356

/-! ## A085356.P11040826149698361499

`(n+1)!²*(n+2)*(n+3)*(n+4)/(2^n*24)`
-/

namespace A085356.P11040826149698361499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 * (n + 2) * (n + 3) * (n + 4) : ℚ) / (2 ^ n * 24 : ℚ)

end

end A085356.P11040826149698361499

namespace A085356

/-- `(n+1)!²*(n+2)*(n+3)*(n+4)/(2^n*24)` -/
def P11040826149698361499.Spec : Prop :=
  ∀ n, P11040826149698361499.a n = (A085356 n : ℚ)

end A085356

/-! ## A085356.P1923250717566522485

`∏[∑[n+2]]/2`
-/

namespace A085356.P1923250717566522485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A085356.P1923250717566522485

namespace A085356

/-- `∏[∑[n+2]]/2` -/
def P1923250717566522485.Spec : Prop :=
  ∀ n, P1923250717566522485.a n = (A085356 n : ℚ)

end A085356

/-! ## A085356.P6792024660985094257

`∏[Δ[record[∑[∑[n-1]]]]]`
-/

namespace A085356.P6792024660985094257
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085356.P6792024660985094257

namespace A085356

/-- `∏[Δ[record[∑[∑[n-1]]]]]` -/
def P6792024660985094257.Spec : Prop :=
  ∀ n, P6792024660985094257.a n = A085356 n

end A085356

/-! ## A085356.P15590162667493118497

`∏[∑[n+2]-floor(acot(n))]`
-/

namespace A085356.P15590162667493118497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085356.P15590162667493118497

namespace A085356

/-- `∏[∑[n+2]-floor(acot(n))]` -/
def P15590162667493118497.Spec : Prop :=
  ∀ n, P15590162667493118497.a n = A085356 n

end A085356

/-!
# A085357: Common residues of binomial(3n,n)/(2n+1) modulo 2: relates ternary trees (A001764) to the infinite Fibonacci word (A003849).

The programs for A085357, the canonical program `A085357.P3258697467278337073` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085357 has offset 0).

The definition of A085357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085357.P14028294803801798760

`abs(A132971(n))`
-/

namespace A085357.P14028294803801798760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132971 n|

end

end A085357.P14028294803801798760

namespace A085357

/-- `abs(A132971(n))` -/
def P14028294803801798760.Spec : Prop :=
  ∀ n, P14028294803801798760.a n = A085357 n

end A085357

/-! ## A085357.P3258697467278337073

`A008966(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A085357

/-- `A008966(A005940(1+n))` -/
def P3258697467278337073.Spec : Prop :=
  ∀ n, P3258697467278337073.a n = A085357 n

theorem P3258697467278337073.correct : P3258697467278337073.Spec := by
  intro n
  simp only [A085357]

end A085357

/-! ## A085357.P16667443014233829208

`C(and(n, 3*n), n)`
-/

namespace A085357.P16667443014233829208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (3 * n)) n

end

end A085357.P16667443014233829208

namespace A085357

/-- `C(and(n, 3*n), n)` -/
def P16667443014233829208.Spec : Prop :=
  ∀ n, (P16667443014233829208.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P3238019147338390776

`char[xor(n, floor(n/3))]`
-/

namespace A085357.P3238019147338390776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085357.P3238019147338390776

namespace A085357

/-- `char[xor(n, floor(n/3))]` -/
def P3238019147338390776.Spec : Prop :=
  ∀ n, (P3238019147338390776.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P2432294150440609776

`floor(acot(and(n, 2*n)))`
-/

namespace A085357.P2432294150440609776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Nat.land n (2 * n) : ℝ)⌋

end

end A085357.P2432294150440609776

namespace A085357

/-- `floor(acot(and(n, 2*n)))` -/
def P2432294150440609776.Spec : Prop :=
  ∀ n, P2432294150440609776.a n = A085357 n

end A085357

/-! ## A085357.P3763552022068063352

`char[eq[0, and(n, 2*n)]]`
-/

namespace A085357.P3763552022068063352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A085357.P3763552022068063352

namespace A085357

/-- `char[eq[0, and(n, 2*n)]]` -/
def P3763552022068063352.Spec : Prop :=
  ∀ n, (P3763552022068063352.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P9237644396975730447

`char[lt[and(n, 2*n), 1]]`
-/

namespace A085357.P9237644396975730447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A085357.P9237644396975730447

namespace A085357

/-- `char[lt[and(n, 2*n), 1]]` -/
def P9237644396975730447.Spec : Prop :=
  ∀ n, (P9237644396975730447.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P17962034384807439214

`floor(γ^and(n, 2*n))`
-/

namespace A085357.P17962034384807439214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant ^ Nat.land n (2 * n)⌋

end

end A085357.P17962034384807439214

namespace A085357

/-- `floor(γ^and(n, 2*n))` -/
def P17962034384807439214.Spec : Prop :=
  ∀ n, P17962034384807439214.a n = A085357 n

end A085357

/-! ## A085357.P8184156308981450624

`round(γ^and(n, 2*n))`
-/

namespace A085357.P8184156308981450624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ Nat.land n (2 * n))

end

end A085357.P8184156308981450624

namespace A085357

/-- `round(γ^and(n, 2*n))` -/
def P8184156308981450624.Spec : Prop :=
  ∀ n, P8184156308981450624.a n = A085357 n

end A085357

/-! ## A085357.P2498782367869306654

`floor(exp(-and(n, 2*n)))`
-/

namespace A085357.P2498782367869306654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (-(Nat.land n (2 * n) : ℤ) : ℝ)⌋

end

end A085357.P2498782367869306654

namespace A085357

/-- `floor(exp(-and(n, 2*n)))` -/
def P2498782367869306654.Spec : Prop :=
  ∀ n, P2498782367869306654.a n = A085357 n

end A085357

/-! ## A085357.P1255724033786187950

`round(exp(-and(n, 2*n)))`
-/

namespace A085357.P1255724033786187950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (-(Nat.land n (2 * n) : ℤ) : ℝ))

end

end A085357.P1255724033786187950

namespace A085357

/-- `round(exp(-and(n, 2*n)))` -/
def P1255724033786187950.Spec : Prop :=
  ∀ n, P1255724033786187950.a n = A085357 n

end A085357

/-! ## A085357.P8928552365612131332

`char[n-and(n, 2*n)]`
-/

namespace A085357.P8928552365612131332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085357.P8928552365612131332

namespace A085357

/-- `char[n-and(n, 2*n)]` -/
def P8928552365612131332.Spec : Prop :=
  ∀ n, (P8928552365612131332.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P11196431438101011337

`char[abs(or(2*n, -n))]`
-/

namespace A085357.P11196431438101011337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085357.P11196431438101011337

namespace A085357

/-- `char[abs(or(2*n, -n))]` -/
def P11196431438101011337.Spec : Prop :=
  ∀ n, (P11196431438101011337.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P3891040747088583806

`char[-or(2*n, -n)]`
-/

namespace A085357.P3891040747088583806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085357.P3891040747088583806

namespace A085357

/-- `char[-or(2*n, -n)]` -/
def P3891040747088583806.Spec : Prop :=
  ∀ n, (P3891040747088583806.a n : ℤ) = A085357 n

end A085357

/-! ## A085357.P12840741430748627600

`∏{d}[and(n, 2*n), log(#)]`
-/

namespace A085357.P12840741430748627600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)

end

end A085357.P12840741430748627600

namespace A085357

/-- `∏{d}[and(n, 2*n), log(#)]` -/
def P12840741430748627600.Spec : Prop :=
  ∀ n, P12840741430748627600.a n = (A085357 n : ℝ)

end A085357

/-! ## A085357.P18394346800041715893

`floor(abs(cos(and(n, 2*n))))`
-/

namespace A085357.P18394346800041715893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cos (Nat.land n (2 * n) : ℝ)|⌋

end

end A085357.P18394346800041715893

namespace A085357

/-- `floor(abs(cos(and(n, 2*n))))` -/
def P18394346800041715893.Spec : Prop :=
  ∀ n, P18394346800041715893.a n = A085357 n

end A085357

/-! ## A085357.P10613072016438844882

`floor(cos(and(n, 2*n))²)`
-/

namespace A085357.P10613072016438844882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Nat.land n (2 * n) : ℝ) ^ 2⌋

end

end A085357.P10613072016438844882

namespace A085357

/-- `floor(cos(and(n, 2*n))²)` -/
def P10613072016438844882.Spec : Prop :=
  ∀ n, P10613072016438844882.a n = A085357 n

end A085357

/-! ## A085357.P2004720312021014599

`log2(ceil(acot(and(n, 2*n))))`
-/

namespace A085357.P2004720312021014599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈SequenceMachineLib.acot (Nat.land n (2 * n) : ℝ)⌉ : ℝ)

end

end A085357.P2004720312021014599

namespace A085357

/-- `log2(ceil(acot(and(n, 2*n))))` -/
def P2004720312021014599.Spec : Prop :=
  ∀ n, P2004720312021014599.a n = (A085357 n : ℝ)

end A085357

/-! ## A085357.P7361078082725807349

`floor(cos(sin(and(n, 2*n))))`
-/

namespace A085357.P7361078082725807349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Real.sin (Nat.land n (2 * n) : ℝ))⌋

end

end A085357.P7361078082725807349

namespace A085357

/-- `floor(cos(sin(and(n, 2*n))))` -/
def P7361078082725807349.Spec : Prop :=
  ∀ n, P7361078082725807349.a n = A085357 n

end A085357

/-!
# A085358: Runs of zeros in binomial(3k,k)/(2k+1) (mod 2): relates ternary trees (A001764) to the infinite Fibonacci word (A003849).

The programs for A085358, the canonical program `A085358.P10431996975946605734` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085358 has offset 0).

The definition of A085358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085358.P11062117346649705382

`A319432(n+1)-1`
-/

namespace A085358.P11062117346649705382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319432 (n + 1) - 1

end

end A085358.P11062117346649705382

namespace A085358

/-- `A319432(n+1)-1` -/
def P11062117346649705382.Spec : Prop :=
  ∀ n, P11062117346649705382.a n = A085358 n

theorem P11062117346649705382.correct : P11062117346649705382.Spec := by
  intro n
  simp only [A085358, Nat.add_sub_cancel, A085358.P11062117346649705382.a, A085358.P10431996975946605734.a, A000975, A000975.P3065139855509220403.a, A035612, A035612.P7106491847305260424.a, A319432, A319432.P3337669572153252279.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085358

/-! ## A085358.P416679988394051642

`floor(2^(A035614(n)+2)/3)`
-/

namespace A085358.P416679988394051642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A035614 n + 2 : ℤ) / 3⌋

end

end A085358.P416679988394051642

namespace A085358

/-- `floor(2^(A035614(n)+2)/3)` -/
def P416679988394051642.Spec : Prop :=
  ∀ n, P416679988394051642.a n = A085358 n

end A085358

/-! ## A085358.P7099512030439366345

`floor(2^(A035612(n+1)+1)/3)`
-/

namespace A085358.P7099512030439366345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A035612 (n + 1) + 1 : ℤ) / 3⌋

end

end A085358.P7099512030439366345

namespace A085358

/-- `floor(2^(A035612(n+1)+1)/3)` -/
def P7099512030439366345.Spec : Prop :=
  ∀ n, P7099512030439366345.a n = A085358 n

end A085358

/-! ## A085358.P15804248501015298333

`Δ[A022341(n)-floor((n+1)*ϕ²)]`
-/

namespace A085358.P15804248501015298333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n - ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085358.P15804248501015298333

namespace A085358

/-- `Δ[A022341(n)-floor((n+1)*ϕ²)]` -/
def P15804248501015298333.Spec : Prop :=
  ∀ n, P15804248501015298333.a n = A085358 n

end A085358

/-! ## A085358.P3771570879153518144

`xor(2, A319432(n*(floor(acot(n))+1)+1))+1`
-/

namespace A085358.P3771570879153518144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A319432 ((n : ℤ) * (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1) + 1).toNat) + 1

end

end A085358.P3771570879153518144

namespace A085358

/-- `xor(2, A319432(n*(floor(acot(n))+1)+1))+1` -/
def P3771570879153518144.Spec : Prop :=
  ∀ n, P3771570879153518144.a n = A085358 n

end A085358

/-! ## A085358.P13675657607513191952

`xor(2, A319432((n+1)^(floor(acot(n))+1)))+1`
-/

namespace A085358.P13675657607513191952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A319432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 : ℤ))).toNat) + 1

end

end A085358.P13675657607513191952

namespace A085358

/-- `xor(2, A319432((n+1)^(floor(acot(n))+1)))+1` -/
def P13675657607513191952.Spec : Prop :=
  ∀ n, P13675657607513191952.a n = A085358 n

end A085358

/-! ## A085358.P10431996975946605734

`A000975(A035612(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085358

/-- `A000975(A035612(n+1))` -/
def P10431996975946605734.Spec : Prop :=
  ∀ n, P10431996975946605734.a n = A085358 n

theorem P10431996975946605734.correct : P10431996975946605734.Spec := by
  intro n
  simp only [A085358]

end A085358

/-! ## A085358.P6579383890956819006

`A057337(A139764(n+1))`
-/

namespace A085358.P6579383890956819006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057337 (A139764 (n + 1)).toNat

end

end A085358.P6579383890956819006

namespace A085358

/-- `A057337(A139764(n+1))` -/
def P6579383890956819006.Spec : Prop :=
  ∀ n, P6579383890956819006.a n = A085358 n

end A085358

/-! ## A085358.P1295085936964498449

`xor(A050141(n+1), A319432(n+1))`
-/

namespace A085358.P1295085936964498449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A050141 (n + 1)) (A319432 (n + 1))

end

end A085358.P1295085936964498449

namespace A085358

/-- `xor(A050141(n+1), A319432(n+1))` -/
def P1295085936964498449.Spec : Prop :=
  ∀ n, P1295085936964498449.a n = A085358 n

end A085358

/-! ## A085358.P541704177537604764

`A084639(val(record[xor(n+1, 2*(n+1))], 2))+1`
-/

namespace A085358.P541704177537604764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2) + 1

end

end A085358.P541704177537604764

namespace A085358

/-- `A084639(val(record[xor(n+1, 2*(n+1))], 2))+1` -/
def P541704177537604764.Spec : Prop :=
  ∀ n, P541704177537604764.a n = A085358 n

end A085358

/-! ## A085358.P17181104919976788754

`A129761(A057843(n+2))-1`
-/

namespace A085358.P17181104919976788754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A057843 (n + 2)).toNat - 1

end

end A085358.P17181104919976788754

namespace A085358

/-- `A129761(A057843(n+2))-1` -/
def P17181104919976788754.Spec : Prop :=
  ∀ n, P17181104919976788754.a n = A085358 n

end A085358

/-! ## A085358.P18361558380289557006

`A023443(A319432(n+1))`
-/

namespace A085358.P18361558380289557006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A319432 (n + 1)).toNat

end

end A085358.P18361558380289557006

namespace A085358

/-- `A023443(A319432(n+1))` -/
def P18361558380289557006.Spec : Prop :=
  ∀ n, P18361558380289557006.a n = A085358 n

end A085358

/-!
# A085360: Partial sums of A026905; the convolution of the natural numbers with the partition function.

The programs for A085360, there is no canonical definition to state claims against.
-/

/-! ## A085360.P6258691012711709285

`A014153(n+1)-(n+2)`
-/

namespace A085360.P6258691012711709285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (n + 1) - (n + 2 : ℤ)

end

end A085360.P6258691012711709285

/-! ## A085360.P14767699654553477891

`∑[A026905(n+1)]`
-/

namespace A085360.P14767699654553477891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P14767699654553477891

/-! ## A085360.P9517760624112228806

`∑[∑[A000041(n+1)]]`
-/

namespace A085360.P9517760624112228806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P9517760624112228806

/-! ## A085360.P16292466284664640592

`∑[A000070(n+1)-1]`
-/

namespace A085360.P16292466284664640592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P16292466284664640592

/-! ## A085360.P11437572105085524697

`∑[A216053(n+2)-2]`
-/

namespace A085360.P11437572105085524697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P11437572105085524697

/-! ## A085360.P13784364326338530342

`∑[∑[∑[A187219(n+1)]]]`
-/

namespace A085360.P13784364326338530342
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P13784364326338530342

/-! ## A085360.P881182196002577447

`∑[∑[A000065(n+1)+1]]`
-/

namespace A085360.P881182196002577447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P881182196002577447

/-! ## A085360.P6536691708833556473

`∑[∑[A052810(n+1)-1]]`
-/

namespace A085360.P6536691708833556473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P6536691708833556473

/-! ## A085360.P17028560818446783843

`∑[∑[A139582(n+1)/2]]`
-/

namespace A085360.P17028560818446783843
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P17028560818446783843

/-! ## A085360.P16774033887239544113

`∑[A058682(n+1)+n+1]`
-/

namespace A085360.P16774033887239544113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P16774033887239544113

/-! ## A085360.P13426403828373730945

`∑[∑[A000041(n)*ratio[A000041(n)]]]`
-/

namespace A085360.P13426403828373730945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P13426403828373730945

/-! ## A085360.P13435276775291525866

`∑[∑[A018783(n+1)+A000837(n+1)]]`
-/

namespace A085360.P13435276775291525866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) + A000837 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P13435276775291525866

/-! ## A085360.P14147257631900846593

`∑[∑[A039900(n+1)+A003106(n+1)]]`
-/

namespace A085360.P14147257631900846593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (n + 1) + A003106 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P14147257631900846593

/-! ## A085360.P4604675388649860466

`Δ[A014160(n)]-(n+2)`
-/

namespace A085360.P4604675388649860466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A085360.P4604675388649860466

/-! ## A085360.P15883155902818861106

`A000217(n+1)+A086716(n+1)-A014160(n)`
-/

namespace A085360.P15883155902818861106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A086716 (n + 1) - A014160 n)

end

end A085360.P15883155902818861106

/-! ## A085360.P12583745002042399359

`A086716(n+2)-(A086716(n+1)+A026905(n+2))`
-/

namespace A085360.P12583745002042399359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086716 (n + 2) - (A086716 (n + 1) + A026905 (n + 2))

end

end A085360.P12583745002042399359

/-! ## A085360.P3511815062656269894

`∑[A182706(n+1)/(n+1)]`
-/

namespace A085360.P3511815062656269894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182706 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P3511815062656269894

/-! ## A085360.P718323605224068935

`∑[∑[A066639(2*(n+1))]]`
-/

namespace A085360.P718323605224068935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066639 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P718323605224068935

/-! ## A085360.P17000982495107410099

`∑[∑[A194451(2*n+1)]]`
-/

namespace A085360.P17000982495107410099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P17000982495107410099

/-! ## A085360.P2136735311809745501

`∑[∑[record[A035363(n)]]]`
-/

namespace A085360.P2136735311809745501
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085360.P2136735311809745501

/-!
# A085362: a(0)=1; for n>0, a(n) = 2*5^(n-1) - (1/2)*Sum_{i=1..n-1} a(i)*a(n-i).

The programs for A085362, the canonical program `A085362.P5421159430058564435` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085362 has offset 0).

The definition of A085362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085362.P5421159430058564435

`(2*(3*n-2)*a(n-1)-5*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085362

/-- `(2*(3*n-2)*a(n-1)-5*(n-2)*a(n-2))/n` -/
def P5421159430058564435.Spec : Prop :=
  ∀ n, P5421159430058564435.a n = (A085362 n : ℚ)

end A085362

/-! ## A085362.P14145493415615112789

`A026392(A004277(n))`
-/

namespace A085362.P14145493415615112789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004277 n).toNat

end

end A085362.P14145493415615112789

namespace A085362

/-- `A026392(A004277(n))` -/
def P14145493415615112789.Spec : Prop :=
  ∀ n, P14145493415615112789.a n = A085362 n

end A085362

/-! ## A085362.P18036117170794859998

`A026392(A004275(n+1))`
-/

namespace A085362.P18036117170794859998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004275 (n + 1)).toNat

end

end A085362.P18036117170794859998

namespace A085362

/-- `A026392(A004275(n+1))` -/
def P18036117170794859998.Spec : Prop :=
  ∀ n, P18036117170794859998.a n = A085362 n

end A085362

/-! ## A085362.P7591720668009043985

`A026392(A004273(n)+1)`
-/

namespace A085362.P7591720668009043985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004273 n + 1).toNat

end

end A085362.P7591720668009043985

namespace A085362

/-- `A026392(A004273(n)+1)` -/
def P7591720668009043985.Spec : Prop :=
  ∀ n, P7591720668009043985.a n = A085362 n

end A085362

/-! ## A085362.P2512270736033461126

`A026392(A028310(2*n))`
-/

namespace A085362.P2512270736033461126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A028310 (2 * n)).toNat

end

end A085362.P2512270736033461126

namespace A085362

/-- `A026392(A028310(2*n))` -/
def P2512270736033461126.Spec : Prop :=
  ∀ n, P2512270736033461126.a n = A085362 n

end A085362

/-! ## A085362.P1021718188321999550

`A026392(A028310(n)+n)`
-/

namespace A085362.P1021718188321999550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A028310 n + (n : ℤ)).toNat

end

end A085362.P1021718188321999550

namespace A085362

/-- `A026392(A028310(n)+n)` -/
def P1021718188321999550.Spec : Prop :=
  ∀ n, P1021718188321999550.a n = A085362 n

end A085362

/-! ## A085362.P5196377594911240597

`A128732(n)+A126568(n)`
-/

namespace A085362.P5196377594911240597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n + A126568 n

end

end A085362.P5196377594911240597

namespace A085362

/-- `A128732(n)+A126568(n)` -/
def P5196377594911240597.Spec : Prop :=
  ∀ n, P5196377594911240597.a n = A085362 n

end A085362

/-! ## A085362.P6652098569921263233

`A126568(n)+A128730(n)+A128726(n)`
-/

namespace A085362.P6652098569921263233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n + (A128730 n + A128726 n)

end

end A085362.P6652098569921263233

namespace A085362

/-- `A126568(n)+A128730(n)+A128726(n)` -/
def P6652098569921263233.Spec : Prop :=
  ∀ n, P6652098569921263233.a n = A085362 n

end A085362

/-! ## A085362.P4423915384205612210

`A126568(n)+A128734(n)+A128714(n)`
-/

namespace A085362.P4423915384205612210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n + (A128734 n + A128714 n)

end

end A085362.P4423915384205612210

namespace A085362

/-- `A126568(n)+A128734(n)+A128714(n)` -/
def P4423915384205612210.Spec : Prop :=
  ∀ n, P4423915384205612210.a n = A085362 n

end A085362

/-! ## A085362.P6276613970175770016

`A128732(n)+A242586(n)+∑[A128732(n)]`
-/

namespace A085362.P6276613970175770016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n + (A242586 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085362.P6276613970175770016

namespace A085362

/-- `A128732(n)+A242586(n)+∑[A128732(n)]` -/
def P6276613970175770016.Spec : Prop :=
  ∀ n, P6276613970175770016.a n = A085362 n

end A085362

/-! ## A085362.P14652109945180363632

`A128732(n+1)+A128732(n)+A033321(n)`
-/

namespace A085362.P14652109945180363632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1) + (A128732 n + A033321 n)

end

end A085362.P14652109945180363632

namespace A085362

/-- `A128732(n+1)+A128732(n)+A033321(n)` -/
def P14652109945180363632.Spec : Prop :=
  ∀ n, P14652109945180363632.a n = A085362 n

end A085362

/-! ## A085362.P7429539971990763508

`Δ[A128730(n+1)-A128732(n)]`
-/

namespace A085362.P7429539971990763508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 (n + 1) - A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085362.P7429539971990763508

namespace A085362

/-- `Δ[A128730(n+1)-A128732(n)]` -/
def P7429539971990763508.Spec : Prop :=
  ∀ n, P7429539971990763508.a n = A085362 n

end A085362

/-! ## A085362.P4796897249748861705

`A026378(n+1)-A128752(n+1)`
-/

namespace A085362.P4796897249748861705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) - A128752 (n + 1)

end

end A085362.P4796897249748861705

namespace A085362

/-- `A026378(n+1)-A128752(n+1)` -/
def P4796897249748861705.Spec : Prop :=
  ∀ n, P4796897249748861705.a n = A085362 n

end A085362

/-! ## A085362.P16027641682078006717

`A026392(record[ratio[A098473(n)]])`
-/

namespace A085362.P16027641682078006717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A085362.P16027641682078006717

namespace A085362

/-- `A026392(record[ratio[A098473(n)]])` -/
def P16027641682078006717.Spec : Prop :=
  ∀ n, P16027641682078006717.a n = A085362 n

end A085362

/-!
# A085363: a(0)=1, for n>0: a(n) = 4*9^(n-1) - (1/2)*Sum_{i=1..n-1} a(i)*a(n-i).

The programs for A085363, the canonical program `A085363.P10566471288067803853` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085363 has offset 0).

The definition of A085363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085363.P5962418506342962030

`A036453(n+1)*A051708(n+1)`
-/

namespace A085363.P5962418506342962030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A051708 (n + 1)

end

end A085363.P5962418506342962030

namespace A085363

/-- `A036453(n+1)*A051708(n+1)` -/
def P5962418506342962030.Spec : Prop :=
  ∀ n, P5962418506342962030.a n = A085363 n

end A085363

/-! ## A085363.P13511311649872653010

`(A178334(n)+1)*A051708(n+1)`
-/

namespace A085363.P13511311649872653010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A051708 (n + 1)

end

end A085363.P13511311649872653010

namespace A085363

/-- `(A178334(n)+1)*A051708(n+1)` -/
def P13511311649872653010.Spec : Prop :=
  ∀ n, P13511311649872653010.a n = A085363 n

end A085363

/-! ## A085363.P10566471288067803853

`A051708(n+1)*A051708(n²%(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085363

/-- `A051708(n+1)*A051708(n²%(n+1)+1)` -/
def P10566471288067803853.Spec : Prop :=
  ∀ n, P10566471288067803853.a n = A085363 n

theorem P10566471288067803853.correct : P10566471288067803853.Spec := by
  intro n
  simp only [A085363]

end A085363

/-! ## A085363.P9878951324488243468

`A051708(n+1)*A130335(A000124(n))`
-/

namespace A085363.P9878951324488243468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051708 (n + 1) * A130335 (A000124 n).toNat

end

end A085363.P9878951324488243468

namespace A085363

/-- `A051708(n+1)*A130335(A000124(n))` -/
def P9878951324488243468.Spec : Prop :=
  ∀ n, P9878951324488243468.a n = A085363 n

end A085363

/-! ## A085363.P6368366339136595376

`A000079(A178334(n))*A051708(n+1)`
-/

namespace A085363.P6368366339136595376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A178334 n).toNat * A051708 (n + 1)

end

end A085363.P6368366339136595376

namespace A085363

/-- `A000079(A178334(n))*A051708(n+1)` -/
def P6368366339136595376.Spec : Prop :=
  ∀ n, P6368366339136595376.a n = A085363 n

end A085363

/-! ## A085363.P15826840939762017810

`A051708(n+1)*A130335(A130335(n+1))`
-/

namespace A085363.P15826840939762017810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051708 (n + 1) * A130335 (A130335 (n + 1)).toNat

end

end A085363.P15826840939762017810

namespace A085363

/-- `A051708(n+1)*A130335(A130335(n+1))` -/
def P15826840939762017810.Spec : Prop :=
  ∀ n, P15826840939762017810.a n = A085363 n

end A085363

/-! ## A085363.P9689561483862920603

`A051708(n+1)*A319991(A064235(n+1))`
-/

namespace A085363.P9689561483862920603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051708 (n + 1) * A319991 (A064235 (n + 1)).toNat

end

end A085363.P9689561483862920603

namespace A085363

/-- `A051708(n+1)*A319991(A064235(n+1))` -/
def P9689561483862920603.Spec : Prop :=
  ∀ n, P9689561483862920603.a n = A085363 n

end A085363

/-! ## A085363.P803670916498338567

`(A005408(n)-A004273(n))*A051708(n+1)`
-/

namespace A085363.P803670916498338567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A004273 n) * A051708 (n + 1)

end

end A085363.P803670916498338567

namespace A085363

/-- `(A005408(n)-A004273(n))*A051708(n+1)` -/
def P803670916498338567.Spec : Prop :=
  ∀ n, P803670916498338567.a n = A085363 n

end A085363

/-! ## A085363.P15144571541176644592

`A051708(n+1)/A011782(n)*A000079(n)`
-/

namespace A085363.P15144571541176644592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051708 (n + 1) : ℚ) / (A011782 n : ℚ) * (A000079 n : ℚ)

end

end A085363.P15144571541176644592

namespace A085363

/-- `A051708(n+1)/A011782(n)*A000079(n)` -/
def P15144571541176644592.Spec : Prop :=
  ∀ n, P15144571541176644592.a n = (A085363 n : ℚ)

end A085363

/-! ## A085363.P10814663154443942317

`A011782(n+1)/A011782(n)*A051708(n+1)`
-/

namespace A085363.P10814663154443942317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A051708 (n + 1) : ℚ)

end

end A085363.P10814663154443942317

namespace A085363

/-- `A011782(n+1)/A011782(n)*A051708(n+1)` -/
def P10814663154443942317.Spec : Prop :=
  ∀ n, P10814663154443942317.a n = (A085363 n : ℚ)

end A085363

/-! ## A085363.P8910002246169653134

`Δ[A084771(n)%A051708(n+1)]`
-/

namespace A085363.P8910002246169653134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084771 n) (A051708 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085363.P8910002246169653134

namespace A085363

/-- `Δ[A084771(n)%A051708(n+1)]` -/
def P8910002246169653134.Spec : Prop :=
  ∀ n, P8910002246169653134.a n = A085363 n

end A085363

/-!
# A085366: Semiprimes that are the sum of two positive cubes. Common terms of A003325 and A046315.

The programs for A085366, there is no canonical definition to state claims against.
-/

/-! ## A085366.P11121237672927977904

`∩[A085367(n+1), A338667(n+1)]`
-/

namespace A085366.P11121237672927977904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P11121237672927977904

/-! ## A085366.P103224135297406839

`∩[A003325(n+1), A085367(n+1)]`
-/

namespace A085366.P103224135297406839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P103224135297406839

/-! ## A085366.P15894731763899743450

`∩[A085367(n+1), A202679(n+1)]`
-/

namespace A085366.P15894731763899743450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P15894731763899743450

/-! ## A085366.P14560626227981905322

`∩[A024670(n+1), A085367(n+1)]`
-/

namespace A085366.P14560626227981905322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P14560626227981905322

/-! ## A085366.P15804549797757609344

`∩[A085367(n+1), A114090(n+1)]`
-/

namespace A085366.P15804549797757609344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P15804549797757609344

/-! ## A085366.P2001394645989023524

`∩[A004999(n+1), A085367(n+1)]`
-/

namespace A085366.P2001394645989023524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P2001394645989023524

/-! ## A085366.P6072535645720397715

`∩[A051386(n+1), A085367(n+1)]`
-/

namespace A085366.P6072535645720397715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P6072535645720397715

/-! ## A085366.P17865357366250141325

`∩[A085367(n+1), A267686(n+1)]`
-/

namespace A085366.P17865357366250141325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P17865357366250141325

/-! ## A085366.P15587085484348819448

`∩[A003325(n+1), A251728(n+1)]`
-/

namespace A085366.P15587085484348819448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P15587085484348819448

/-! ## A085366.P7352051505639858231

`∩[A004999(n+1), A251728(n+1)]`
-/

namespace A085366.P7352051505639858231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P7352051505639858231

/-! ## A085366.P6168528633214933384

`∩[A024670(n+1), A251728(n+1)]`
-/

namespace A085366.P6168528633214933384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P6168528633214933384

/-! ## A085366.P17814218922509836404

`∩[A051386(n+1), A251728(n+1)]`
-/

namespace A085366.P17814218922509836404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P17814218922509836404

/-! ## A085366.P14337600612227290344

`∩[A114090(n+1), A251728(n+1)]`
-/

namespace A085366.P14337600612227290344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P14337600612227290344

/-! ## A085366.P6253795518795337113

`∩[A202679(n+1), A251728(n+1)]`
-/

namespace A085366.P6253795518795337113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P6253795518795337113

/-! ## A085366.P13108435791169583388

`∩[A251728(n+1), A267686(n+1)]`
-/

namespace A085366.P13108435791169583388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P13108435791169583388

/-! ## A085366.P7256479941764329752

`∩[A251728(n+1), A338667(n+1)]`
-/

namespace A085366.P7256479941764329752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085366.P7256479941764329752

/-! ## A085366.P13034856536946127752

`filter[A085367(n+1), A373973(#)]`
-/

namespace A085366.P13034856536946127752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A085366.P13034856536946127752

/-!
# A085367: Semiprimes that can be expressed as the sum or difference of two cubes: intersection of A001358 and A045980.

The programs for A085367, there is no canonical definition to state claims against.
-/

/-! ## A085367.P45294880722106234

`∩[A001358(n+1), A020894(n+1)]`
-/

namespace A085367.P45294880722106234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P45294880722106234

/-! ## A085367.P11009452083394071142

`∩[A001358(n+1), A020895(n+1)]`
-/

namespace A085367.P11009452083394071142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P11009452083394071142

/-! ## A085367.P6799765563607719074

`∩[A001358(n+1), A045980(n+1)]`
-/

namespace A085367.P6799765563607719074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P6799765563607719074

/-! ## A085367.P18337767814182157701

`∩[A001358(n+1), A293645(n+1)]`
-/

namespace A085367.P18337767814182157701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P18337767814182157701

/-! ## A085367.P6142218215156371826

`∩[A001358(n+1), A307585(n+1)]`
-/

namespace A085367.P6142218215156371826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P6142218215156371826

/-! ## A085367.P11029184534389996655

`filter[A020895(n+1), A064911(#)]`
-/

namespace A085367.P11029184534389996655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085367.P11029184534389996655

/-! ## A085367.P10764137839116890610

`filter[A293645(n+1), A064911(#)]`
-/

namespace A085367.P10764137839116890610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085367.P10764137839116890610

/-! ## A085367.P14222056131980796814

`filter[A307585(n+1), A064911(#)]`
-/

namespace A085367.P14222056131980796814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085367.P14222056131980796814

/-! ## A085367.P2290715962319752438

`filter[A020894(n+2), A064911(#)]`
-/

namespace A085367.P2290715962319752438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085367.P2290715962319752438

/-! ## A085367.P15106169335734697836

`filter[A045980(n+2), A064911(#)]`
-/

namespace A085367.P15106169335734697836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085367.P15106169335734697836

/-! ## A085367.P9627900044311175052

`∩[A020894(n+1), A176540(n+1)]`
-/

namespace A085367.P9627900044311175052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P9627900044311175052

/-! ## A085367.P2557042328291734711

`∩[A020895(n+1), A176540(n+1)]`
-/

namespace A085367.P2557042328291734711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P2557042328291734711

/-! ## A085367.P14141491426815510534

`∩[A020894(n+1), A323644(n+1)]`
-/

namespace A085367.P14141491426815510534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P14141491426815510534

/-! ## A085367.P14619754007650600017

`∩[A020895(n+1), A323644(n+1)]`
-/

namespace A085367.P14619754007650600017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P14619754007650600017

/-! ## A085367.P10016189146890106912

`∩[A020895(n+1), A346041(n+1)]`
-/

namespace A085367.P10016189146890106912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P10016189146890106912

/-! ## A085367.P4003054258610399606

`∩[A293645(n+1), A323644(n+1)]`
-/

namespace A085367.P4003054258610399606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P4003054258610399606

/-! ## A085367.P4298561532320679574

`∩[A293645(n+1), A346041(n+1)]`
-/

namespace A085367.P4298561532320679574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P4298561532320679574

/-! ## A085367.P18103971909515312992

`∩[A020895(n+1), A085155(n+1)]`
-/

namespace A085367.P18103971909515312992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P18103971909515312992

/-! ## A085367.P10025813974388940394

`∩[A020894(n+1), A077135(n+1)]`
-/

namespace A085367.P10025813974388940394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P10025813974388940394

/-! ## A085367.P14456959600459772057

`∩[A020895(n+1), A077135(n+1)]`
-/

namespace A085367.P14456959600459772057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085367.P14456959600459772057

/-!
# A085368: Sum of numerators and denominators of convergents to e.

The programs for A085368, the canonical program `A085368.P7790068879867825108` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085368 has offset 0).

The definition of A085368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007676, A007677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085368.P7790068879867825108

`A007676(n)+A007677(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085368

/-- `A007676(n)+A007677(n)` -/
def P7790068879867825108.Spec : Prop :=
  ∀ n, P7790068879867825108.a n = A085368 n

theorem P7790068879867825108.correct : P7790068879867825108.Spec := by
  intro n
  simp only [A085368]

end A085368

/-! ## A085368.P3036930708434763448

`A113873(n+2)+A007677(n)`
-/

namespace A085368.P3036930708434763448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (n + 2) + A007677 n

end

end A085368.P3036930708434763448

namespace A085368

/-- `A113873(n+2)+A007677(n)` -/
def P3036930708434763448.Spec : Prop :=
  ∀ n, P3036930708434763448.a n = A085368 n

end A085368

/-! ## A085368.P6558971978741150279

`A113874(n+2)+A007676(n)`
-/

namespace A085368.P6558971978741150279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113874 (n + 2) + A007676 n

end

end A085368.P6558971978741150279

namespace A085368

/-- `A113874(n+2)+A007676(n)` -/
def P6558971978741150279.Spec : Prop :=
  ∀ n, P6558971978741150279.a n = A085368 n

theorem P6558971978741150279.correct : P6558971978741150279.Spec := by
  intro n
  simp only [A085368, Nat.add_sub_cancel, A085368.P6558971978741150279.a, A085368.P7790068879867825108.a, A007676, A007676.P3349414848293175676.a, A007677, A007677.P2199356504323934864.a, A113874, A113874.P794801418721017797.a, A005131, A005131.P1677996525373342361.f1, A005131.P1677996525373342361.a, A113873, A113873.P74120000114504862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085368

/-! ## A085368.P4623096585720819091

`A113874(n+2)+A113873(n+2)`
-/

namespace A085368.P4623096585720819091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113874 (n + 2) + A113873 (n + 2)

end

end A085368.P4623096585720819091

namespace A085368

/-- `A113874(n+2)+A113873(n+2)` -/
def P4623096585720819091.Spec : Prop :=
  ∀ n, P4623096585720819091.a n = A085368 n

theorem P4623096585720819091.correct : P4623096585720819091.Spec := by
  intro n
  simp only [A085368, Nat.add_sub_cancel, A085368.P4623096585720819091.a, A085368.P7790068879867825108.a, A007676, A007676.P3349414848293175676.a, A007677, A007677.P2199356504323934864.a, A113873, A113873.P74120000114504862.a, A113874, A113874.P794801418721017797.a, A005131, A005131.P1677996525373342361.f1, A005131.P1677996525373342361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085368

/-!
# A085369: Cutting sequence for 1/e.

The programs for A085369, the canonical program `A085369.P6925270450057404638` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085369 has offset 1).

The definition of A085369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085369.P6925270450057404638

`char[A006594(n+1)-1]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085369

/-- `char[A006594(n+1)-1]` -/
def P6925270450057404638.Spec : Prop :=
  ∀ n, (P6925270450057404638.a n : ℤ) = A085369 (n + 1)

theorem P6925270450057404638.correct : P6925270450057404638.Spec := by
  intro n
  simp only [A085369, Nat.add_sub_cancel]

end A085369

/-! ## A085369.P3568402047301308044

`char[A032634(n+1)+n]`
-/

namespace A085369.P3568402047301308044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085369.P3568402047301308044

namespace A085369

/-- `char[A032634(n+1)+n]` -/
def P3568402047301308044.Spec : Prop :=
  ∀ n, (P3568402047301308044.a n : ℤ) = A085369 (n + 1)

end A085369

/-! ## A085369.P3521719292110388685

`log2(Δ[A292646(n+1)])`
-/

namespace A085369.P3521719292110388685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292646 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A085369.P3521719292110388685

namespace A085369

/-- `log2(Δ[A292646(n+1)])` -/
def P3521719292110388685.Spec : Prop :=
  ∀ n, P3521719292110388685.a n = (A085369 (n + 1) : ℝ)

end A085369

/-! ## A085369.P7571545357951591263

`A001222(Δ[A330180(n+1)])`
-/

namespace A085369.P7571545357951591263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A085369.P7571545357951591263

namespace A085369

/-- `A001222(Δ[A330180(n+1)])` -/
def P7571545357951591263.Spec : Prop :=
  ∀ n, P7571545357951591263.a n = A085369 (n + 1)

end A085369

/-! ## A085369.P13859857585914676537

`A005131(Δ[A330180(n+1)])`
-/

namespace A085369.P13859857585914676537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (f1 (n + 1) - f1 n).toNat

end

end A085369.P13859857585914676537

namespace A085369

/-- `A005131(Δ[A330180(n+1)])` -/
def P13859857585914676537.Spec : Prop :=
  ∀ n, P13859857585914676537.a n = A085369 (n + 1)

end A085369

/-! ## A085369.P15449728853163011039

`A219107(Δ[A330180(n+1)])`
-/

namespace A085369.P15449728853163011039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (f1 (n + 1) - f1 n).toNat

end

end A085369.P15449728853163011039

namespace A085369

/-- `A219107(Δ[A330180(n+1)])` -/
def P15449728853163011039.Spec : Prop :=
  ∀ n, P15449728853163011039.a n = A085369 (n + 1)

end A085369

/-! ## A085369.P15755318486791791885

`A000005(Δ[A330180(n+1)])-1`
-/

namespace A085369.P15755318486791791885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - 1

end

end A085369.P15755318486791791885

namespace A085369

/-- `A000005(Δ[A330180(n+1)])-1` -/
def P15755318486791791885.Spec : Prop :=
  ∀ n, P15755318486791791885.a n = A085369 (n + 1)

end A085369

/-! ## A085369.P16910851043030228657

`A000045(Δ[A330180(n+1)]-1)`
-/

namespace A085369.P16910851043030228657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n - 1).toNat

end

end A085369.P16910851043030228657

namespace A085369

/-- `A000045(Δ[A330180(n+1)]-1)` -/
def P16910851043030228657.Spec : Prop :=
  ∀ n, P16910851043030228657.a n = A085369 (n + 1)

end A085369

/-! ## A085369.P13312415117830397747

`A188082(A338497(n+1))`
-/

namespace A085369.P13312415117830397747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (A338497 (n + 1)).toNat

end

end A085369.P13312415117830397747

namespace A085369

/-- `A188082(A338497(n+1))` -/
def P13312415117830397747.Spec : Prop :=
  ∀ n, P13312415117830397747.a n = A085369 (n + 1)

end A085369

/-! ## A085369.P109268230902374452

`A188068(A338497(n+2))`
-/

namespace A085369.P109268230902374452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A338497 (n + 2)).toNat

end

end A085369.P109268230902374452

namespace A085369

/-- `A188068(A338497(n+2))` -/
def P109268230902374452.Spec : Prop :=
  ∀ n, P109268230902374452.a n = A085369 (n + 1)

end A085369

/-!
# A085370: Niven (or Harshad) numbers that are not divisible by 3.

The programs for A085370, the canonical program `A085370.P6391123702184118906` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085370 has offset 1).

The definition of A085370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085370.P18173515317023627096

`record[A106610(A005349(A080513(n)))]`
-/

namespace A085370.P18173515317023627096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A005349 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P18173515317023627096

namespace A085370

/-- `record[A106610(A005349(A080513(n)))]` -/
def P18173515317023627096.Spec : Prop :=
  ∀ n, P18173515317023627096.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P10814068457639054692

`record[A106610(A005349(A133310(n)))]`
-/

namespace A085370.P10814068457639054692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A005349 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P10814068457639054692

namespace A085370

/-- `record[A106610(A005349(A133310(n)))]` -/
def P10814068457639054692.Spec : Prop :=
  ∀ n, P10814068457639054692.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P8099071692604079606

`A106610(record[A106610(A005349(n+1))])`
-/

namespace A085370.P8099071692604079606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085370.P8099071692604079606

namespace A085370

/-- `A106610(record[A106610(A005349(n+1))])` -/
def P8099071692604079606.Spec : Prop :=
  ∀ n, P8099071692604079606.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P11471096848518628048

`∩[A001651(n+1), A005349(n+1)]`
-/

namespace A085370.P11471096848518628048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085370.P11471096848518628048

namespace A085370

/-- `∩[A001651(n+1), A005349(n+1)]` -/
def P11471096848518628048.Spec : Prop :=
  ∀ n, (P11471096848518628048.a n : ℤ) = A085370 (n + 1)

end A085370

/-! ## A085370.P6391123702184118906

`eq[val(n+1, 3), A070635(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085370

/-- `eq[val(n+1, 3), A070635(n+1)]+1` -/
def P6391123702184118906.Spec : Prop :=
  ∀ n, (P6391123702184118906.a n : ℤ) = A085370 (n + 1)

theorem P6391123702184118906.correct : P6391123702184118906.Spec := by
  intro n
  simp only [A085370, Nat.add_sub_cancel]

end A085370

/-! ## A085370.P8180763360756215959

`record[A038502(A005349(n+1))]`
-/

namespace A085370.P8180763360756215959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P8180763360756215959

namespace A085370

/-- `record[A038502(A005349(n+1))]` -/
def P8180763360756215959.Spec : Prop :=
  ∀ n, P8180763360756215959.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P958289921187822081

`filter[A001651(n+1), A188641(#)]`
-/

namespace A085370.P958289921187822081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A085370.P958289921187822081

namespace A085370

/-- `filter[A001651(n+1), A188641(#)]` -/
def P958289921187822081.Spec : Prop :=
  ∀ n, P958289921187822081.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P15213677728258068303

`lt[n*A070635(A028310(n)), A091684(n)]`
-/

namespace A085370.P15213677728258068303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070635 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085370.P15213677728258068303

namespace A085370

/-- `lt[n*A070635(A028310(n)), A091684(n)]` -/
def P15213677728258068303.Spec : Prop :=
  ∀ n, (P15213677728258068303.a n : ℤ) = A085370 (n + 1)

end A085370

/-! ## A085370.P14586389194930611086

`eq[A001221(A038500(n+1)), A070635(n+1)]+1`
-/

namespace A085370.P14586389194930611086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038500 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A085370.P14586389194930611086

namespace A085370

/-- `eq[A001221(A038500(n+1)), A070635(n+1)]+1` -/
def P14586389194930611086.Spec : Prop :=
  ∀ n, (P14586389194930611086.a n : ℤ) = A085370 (n + 1)

end A085370

/-! ## A085370.P11924039942649403861

`filter[A005349(n+1), A011655(#)]`
-/

namespace A085370.P11924039942649403861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A085370.P11924039942649403861

namespace A085370

/-- `filter[A005349(n+1), A011655(#)]` -/
def P11924039942649403861.Spec : Prop :=
  ∀ n, P11924039942649403861.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P9555946207400816072

`filter[A005349(n+1), A267208(#)]`
-/

namespace A085370.P9555946207400816072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A085370.P9555946207400816072

namespace A085370

/-- `filter[A005349(n+1), A267208(#)]` -/
def P9555946207400816072.Spec : Prop :=
  ∀ n, P9555946207400816072.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P12602847018432733282

`record[A051176(A005349(A005378(n)))]`
-/

namespace A085370.P12602847018432733282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A005349 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P12602847018432733282

namespace A085370

/-- `record[A051176(A005349(A005378(n)))]` -/
def P12602847018432733282.Spec : Prop :=
  ∀ n, P12602847018432733282.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P14333956371959123138

`record[A051176(A005349(A008620(n)))]`
-/

namespace A085370.P14333956371959123138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A005349 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P14333956371959123138

namespace A085370

/-- `record[A051176(A005349(A008620(n)))]` -/
def P14333956371959123138.Spec : Prop :=
  ∀ n, P14333956371959123138.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P16240210066513890239

`record[A051176(A005349(A052938(n)))]`
-/

namespace A085370.P16240210066513890239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A005349 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P16240210066513890239

namespace A085370

/-- `record[A051176(A005349(A052938(n)))]` -/
def P16240210066513890239.Spec : Prop :=
  ∀ n, P16240210066513890239.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P1297915094888531845

`lt[A079978(n), A188641(A028310(n))]`
-/

namespace A085370.P1297915094888531845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085370.P1297915094888531845

namespace A085370

/-- `lt[A079978(n), A188641(A028310(n))]` -/
def P1297915094888531845.Spec : Prop :=
  ∀ n, (P1297915094888531845.a n : ℤ) = A085370 (n + 1)

end A085370

/-! ## A085370.P14355809841508679971

`lt[A079978(n), A188641(A079978(n)+n)]`
-/

namespace A085370.P14355809841508679971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A079978 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085370.P14355809841508679971

namespace A085370

/-- `lt[A079978(n), A188641(A079978(n)+n)]` -/
def P14355809841508679971.Spec : Prop :=
  ∀ n, (P14355809841508679971.a n : ℤ) = A085370 (n + 1)

end A085370

/-! ## A085370.P7967700353804853885

`record[A051176(A005349(n+1)%A055259(n))]`
-/

namespace A085370.P7967700353804853885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.tmod (A005349 (n + 1)) (A055259 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085370.P7967700353804853885

namespace A085370

/-- `record[A051176(A005349(n+1)%A055259(n))]` -/
def P7967700353804853885.Spec : Prop :=
  ∀ n, P7967700353804853885.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P18373569880492194087

`filter[A037915(2*n), A188641(#)]`
-/

namespace A085370.P18373569880492194087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A085370.P18373569880492194087

namespace A085370

/-- `filter[A037915(2*n), A188641(#)]` -/
def P18373569880492194087.Spec : Prop :=
  ∀ n, P18373569880492194087.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P12933263472433794279

`filter[A066530(2*n), A188641(#)]`
-/

namespace A085370.P12933263472433794279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A085370.P12933263472433794279

namespace A085370

/-- `filter[A066530(2*n), A188641(#)]` -/
def P12933263472433794279.Spec : Prop :=
  ∀ n, P12933263472433794279.a n = A085370 (n + 1)

end A085370

/-! ## A085370.P14382648727968969733

`filter[A265428(2*n), A188641(#)]`
-/

namespace A085370.P14382648727968969733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A085370.P14382648727968969733

namespace A085370

/-- `filter[A265428(2*n), A188641(#)]` -/
def P14382648727968969733.Spec : Prop :=
  ∀ n, P14382648727968969733.a n = A085370 (n + 1)

end A085370

/-!
# A085371: Non-Niven (or non-Harshad) numbers that are divisible by 3.

The programs for A085371, the canonical program `A085371.P12296401745651984009` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085371 has offset 1).

The definition of A085371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085371.P4533591008587892360

`∩[3*n, A065877(n+1)]`
-/

namespace A085371.P4533591008587892360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085371.P4533591008587892360

namespace A085371

/-- `∩[3*n, A065877(n+1)]` -/
def P4533591008587892360.Spec : Prop :=
  ∀ n, (P4533591008587892360.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P17214970858212715928

`∩[A065877(n+1), A008486(n)]`
-/

namespace A085371.P17214970858212715928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085371.P17214970858212715928

namespace A085371

/-- `∩[A065877(n+1), A008486(n)]` -/
def P17214970858212715928.Spec : Prop :=
  ∀ n, (P17214970858212715928.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P17672192789455278192

`∩[A065877(n+1), A008585(n)]`
-/

namespace A085371.P17672192789455278192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085371.P17672192789455278192

namespace A085371

/-- `∩[A065877(n+1), A008585(n)]` -/
def P17672192789455278192.Spec : Prop :=
  ∀ n, (P17672192789455278192.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P4706925829510749297

`∩[A065877(n+1), A016789(n)+1]`
-/

namespace A085371.P4706925829510749297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085371.P4706925829510749297

namespace A085371

/-- `∩[A065877(n+1), A016789(n)+1]` -/
def P4706925829510749297.Spec : Prop :=
  ∀ n, (P4706925829510749297.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P14759422063421728298

`∩[A065877(n+1), A204502(n+1)]`
-/

namespace A085371.P14759422063421728298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085371.P14759422063421728298

namespace A085371

/-- `∩[A065877(n+1), A204502(n+1)]` -/
def P14759422063421728298.Spec : Prop :=
  ∀ n, (P14759422063421728298.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P12296401745651984009

`A065877(lt[A065877(n+1)%3, 1]+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085371

/-- `A065877(lt[A065877(n+1)%3, 1]+1)` -/
def P12296401745651984009.Spec : Prop :=
  ∀ n, P12296401745651984009.a n = A085371 (n + 1)

theorem P12296401745651984009.correct : P12296401745651984009.Spec := by
  intro n
  simp only [A085371, Nat.add_sub_cancel]

end A085371

/-! ## A085371.P14918890892494784556

`filter[A065877(n+1), A079978(#)]`
-/

namespace A085371.P14918890892494784556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A085371.P14918890892494784556

namespace A085371

/-- `filter[A065877(n+1), A079978(#)]` -/
def P14918890892494784556.Spec : Prop :=
  ∀ n, P14918890892494784556.a n = A085371 (n + 1)

end A085371

/-! ## A085371.P12760907710825628685

`filter[A065877(n+1), A173857(#)]`
-/

namespace A085371.P12760907710825628685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A085371.P12760907710825628685

namespace A085371

/-- `filter[A065877(n+1), A173857(#)]` -/
def P12760907710825628685.Spec : Prop :=
  ∀ n, P12760907710825628685.a n = A085371 (n + 1)

end A085371

/-! ## A085371.P15281527542231297009

`filter[A065877(n+1), A329680(#)]`
-/

namespace A085371.P15281527542231297009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A085371.P15281527542231297009

namespace A085371

/-- `filter[A065877(n+1), A329680(#)]` -/
def P15281527542231297009.Spec : Prop :=
  ∀ n, P15281527542231297009.a n = A085371 (n + 1)

end A085371

/-! ## A085371.P1694463195073797585

`lt[A347633(n+1), A070635(n+1)]+1`
-/

namespace A085371.P1694463195073797585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085371.P1694463195073797585

namespace A085371

/-- `lt[A347633(n+1), A070635(n+1)]+1` -/
def P1694463195073797585.Spec : Prop :=
  ∀ n, (P1694463195073797585.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P11242077552403721453

`lt[A188641(n+2), A079978(n+2)]+2`
-/

namespace A085371.P11242077552403721453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A085371.P11242077552403721453

namespace A085371

/-- `lt[A188641(n+2), A079978(n+2)]+2` -/
def P11242077552403721453.Spec : Prop :=
  ∀ n, (P11242077552403721453.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P16619824110767535466

`lt[A091684(n), A070635(A028310(n))]`
-/

namespace A085371.P16619824110767535466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085371.P16619824110767535466

namespace A085371

/-- `lt[A091684(n), A070635(A028310(n))]` -/
def P16619824110767535466.Spec : Prop :=
  ∀ n, (P16619824110767535466.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P8411926255066059319

`lt[A188641(A028310(n)), A079978(n)]`
-/

namespace A085371.P8411926255066059319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085371.P8411926255066059319

namespace A085371

/-- `lt[A188641(A028310(n)), A079978(n)]` -/
def P8411926255066059319.Spec : Prop :=
  ∀ n, (P8411926255066059319.a n : ℤ) = A085371 (n + 1)

end A085371

/-! ## A085371.P11986923601054198893

`lt[A091684(2*n+1), A070635(n+2)]+2`
-/

namespace A085371.P11986923601054198893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A085371.P11986923601054198893

namespace A085371

/-- `lt[A091684(2*n+1), A070635(n+2)]+2` -/
def P11986923601054198893.Spec : Prop :=
  ∀ n, (P11986923601054198893.a n : ℤ) = A085371 (n + 1)

end A085371

/-!
# A085372: If n = 0 or 1 then a(n) = 1; if n = 2, 3 or 4 then a(n) = 0; otherwise a(n) = (n+1)*a(n-1)-(n-2)*a(n-2)-(n-5)*a(n-3)+(n-3)*a(n-4).

The programs for A085372, there is no canonical definition to state claims against.
-/

/-! ## A085372.P8283023121024400055

`A011542(or(6, n!))-2`
-/

namespace A085372.P8283023121024400055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (Nat.lor 6 (Nat.factorial n)) - 2

end

end A085372.P8283023121024400055

/-! ## A085372.P2957555994767392473

`4*(A329366(a(n-1)+1)+1)-2` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=2`
-/

namespace A085372.P2957555994767392473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 0, 2] fun n a =>
  4 * (A329366 (a (n - 1) + 1).toNat + 1) - 2

end

end A085372.P2957555994767392473

/-! ## A085372.P9850303942005507361

`A271707(A369733(n))`
-/

namespace A085372.P9850303942005507361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271707 (A369733 n).toNat

end

end A085372.P9850303942005507361

/-! ## A085372.P15327501309718390381

`A271707(A335464(n+1))`
-/

namespace A085372.P15327501309718390381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271707 (A335464 (n + 1)).toNat

end

end A085372.P15327501309718390381

/-!
# A085373: a(n) = binomial(2n+1, n+1)*binomial(n+2, 2).

The programs for A085373, the canonical program `A085373.P10858677917258743458` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085373 has offset 0).

The definition of A085373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+1, n+1)*C(n+2, 2)` (program `A085373.P10858677917258743458`, by `A085373.P10858677917258743458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085373.P10803437188431577307

`A119578(n+1)/2`
-/

namespace A085373.P10803437188431577307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119578 (n + 1) : ℚ) / 2

end

end A085373.P10803437188431577307

namespace A085373

/-- `A119578(n+1)/2` -/
def P10803437188431577307.Spec : Prop :=
  ∀ n, P10803437188431577307.a n = (A085373 n : ℚ)

end A085373

/-! ## A085373.P10858677917258743458

`C(2*n+1, n+1)*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085373

/-- `C(2*n+1, n+1)*C(n+2, 2)` -/
def P10858677917258743458.Spec : Prop :=
  ∀ n, (P10858677917258743458.a n : ℤ) = A085373 n

theorem P10858677917258743458.correct : P10858677917258743458.Spec := by
  intro n
  simp only [A085373]

end A085373

/-! ## A085373.P13540291880295675826

`(2*n+1)*(n+2)*a(n-1)/∑[n]` with `a(0)=1`
-/

namespace A085373.P13540291880295675826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * ((n + 2 : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A085373.P13540291880295675826

namespace A085373

/-- `(2*n+1)*(n+2)*a(n-1)/∑[n]` -/
def P13540291880295675826.Spec : Prop :=
  ∀ n, P13540291880295675826.a n = (A085373 n : ℚ)

end A085373

/-! ## A085373.P14947208972829841803

`∑[n+1]*A001700(n)`
-/

namespace A085373.P14947208972829841803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001700 n

end

end A085373.P14947208972829841803

namespace A085373

/-- `∑[n+1]*A001700(n)` -/
def P14947208972829841803.Spec : Prop :=
  ∀ n, P14947208972829841803.a n = A085373 n

end A085373

/-! ## A085373.P14079901884996683434

`(n+2)/2*A002457(n)`
-/

namespace A085373.P14079901884996683434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002457 n : ℚ)

end

end A085373.P14079901884996683434

namespace A085373

/-- `(n+2)/2*A002457(n)` -/
def P14079901884996683434.Spec : Prop :=
  ∀ n, P14079901884996683434.a n = (A085373 n : ℚ)

end A085373

/-! ## A085373.P12870794959958768267

`(A010763(n)+1)*∑[n+1]`
-/

namespace A085373.P12870794959958768267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010763 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085373.P12870794959958768267

namespace A085373

/-- `(A010763(n)+1)*∑[n+1]` -/
def P12870794959958768267.Spec : Prop :=
  ∀ n, P12870794959958768267.a n = A085373 n

end A085373

/-! ## A085373.P3244737382384010273

`∑[n+1]*A088218(n+1)`
-/

namespace A085373.P3244737382384010273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A088218 (n + 1)

end

end A085373.P3244737382384010273

namespace A085373

/-- `∑[n+1]*A088218(n+1)` -/
def P3244737382384010273.Spec : Prop :=
  ∀ n, P3244737382384010273.a n = A085373 n

end A085373

/-! ## A085373.P9613769987459482546

`(n+1)/2*A097070(n+2)`
-/

namespace A085373.P9613769987459482546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A097070 (n + 2) : ℚ)

end

end A085373.P9613769987459482546

namespace A085373

/-- `(n+1)/2*A097070(n+2)` -/
def P9613769987459482546.Spec : Prop :=
  ∀ n, P9613769987459482546.a n = (A085373 n : ℚ)

end A085373

/-! ## A085373.P9457812032924430381

`A000108(n)*∑[∑[6*n+1]]`
-/

namespace A085373.P9457812032924430381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085373.P9457812032924430381

namespace A085373

/-- `A000108(n)*∑[∑[6*n+1]]` -/
def P9457812032924430381.Spec : Prop :=
  ∀ n, P9457812032924430381.a n = A085373 n

end A085373

/-! ## A085373.P8624957160412916359

`∑[n+1]*A001405(2*n+1)`
-/

namespace A085373.P8624957160412916359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 (2 * n + 1)

end

end A085373.P8624957160412916359

namespace A085373

/-- `∑[n+1]*A001405(2*n+1)` -/
def P8624957160412916359.Spec : Prop :=
  ∀ n, P8624957160412916359.a n = A085373 n

end A085373

/-! ## A085373.P6840480991318989190

`∑[n+1]*A002661(2*n+1)`
-/

namespace A085373.P6840480991318989190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002661 (2 * n + 1)

end

end A085373.P6840480991318989190

namespace A085373

/-- `∑[n+1]*A002661(2*n+1)` -/
def P6840480991318989190.Spec : Prop :=
  ∀ n, P6840480991318989190.a n = A085373 n

end A085373

/-! ## A085373.P12200095981714482134

`∑[n+1]*A037952(2*n+1)`
-/

namespace A085373.P12200095981714482134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A037952 (2 * n + 1)

end

end A085373.P12200095981714482134

namespace A085373

/-- `∑[n+1]*A037952(2*n+1)` -/
def P12200095981714482134.Spec : Prop :=
  ∀ n, P12200095981714482134.a n = A085373 n

end A085373

/-! ## A085373.P2885868126043445320

`∑[n+1]*A057977(2*n+1)`
-/

namespace A085373.P2885868126043445320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057977 (2 * n + 1)

end

end A085373.P2885868126043445320

namespace A085373

/-- `∑[n+1]*A057977(2*n+1)` -/
def P2885868126043445320.Spec : Prop :=
  ∀ n, P2885868126043445320.a n = A085373 n

end A085373

/-! ## A085373.P5290568635016743320

`∑[n+1]*A063549(2*n+1)`
-/

namespace A085373.P5290568635016743320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A063549 (2 * n + 1)

end

end A085373.P5290568635016743320

namespace A085373

/-- `∑[n+1]*A063549(2*n+1)` -/
def P5290568635016743320.Spec : Prop :=
  ∀ n, P5290568635016743320.a n = A085373 n

end A085373

/-! ## A085373.P7848280620017534683

`∑[n+1]*A138364(2*n+1)`
-/

namespace A085373.P7848280620017534683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A138364 (2 * n + 1)

end

end A085373.P7848280620017534683

namespace A085373

/-- `∑[n+1]*A138364(2*n+1)` -/
def P7848280620017534683.Spec : Prop :=
  ∀ n, P7848280620017534683.a n = A085373 n

end A085373

/-! ## A085373.P17018535483903424984

`∑[n+1]*A212303(2*n+1)`
-/

namespace A085373.P17018535483903424984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A212303 (2 * n + 1)

end

end A085373.P17018535483903424984

namespace A085373

/-- `∑[n+1]*A212303(2*n+1)` -/
def P17018535483903424984.Spec : Prop :=
  ∀ n, P17018535483903424984.a n = A085373 n

end A085373

/-! ## A085373.P1105251209734433517

`A000984(n+1)/2*∑[n+1]`
-/

namespace A085373.P1105251209734433517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A085373.P1105251209734433517

namespace A085373

/-- `A000984(n+1)/2*∑[n+1]` -/
def P1105251209734433517.Spec : Prop :=
  ∀ n, P1105251209734433517.a n = (A085373 n : ℚ)

end A085373

/-! ## A085373.P3502987019760129110

`A051133(n)+A002457(n)`
-/

namespace A085373.P3502987019760129110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051133 n + A002457 n

end

end A085373.P3502987019760129110

namespace A085373

/-- `A051133(n)+A002457(n)` -/
def P3502987019760129110.Spec : Prop :=
  ∀ n, P3502987019760129110.a n = A085373 n

end A085373

/-! ## A085373.P11730549052543248450

`Δ[A024718(n)]*A000217(n+1)`
-/

namespace A085373.P11730549052543248450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 1)

end

end A085373.P11730549052543248450

namespace A085373

/-- `Δ[A024718(n)]*A000217(n+1)` -/
def P11730549052543248450.Spec : Prop :=
  ∀ n, P11730549052543248450.a n = A085373 n

end A085373

/-! ## A085373.P6013028316786888812

`A088218(n+1)*A179865(n+2)`
-/

namespace A085373.P6013028316786888812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) * A179865 (n + 2)

end

end A085373.P6013028316786888812

namespace A085373

/-- `A088218(n+1)*A179865(n+2)` -/
def P6013028316786888812.Spec : Prop :=
  ∀ n, P6013028316786888812.a n = A085373 n

end A085373

/-!
# A085374: a(n) = binomial(2n+1, n+1)*binomial(n+3, 3).

The programs for A085374, the canonical program `A085374.P1484823377386656750` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085374 has offset 0).

The definition of A085374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+1, n+1)*C(n+3, 3)` (program `A085374.P1484823377386656750`, by `A085374.P1484823377386656750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085374.P8964828129887748589

`A001700(n)*A000292(n+1)`
-/

namespace A085374.P8964828129887748589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A000292 (n + 1)

end

end A085374.P8964828129887748589

namespace A085374

/-- `A001700(n)*A000292(n+1)` -/
def P8964828129887748589.Spec : Prop :=
  ∀ n, P8964828129887748589.a n = A085374 n

theorem P8964828129887748589.correct : P8964828129887748589.Spec := by
  intro n
  simp only [A085374, Nat.add_sub_cancel, A085374.P8964828129887748589.a, A085374.P1484823377386656750.a, A000292, A000292.P18322089543142633594.a, A001700, A001700.P11212155124506223364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085374

/-! ## A085374.P4308827537738728943

`A000292(n+1)*A000984(n+1)/2`
-/

namespace A085374.P4308827537738728943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A000984 (n + 1) : ℚ) / 2

end

end A085374.P4308827537738728943

namespace A085374

/-- `A000292(n+1)*A000984(n+1)/2` -/
def P4308827537738728943.Spec : Prop :=
  ∀ n, P4308827537738728943.a n = (A085374 n : ℚ)

end A085374

/-! ## A085374.P1484823377386656750

`C(2*n+1, n+1)*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085374

/-- `C(2*n+1, n+1)*C(n+3, 3)` -/
def P1484823377386656750.Spec : Prop :=
  ∀ n, (P1484823377386656750.a n : ℤ) = A085374 n

theorem P1484823377386656750.correct : P1484823377386656750.Spec := by
  intro n
  simp only [A085374]

end A085374

/-! ## A085374.P2728929311400827155

`(2*n+1)*(n+3)*a(n-1)/∑[n]` with `a(0)=1`
-/

namespace A085374.P2728929311400827155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * ((n + 3 : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A085374.P2728929311400827155

namespace A085374

/-- `(2*n+1)*(n+3)*a(n-1)/∑[n]` -/
def P2728929311400827155.Spec : Prop :=
  ∀ n, P2728929311400827155.a n = (A085374 n : ℚ)

end A085374

/-! ## A085374.P5566293058032835485

`∑[∑[n+1]]*A088218(n+1)`
-/

namespace A085374.P5566293058032835485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A088218 (n + 1)

end

end A085374.P5566293058032835485

namespace A085374

/-- `∑[∑[n+1]]*A088218(n+1)` -/
def P5566293058032835485.Spec : Prop :=
  ∀ n, P5566293058032835485.a n = A085374 n

end A085374

/-! ## A085374.P2239571320931607203

`A000108(n+1)*∑[∑[(n+1)²]]`
-/

namespace A085374.P2239571320931607203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085374.P2239571320931607203

namespace A085374

/-- `A000108(n+1)*∑[∑[(n+1)²]]` -/
def P2239571320931607203.Spec : Prop :=
  ∀ n, P2239571320931607203.a n = A085374 n

end A085374

/-! ## A085374.P3791156378986728217

`∑[∑[n+1]]*A001405(2*n+1)`
-/

namespace A085374.P3791156378986728217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 (2 * n + 1)

end

end A085374.P3791156378986728217

namespace A085374

/-- `∑[∑[n+1]]*A001405(2*n+1)` -/
def P3791156378986728217.Spec : Prop :=
  ∀ n, P3791156378986728217.a n = A085374 n

end A085374

/-! ## A085374.P7011936868681006215

`∑[∑[n+1]]*A037952(2*n+1)`
-/

namespace A085374.P7011936868681006215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A037952 (2 * n + 1)

end

end A085374.P7011936868681006215

namespace A085374

/-- `∑[∑[n+1]]*A037952(2*n+1)` -/
def P7011936868681006215.Spec : Prop :=
  ∀ n, P7011936868681006215.a n = A085374 n

end A085374

/-! ## A085374.P17653916754721307020

`A001700(n)*A008804(2*n)`
-/

namespace A085374.P17653916754721307020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A008804 (2 * n)

end

end A085374.P17653916754721307020

namespace A085374

/-- `A001700(n)*A008804(2*n)` -/
def P17653916754721307020.Spec : Prop :=
  ∀ n, P17653916754721307020.a n = A085374 n

end A085374

/-! ## A085374.P13837788366183225313

`∑[A000217(n+1)]*A001700(n)`
-/

namespace A085374.P13837788366183225313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001700 n

end

end A085374.P13837788366183225313

namespace A085374

/-- `∑[A000217(n+1)]*A001700(n)` -/
def P13837788366183225313.Spec : Prop :=
  ∀ n, P13837788366183225313.a n = A085374 n

end A085374

/-! ## A085374.P17618569688677187420

`A001700(n)*A005232(2*n+1)`
-/

namespace A085374.P17618569688677187420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A005232 (2 * n + 1)

end

end A085374.P17618569688677187420

namespace A085374

/-- `A001700(n)*A005232(2*n+1)` -/
def P17618569688677187420.Spec : Prop :=
  ∀ n, P17618569688677187420.a n = A085374 n

end A085374

/-! ## A085374.P196392562532595617

`A002661(2*n+1)*A008804(2*n)`
-/

namespace A085374.P196392562532595617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (2 * n + 1) * A008804 (2 * n)

end

end A085374.P196392562532595617

namespace A085374

/-- `A002661(2*n+1)*A008804(2*n)` -/
def P196392562532595617.Spec : Prop :=
  ∀ n, P196392562532595617.a n = A085374 n

end A085374

/-! ## A085374.P9010264880900202970

`A001405(2*n+1)*A058187(2*n)`
-/

namespace A085374.P9010264880900202970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) * A058187 (2 * n)

end

end A085374.P9010264880900202970

namespace A085374

/-- `A001405(2*n+1)*A058187(2*n)` -/
def P9010264880900202970.Spec : Prop :=
  ∀ n, P9010264880900202970.a n = A085374 n

end A085374

/-! ## A085374.P15501471366826019618

`(2*n+1)*A000108(n)*A000292(n+1)`
-/

namespace A085374.P15501471366826019618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n * A000292 (n + 1)

end

end A085374.P15501471366826019618

namespace A085374

/-- `(2*n+1)*A000108(n)*A000292(n+1)` -/
def P15501471366826019618.Spec : Prop :=
  ∀ n, P15501471366826019618.a n = A085374 n

end A085374

/-! ## A085374.P14361626746696130003

`A000984(n+1)/A002378(n+1)*A004302(n+1)`
-/

namespace A085374.P14361626746696130003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ) * (A004302 (n + 1) : ℚ)

end

end A085374.P14361626746696130003

namespace A085374

/-- `A000984(n+1)/A002378(n+1)*A004302(n+1)` -/
def P14361626746696130003.Spec : Prop :=
  ∀ n, P14361626746696130003.a n = (A085374 n : ℚ)

end A085374

/-! ## A085374.P1417349716132236000

`A001791(n+1)/A007054(n+1)*A097070(n+2)`
-/

namespace A085374.P1417349716132236000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) : ℚ) / (A007054 (n + 1) : ℚ) * (A097070 (n + 2) : ℚ)

end

end A085374.P1417349716132236000

namespace A085374

/-- `A001791(n+1)/A007054(n+1)*A097070(n+2)` -/
def P1417349716132236000.Spec : Prop :=
  ∀ n, P1417349716132236000.a n = (A085374 n : ℚ)

end A085374

/-! ## A085374.P666133819437915730

`A000108(n)*A005408(n)*A294085(A005408(n))`
-/

namespace A085374.P666133819437915730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005408 n * A294085 (A005408 n).toNat

end

end A085374.P666133819437915730

namespace A085374

/-- `A000108(n)*A005408(n)*A294085(A005408(n))` -/
def P666133819437915730.Spec : Prop :=
  ∀ n, P666133819437915730.a n = A085374 n

end A085374

/-! ## A085374.P10802712259460831668

`A189769(n+1)/2`
-/

namespace A085374.P10802712259460831668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189769 (n + 1) : ℚ) / 2

end

end A085374.P10802712259460831668

namespace A085374

/-- `A189769(n+1)/2` -/
def P10802712259460831668.Spec : Prop :=
  ∀ n, P10802712259460831668.a n = (A085374 n : ℚ)

theorem P10802712259460831668.correct : P10802712259460831668.Spec := by
  intro n
  simp only [A085374, Nat.add_sub_cancel, A085374.P10802712259460831668.a, A085374.P1484823377386656750.a, A189769, A189769.P5701703840364148688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085374

/-! ## A085374.P17100492231517588923

`A171814(A167614(n+2))`
-/

namespace A085374.P17100492231517588923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171814 (A167614 (n + 2)).toNat

end

end A085374.P17100492231517588923

namespace A085374

/-- `A171814(A167614(n+2))` -/
def P17100492231517588923.Spec : Prop :=
  ∀ n, P17100492231517588923.a n = A085374 n

end A085374

/-!
# A085375: a(n) = binomial(2*n+1, n+1)*binomial(n+4, 4).

The programs for A085375, the canonical program `A085375.P5764846782788209036` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085375 has offset 0).

The definition of A085375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+1, n+1)*C(n+4, 4)` (program `A085375.P5764846782788209036`, by `A085375.P5764846782788209036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085375.P5764846782788209036

`C(2*n+1, n+1)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085375

/-- `C(2*n+1, n+1)*C(n+4, 4)` -/
def P5764846782788209036.Spec : Prop :=
  ∀ n, (P5764846782788209036.a n : ℤ) = A085375 n

theorem P5764846782788209036.correct : P5764846782788209036.Spec := by
  intro n
  simp only [A085375]

end A085375

/-! ## A085375.P5004604543184385417

`A189770(n+1)/2`
-/

namespace A085375.P5004604543184385417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189770 (n + 1) : ℚ) / 2

end

end A085375.P5004604543184385417

namespace A085375

/-- `A189770(n+1)/2` -/
def P5004604543184385417.Spec : Prop :=
  ∀ n, P5004604543184385417.a n = (A085375 n : ℚ)

theorem P5004604543184385417.correct : P5004604543184385417.Spec := by
  intro n
  simp only [A085375, Nat.add_sub_cancel, A085375.P5004604543184385417.a, A085375.P5764846782788209036.a, A189770, A189770.P292981471477749817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085375

/-! ## A085375.P9631747596755942239

`∑[∑[∑[n+1]]]*A001700(n)`
-/

namespace A085375.P9631747596755942239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001700 n

end

end A085375.P9631747596755942239

namespace A085375

/-- `∑[∑[∑[n+1]]]*A001700(n)` -/
def P9631747596755942239.Spec : Prop :=
  ∀ n, P9631747596755942239.a n = A085375 n

end A085375

/-! ## A085375.P18076181836539659228

`∑[∑[∑[n+1]]]*A088218(n+1)`
-/

namespace A085375.P18076181836539659228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A088218 (n + 1)

end

end A085375.P18076181836539659228

namespace A085375

/-- `∑[∑[∑[n+1]]]*A088218(n+1)` -/
def P18076181836539659228.Spec : Prop :=
  ∀ n, P18076181836539659228.a n = A085375 n

end A085375

/-! ## A085375.P1733663587983587169

`∑[∑[∑[n+1]]]*A001405(2*n+1)`
-/

namespace A085375.P1733663587983587169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 (2 * n + 1)

end

end A085375.P1733663587983587169

namespace A085375

/-- `∑[∑[∑[n+1]]]*A001405(2*n+1)` -/
def P1733663587983587169.Spec : Prop :=
  ∀ n, P1733663587983587169.a n = A085375 n

end A085375

/-! ## A085375.P6658523262190435703

`∑[∑[∑[n+1]]]*Δ[n²]*A000108(n)`
-/

namespace A085375.P6658523262190435703
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f4 (n + 1) : ℤ) - (f4 n : ℤ)) * A000108 n

end

end A085375.P6658523262190435703

namespace A085375

/-- `∑[∑[∑[n+1]]]*Δ[n²]*A000108(n)` -/
def P6658523262190435703.Spec : Prop :=
  ∀ n, P6658523262190435703.a n = A085375 n

end A085375

/-! ## A085375.P12398258648515017269

`A000108(n)*A051880(n)`
-/

namespace A085375.P12398258648515017269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A051880 n

end

end A085375.P12398258648515017269

namespace A085375

/-- `A000108(n)*A051880(n)` -/
def P12398258648515017269.Spec : Prop :=
  ∀ n, P12398258648515017269.a n = A085375 n

end A085375

/-! ## A085375.P15362404223719214998

`A006470(n+1)/2*record[A099363(n)]`
-/

namespace A085375.P15362404223719214998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006470 (n + 1) : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A085375.P15362404223719214998

namespace A085375

/-- `A006470(n+1)/2*record[A099363(n)]` -/
def P15362404223719214998.Spec : Prop :=
  ∀ n, P15362404223719214998.a n = (A085375 n : ℚ)

end A085375

/-! ## A085375.P14564099694855620019

`A006470(n+1)/2*record[A129996(n)]`
-/

namespace A085375.P14564099694855620019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129996 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006470 (n + 1) : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A085375.P14564099694855620019

namespace A085375

/-- `A006470(n+1)/2*record[A129996(n)]` -/
def P14564099694855620019.Spec : Prop :=
  ∀ n, P14564099694855620019.a n = (A085375 n : ℚ)

end A085375

/-! ## A085375.P5800346377458159323

`(2*n+1)*A000108(n)*A000332(n+4)`
-/

namespace A085375.P5800346377458159323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n * A000332 (n + 4)

end

end A085375.P5800346377458159323

namespace A085375

/-- `(2*n+1)*A000108(n)*A000332(n+4)` -/
def P5800346377458159323.Spec : Prop :=
  ∀ n, P5800346377458159323.a n = A085375 n

end A085375

/-! ## A085375.P11875642931652364044

`(2*n+1)*A000108(n)*A027800(n)/(n+1)`
-/

namespace A085375.P11875642931652364044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A000108 n : ℚ) * ((A027800 n : ℚ) / (n + 1 : ℚ))

end

end A085375.P11875642931652364044

namespace A085375

/-- `(2*n+1)*A000108(n)*A027800(n)/(n+1)` -/
def P11875642931652364044.Spec : Prop :=
  ∀ n, P11875642931652364044.a n = (A085375 n : ℚ)

end A085375

/-! ## A085375.P15162544499471330214

`A002457(n)/A002697(n+1)*A040075(n)`
-/

namespace A085375.P15162544499471330214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n : ℚ) / (A002697 (n + 1) : ℚ) * (A040075 n : ℚ)

end

end A085375.P15162544499471330214

namespace A085375

/-- `A002457(n)/A002697(n+1)*A040075(n)` -/
def P15162544499471330214.Spec : Prop :=
  ∀ n, P15162544499471330214.a n = (A085375 n : ℚ)

end A085375

/-! ## A085375.P10024975563636896688

`C(2*n+1, n)*∑[C(n+3, 3)]`
-/

namespace A085375.P10024975563636896688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085375.P10024975563636896688

namespace A085375

/-- `C(2*n+1, n)*∑[C(n+3, 3)]` -/
def P10024975563636896688.Spec : Prop :=
  ∀ n, (P10024975563636896688.a n : ℤ) = A085375 n

end A085375

/-!
# A085376: Ratio-dependent insertion sequence I(0.36704) (see the link below).

The programs for A085376, the canonical program `A085376.P7463115759885819397` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085376 has offset 1).

The definition of A085376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085376.P7463115759885819397

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=30`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085376

/-- `10*a(n-2)-a(n-4)` -/
def P7463115759885819397.Spec : Prop :=
  ∀ n, P7463115759885819397.a n = A085376 (n + 1)

theorem P7463115759885819397.correct : P7463115759885819397.Spec := by
  intro n
  simp only [A085376, Nat.add_sub_cancel]

end A085376

/-! ## A085376.P14728771012357814311

`∑[A129445(n+1)]`
-/

namespace A085376.P14728771012357814311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085376.P14728771012357814311

namespace A085376

/-- `∑[A129445(n+1)]` -/
def P14728771012357814311.Spec : Prop :=
  ∀ n, P14728771012357814311.a n = A085376 (n + 1)

end A085376

/-! ## A085376.P3023585133266456654

`A080873(n+1)+A080873(n+1)-A080874(n)`
-/

namespace A085376.P3023585133266456654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1) + (A080873 (n + 1) - A080874 n)

end

end A085376.P3023585133266456654

namespace A085376

/-- `A080873(n+1)+A080873(n+1)-A080874(n)` -/
def P3023585133266456654.Spec : Prop :=
  ∀ n, P3023585133266456654.a n = A085376 (n + 1)

end A085376

/-! ## A085376.P16961349796131503268

`∑[record[A129445(A020986(n))]]`
-/

namespace A085376.P16961349796131503268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085376.P16961349796131503268

namespace A085376

/-- `∑[record[A129445(A020986(n))]]` -/
def P16961349796131503268.Spec : Prop :=
  ∀ n, P16961349796131503268.a n = A085376 (n + 1)

end A085376

/-! ## A085376.P586319046312103428

`∑[record[A129445(A028920(n))]]`
-/

namespace A085376.P586319046312103428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085376.P586319046312103428

namespace A085376

/-- `∑[record[A129445(A028920(n))]]` -/
def P586319046312103428.Spec : Prop :=
  ∀ n, P586319046312103428.a n = A085376 (n + 1)

end A085376

/-! ## A085376.P12395027753442758041

`∑[A080873(2*n)]/A080873(n)`
-/

namespace A085376.P12395027753442758041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A080873 n : ℚ)

end

end A085376.P12395027753442758041

namespace A085376

/-- `∑[A080873(2*n)]/A080873(n)` -/
def P12395027753442758041.Spec : Prop :=
  ∀ n, P12395027753442758041.a n = (A085376 (n + 1) : ℚ)

end A085376

/-! ## A085376.P11042132114589837028

`∑[sqrt(A249483(n+1))]`
-/

namespace A085376.P11042132114589837028
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A249483 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085376.P11042132114589837028

namespace A085376

/-- `∑[sqrt(A249483(n+1))]` -/
def P11042132114589837028.Spec : Prop :=
  ∀ n, P11042132114589837028.a n = (A085376 (n + 1) : ℝ)

end A085376

/-! ## A085376.P15102165150243279958

`A132596(n+1)/(A233450(n+2)+A129444(n+2))`
-/

namespace A085376.P15102165150243279958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 (n + 1) : ℚ) / (A233450 (n + 2) + A129444 (n + 2) : ℚ)

end

end A085376.P15102165150243279958

namespace A085376

/-- `A132596(n+1)/(A233450(n+2)+A129444(n+2))` -/
def P15102165150243279958.Spec : Prop :=
  ∀ n, P15102165150243279958.a n = (A085376 (n + 1) : ℚ)

end A085376

/-! ## A085376.P11997260355763331190

`A132596(n+1)/gcd(A122652(n+1), A132596(n+1))`
-/

namespace A085376.P11997260355763331190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 (n + 1) : ℚ) / (Int.gcd (A122652 (n + 1)) (A132596 (n + 1)) : ℚ)

end

end A085376.P11997260355763331190

namespace A085376

/-- `A132596(n+1)/gcd(A122652(n+1), A132596(n+1))` -/
def P11997260355763331190.Spec : Prop :=
  ∀ n, P11997260355763331190.a n = (A085376 (n + 1) : ℚ)

end A085376

/-!
# A085377: a(n) = 15*n^2 + 13*n^3.

The programs for A085377, the canonical program `A085377.P7183263626230347869` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085377 has offset 0).

The definition of A085377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²+13*n^3` (program `A085377.P7183263626230347869`, by `A085377.P7183263626230347869.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085377.P7183263626230347869

`15*n²+13*n^3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085377

/-- `15*n²+13*n^3` -/
def P7183263626230347869.Spec : Prop :=
  ∀ n, (P7183263626230347869.a n : ℤ) = A085377 n

theorem P7183263626230347869.correct : P7183263626230347869.Spec := by
  intro n
  simp only [A085377]

end A085377

/-! ## A085377.P12391818102045541504

`(13*n+15)*A000290(n)`
-/

namespace A085377.P12391818102045541504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n + 15 : ℤ) * A000290 n

end

end A085377.P12391818102045541504

namespace A085377

/-- `(13*n+15)*A000290(n)` -/
def P12391818102045541504.Spec : Prop :=
  ∀ n, P12391818102045541504.a n = A085377 n

theorem P12391818102045541504.correct : P12391818102045541504.Spec := by
  intro n
  simp only [A085377, Nat.add_sub_cancel, A085377.P12391818102045541504.a, A085377.P7183263626230347869.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085377

/-! ## A085377.P8351731983661199234

`n²*A153080(n+1)`
-/

namespace A085377.P8351731983661199234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A153080 (n + 1)

end

end A085377.P8351731983661199234

namespace A085377

/-- `n²*A153080(n+1)` -/
def P8351731983661199234.Spec : Prop :=
  ∀ n, P8351731983661199234.a n = A085377 n

theorem P8351731983661199234.correct : P8351731983661199234.Spec := by
  intro n
  simp only [A085377, Nat.add_sub_cancel, A085377.P8351731983661199234.a, A085377.P7183263626230347869.a, A153080, A153080.P12698486162711412259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085377

/-! ## A085377.P9653592326904768968

`(A017545(n+1)+n+1)*n²`
-/

namespace A085377.P9653592326904768968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017545 (n + 1) + (n + 1 : ℤ)) * (n ^ 2 : ℤ)

end

end A085377.P9653592326904768968

namespace A085377

/-- `(A017545(n+1)+n+1)*n²` -/
def P9653592326904768968.Spec : Prop :=
  ∀ n, P9653592326904768968.a n = A085377 n

theorem P9653592326904768968.correct : P9653592326904768968.Spec := by
  intro n
  simp only [A085377, Nat.add_sub_cancel, A085377.P9653592326904768968.a, A085377.P7183263626230347869.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085377

/-! ## A085377.P6565753460717286550

`n²*Δ[A226488(n+1)]`
-/

namespace A085377.P6565753460717286550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A085377.P6565753460717286550

namespace A085377

/-- `n²*Δ[A226488(n+1)]` -/
def P6565753460717286550.Spec : Prop :=
  ∀ n, P6565753460717286550.a n = A085377 n

end A085377

/-! ## A085377.P13059287038408649423

`n²*A212160(2*(n+1))`
-/

namespace A085377.P13059287038408649423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A212160 (2 * (n + 1))

end

end A085377.P13059287038408649423

namespace A085377

/-- `n²*A212160(2*(n+1))` -/
def P13059287038408649423.Spec : Prop :=
  ∀ n, P13059287038408649423.a n = A085377 n

end A085377

/-! ## A085377.P3142105813251021609

`(A112653(A002378(n))+n)*2*n`
-/

namespace A085377.P3142105813251021609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112653 (A002378 n).toNat + (n : ℤ)) * (2 * n : ℤ)

end

end A085377.P3142105813251021609

namespace A085377

/-- `(A112653(A002378(n))+n)*2*n` -/
def P3142105813251021609.Spec : Prop :=
  ∀ n, P3142105813251021609.a n = A085377 n

end A085377

/-!
# A085378: Difference between primes p and the largest prime divisor of p-1.

The programs for A085378, the canonical program `A085378.P11058919094667362932` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085378 has offset 3).

The definition of A085378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085378.P11058919094667362932

`A000040(n+3)-A023503(n+3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085378

/-- `A000040(n+3)-A023503(n+3)` -/
def P11058919094667362932.Spec : Prop :=
  ∀ n, P11058919094667362932.a n = A085378 (n + 3)

theorem P11058919094667362932.correct : P11058919094667362932.Spec := by
  intro n
  simp only [A085378, Nat.add_sub_cancel]

end A085378

/-! ## A085378.P17879859378414705973

`A065091(n+2)-A023503(n+3)`
-/

namespace A085378.P17879859378414705973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A023503 (n + 3)

end

end A085378.P17879859378414705973

namespace A085378

/-- `A065091(n+2)-A023503(n+3)` -/
def P17879859378414705973.Spec : Prop :=
  ∀ n, P17879859378414705973.a n = A085378 (n + 3)

theorem P17879859378414705973.correct : P17879859378414705973.Spec := by
  intro n
  simp only [A085378, Nat.add_sub_cancel, A085378.P17879859378414705973.a, A085378.P11058919094667362932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023503, A023503.P1741513283774222757.a, A065091, A065091.P6971844946592549357.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085378

/-! ## A085378.P7049385117731869208

`A085382(n+3)-A023503(n+3)-A023503(n+3)`
-/

namespace A085378.P7049385117731869208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085382 (n + 3) - A023503 (n + 3) - A023503 (n + 3)

end

end A085378.P7049385117731869208

namespace A085378

/-- `A085382(n+3)-A023503(n+3)-A023503(n+3)` -/
def P7049385117731869208.Spec : Prop :=
  ∀ n, P7049385117731869208.a n = A085378 (n + 3)

theorem P7049385117731869208.correct : P7049385117731869208.Spec := by
  intro n
  simp only [A085378, Nat.add_sub_cancel, A085378.P7049385117731869208.a, A085378.P11058919094667362932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023503, A023503.P1741513283774222757.a, A085382, A085382.P1988162494212330199.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A065091, A065091.P6971844946592549357.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085378

/-! ## A085378.P15569705246570232575

`A070819(n+3)+1`
-/

namespace A085378.P15569705246570232575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 3) + 1

end

end A085378.P15569705246570232575

namespace A085378

/-- `A070819(n+3)+1` -/
def P15569705246570232575.Spec : Prop :=
  ∀ n, P15569705246570232575.a n = A085378 (n + 3)

end A085378

/-! ## A085378.P1146232078952978552

`A008578(n+4)-A023503(n+3)`
-/

namespace A085378.P1146232078952978552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) - A023503 (n + 3)

end

end A085378.P1146232078952978552

namespace A085378

/-- `A008578(n+4)-A023503(n+3)` -/
def P1146232078952978552.Spec : Prop :=
  ∀ n, P1146232078952978552.a n = A085378 (n + 3)

end A085378

/-! ## A085378.P4249572111349584410

`A070812(p?[2*n+5])+1`
-/

namespace A085378.P4249572111349584410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A085378.P4249572111349584410

namespace A085378

/-- `A070812(p?[2*n+5])+1` -/
def P4249572111349584410.Spec : Prop :=
  ∀ n, P4249572111349584410.a n = A085378 (n + 3)

end A085378

/-! ## A085378.P14349245219553101601

`A070221(A165972(n+2))`
-/

namespace A085378.P14349245219553101601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070221 (A165972 (n + 2)).toNat

end

end A085378.P14349245219553101601

namespace A085378

/-- `A070221(A165972(n+2))` -/
def P14349245219553101601.Spec : Prop :=
  ∀ n, P14349245219553101601.a n = A085378 (n + 3)

end A085378

/-! ## A085378.P16078984156644138936

`A070221(A006093(n+3))`
-/

namespace A085378.P16078984156644138936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070221 (A006093 (n + 3)).toNat

end

end A085378.P16078984156644138936

namespace A085378

/-- `A070221(A006093(n+3))` -/
def P16078984156644138936.Spec : Prop :=
  ∀ n, P16078984156644138936.a n = A085378 (n + 3)

end A085378

/-! ## A085378.P2674610965213281633

`A070812(A065091(n+2))+1`
-/

namespace A085378.P2674610965213281633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (A065091 (n + 2)).toNat + 1

end

end A085378.P2674610965213281633

namespace A085378

/-- `A070812(A065091(n+2))+1` -/
def P2674610965213281633.Spec : Prop :=
  ∀ n, P2674610965213281633.a n = A085378 (n + 3)

end A085378

/-! ## A085378.P12428991011928558413

`A070812(A000040(n+3))+1`
-/

namespace A085378.P12428991011928558413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (A000040 (n + 3)).toNat + 1

end

end A085378.P12428991011928558413

namespace A085378

/-- `A070812(A000040(n+3))+1` -/
def P12428991011928558413.Spec : Prop :=
  ∀ n, P12428991011928558413.a n = A085378 (n + 3)

end A085378

/-!
# A085379: Greatest prime as sum of distinct divisors of n.

The programs for A085379, there is no canonical definition to state claims against.
-/

/-! ## A085379.P6605973908901926179

`A070801(or(2, A010894(n))+n)`
-/

namespace A085379.P6605973908901926179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (Int.lor 2 (A010894 (n + 21)) + (n : ℤ)).toNat

end

end A085379.P6605973908901926179

/-! ## A085379.P7308893258258112004

`A070801(A085380(n+1)%A106502(3*(n+1)))`
-/

namespace A085379.P7308893258258112004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (Int.tmod (A085380 (n + 1)) (A106502 (3 * (n + 1)))).toNat

end

end A085379.P7308893258258112004

/-!
# A085380: Numbers k such that (greatest prime as sum of distinct divisors of k) = (greatest prime not greater sum of divisors of k).

The programs for A085380, there is no canonical definition to state claims against.
-/

/-! ## A085380.P11874083567075607180

`eq[A070801(n+2), A085379(n+2)]+2`
-/

namespace A085380.P11874083567075607180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085379 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A085380.P11874083567075607180

/-! ## A085380.P4869338065450086371

`comp[A085381(n+1)-2]+2`
-/

namespace A085380.P4869338065450086371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085381 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A085380.P4869338065450086371

/-! ## A085380.P4510661026026606547

`comp[A023444(A085381(n+1))]+2`
-/

namespace A085380.P4510661026026606547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A085381 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A085380.P4510661026026606547

/-! ## A085380.P14671386232569047833

`lt[A240850(A166040(n)), A028899(n)]`
-/

namespace A085380.P14671386232569047833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 (A166040 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085380.P14671386232569047833

/-! ## A085380.P3834347967273263735

`lt[A299852(n+1), A299852(A066208(n+1))]`
-/

namespace A085380.P3834347967273263735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (A066208 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085380.P3834347967273263735

/-! ## A085380.P4871624617042260444

`lt[A304355(n+1), A304355(A066208(n+1))]`
-/

namespace A085380.P4871624617042260444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (A066208 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085380.P4871624617042260444

/-! ## A085380.P3225637443884590456

`lt[A014963(A043990(2*n+5)), A308493(n+1)]`
-/

namespace A085380.P3225637443884590456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A043990 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085380.P3225637443884590456

/-! ## A085380.P16906931870397570038

`lt[A061773(A298540(n+1)), A331936(n+1)]`
-/

namespace A085380.P16906931870397570038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (A298540 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085380.P16906931870397570038

/-! ## A085380.P11568288253197963593

`lt[A187829(A146985(n)), 2^n]`
-/

namespace A085380.P11568288253197963593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A146985 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085380.P11568288253197963593

/-! ## A085380.P13886972090163416852

`lt[A007318(n), A086862(A329630(n+1))]`
-/

namespace A085380.P13886972090163416852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (A329630 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085380.P13886972090163416852

/-!
# A085382: Sum of p = prime(n) and largest prime divisor of p-1.

The programs for A085382, the canonical program `A085382.P1988162494212330199` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085382 has offset 2).

The definition of A085382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085382.P1988162494212330199

`A065091(n+1)+A023503(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085382

/-- `A065091(n+1)+A023503(n+2)` -/
def P1988162494212330199.Spec : Prop :=
  ∀ n, P1988162494212330199.a n = A085382 (n + 2)

theorem P1988162494212330199.correct : P1988162494212330199.Spec := by
  intro n
  simp only [A085382, Nat.add_sub_cancel]

end A085382

/-! ## A085382.P6826273330991449623

`A023503(n+2)+A000040(n+2)`
-/

namespace A085382.P6826273330991449623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2) + A000040 (n + 2)

end

end A085382.P6826273330991449623

namespace A085382

/-- `A023503(n+2)+A000040(n+2)` -/
def P6826273330991449623.Spec : Prop :=
  ∀ n, P6826273330991449623.a n = A085382 (n + 2)

theorem P6826273330991449623.correct : P6826273330991449623.Spec := by
  intro n
  simp only [A085382, Nat.add_sub_cancel, A085382.P6826273330991449623.a, A085382.P1988162494212330199.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023503, A023503.P1741513283774222757.a, A065091, A065091.P6971844946592549357.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085382

/-! ## A085382.P24809279046571664

`A023503(n+2)+A008578(n+3)`
-/

namespace A085382.P24809279046571664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2) + A008578 (n + 3)

end

end A085382.P24809279046571664

namespace A085382

/-- `A023503(n+2)+A008578(n+3)` -/
def P24809279046571664.Spec : Prop :=
  ∀ n, P24809279046571664.a n = A085382 (n + 2)

end A085382

/-! ## A085382.P14880290868698302386

`A006530(A006093(n+2))+A000040(n+2)`
-/

namespace A085382.P14880290868698302386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 2)).toNat + A000040 (n + 2)

end

end A085382.P14880290868698302386

namespace A085382

/-- `A006530(A006093(n+2))+A000040(n+2)` -/
def P14880290868698302386.Spec : Prop :=
  ∀ n, P14880290868698302386.a n = A085382 (n + 2)

theorem P14880290868698302386.correct : P14880290868698302386.Spec := by
  intro n
  simp only [A085382, Nat.add_sub_cancel, A085382.P14880290868698302386.a, A085382.P1988162494212330199.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A023503, A023503.P1741513283774222757.a, A065091, A065091.P6971844946592549357.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085382

/-! ## A085382.P9319546336940427245

`A070229(A006093(n+2))+1`
-/

namespace A085382.P9319546336940427245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A006093 (n + 2)).toNat + 1

end

end A085382.P9319546336940427245

namespace A085382

/-- `A070229(A006093(n+2))+1` -/
def P9319546336940427245.Spec : Prop :=
  ∀ n, P9319546336940427245.a n = A085382 (n + 2)

end A085382

/-! ## A085382.P16910149076805010127

`A070229(A065091(n+1)-1)+1`
-/

namespace A085382.P16910149076805010127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A065091 (n + 1) - 1).toNat + 1

end

end A085382.P16910149076805010127

namespace A085382

/-- `A070229(A065091(n+1)-1)+1` -/
def P16910149076805010127.Spec : Prop :=
  ∀ n, P16910149076805010127.a n = A085382 (n + 2)

end A085382

/-! ## A085382.P2734488341960026407

`A006530(A005722(n+2))+A000040(n+2)`
-/

namespace A085382.P2734488341960026407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005722 (n + 2)).toNat + A000040 (n + 2)

end

end A085382.P2734488341960026407

namespace A085382

/-- `A006530(A005722(n+2))+A000040(n+2)` -/
def P2734488341960026407.Spec : Prop :=
  ∀ n, P2734488341960026407.a n = A085382 (n + 2)

end A085382

/-!
# A085383: Triangle read by rows, 1 <= k <= n: T(n,k) = floor(n/k)*ceiling(n/k).

The programs for A085383, the canonical program `A085383.P12326393120573043726` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085383 has offset 1).

The definition of A085383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)+1)/(col(n)+1))*ceil((row(n)+1)/(col(n)+1))` (program `A085383.P12326393120573043726`, by `A085383.P12326393120573043726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085383.P12326393120573043726

`floor((row(n)+1)/(col(n)+1))*ceil((row(n)+1)/(col(n)+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085383

/-- `floor((row(n)+1)/(col(n)+1))*ceil((row(n)+1)/(col(n)+1))` -/
def P12326393120573043726.Spec : Prop :=
  ∀ n, P12326393120573043726.a n = A085383 (n + 1)

theorem P12326393120573043726.correct : P12326393120573043726.Spec := by
  intro n
  simp only [A085383, Nat.add_sub_cancel]

end A085383

/-! ## A085383.P16037022774942260624

`2*A128489(n+1)-A126988(n+1)`
-/

namespace A085383.P16037022774942260624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128489 (n + 1) - A126988 (n + 1)

end

end A085383.P16037022774942260624

namespace A085383

/-- `2*A128489(n+1)-A126988(n+1)` -/
def P16037022774942260624.Spec : Prop :=
  ∀ n, P16037022774942260624.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P10571351039144914329

`A002378(A010766(n+1))-A126988(n+1)`
-/

namespace A085383.P10571351039144914329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A010766 (n + 1)).toNat - A126988 (n + 1)

end

end A085383.P10571351039144914329

namespace A085383

/-- `A002378(A010766(n+1))-A126988(n+1)` -/
def P10571351039144914329.Spec : Prop :=
  ∀ n, P10571351039144914329.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P8141806508440991128

`ceil(A074909(n+1)/A007318(n))*A010766(n+1)`
-/

namespace A085383.P8141806508440991128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074909 (n + 1) : ℚ) / (A007318 n : ℚ)⌉ * A010766 (n + 1)

end

end A085383.P8141806508440991128

namespace A085383

/-- `ceil(A074909(n+1)/A007318(n))*A010766(n+1)` -/
def P8141806508440991128.Spec : Prop :=
  ∀ n, P8141806508440991128.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P8749500172183748476

`(A010766(n+1)+A000007(A127093(n+1)))*A010766(n+1)`
-/

namespace A085383.P8749500172183748476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010766 (n + 1) + A000007 (A127093 (n + 1)).toNat) * A010766 (n + 1)

end

end A085383.P8749500172183748476

namespace A085383

/-- `(A010766(n+1)+A000007(A127093(n+1)))*A010766(n+1)` -/
def P8749500172183748476.Spec : Prop :=
  ∀ n, P8749500172183748476.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P1185995761663108739

`A010766(n+1)*A193739(A286158(n+1))`
-/

namespace A085383.P1185995761663108739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A193739 (A286158 (n + 1)).toNat

end

end A085383.P1185995761663108739

namespace A085383

/-- `A010766(n+1)*A193739(A286158(n+1))` -/
def P1185995761663108739.Spec : Prop :=
  ∀ n, P1185995761663108739.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P14478176033218594444

`A010783(A278818(n))*A193739(A286158(n+1))`
-/

namespace A085383.P14478176033218594444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A278818 n).toNat * A193739 (A286158 (n + 1)).toNat

end

end A085383.P14478176033218594444

namespace A085383

/-- `A010783(A278818(n))*A193739(A286158(n+1))` -/
def P14478176033218594444.Spec : Prop :=
  ∀ n, P14478176033218594444.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P11870666955254399155

`A010766(n+1)*A010766(A245300(n)+1)`
-/

namespace A085383.P11870666955254399155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A010766 (A245300 n + 1).toNat

end

end A085383.P11870666955254399155

namespace A085383

/-- `A010766(n+1)*A010766(A245300(n)+1)` -/
def P11870666955254399155.Spec : Prop :=
  ∀ n, P11870666955254399155.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P4441853019674922928

`A038759(A331149(n+1))`
-/

namespace A085383.P4441853019674922928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A331149 (n + 1)).toNat

end

end A085383.P4441853019674922928

namespace A085383

/-- `A038759(A331149(n+1))` -/
def P4441853019674922928.Spec : Prop :=
  ∀ n, P4441853019674922928.a n = A085383 (n + 1)

end A085383

/-! ## A085383.P5178566964756729011

`A038759(A331151(n+1))`
-/

namespace A085383.P5178566964756729011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A331151 (n + 1)).toNat

end

end A085383.P5178566964756729011

namespace A085383

/-- `A038759(A331151(n+1))` -/
def P5178566964756729011.Spec : Prop :=
  ∀ n, P5178566964756729011.a n = A085383 (n + 1)

end A085383

/-!
# A085384: Ramanujan sum c_n(4).

The programs for A085384, the canonical program `A085384.P2352350841886618016` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085384 has offset 1).

The definition of A085384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085384.P2352350841886618016

`A000010(n+1)*A008683((n+1)/gcd(n+1, 4))/A000010((n+1)/gcd(n+1, 4))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085384

/-- `A000010(n+1)*A008683((n+1)/gcd(n+1, 4))/A000010((n+1)/gcd(n+1, 4))` -/
def P2352350841886618016.Spec : Prop :=
  ∀ n, P2352350841886618016.a n = (A085384 (n + 1) : ℚ)

end A085384

/-! ## A085384.P15120848612397436440

`A067856(n+1)*A189022(n+1)`
-/

namespace A085384.P15120848612397436440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1) * A189022 (n + 1)

end

end A085384.P15120848612397436440

namespace A085384

/-- `A067856(n+1)*A189022(n+1)` -/
def P15120848612397436440.Spec : Prop :=
  ∀ n, P15120848612397436440.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P2467046585933130820

`∑{d}[n+1, A007427(#)*A112132((n+1)/#)]`
-/

namespace A085384.P2467046585933130820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A112132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085384.P2467046585933130820

namespace A085384

/-- `∑{d}[n+1, A007427(#)*A112132((n+1)/#)]` -/
def P2467046585933130820.Spec : Prop :=
  ∀ n, P2467046585933130820.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P6610771568883359535

`A000189(n+1)*A008683(A060819(n+1))`
-/

namespace A085384.P6610771568883359535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1) * A008683 (A060819 (n + 1)).toNat

end

end A085384.P6610771568883359535

namespace A085384

/-- `A000189(n+1)*A008683(A060819(n+1))` -/
def P6610771568883359535.Spec : Prop :=
  ∀ n, P6610771568883359535.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P11490475024462181230

`A000190(n+1)*A008683(A060819(n+1))`
-/

namespace A085384.P11490475024462181230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) * A008683 (A060819 (n + 1)).toNat

end

end A085384.P11490475024462181230

namespace A085384

/-- `A000190(n+1)*A008683(A060819(n+1))` -/
def P11490475024462181230.Spec : Prop :=
  ∀ n, P11490475024462181230.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P3658748966218069813

`A003557(n+1)*A008683(A060819(n+1))`
-/

namespace A085384.P3658748966218069813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A008683 (A060819 (n + 1)).toNat

end

end A085384.P3658748966218069813

namespace A085384

/-- `A003557(n+1)*A008683(A060819(n+1))` -/
def P3658748966218069813.Spec : Prop :=
  ∀ n, P3658748966218069813.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P533685682032978570

`A008683(A060819(n+1))*A292589(n+1)`
-/

namespace A085384.P533685682032978570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060819 (n + 1)).toNat * A292589 (n + 1)

end

end A085384.P533685682032978570

namespace A085384

/-- `A008683(A060819(n+1))*A292589(n+1)` -/
def P533685682032978570.Spec : Prop :=
  ∀ n, P533685682032978570.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P1802611070815983775

`A054533(∑[n]+gcd(4, n+1))`
-/

namespace A085384.P1802611070815983775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 4 (n + 1))

end

end A085384.P1802611070815983775

namespace A085384

/-- `A054533(∑[n]+gcd(4, n+1))` -/
def P1802611070815983775.Spec : Prop :=
  ∀ n, P1802611070815983775.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P14317968133619585369

`A054533(∑[n+1]-4%(n+1))`
-/

namespace A085384.P14317968133619585369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (∑ j ∈ Finset.range (n + 1), f1 j - 4 % (n + 1))

end

end A085384.P14317968133619585369

namespace A085384

/-- `A054533(∑[n+1]-4%(n+1))` -/
def P14317968133619585369.Spec : Prop :=
  ∀ n, P14317968133619585369.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P17963452698129795246

`A054533(A060577(n))`
-/

namespace A085384.P17963452698129795246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (A060577 n).toNat

end

end A085384.P17963452698129795246

namespace A085384

/-- `A054533(A060577(n))` -/
def P17963452698129795246.Spec : Prop :=
  ∀ n, P17963452698129795246.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P7019800363022218726

`A054535(∑[n+3]+7)`
-/

namespace A085384.P7019800363022218726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A085384.P7019800363022218726

namespace A085384

/-- `A054535(∑[n+3]+7)` -/
def P7019800363022218726.Spec : Prop :=
  ∀ n, P7019800363022218726.a n = A085384 (n + 1)

end A085384

/-! ## A085384.P8989232271218379551

`A054534(∑[n+4]+3)`
-/

namespace A085384.P8989232271218379551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A085384.P8989232271218379551

namespace A085384

/-- `A054534(∑[n+4]+3)` -/
def P8989232271218379551.Spec : Prop :=
  ∀ n, P8989232271218379551.a n = A085384 (n + 1)

end A085384

/-!
# A085385: Binomial transform of hexagonal pyramidal numbers A002412.

The programs for A085385, the canonical program `A085385.P13964376620445033525` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085385 has offset 0).

The definition of A085385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085385.P7160253078313914070

`2^(n-2)*A101986(n)`
-/

namespace A085385.P7160253078313914070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A101986 n : ℚ)

end

end A085385.P7160253078313914070

namespace A085385

/-- `2^(n-2)*A101986(n)` -/
def P7160253078313914070.Spec : Prop :=
  ∀ n, P7160253078313914070.a n = (A085385 n : ℚ)

end A085385

/-! ## A085385.P13964376620445033525

`A001794(n)-A136530(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085385

/-- `A001794(n)-A136530(n)` -/
def P13964376620445033525.Spec : Prop :=
  ∀ n, P13964376620445033525.a n = A085385 n

theorem P13964376620445033525.correct : P13964376620445033525.Spec := by
  intro n
  simp only [A085385]

end A085385

/-! ## A085385.P15614634303625434013

`A082138(n)-A084266(n)`
-/

namespace A085385.P15614634303625434013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 n - A084266 n

end

end A085385.P15614634303625434013

namespace A085385

/-- `A082138(n)-A084266(n)` -/
def P15614634303625434013.Spec : Prop :=
  ∀ n, P15614634303625434013.a n = A085385 n

end A085385

/-! ## A085385.P2827709200737013520

`A101986(n)/2*A131577(n)`
-/

namespace A085385.P2827709200737013520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101986 n : ℚ) / 2 * (A131577 n : ℚ)

end

end A085385.P2827709200737013520

namespace A085385

/-- `A101986(n)/2*A131577(n)` -/
def P2827709200737013520.Spec : Prop :=
  ∀ n, P2827709200737013520.a n = (A085385 n : ℚ)

end A085385

/-! ## A085385.P4742390277236032432

`(∑[A005563(n)]-n)/4*A000079(n)`
-/

namespace A085385.P4742390277236032432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 4 * (A000079 n : ℚ)

end

end A085385.P4742390277236032432

namespace A085385

/-- `(∑[A005563(n)]-n)/4*A000079(n)` -/
def P4742390277236032432.Spec : Prop :=
  ∀ n, P4742390277236032432.a n = (A085385 n : ℚ)

end A085385

/-! ## A085385.P9122721458715063477

`(∑[A005563(n)]-n)/4*Δ[A000225(n)]`
-/

namespace A085385.P9122721458715063477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 4 * (f2 (n + 1) - f2 n : ℚ)

end

end A085385.P9122721458715063477

namespace A085385

/-- `(∑[A005563(n)]-n)/4*Δ[A000225(n)]` -/
def P9122721458715063477.Spec : Prop :=
  ∀ n, P9122721458715063477.a n = (A085385 n : ℚ)

end A085385

/-! ## A085385.P2732944056924669298

`(∑[A005563(n)-1]+1)/2*A011782(n)`
-/

namespace A085385.P2732944056924669298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2 * (A011782 n : ℚ)

end

end A085385.P2732944056924669298

namespace A085385

/-- `(∑[A005563(n)-1]+1)/2*A011782(n)` -/
def P2732944056924669298.Spec : Prop :=
  ∀ n, P2732944056924669298.a n = (A085385 n : ℚ)

end A085385

/-! ## A085385.P6448010994099946258

`Δ[C(2*n, 3)/4*2^(n-2)]`
-/

namespace A085385.P6448010994099946258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 4 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085385.P6448010994099946258

namespace A085385

/-- `Δ[C(2*n, 3)/4*2^(n-2)]` -/
def P6448010994099946258.Spec : Prop :=
  ∀ n, P6448010994099946258.a n = (A085385 n : ℚ)

end A085385

/-! ## A085385.P14909873508417724425

`Δ[A087076(log2(A011782(n)))]`
-/

namespace A085385.P14909873508417724425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085385.P14909873508417724425

namespace A085385

/-- `Δ[A087076(log2(A011782(n)))]` -/
def P14909873508417724425.Spec : Prop :=
  ∀ n, P14909873508417724425.a n = A085385 n

end A085385

/-! ## A085385.P5261575414603796521

`record[Δ[A087076(A004523(n))]]`
-/

namespace A085385.P5261575414603796521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085385.P5261575414603796521

namespace A085385

/-- `record[Δ[A087076(A004523(n))]]` -/
def P5261575414603796521.Spec : Prop :=
  ∀ n, P5261575414603796521.a n = A085385 n

end A085385

/-! ## A085385.P16489929374460368313

`record[Δ[A087076(A049472(n))]]`
-/

namespace A085385.P16489929374460368313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 (A049472 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085385.P16489929374460368313

namespace A085385

/-- `record[Δ[A087076(A049472(n))]]` -/
def P16489929374460368313.Spec : Prop :=
  ∀ n, P16489929374460368313.a n = A085385 n

end A085385

/-! ## A085385.P3076853096136550842

`A087076(n)-A087076(log2(A011782(n)))`
-/

namespace A085385.P3076853096136550842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 n - A087076 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A085385.P3076853096136550842

namespace A085385

/-- `A087076(n)-A087076(log2(A011782(n)))` -/
def P3076853096136550842.Spec : Prop :=
  ∀ n, P3076853096136550842.a n = A085385 n

end A085385

/-!
# A085386: E.g.f. cosh(x+x^2/2).

The programs for A085386, the canonical program `A085386.P10561297622637148624` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085386 has offset 0).

The definition of A085386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085386.P10561297622637148624

`(A000085(n)+A001464(n))/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085386

/-- `(A000085(n)+A001464(n))/2` -/
def P10561297622637148624.Spec : Prop :=
  ∀ n, P10561297622637148624.a n = (A085386 n : ℚ)

end A085386

/-! ## A085386.P14830303459451310679

`A001465(n)+∑[(-1)^n]*A001464(n)`
-/

namespace A085386.P14830303459451310679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A001464 n

end

end A085386.P14830303459451310679

namespace A085386

/-- `A001465(n)+∑[(-1)^n]*A001464(n)` -/
def P14830303459451310679.Spec : Prop :=
  ∀ n, P14830303459451310679.a n = A085386 n

end A085386

/-! ## A085386.P3174816468465781337

`(A001464(n)+A187044(n)-A186739(n+1))/2`
-/

namespace A085386.P3174816468465781337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001464 n + (A187044 n - A186739 (n + 1)) : ℚ) / 2

end

end A085386.P3174816468465781337

namespace A085386

/-- `(A001464(n)+A187044(n)-A186739(n+1))/2` -/
def P3174816468465781337.Spec : Prop :=
  ∀ n, P3174816468465781337.a n = (A085386 n : ℚ)

end A085386

/-! ## A085386.P11144659113808968443

`(A001464(n)+(A297708(n)+A135401(n))/2)/2`
-/

namespace A085386.P11144659113808968443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001464 n : ℚ) + (A297708 n + A135401 n : ℚ) / 2) / 2

end

end A085386.P11144659113808968443

namespace A085386

/-- `(A001464(n)+(A297708(n)+A135401(n))/2)/2` -/
def P11144659113808968443.Spec : Prop :=
  ∀ n, P11144659113808968443.a n = (A085386 n : ℚ)

end A085386

/-! ## A085386.P3817610805646497238

`(A159834(A000217(n))+A000085(n))/2`
-/

namespace A085386.P3817610805646497238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159834 (A000217 n).toNat + A000085 n : ℚ) / 2

end

end A085386.P3817610805646497238

namespace A085386

/-- `(A159834(A000217(n))+A000085(n))/2` -/
def P3817610805646497238.Spec : Prop :=
  ∀ n, P3817610805646497238.a n = (A085386 n : ℚ)

end A085386

/-!
# A085387: E.g.f exp(x)*cosh(x+x^2/2).

The programs for A085387, the canonical program `A085387.P4663447753190101228` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085387 has offset 0).

The definition of A085387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085387.P4663447753190101228

`(A066325(∑[n])+A005425(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085387

/-- `(A066325(∑[n])+A005425(n))/2` -/
def P4663447753190101228.Spec : Prop :=
  ∀ n, P4663447753190101228.a n = (A085387 n : ℚ)

end A085387

/-! ## A085387.P2233383588210909279

`A060681(A066325(∑[n])+A005425(n))`
-/

namespace A085387.P2233383588210909279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A066325 (∑ j ∈ Finset.range (n + 1), f1 j) + A005425 n).toNat

end

end A085387.P2233383588210909279

namespace A085387

/-- `A060681(A066325(∑[n])+A005425(n))` -/
def P2233383588210909279.Spec : Prop :=
  ∀ n, P2233383588210909279.a n = A085387 n

end A085387

/-! ## A085387.P9496660913786828540

`A246277(A066325(∑[n])+A005425(n))`
-/

namespace A085387.P9496660913786828540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A066325 (∑ j ∈ Finset.range (n + 1), f1 j) + A005425 n).toNat

end

end A085387.P9496660913786828540

namespace A085387

/-- `A246277(A066325(∑[n])+A005425(n))` -/
def P9496660913786828540.Spec : Prop :=
  ∀ n, P9496660913786828540.a n = A085387 n

end A085387

/-! ## A085387.P2599455862462645142

`A065423(A066325(∑[n])+A005425(n)+2)`
-/

namespace A085387.P2599455862462645142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A066325 (∑ j ∈ Finset.range (n + 1), f1 j) + (A005425 n + 2)).toNat

end

end A085387.P2599455862462645142

namespace A085387

/-- `A065423(A066325(∑[n])+A005425(n)+2)` -/
def P2599455862462645142.Spec : Prop :=
  ∀ n, P2599455862462645142.a n = A085387 n

end A085387

/-! ## A085387.P13464368655824520461

`A166514(A066325(C(n+1, 2))+A005425(n))`
-/

namespace A085387.P13464368655824520461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A066325 (Nat.choose (n + 1) 2) + A005425 n).toNat

end

end A085387.P13464368655824520461

namespace A085387

/-- `A166514(A066325(C(n+1, 2))+A005425(n))` -/
def P13464368655824520461.Spec : Prop :=
  ∀ n, P13464368655824520461.a n = A085387 n

end A085387

/-!
# A085388: First differences of n^k.

The programs for A085388, the canonical program `A085388.P3862355329764916117` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085388 has offset 1).

The definition of A085388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085388.P3862355329764916117

`A009999(n)-A004248(A038722(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085388

/-- `A009999(n)-A004248(A038722(n+1))` -/
def P3862355329764916117.Spec : Prop :=
  ∀ n, P3862355329764916117.a n = A085388 (n + 1)

theorem P3862355329764916117.correct : P3862355329764916117.Spec := by
  intro n
  simp only [A085388, Nat.add_sub_cancel]

end A085388

/-! ## A085388.P8832954668912557661

`A009999(n)-A004248(A093995(n+1)-n)`
-/

namespace A085388.P8832954668912557661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n - A004248 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A085388.P8832954668912557661

namespace A085388

/-- `A009999(n)-A004248(A093995(n+1)-n)` -/
def P8832954668912557661.Spec : Prop :=
  ∀ n, P8832954668912557661.a n = A085388 (n + 1)

end A085388

/-! ## A085388.P3050287513357016547

`A003992(A007401(n+1))-A004248(A038722(n+1))`
-/

namespace A085388.P3050287513357016547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A007401 (n + 1)).toNat - A004248 (A038722 (n + 1)).toNat

end

end A085388.P3050287513357016547

namespace A085388

/-- `A003992(A007401(n+1))-A004248(A038722(n+1))` -/
def P3050287513357016547.Spec : Prop :=
  ∀ n, P3050287513357016547.a n = A085388 (n + 1)

end A085388

/-! ## A085388.P14883711369845470492

`A003992(A014132(n+1)-1)-A004248(A038722(n+1))`
-/

namespace A085388.P14883711369845470492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A014132 (n + 1) - 1).toNat - A004248 (A038722 (n + 1)).toNat

end

end A085388.P14883711369845470492

namespace A085388

/-- `A003992(A014132(n+1)-1)-A004248(A038722(n+1))` -/
def P14883711369845470492.Spec : Prop :=
  ∀ n, P14883711369845470492.a n = A085388 (n + 1)

end A085388

/-! ## A085388.P13318991514325944811

`A009998(A061579(n))-A004248(A038722(n+1))`
-/

namespace A085388.P13318991514325944811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A061579 n).toNat - A004248 (A038722 (n + 1)).toNat

end

end A085388.P13318991514325944811

namespace A085388

/-- `A009998(A061579(n))-A004248(A038722(n+1))` -/
def P13318991514325944811.Spec : Prop :=
  ∀ n, P13318991514325944811.a n = A085388 (n + 1)

end A085388

/-! ## A085388.P769667465417929608

`A004248(A099375(n)+1+n)-A004248(A038722(n+1))`
-/

namespace A085388.P769667465417929608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A099375 n + 1 + (n : ℤ)).toNat - A004248 (A038722 (n + 1)).toNat

end

end A085388.P769667465417929608

namespace A085388

/-- `A004248(A099375(n)+1+n)-A004248(A038722(n+1))` -/
def P769667465417929608.Spec : Prop :=
  ∀ n, P769667465417929608.a n = A085388 (n + 1)

end A085388

/-! ## A085388.P11269718400263290018

`A009998(A038722(n+2))-A004248(A038722(n+1))`
-/

namespace A085388.P11269718400263290018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A038722 (n + 2)).toNat - A004248 (A038722 (n + 1)).toNat

end

end A085388.P11269718400263290018

namespace A085388

/-- `A009998(A038722(n+2))-A004248(A038722(n+1))` -/
def P11269718400263290018.Spec : Prop :=
  ∀ n, P11269718400263290018.a n = A085388 (n + 1)

end A085388

/-! ## A085388.P1890486518193575156

`A059300(n)/A074909(n)-A004248(A038722(n+1))`
-/

namespace A085388.P1890486518193575156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059300 n : ℚ) / (A074909 n : ℚ) - (A004248 (A038722 (n + 1)).toNat : ℚ)

end

end A085388.P1890486518193575156

namespace A085388

/-- `A059300(n)/A074909(n)-A004248(A038722(n+1))` -/
def P1890486518193575156.Spec : Prop :=
  ∀ n, P1890486518193575156.a n = (A085388 (n + 1) : ℚ)

end A085388

/-!
# A085389: a(1) = 1; for n >= 2, a(n) = (n*(n+1)^(n-1))/(n+1).

The programs for A085389, there is no canonical definition to state claims against.
-/

/-! ## A085389.P15120467488075072141

`ceil((n+1)*(n+2)^(n-1))`
-/

namespace A085389.P15120467488075072141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A085389.P15120467488075072141

/-! ## A085389.P14410231144942815330

`lcm(n+1, ceil((n+2)^(n-1)))`
-/

namespace A085389.P14410231144942815330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌈(n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A085389.P14410231144942815330

/-! ## A085389.P17947251563366416833

`C(n+1, n)*round((n+2)^(n-1))`
-/

namespace A085389.P17947251563366416833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) * SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A085389.P17947251563366416833

/-! ## A085389.P16009994980581978606

`(n+1)*(n+2)^((n-1)%(n+1))`
-/

namespace A085389.P16009994980581978606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (n + 2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

end

end A085389.P16009994980581978606

/-! ## A085389.P11640090928870595445

`(n+1)*(n+2)^round(n/3^acot(n))`
-/

namespace A085389.P11640090928870595445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (n + 2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) / (3 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))) : ℤ)

end

end A085389.P11640090928870595445

/-! ## A085389.P2838397601612006194

`(n+1)*gcd(n+2, ∏[n+3])^(n-1)`
-/

namespace A085389.P2838397601612006194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (Nat.gcd (n + 2) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A085389.P2838397601612006194

/-! ## A085389.P3971447763502486321

`round(A089946(n)/2)`
-/

namespace A085389.P3971447763502486321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A089946 n : ℚ) / 2)

end

end A085389.P3971447763502486321

/-! ## A085389.P14251618078020443901

`A055864(A133263(n))`
-/

namespace A085389.P14251618078020443901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055864 (A133263 n).toNat

end

end A085389.P14251618078020443901

/-! ## A085389.P9715527333055060483

`A055864(A238531(n+1))`
-/

namespace A085389.P9715527333055060483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055864 (A238531 (n + 1)).toNat

end

end A085389.P9715527333055060483

/-!
# A085390: a(n) = (n(n+1)^(n-2)+0^(n-2))/(n+1).

The programs for A085390, the canonical program `A085390.P5220115120412089830` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085390 has offset 2).

The definition of A085390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085390.P5220115120412089830

`((n+2)*(n+3)^n+0^n)/(n+3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085390

/-- `((n+2)*(n+3)^n+0^n)/(n+3)` -/
def P5220115120412089830.Spec : Prop :=
  ∀ n, P5220115120412089830.a n = (A085390 (n + 2) : ℚ)

end A085390

/-! ## A085390.P10715161723733688706

`round((n+3)^(n-1)*C(n+2, n+1))`
-/

namespace A085390.P10715161723733688706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 2) (n + 1) : ℚ))

end

end A085390.P10715161723733688706

namespace A085390

/-- `round((n+3)^(n-1)*C(n+2, n+1))` -/
def P10715161723733688706.Spec : Prop :=
  ∀ n, P10715161723733688706.a n = A085390 (n + 2)

end A085390

/-! ## A085390.P4647170991344090843

`record[(n+1)^(n-3)*A028310(n)]`
-/

namespace A085390.P4647170991344090843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085390.P4647170991344090843

namespace A085390

/-- `record[(n+1)^(n-3)*A028310(n)]` -/
def P4647170991344090843.Spec : Prop :=
  ∀ n, P4647170991344090843.a n = (A085390 (n + 2) : ℚ)

end A085390

/-! ## A085390.P779326853404710648

`round(lcm(n+2, (n+3)^n)/(n+3))`
-/

namespace A085390.P779326853404710648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (n + 2) ((n + 3) ^ n) : ℚ) / (n + 3 : ℚ))

end

end A085390.P779326853404710648

namespace A085390

/-- `round(lcm(n+2, (n+3)^n)/(n+3))` -/
def P779326853404710648.Spec : Prop :=
  ∀ n, P779326853404710648.a n = A085390 (n + 2)

end A085390

/-! ## A085390.P16961452880314015722

`A085388(∑[4*(n+1)])`
-/

namespace A085390.P16961452880314015722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085388 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085390.P16961452880314015722

namespace A085390

/-- `A085388(∑[4*(n+1)])` -/
def P16961452880314015722.Spec : Prop :=
  ∀ n, P16961452880314015722.a n = A085390 (n + 2)

end A085390

/-!
# A085391: Square array of centered numbers, read by antidiagonals.

The programs for A085391, the canonical program `A085391.P7028724132691685477` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085391 has offset 0).

The definition of A085391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085391.P7028724132691685477

`A007318(n)-A026729(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085391

/-- `A007318(n)-A026729(n)` -/
def P7028724132691685477.Spec : Prop :=
  ∀ n, P7028724132691685477.a n = A085391 n

theorem P7028724132691685477.correct : P7028724132691685477.Spec := by
  intro n
  simp only [A085391]

end A085391

/-! ## A085391.P5497070507497205910

`A007318(n)-abs(A109466(n))`
-/

namespace A085391.P5497070507497205910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - |A109466 n|

end

end A085391.P5497070507497205910

namespace A085391

/-- `A007318(n)-abs(A109466(n))` -/
def P5497070507497205910.Spec : Prop :=
  ∀ n, P5497070507497205910.a n = A085391 n

end A085391

/-! ## A085391.P15339669839793571769

`abs(A108086(n))-A026729(n)`
-/

namespace A085391.P15339669839793571769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A026729 n

end

end A085391.P15339669839793571769

namespace A085391

/-- `abs(A108086(n))-A026729(n)` -/
def P15339669839793571769.Spec : Prop :=
  ∀ n, P15339669839793571769.a n = A085391 n

end A085391

/-! ## A085391.P13512245787086044122

`abs(A130595(n))-A026729(n)`
-/

namespace A085391.P13512245787086044122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A026729 n

end

end A085391.P13512245787086044122

namespace A085391

/-- `abs(A130595(n))-A026729(n)` -/
def P13512245787086044122.Spec : Prop :=
  ∀ n, P13512245787086044122.a n = A085391 n

end A085391

/-! ## A085391.P10554006915422609636

`abs(A109466(n)-A130595(n))`
-/

namespace A085391.P10554006915422609636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109466 n - A130595 n|

end

end A085391.P10554006915422609636

namespace A085391

/-- `abs(A109466(n)-A130595(n))` -/
def P10554006915422609636.Spec : Prop :=
  ∀ n, P10554006915422609636.a n = A085391 n

end A085391

/-! ## A085391.P9369552346675582748

`sqrt(A008459(n))-A026729(n)`
-/

namespace A085391.P9369552346675582748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (A026729 n : ℝ)

end

end A085391.P9369552346675582748

namespace A085391

/-- `sqrt(A008459(n))-A026729(n)` -/
def P9369552346675582748.Spec : Prop :=
  ∀ n, P9369552346675582748.a n = (A085391 n : ℝ)

end A085391

/-! ## A085391.P12267051614859772855

`A028326(n)/2-A026729(n)`
-/

namespace A085391.P12267051614859772855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A026729 n : ℚ)

end

end A085391.P12267051614859772855

namespace A085391

/-- `A028326(n)/2-A026729(n)` -/
def P12267051614859772855.Spec : Prop :=
  ∀ n, P12267051614859772855.a n = (A085391 n : ℚ)

theorem P12267051614859772855.correct : P12267051614859772855.Spec := by
  intro n
  simp only [A085391, Nat.add_sub_cancel, A085391.P12267051614859772855.a, A085391.P7028724132691685477.a, A007318, A007318.P11755526479805562006.a, A026729, A026729.P5007211458474426246.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085391

/-! ## A085391.P5247108555864185648

`ceil(A134059(n)/3)-A026729(n)`
-/

namespace A085391.P5247108555864185648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ - A026729 n

end

end A085391.P5247108555864185648

namespace A085391

/-- `ceil(A134059(n)/3)-A026729(n)` -/
def P5247108555864185648.Spec : Prop :=
  ∀ n, P5247108555864185648.a n = A085391 n

end A085391

/-! ## A085391.P14582307275038059322

`A007318(n)-A052553(A061579(n))`
-/

namespace A085391.P14582307275038059322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A052553 (A061579 n).toNat

end

end A085391.P14582307275038059322

namespace A085391

/-- `A007318(n)-A052553(A061579(n))` -/
def P14582307275038059322.Spec : Prop :=
  ∀ n, P14582307275038059322.a n = A085391 n

end A085391

/-! ## A085391.P15663493157013806803

`A007318(n)-A105868(n)/A007318(n)`
-/

namespace A085391.P15663493157013806803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) - (A105868 n : ℚ) / (A007318 n : ℚ)

end

end A085391.P15663493157013806803

namespace A085391

/-- `A007318(n)-A105868(n)/A007318(n)` -/
def P15663493157013806803.Spec : Prop :=
  ∀ n, P15663493157013806803.a n = (A085391 n : ℚ)

end A085391

/-!
# A085392: a(n) = largest prime divisor of n, or 1 if n is 1 or a prime.

The programs for A085392, the canonical program `A085392.P10304220528637003889` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085392 has offset 1).

The definition of A085392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085392.P14567818293266283432

`A006530(A032742(n+1))`
-/

namespace A085392.P14567818293266283432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032742 (n + 1)).toNat

end

end A085392.P14567818293266283432

namespace A085392

/-- `A006530(A032742(n+1))` -/
def P14567818293266283432.Spec : Prop :=
  ∀ n, P14567818293266283432.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P10304220528637003889

`∏{d}[A006530(n+1)%(n+1), #]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085392

/-- `∏{d}[A006530(n+1)%(n+1), #]` -/
def P10304220528637003889.Spec : Prop :=
  ∀ n, (P10304220528637003889.a n : ℤ) = A085392 (n + 1)

theorem P10304220528637003889.correct : P10304220528637003889.Spec := by
  intro n
  simp only [A085392, Nat.add_sub_cancel]

end A085392

/-! ## A085392.P18158663621314978273

`A006530(A005451(n+1))`
-/

namespace A085392.P18158663621314978273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005451 (n + 1)).toNat

end

end A085392.P18158663621314978273

namespace A085392

/-- `A006530(A005451(n+1))` -/
def P18158663621314978273.Spec : Prop :=
  ∀ n, P18158663621314978273.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P15534608438309972296

`A006530(A005730(n+1))`
-/

namespace A085392.P15534608438309972296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005730 (n + 1)).toNat

end

end A085392.P15534608438309972296

namespace A085392

/-- `A006530(A005730(n+1))` -/
def P15534608438309972296.Spec : Prop :=
  ∀ n, P15534608438309972296.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P14343963802306672190

`A006530(A048671(n+1))`
-/

namespace A085392.P14343963802306672190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048671 (n + 1)).toNat

end

end A085392.P14343963802306672190

namespace A085392

/-- `A006530(A048671(n+1))` -/
def P14343963802306672190.Spec : Prop :=
  ∀ n, P14343963802306672190.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P15487329830133135556

`A006530(A079880(n+1))`
-/

namespace A085392.P15487329830133135556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079880 (n + 1)).toNat

end

end A085392.P15487329830133135556

namespace A085392

/-- `A006530(A079880(n+1))` -/
def P15487329830133135556.Spec : Prop :=
  ∀ n, P15487329830133135556.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P17479515539184934321

`A002034(A089384(n+1))`
-/

namespace A085392.P17479515539184934321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A089384 (n + 1)).toNat

end

end A085392.P17479515539184934321

namespace A085392

/-- `A002034(A089384(n+1))` -/
def P17479515539184934321.Spec : Prop :=
  ∀ n, P17479515539184934321.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P17896063564537270075

`A006530(A144907(n+1))`
-/

namespace A085392.P17896063564537270075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A144907 (n + 1)).toNat

end

end A085392.P17896063564537270075

namespace A085392

/-- `A006530(A144907(n+1))` -/
def P17896063564537270075.Spec : Prop :=
  ∀ n, P17896063564537270075.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P3858175064783839482

`A006530(A323072(n+1))`
-/

namespace A085392.P3858175064783839482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A323072 (n + 1)).toNat

end

end A085392.P3858175064783839482

namespace A085392

/-- `A006530(A323072(n+1))` -/
def P3858175064783839482.Spec : Prop :=
  ∀ n, P3858175064783839482.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P1402825871788699300

`A002034(A334085(n+1))`
-/

namespace A085392.P1402825871788699300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A334085 (n + 1)).toNat

end

end A085392.P1402825871788699300

namespace A085392

/-- `A002034(A334085(n+1))` -/
def P1402825871788699300.Spec : Prop :=
  ∀ n, P1402825871788699300.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P16606734084211365028

`gcd(A006530(n+1), A085926(n))`
-/

namespace A085392.P16606734084211365028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (n + 1)) (A085926 n)

end

end A085392.P16606734084211365028

namespace A085392

/-- `gcd(A006530(n+1), A085926(n))` -/
def P16606734084211365028.Spec : Prop :=
  ∀ n, (P16606734084211365028.a n : ℤ) = A085392 (n + 1)

end A085392

/-! ## A085392.P5296898026232047083

`A053585(∏{p}[A032742(n+1), #])`
-/

namespace A085392.P5296898026232047083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A085392.P5296898026232047083

namespace A085392

/-- `A053585(∏{p}[A032742(n+1), #])` -/
def P5296898026232047083.Spec : Prop :=
  ∀ n, P5296898026232047083.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P2367002019680521021

`A085393(n+1)+A014673(n+1)`
-/

namespace A085392.P2367002019680521021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (n + 1) + A014673 (n + 1)

end

end A085392.P2367002019680521021

namespace A085392

/-- `A085393(n+1)+A014673(n+1)` -/
def P2367002019680521021.Spec : Prop :=
  ∀ n, P2367002019680521021.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P4386463283024531308

`A006530(1-A060681(n+1)+n)`
-/

namespace A085392.P4386463283024531308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A085392.P4386463283024531308

namespace A085392

/-- `A006530(1-A060681(n+1)+n)` -/
def P4386463283024531308.Spec : Prop :=
  ∀ n, P4386463283024531308.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P12899020560098033492

`A006530(1-A166260(n+1)+n)`
-/

namespace A085392.P12899020560098033492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A166260 (n + 1) + (n : ℤ)).toNat

end

end A085392.P12899020560098033492

namespace A085392

/-- `A006530(1-A166260(n+1)+n)` -/
def P12899020560098033492.Spec : Prop :=
  ∀ n, P12899020560098033492.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P18275498123489334477

`A006530(1-A220096(n+1)+n)`
-/

namespace A085392.P18275498123489334477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A220096 (n + 1) + (n : ℤ)).toNat

end

end A085392.P18275498123489334477

namespace A085392

/-- `A006530(1-A220096(n+1)+n)` -/
def P18275498123489334477.Spec : Prop :=
  ∀ n, P18275498123489334477.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P4005319856333859175

`A006530(n*A005171(n+1)+1)`
-/

namespace A085392.P4005319856333859175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) * A005171 (n + 1) + 1).toNat

end

end A085392.P4005319856333859175

namespace A085392

/-- `A006530(n*A005171(n+1)+1)` -/
def P4005319856333859175.Spec : Prop :=
  ∀ n, P4005319856333859175.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P15220195146415294459

`A006530(n+2-A089026(n+1))`
-/

namespace A085392.P15220195146415294459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) - A089026 (n + 1)).toNat

end

end A085392.P15220195146415294459

namespace A085392

/-- `A006530(n+2-A089026(n+1))` -/
def P15220195146415294459.Spec : Prop :=
  ∀ n, P15220195146415294459.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P15317684908211386397

`A006530((n+1)/A014963(n+1))`
-/

namespace A085392.P15317684908211386397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A085392.P15317684908211386397

namespace A085392

/-- `A006530((n+1)/A014963(n+1))` -/
def P15317684908211386397.Spec : Prop :=
  ∀ n, P15317684908211386397.a n = A085392 (n + 1)

end A085392

/-! ## A085392.P17999925456418644495

`A006530((n+1)/A020639(n+1))`
-/

namespace A085392.P17999925456418644495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A085392.P17999925456418644495

namespace A085392

/-- `A006530((n+1)/A020639(n+1))` -/
def P17999925456418644495.Spec : Prop :=
  ∀ n, P17999925456418644495.a n = A085392 (n + 1)

end A085392

/-!
# A085393: Difference between the largest and the smallest prime factor of the greatest proper divisor of n.

The programs for A085393, there is no canonical definition to state claims against.
-/

/-! ## A085393.P1902217502819224353

`A085392(n+1)-A014673(n+1)`
-/

namespace A085393.P1902217502819224353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - A014673 (n + 1)

end

end A085393.P1902217502819224353

/-! ## A085393.P15593537277490293890

`A046665(A032742(n+1))`
-/

namespace A085393.P15593537277490293890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A032742 (n + 1)).toNat

end

end A085393.P15593537277490293890

/-! ## A085393.P3272743716232159645

`A046665(A063928(n+1))`
-/

namespace A085393.P3272743716232159645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A063928 (n + 1)).toNat

end

end A085393.P3272743716232159645

/-! ## A085393.P12454368743175082510

`A046665(A117818(n+1))`
-/

namespace A085393.P12454368743175082510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A117818 (n + 1)).toNat

end

end A085393.P12454368743175082510

/-! ## A085393.P13530321926107878328

`A046665(1-A060681(n+1)+n)`
-/

namespace A085393.P13530321926107878328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A085393.P13530321926107878328

/-! ## A085393.P6081527851292888404

`A046665((n+1)/A020639(n+1))`
-/

namespace A085393.P6081527851292888404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A085393.P6081527851292888404

/-! ## A085393.P10808362438830274610

`A046665((n+1)/A126773(n+1))`
-/

namespace A085393.P10808362438830274610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A126773 (n + 1) : ℚ))).toNat

end

end A085393.P10808362438830274610

/-! ## A085393.P9256636662407261685

`A006530(A032742(n+1))-A014673(n+1)`
-/

namespace A085393.P9256636662407261685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032742 (n + 1)).toNat - A014673 (n + 1)

end

end A085393.P9256636662407261685

/-! ## A085393.P9284863805781056052

`A085392(n+1)-A020639(A032742(n+1))`
-/

namespace A085393.P9284863805781056052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - A020639 (A032742 (n + 1)).toNat

end

end A085393.P9284863805781056052

/-! ## A085393.P14206210742345342039

`A046665(xor(A318505(n+1), A318507(n+1)))`
-/

namespace A085393.P14206210742345342039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (Int.xor (A318505 (n + 1)) (A318507 (n + 1))).toNat

end

end A085393.P14206210742345342039

/-! ## A085393.P12162756154690563659

`A006530((n+1)/A020639(n+1))-A014673(n+1)`
-/

namespace A085393.P12162756154690563659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat - A014673 (n + 1)

end

end A085393.P12162756154690563659

/-! ## A085393.P2464406570322178700

`A006530(n+1)-A006530(A014673(n+1)*A020639(n+1))`
-/

namespace A085393.P2464406570322178700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A006530 (A014673 (n + 1) * A020639 (n + 1)).toNat

end

end A085393.P2464406570322178700

/-! ## A085393.P14963135935133425668

`A006530(n+1)-A020639(A006530(n+1)*A073752(n+1))`
-/

namespace A085393.P14963135935133425668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A020639 (A006530 (n + 1) * A073752 (n + 1)).toNat

end

end A085393.P14963135935133425668

/-! ## A085393.P5465015100509574962

`A006530(n+1)-A117818(n+1)/A032742(A032742(n+1))`
-/

namespace A085393.P5465015100509574962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) - (A117818 (n + 1) : ℚ) / (A032742 (A032742 (n + 1)).toNat : ℚ)

end

end A085393.P5465015100509574962

/-! ## A085393.P265724247205501788

`A006530(n+1)-A130064(n+1)/A130064(A032742(n+1))`
-/

namespace A085393.P265724247205501788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) - (A130064 (n + 1) : ℚ) / (A130064 (A032742 (n + 1)).toNat : ℚ)

end

end A085393.P265724247205501788

/-! ## A085393.P8254021998778450282

`A085392(n+1)-A115561(2*(n+1))`
-/

namespace A085393.P8254021998778450282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - A115561 (2 * (n + 1))

end

end A085393.P8254021998778450282

/-! ## A085393.P8255647105315178481

`A006530(n+1)-A020639(A130064(n+1))`
-/

namespace A085393.P8255647105315178481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A020639 (A130064 (n + 1)).toNat

end

end A085393.P8255647105315178481

/-! ## A085393.P17490860319539525020

`A046665(A130064(n+1))`
-/

namespace A085393.P17490860319539525020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A130064 (n + 1)).toNat

end

end A085393.P17490860319539525020

/-! ## A085393.P16953627140812878715

`A046665((n+1)²/A130065(n+1))`
-/

namespace A085393.P16953627140812878715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A130065 (n + 1) : ℚ))).toNat

end

end A085393.P16953627140812878715

/-! ## A085393.P9869606498643387094

`A014673(A006530(n+1)*A014673(n+1))-A014673(n+1)`
-/

namespace A085393.P9869606498643387094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A006530 (n + 1) * A014673 (n + 1)).toNat - A014673 (n + 1)

end

end A085393.P9869606498643387094

/-!
# A085394: Numerators of convergents to Thue-Morse constant.

The programs for A085394, there is no canonical definition to state claims against.
-/

/-! ## A085394.P17127184791582548382

`A085396(n+1)-A085395(n+1)`
-/

namespace A085394.P17127184791582548382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085396 (n + 1) - A085395 (n + 1)

end

end A085394.P17127184791582548382

/-! ## A085394.P14075807496396437766

`A085396(A000027(n+1))%A085395(n+1)`
-/

namespace A085394.P14075807496396437766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085396 (A000027 (n + 1)).toNat) (A085395 (n + 1))

end

end A085394.P14075807496396437766

/-! ## A085394.P3045102676440302489

`A085396(n+1)%A085395(A090109(n+1))`
-/

namespace A085394.P3045102676440302489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085396 (n + 1)) (A085395 (A090109 (n + 1)).toNat)

end

end A085394.P3045102676440302489

/-!
# A085395: Denominators of convergents to the Thue-Morse constant 0.41245403364...

The programs for A085395, there is no canonical definition to state claims against.
-/

/-! ## A085395.P15741936935663633991

`A085396(n+1)-A085394(n+1)`
-/

namespace A085395.P15741936935663633991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085396 (n + 1) - A085394 (n + 1)

end

end A085395.P15741936935663633991

/-! ## A085395.P11677839118191470709

`A085396(n+1)+A057428(n)*A085394(n+1)`
-/

namespace A085395.P11677839118191470709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085396 (n + 1) + A057428 n * A085394 (n + 1)

end

end A085395.P11677839118191470709

/-! ## A085395.P10213688200160533938

`A248231(A165655(n)+A085396(n+1))`
-/

namespace A085395.P10213688200160533938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A165655 n + A085396 (n + 1)).toNat

end

end A085395.P10213688200160533938

/-!
# A085396: Numerator and denominator sums of convergents to the Thue-Morse constant, 0.412454033...

The programs for A085396, there is no canonical definition to state claims against.
-/

/-! ## A085396.P13720099474764178539

`A085394(n+1)+A085395(n+1)`
-/

namespace A085396.P13720099474764178539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085394 (n + 1) + A085395 (n + 1)

end

end A085396.P13720099474764178539

/-! ## A085396.P4797034075829972957

`A248231(2*A085395(n+1))`
-/

namespace A085396.P4797034075829972957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * A085395 (n + 1)).toNat

end

end A085396.P4797034075829972957

/-!
# A085397: Numbers that are not perfect powers and whose squarefree part is not congruent to 1 (mod 4).

The programs for A085397, there is no canonical definition to state claims against.
-/

/-! ## A085397.P13200056742586719975

`eq[A064894(n), A248843(A064921(n+2))]`
-/

namespace A085397.P13200056742586719975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248843 (A064921 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085397.P13200056742586719975

/-! ## A085397.P9788333045679823741

`lt[A000009(A000120(3*(n+1))), A124768(3*n+1)]`
-/

namespace A085397.P9788333045679823741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000120 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085397.P9788333045679823741

/-! ## A085397.P1254525111549483737

`eq[A064894(n), A327237(A226040(n))]`
-/

namespace A085397.P1254525111549483737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327237 (A226040 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085397.P1254525111549483737

/-! ## A085397.P7124928484363051169

`eq[A134014(n), A237768(A137795(n+1))]`
-/

namespace A085397.P7124928484363051169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237768 (A137795 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085397.P7124928484363051169

/-!
# A085399: Let Cn(x) be the n-th cyclotomic polynomial; a(n) is the first prime Cn(x) after Cn(1).

The programs for A085399, there is no canonical definition to state claims against.
-/

/-! ## A085399.P2123475969645222747

`p?[∑[char[10*n]]*A019320(n)]`
-/

namespace A085399.P2123475969645222747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A019320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085399.P2123475969645222747

/-! ## A085399.P2296620964322783001

`A330691(2*∏{p}[∑[2^n]², #])`
-/

namespace A085399.P2296620964322783001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (2 * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A085399.P2296620964322783001

/-! ## A085399.P3468612508512778753

`A330741(2*∏{p}[∑[2^n]², #])`
-/

namespace A085399.P3468612508512778753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (2 * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A085399.P3468612508512778753

/-! ## A085399.P3177551000688547545

`A330741(lcm(2, ∏{p}[∑[2^n]², #]))`
-/

namespace A085399.P3177551000688547545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A085399.P3177551000688547545

/-! ## A085399.P14007026536473082112

`p?[A019320(A004086(n))]`
-/

namespace A085399.P14007026536473082112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085399.P14007026536473082112

