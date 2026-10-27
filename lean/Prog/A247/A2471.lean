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
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A247100: The number of ways to write an n-bit binary string and then define each run of ones as an element in an equivalence relation.

The programs for A247100, there is no canonical definition to state claims against.
-/

/-! ## A247100.P8197323585915359845

`A261492(n+1)/2`
-/

namespace A247100.P8197323585915359845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261492 (n + 1) : ℚ) / 2

end

end A247100.P8197323585915359845

/-! ## A247100.P5695006118653985874

`Δ[∑[A261492(n)]/2]`
-/

namespace A247100.P5695006118653985874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261492 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247100.P5695006118653985874

/-! ## A247100.P14007506205050687308

`record[A261492(A007599(n))/2]`
-/

namespace A247100.P14007506205050687308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261492 (A007599 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247100.P14007506205050687308

/-! ## A247100.P7905630805617600187

`record[A261492(A123108(n))/2]`
-/

namespace A247100.P7905630805617600187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261492 (A123108 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247100.P7905630805617600187

/-! ## A247100.P12621506712251247860

`record[A261492(A286554(n))/2]`
-/

namespace A247100.P12621506712251247860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261492 (A286554 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247100.P12621506712251247860

/-!
# A247101: Primes p such that 2*(p^2-1) - 1 and 2*(p^2-1) + 1 are also primes.

The programs for A247101, there is no canonical definition to state claims against.
-/

/-! ## A247101.P8566757838886077012

`p?[A249446(n+1)]`
-/

namespace A247101.P8566757838886077012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247101.P8566757838886077012

/-! ## A247101.P13162886534433417881

`p?[record[A249446(A052938(n))]]`
-/

namespace A247101.P13162886534433417881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247101.P13162886534433417881

/-! ## A247101.P9612327577328968489

`p?[record[A249446(A154958(n))]]`
-/

namespace A247101.P9612327577328968489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247101.P9612327577328968489

/-! ## A247101.P2353402770663747194

`record[A020639(A249446(n+2))]`
-/

namespace A247101.P2353402770663747194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249446 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247101.P2353402770663747194

/-! ## A247101.P16598552403192902876

`filter[A249446(n+1), A010051(#)]`
-/

namespace A247101.P16598552403192902876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A247101.P16598552403192902876

/-! ## A247101.P8697499489743897320

`∩[A000040(n+1), A249446(n+1)]`
-/

namespace A247101.P8697499489743897320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P8697499489743897320

/-! ## A247101.P6768183495965488841

`∩[A008578(n+1), A249446(n+1)]`
-/

namespace A247101.P6768183495965488841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P6768183495965488841

/-! ## A247101.P9691982585860514592

`∩[A033946(n+1), A249446(n+1)]`
-/

namespace A247101.P9691982585860514592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P9691982585860514592

/-! ## A247101.P5530124228532251724

`∩[A045319(n+1), A249446(n+1)]`
-/

namespace A247101.P5530124228532251724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P5530124228532251724

/-! ## A247101.P2381193849994810900

`∩[A045320(n+1), A249446(n+1)]`
-/

namespace A247101.P2381193849994810900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P2381193849994810900

/-! ## A247101.P12087728550291248381

`∩[A045334(n+1), A249446(n+1)]`
-/

namespace A247101.P12087728550291248381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P12087728550291248381

/-! ## A247101.P15660305541095911791

`∩[A045344(n+1), A249446(n+1)]`
-/

namespace A247101.P15660305541095911791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P15660305541095911791

/-! ## A247101.P8879358154352857148

`∩[A045348(n+1), A249446(n+1)]`
-/

namespace A247101.P8879358154352857148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P8879358154352857148

/-! ## A247101.P11736319363732447089

`∩[A045371(n+1), A249446(n+1)]`
-/

namespace A247101.P11736319363732447089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P11736319363732447089

/-! ## A247101.P2324920084977782657

`∩[A053813(n+1), A249446(n+1)]`
-/

namespace A247101.P2324920084977782657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P2324920084977782657

/-! ## A247101.P114535364200491207

`∩[A064739(n+1), A249446(n+1)]`
-/

namespace A247101.P114535364200491207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P114535364200491207

/-! ## A247101.P12395485792825457260

`∩[A070957(n+1), A249446(n+1)]`
-/

namespace A247101.P12395485792825457260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P12395485792825457260

/-! ## A247101.P7588232874608456890

`∩[A097605(n+1), A249446(n+1)]`
-/

namespace A247101.P7588232874608456890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P7588232874608456890

/-! ## A247101.P514604981938485002

`∩[A106483(n+1), A249446(n+1)]`
-/

namespace A247101.P514604981938485002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247101.P514604981938485002

/-! ## A247101.P1994602215248111505

`filter[A249446(n+1), A323152(#)]`
-/

namespace A247101.P1994602215248111505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A247101.P1994602215248111505

/-!
# A247102: Expansion of g.f. (6*x+2)/(sqrt(-3*x^2-6*x+1)*(4*x^2+4*x)) - (2*x+1)/(2*x^2+2*x).

The programs for A247102, there is no canonical definition to state claims against.
-/

/-! ## A247102.P13367228055810237533

`A156351(A077413(n)+n+1)`
-/

namespace A247102.P13367228055810237533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A077413 n + (n + 1 : ℤ)).toNat

end

end A247102.P13367228055810237533

/-!
# A247103: Number of tilings of a 5 X n rectangle using n pentominoes of shapes I, N, P, U, T.

The programs for A247103, there is no canonical definition to state claims against.
-/

/-! ## A247103.P564920176077066045

`A325393(∑[2^n]-1)`
-/

namespace A247103.P564920176077066045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A247103.P564920176077066045

/-! ## A247103.P15263871855330657292

`A250745(or(1, n)*a(n-1))` with `a(0)=1`
-/

namespace A247103.P15263871855330657292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250745 ((Nat.lor 1 n : ℤ) * a (n - 1)).toNat

end

end A247103.P15263871855330657292

/-!
# A247104: Squarefree self-numbers.

The programs for A247104, there is no canonical definition to state claims against.
-/

/-! ## A247104.P13913810559292989110

`record[A007913(A003052(n+2))]`
-/

namespace A247104.P13913810559292989110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003052 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247104.P13913810559292989110

/-! ## A247104.P4947714968320191147

`filter[A003052(n+2), A008966(#)]`
-/

namespace A247104.P4947714968320191147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A247104.P4947714968320191147

/-! ## A247104.P12618953767326641526

`∩[A003052(n+1), A005117(n+3)]`
-/

namespace A247104.P12618953767326641526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247104.P12618953767326641526

/-! ## A247104.P10974479490014707527

`filter[A003052(n+2), A323154(#)]`
-/

namespace A247104.P10974479490014707527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A247104.P10974479490014707527

/-! ## A247104.P6740609133086656994

`∩[A003052(n+1), A366882(n+1)]`
-/

namespace A247104.P6740609133086656994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247104.P6740609133086656994

/-! ## A247104.P13630571352482729051

`∩[A003052(n+1), A144338(n+1)]`
-/

namespace A247104.P13630571352482729051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247104.P13630571352482729051

/-! ## A247104.P12877711855065873089

`record[A007913(A036233(n+3))]`
-/

namespace A247104.P12877711855065873089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A036233 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247104.P12877711855065873089

/-! ## A247104.P17166936449793005668

`eq[tan(A087049(n)), A230093(n)]`
-/

namespace A247104.P17166936449793005668
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A087049 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A247104.P17166936449793005668

/-! ## A247104.P4753868787064068740

`eq[A105570(n), A230093(A233583(n+1))]`
-/

namespace A247104.P4753868787064068740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247104.P4753868787064068740

/-!
# A247105: Variation of Flavius Josephus's sieve: Start with the natural numbers; at the k-th sieving step, make k passes removing every k-th term of the sequence remaining after the previous sieving step; iterate.

The programs for A247105, there is no canonical definition to state claims against.
-/

/-! ## A247105.P11196687695837895881

`A124741(A022634(n))`
-/

namespace A247105.P11196687695837895881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A022634 n).toNat

end

end A247105.P11196687695837895881

/-!
# A247107: a(0) = 0, a(n) = previous term + repunit of length of previous term for n > 0.

The programs for A247107, there is no canonical definition to state claims against.
-/

/-! ## A247107.P8532815365018387651

`A256079(a(n-1))` with `a(0)=0`
-/

namespace A247107.P8532815365018387651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256079 (a (n - 1)).toNat

end

end A247107.P8532815365018387651

/-! ## A247107.P18410352499525024687

`record[A355224(n)-A004216(n+1)]`
-/

namespace A247107.P18410352499525024687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n - A004216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247107.P18410352499525024687

/-! ## A247107.P13556233214469064857

`A010785(n)-A107846(A010785(n))`
-/

namespace A247107.P13556233214469064857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n - A107846 (A010785 n).toNat

end

end A247107.P13556233214469064857

/-! ## A247107.P11242731854592583620

`A152966(n)/2-A107846(A152966(n)/2)`
-/

namespace A247107.P11242731854592583620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152966 n : ℚ) / 2 - (A107846 (SequenceMachineLib.roundAway ((A152966 n : ℚ) / 2)).toNat : ℚ)

end

end A247107.P11242731854592583620

/-! ## A247107.P6868373961995765754

`A061511(n)%Δ[A287768(3*n+2)]`
-/

namespace A247107.P6868373961995765754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287768 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061511 n) (f1 (n + 1) - f1 n)

end

end A247107.P6868373961995765754

/-!
# A247109: Number of permutations of length n with two 4-sequences.

The programs for A247109, there is no canonical definition to state claims against.
-/

/-! ## A247109.P17707954276565109774

`A008647(A299920(n)+A126472(n))`
-/

namespace A247109.P17707954276565109774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A299920 n + A126472 n).toNat

end

end A247109.P17707954276565109774

/-!
# A247110: n + reversal of digits of n, when n is not palindromic.

The programs for A247110, there is no canonical definition to state claims against.
-/

/-! ## A247110.P9522821594908178641

`11*∑{digits}[A029742(n+1), #]`
-/

namespace A247110.P9522821594908178641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A247110.P9522821594908178641

/-! ## A247110.P6147413110891106139

`11*∑{digits}[A031955(n+1), #]`
-/

namespace A247110.P6147413110891106139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A247110.P6147413110891106139

/-! ## A247110.P6801385018902006843

`11*∑{digits}[A139819(n+1), #]`
-/

namespace A247110.P6801385018902006843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A247110.P6801385018902006843

/-! ## A247110.P12525071545282144269

`A056964(record[lcm(11, n+10)/11])`
-/

namespace A247110.P12525071545282144269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (n + 10) : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A247110.P12525071545282144269

/-! ## A247110.P8854310986165969579

`A045876(comp[11*(∑{e}[n+1, #]+1)]+11)`
-/

namespace A247110.P8854310986165969579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045876 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 11)

end

end A247110.P8854310986165969579

/-! ## A247110.P15098765717307331405

`A052008(record[A073731(n)])`
-/

namespace A247110.P15098765717307331405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247110.P15098765717307331405

/-! ## A247110.P13052900261992519107

`A052008(lt[0, A347688(n)])`
-/

namespace A247110.P13052900261992519107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A247110.P13052900261992519107

/-! ## A247110.P4275899380743995867

`A139819(n+1)+A004086(A280824(n+1))`
-/

namespace A247110.P4275899380743995867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1) + A004086 (A280824 (n + 1)).toNat

end

end A247110.P4275899380743995867

/-!
# A247111: Integers k such that sigma(sigma(k) - k) = 2*k, where sigma is the sum of divisors, A000203.

The programs for A247111, there is no canonical definition to state claims against.
-/

/-! ## A247111.P906303574314926098

`C(A191611(n+1)+1, 2)`
-/

namespace A247111.P906303574314926098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A191611 (n + 1) + 1).toNat 2

end

end A247111.P906303574314926098

/-! ## A247111.P7039376815465368337

`C(record[∑{p}[A324548(n+4), #]]+1, 2)`
-/

namespace A247111.P7039376815465368337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324548 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 2

end

end A247111.P7039376815465368337

/-! ## A247111.P4969608505241973468

`record[∏{e}[A133016(n+2), A000396(#)]]`
-/

namespace A247111.P4969608505241973468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133016 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000396 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247111.P4969608505241973468

/-!
# A247112: Floor of sums of the cubes of the non-integer square roots of n, as partitioned by the integer roots: floor(Sum_{j=n^2+1..(n+1)^2-1} j^(3/2)).

The programs for A247112, the canonical program `A247112.P14551005916968592824` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247112 has offset 0).

The definition of A247112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247112.P14551005916968592824

`n*(4*n^3+6*n²+5*n+1)/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247112

/-- `n*(4*n^3+6*n²+5*n+1)/2` -/
def P14551005916968592824.Spec : Prop :=
  ∀ n, P14551005916968592824.a n = (A247112 n : ℚ)

end A247112

/-! ## A247112.P1345958473962657474

`A339483(n)-n^3`
-/

namespace A247112.P1345958473962657474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n - (n ^ 3 : ℤ)

end

end A247112.P1345958473962657474

namespace A247112

/-- `A339483(n)-n^3` -/
def P1345958473962657474.Spec : Prop :=
  ∀ n, P1345958473962657474.a n = A247112 n

end A247112

/-! ## A247112.P5984536179500789554

`n*A005898(n)-∑[n]`
-/

namespace A247112.P5984536179500789554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005898 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247112.P5984536179500789554

namespace A247112

/-- `n*A005898(n)-∑[n]` -/
def P5984536179500789554.Spec : Prop :=
  ∀ n, P5984536179500789554.a n = A247112 n

end A247112

/-! ## A247112.P4463852591710460649

`A294433(n)-(n+1)^3`
-/

namespace A247112.P4463852591710460649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n - ((n + 1) ^ 3 : ℤ)

end

end A247112.P4463852591710460649

namespace A247112

/-- `A294433(n)-(n+1)^3` -/
def P4463852591710460649.Spec : Prop :=
  ∀ n, P4463852591710460649.a n = A247112 n

end A247112

/-! ## A247112.P14878680913559939232

`A160767(n)-∑[n+1]²`
-/

namespace A247112.P14878680913559939232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160767 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A247112.P14878680913559939232

namespace A247112

/-- `A160767(n)-∑[n+1]²` -/
def P14878680913559939232.Spec : Prop :=
  ∀ n, P14878680913559939232.a n = A247112 n

end A247112

/-! ## A247112.P13752909714204481189

`A219086(n)+A100019(n)`
-/

namespace A247112.P13752909714204481189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + A100019 n

end

end A247112.P13752909714204481189

namespace A247112

/-- `A219086(n)+A100019(n)` -/
def P13752909714204481189.Spec : Prop :=
  ∀ n, P13752909714204481189.a n = A247112 n

end A247112

/-! ## A247112.P9025522430651352494

`A096129(n)-A081441(n)`
-/

namespace A247112.P9025522430651352494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096129 n - A081441 n

end

end A247112.P9025522430651352494

namespace A247112

/-- `A096129(n)-A081441(n)` -/
def P9025522430651352494.Spec : Prop :=
  ∀ n, P9025522430651352494.a n = A247112 n

end A247112

/-! ## A247112.P17529164346345209665

`A254371(n)-A160378(n)`
-/

namespace A247112.P17529164346345209665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n - A160378 n

end

end A247112.P17529164346345209665

namespace A247112

/-- `A254371(n)-A160378(n)` -/
def P17529164346345209665.Spec : Prop :=
  ∀ n, P17529164346345209665.a n = A247112 n

end A247112

/-! ## A247112.P17358220412638480219

`A384288(n)-A147656(n)`
-/

namespace A247112.P17358220412638480219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384288 n - A147656 n

end

end A247112.P17358220412638480219

namespace A247112

/-- `A384288(n)-A147656(n)` -/
def P17358220412638480219.Spec : Prop :=
  ∀ n, P17358220412638480219.a n = A247112 n

end A247112

/-! ## A247112.P10459582982553972202

`A008514(n)-A002414(n+1)`
-/

namespace A247112.P10459582982553972202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n - A002414 (n + 1)

end

end A247112.P10459582982553972202

namespace A247112

/-- `A008514(n)-A002414(n+1)` -/
def P10459582982553972202.Spec : Prop :=
  ∀ n, P10459582982553972202.a n = A247112 n

end A247112

/-! ## A247112.P3020161375461511784

`A237516(n+1)-A081436(n)`
-/

namespace A247112.P3020161375461511784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) - A081436 n

end

end A247112.P3020161375461511784

namespace A247112

/-- `A237516(n+1)-A081436(n)` -/
def P3020161375461511784.Spec : Prop :=
  ∀ n, P3020161375461511784.a n = A247112 n

end A247112

/-! ## A247112.P1033634849943613607

`A160747(n)-A179298(n+1)`
-/

namespace A247112.P1033634849943613607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n - A179298 (n + 1)

end

end A247112.P1033634849943613607

namespace A247112

/-- `A160747(n)-A179298(n+1)` -/
def P1033634849943613607.Spec : Prop :=
  ∀ n, P1033634849943613607.a n = A247112 n

end A247112

/-! ## A247112.P10016639680649134114

`A059270(n)+n²*A001844(n)`
-/

namespace A247112.P10016639680649134114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + (n ^ 2 : ℤ) * A001844 n

end

end A247112.P10016639680649134114

namespace A247112

/-- `A059270(n)+n²*A001844(n)` -/
def P10016639680649134114.Spec : Prop :=
  ∀ n, P10016639680649134114.a n = A247112 n

end A247112

/-! ## A247112.P7945978164916648325

`A357042(n+1)-A063491(n+1)`
-/

namespace A247112.P7945978164916648325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357042 (n + 1) - A063491 (n + 1)

end

end A247112.P7945978164916648325

namespace A247112

/-- `A357042(n+1)-A063491(n+1)` -/
def P7945978164916648325.Spec : Prop :=
  ∀ n, P7945978164916648325.a n = A247112 n

end A247112

/-! ## A247112.P7248502112609967178

`A005449(n)+n²*A000384(n+1)`
-/

namespace A247112.P7248502112609967178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (n ^ 2 : ℤ) * A000384 (n + 1)

end

end A247112.P7248502112609967178

namespace A247112

/-- `A005449(n)+n²*A000384(n+1)` -/
def P7248502112609967178.Spec : Prop :=
  ∀ n, P7248502112609967178.a n = A247112 n

end A247112

/-! ## A247112.P6041188232722379015

`n²+A000217(n)*A054569(n+1)`
-/

namespace A247112.P6041188232722379015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000217 n * A054569 (n + 1)

end

end A247112.P6041188232722379015

namespace A247112

/-- `n²+A000217(n)*A054569(n+1)` -/
def P6041188232722379015.Spec : Prop :=
  ∀ n, P6041188232722379015.a n = A247112 n

end A247112

/-! ## A247112.P16289793291231694254

`A037270(n)+A000217(n)*A003215(n)`
-/

namespace A247112.P16289793291231694254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + A000217 n * A003215 n

end

end A247112.P16289793291231694254

namespace A247112

/-- `A037270(n)+A000217(n)*A003215(n)` -/
def P16289793291231694254.Spec : Prop :=
  ∀ n, P16289793291231694254.a n = A247112 n

end A247112

/-! ## A247112.P15088960780058885819

`A000217(n)+n²*A130883(n+1)`
-/

namespace A247112.P15088960780058885819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (n ^ 2 : ℤ) * A130883 (n + 1)

end

end A247112.P15088960780058885819

namespace A247112

/-- `A000217(n)+n²*A130883(n+1)` -/
def P15088960780058885819.Spec : Prop :=
  ∀ n, P15088960780058885819.a n = A247112 n

end A247112

/-! ## A247112.P15395260634800243294

`A160765(n+1)+A160767(n)-A070302(n+2)`
-/

namespace A247112.P15395260634800243294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 (n + 1) + (A160767 n - A070302 (n + 2))

end

end A247112.P15395260634800243294

namespace A247112

/-- `A160765(n+1)+A160767(n)-A070302(n+2)` -/
def P15395260634800243294.Spec : Prop :=
  ∀ n, P15395260634800243294.a n = A247112 n

end A247112

/-! ## A247112.P12312337133012446138

`A144335(2*n+1)-A064999(n)`
-/

namespace A247112.P12312337133012446138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144335 (2 * n + 1) - A064999 n

end

end A247112.P12312337133012446138

namespace A247112

/-- `A144335(2*n+1)-A064999(n)` -/
def P12312337133012446138.Spec : Prop :=
  ∀ n, P12312337133012446138.a n = A247112 n

end A247112

/-!
# A247114: Primes sandwiched between 4-almost primes (A014613).

The programs for A247114, the canonical program `A247114.P1905435717442076473` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247114 has offset 1).

The definition of A247114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247114.P1905435717442076473

`p?[2*A259504(n+1)+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A247114

/-- `p?[2*A259504(n+1)+1]` -/
def P1905435717442076473.Spec : Prop :=
  ∀ n, P1905435717442076473.a n = A247114 (n + 1)

theorem P1905435717442076473.correct : P1905435717442076473.Spec := by
  intro n
  simp only [A247114, Nat.add_sub_cancel]

end A247114

/-! ## A247114.P16707322831103678561

`p?[A157484(n+1)]`
-/

namespace A247114.P16707322831103678561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247114.P16707322831103678561

namespace A247114

/-- `p?[A157484(n+1)]` -/
def P16707322831103678561.Spec : Prop :=
  ∀ n, P16707322831103678561.a n = A247114 (n + 1)

end A247114

/-! ## A247114.P2545364461997969066

`p?[A180150(n+1)+1]`
-/

namespace A247114.P2545364461997969066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180150 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247114.P2545364461997969066

namespace A247114

/-- `p?[A180150(n+1)+1]` -/
def P2545364461997969066.Spec : Prop :=
  ∀ n, P2545364461997969066.a n = A247114 (n + 1)

end A247114

/-! ## A247114.P15125084462754044257

`∩[A115103(n+1), A157484(n+1)]`
-/

namespace A247114.P15125084462754044257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P15125084462754044257

namespace A247114

/-- `∩[A115103(n+1), A157484(n+1)]` -/
def P15125084462754044257.Spec : Prop :=
  ∀ n, (P15125084462754044257.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P16018940596801874002

`∩[A009087(n+1), A157484(n+1)]`
-/

namespace A247114.P16018940596801874002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P16018940596801874002

namespace A247114

/-- `∩[A009087(n+1), A157484(n+1)]` -/
def P16018940596801874002.Spec : Prop :=
  ∀ n, (P16018940596801874002.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P18340328844285307427

`∩[A060254(n+1), A157484(n+1)]`
-/

namespace A247114.P18340328844285307427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P18340328844285307427

namespace A247114

/-- `∩[A060254(n+1), A157484(n+1)]` -/
def P18340328844285307427.Spec : Prop :=
  ∀ n, (P18340328844285307427.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P8941617311722545923

`∩[A157484(n+1), A167915(n+1)]`
-/

namespace A247114.P8941617311722545923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P8941617311722545923

namespace A247114

/-- `∩[A157484(n+1), A167915(n+1)]` -/
def P8941617311722545923.Spec : Prop :=
  ∀ n, (P8941617311722545923.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P2283387478122223743

`∩[A157484(n+1), A176902(n+1)]`
-/

namespace A247114.P2283387478122223743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P2283387478122223743

namespace A247114

/-- `∩[A157484(n+1), A176902(n+1)]` -/
def P2283387478122223743.Spec : Prop :=
  ∀ n, (P2283387478122223743.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P17988885292304349412

`∩[A034849(n+1), A157484(n+1)]`
-/

namespace A247114.P17988885292304349412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P17988885292304349412

namespace A247114

/-- `∩[A034849(n+1), A157484(n+1)]` -/
def P17988885292304349412.Spec : Prop :=
  ∀ n, (P17988885292304349412.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P8144870922813186755

`∩[A157484(n+1), A176897(n+1)]`
-/

namespace A247114.P8144870922813186755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P8144870922813186755

namespace A247114

/-- `∩[A157484(n+1), A176897(n+1)]` -/
def P8144870922813186755.Spec : Prop :=
  ∀ n, (P8144870922813186755.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P4851193959180976738

`∩[A157484(n+1), A099184(n+2)]`
-/

namespace A247114.P4851193959180976738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P4851193959180976738

namespace A247114

/-- `∩[A157484(n+1), A099184(n+2)]` -/
def P4851193959180976738.Spec : Prop :=
  ∀ n, (P4851193959180976738.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P2607015882825694783

`∩[A059456(n+1), A157484(n+1)]`
-/

namespace A247114.P2607015882825694783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P2607015882825694783

namespace A247114

/-- `∩[A059456(n+1), A157484(n+1)]` -/
def P2607015882825694783.Spec : Prop :=
  ∀ n, (P2607015882825694783.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P3422331908813351869

`∩[A078132(n+1), A157484(n+1)]`
-/

namespace A247114.P3422331908813351869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P3422331908813351869

namespace A247114

/-- `∩[A078132(n+1), A157484(n+1)]` -/
def P3422331908813351869.Spec : Prop :=
  ∀ n, (P3422331908813351869.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P8357378976425596152

`∩[A087490(n+1), A157484(n+1)]`
-/

namespace A247114.P8357378976425596152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P8357378976425596152

namespace A247114

/-- `∩[A087490(n+1), A157484(n+1)]` -/
def P8357378976425596152.Spec : Prop :=
  ∀ n, (P8357378976425596152.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P16551626091647840002

`∩[A122259(n+1), A157484(n+1)]`
-/

namespace A247114.P16551626091647840002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P16551626091647840002

namespace A247114

/-- `∩[A122259(n+1), A157484(n+1)]` -/
def P16551626091647840002.Spec : Prop :=
  ∀ n, (P16551626091647840002.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P3518108677681697749

`∩[A157484(n+1), A178456(n+1)]`
-/

namespace A247114.P3518108677681697749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P3518108677681697749

namespace A247114

/-- `∩[A157484(n+1), A178456(n+1)]` -/
def P3518108677681697749.Spec : Prop :=
  ∀ n, (P3518108677681697749.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P12638308245592950765

`∩[A157484(n+1), A316971(n+1)]`
-/

namespace A247114.P12638308245592950765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P12638308245592950765

namespace A247114

/-- `∩[A157484(n+1), A316971(n+1)]` -/
def P12638308245592950765.Spec : Prop :=
  ∀ n, (P12638308245592950765.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P556907506294562783

`∩[A000040(n+1), A157484(n+1)]`
-/

namespace A247114.P556907506294562783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P556907506294562783

namespace A247114

/-- `∩[A000040(n+1), A157484(n+1)]` -/
def P556907506294562783.Spec : Prop :=
  ∀ n, (P556907506294562783.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P12192210185328149719

`∩[A004139(n+1), A157484(n+1)]`
-/

namespace A247114.P12192210185328149719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P12192210185328149719

namespace A247114

/-- `∩[A004139(n+1), A157484(n+1)]` -/
def P12192210185328149719.Spec : Prop :=
  ∀ n, (P12192210185328149719.a n : ℤ) = A247114 (n + 1)

end A247114

/-! ## A247114.P2978358813604040212

`∩[A006005(n+1), A157484(n+1)]`
-/

namespace A247114.P2978358813604040212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247114.P2978358813604040212

namespace A247114

/-- `∩[A006005(n+1), A157484(n+1)]` -/
def P2978358813604040212.Spec : Prop :=
  ∀ n, (P2978358813604040212.a n : ℤ) = A247114 (n + 1)

end A247114

/-!
# A247115: Denominator of the harmonic mean of the first n heptagonal numbers.

The programs for A247115, there is no canonical definition to state claims against.
-/

/-! ## A247115.P9764854707769440038

`A244226(A294812(n+1))*A294826(n)`
-/

namespace A247115.P9764854707769440038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A294812 (n + 1)).toNat * A294826 n

end

end A247115.P9764854707769440038

/-! ## A247115.P15933859602242852247

`A294336(A341221(n+3))*A294826(n)`
-/

namespace A247115.P15933859602242852247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (A341221 (n + 3)).toNat * A294826 n

end

end A247115.P15933859602242852247

/-! ## A247115.P4741102199024943072

`A294826(n)*A331048(A333217(3*(n+1)))`
-/

namespace A247115.P4741102199024943072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294826 n * A331048 (A333217 (3 * (n + 1))).toNat

end

end A247115.P4741102199024943072

/-! ## A247115.P2418736810429236810

`A294826(n)*A296774(A107635(n))`
-/

namespace A247115.P2418736810429236810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294826 n * A296774 (A107635 n).toNat

end

end A247115.P2418736810429236810

/-! ## A247115.P12042984546055761676

`A094781(A116469(n+1))*A294826(n)`
-/

namespace A247115.P12042984546055761676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094781 (A116469 (n + 1)).toNat * A294826 n

end

end A247115.P12042984546055761676

/-!
# A247117: Number of tilings of a 10 X n rectangle using 2n pentominoes of shape I.

The programs for A247117, there is no canonical definition to state claims against.
-/

/-! ## A247117.P15963876383107378793

`A250662(A055999(n+3))`
-/

namespace A247117.P15963876383107378793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A055999 (n + 3)).toNat

end

end A247117.P15963876383107378793

/-! ## A247117.P9682775401450968482

`A250662(A052905(n+3)-1)`
-/

namespace A247117.P9682775401450968482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A052905 (n + 3) - 1).toNat

end

end A247117.P9682775401450968482

/-! ## A247117.P11919070380812605635

`A250662(A056000(n+2)+4)`
-/

namespace A247117.P11919070380812605635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A056000 (n + 2) + 4).toNat

end

end A247117.P11919070380812605635

/-! ## A247117.P14117634484414928636

`A250662(A046691(n+4)-2)`
-/

namespace A247117.P14117634484414928636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A046691 (n + 4) - 2).toNat

end

end A247117.P14117634484414928636

/-! ## A247117.P756587468932605379

`A250662(A034856(n+5)-4)`
-/

namespace A247117.P756587468932605379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A034856 (n + 5) - 4).toNat

end

end A247117.P756587468932605379

/-! ## A247117.P8103640347824933590

`A250662(A000096(n+5)-5)`
-/

namespace A247117.P8103640347824933590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000096 (n + 5) - 5).toNat

end

end A247117.P8103640347824933590

/-! ## A247117.P13354349577862385179

`A250662(A000217(n+6)-6)`
-/

namespace A247117.P13354349577862385179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000217 (n + 6) - 6).toNat

end

end A247117.P13354349577862385179

/-! ## A247117.P3840424752053359177

`A250662(A000124(n+6)-7)`
-/

namespace A247117.P3840424752053359177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000124 (n + 6) - 7).toNat

end

end A247117.P3840424752053359177

/-! ## A247117.P10860007842340732130

`A250662(A167499(n+3)+A005843(n))`
-/

namespace A247117.P10860007842340732130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A167499 (n + 3) + A005843 n).toNat

end

end A247117.P10860007842340732130

/-! ## A247117.P11421381262166772209

`A250662(A167499(n+3)+A004275(n+1))`
-/

namespace A247117.P11421381262166772209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A167499 (n + 3) + A004275 (n + 1)).toNat

end

end A247117.P11421381262166772209

/-!
# A247118: Number of tilings of a 10 X n rectangle using 2n pentominoes of shape Y.

The programs for A247118, there is no canonical definition to state claims against.
-/

/-! ## A247118.P8993164888089262061

`A004396(A160604(n))*A079998(n)`
-/

namespace A247118.P8993164888089262061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A160604 n).toNat * A079998 n

end

end A247118.P8993164888089262061

/-! ## A247118.P18223553171871992039

`A071090(A250120(n))*A321411(n)`
-/

namespace A247118.P18223553171871992039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (A250120 n).toNat * A321411 n

end

end A247118.P18223553171871992039

/-! ## A247118.P12803002528471791580

`A327505(A000045(n)%A266231(n+1))`
-/

namespace A247118.P12803002528471791580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 (Int.tmod (A000045 n) (A266231 (n + 1))).toNat

end

end A247118.P12803002528471791580

/-! ## A247118.P7047821281621967242

`A010894(A045066(n+1))*A270613(n+1)`
-/

namespace A247118.P7047821281621967242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A045066 (n + 1)).toNat + 21) * A270613 (n + 1)

end

end A247118.P7047821281621967242

/-!
# A247119: Number of tilings of a 10 X n rectangle using 2n pentominoes of shape P.

The programs for A247119, there is no canonical definition to state claims against.
-/

/-! ## A247119.P15135785986295021870

`Δ[A281723(Δ[A000041(n+2)])]`
-/

namespace A247119.P15135785986295021870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281723 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247119.P15135785986295021870

/-! ## A247119.P13924828866563211096

`and(A223168(3*n+1), A226624(2*5^n))`
-/

namespace A247119.P13924828866563211096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A223168 (3 * n + 1)) (A226624 (2 * 5 ^ n))

end

end A247119.P13924828866563211096

/-!
# A247121: Number of tilings of a 5 X 2n rectangle using 2n pentominoes of shapes P, U.

The programs for A247121, there is no canonical definition to state claims against.
-/

/-! ## A247121.P13761072203915528884

`ceil(2^(n-1))*A350945(2^n)`
-/

namespace A247121.P13761072203915528884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A350945 (2 ^ n)

end

end A247121.P13761072203915528884

/-! ## A247121.P9015485012267020989

`record[A067856(n+1)*A350945(n+1)]`
-/

namespace A247121.P9015485012267020989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1) * A350945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247121.P9015485012267020989

/-!
# A247122: Primes p such that the digit sum of p is an odd composite number.

The programs for A247122, the canonical program `A247122.P6428135620263079881` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247122 has offset 1).

The definition of A247122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247122.P6428135620263079881

`∩[A104213(n+1), A119450(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A247122

/-- `∩[A104213(n+1), A119450(n+1)]` -/
def P6428135620263079881.Spec : Prop :=
  ∀ n, (P6428135620263079881.a n : ℤ) = A247122 (n + 1)

theorem P6428135620263079881.correct : P6428135620263079881.Spec := by
  intro n
  simp only [A247122, Nat.add_sub_cancel]

end A247122

/-!
# A247123: Palindromes obtained after one iteration of Reverse and Add applied to the terms of A015976.

The programs for A247123, there is no canonical definition to state claims against.
-/

/-! ## A247123.P8927821674506555942

`A052008(A015976(n+1))`
-/

namespace A247123.P8927821674506555942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (A015976 (n + 1)).toNat

end

end A247123.P8927821674506555942

/-! ## A247123.P12552210060422771272

`A052008(eq[1, A225538(n)]+1)`
-/

namespace A247123.P12552210060422771272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247123.P12552210060422771272

/-! ## A247123.P11363620816844081404

`A056964(eq[1, A225538(n)]+1)`
-/

namespace A247123.P11363620816844081404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247123.P11363620816844081404

/-! ## A247123.P15555655225080010268

`filter[A052008(n+1), A136522(#)]`
-/

namespace A247123.P15555655225080010268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A247123.P15555655225080010268

/-! ## A247123.P3702686282493932801

`filter[A056964(n+1), A136522(#)]`
-/

namespace A247123.P3702686282493932801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A247123.P3702686282493932801

/-!
# A247124: Number of tilings of a 5 X n rectangle using n pentominoes of shapes I, U, X.

The programs for A247124, there is no canonical definition to state claims against.
-/

/-! ## A247124.P1963088118110172171

`A186519(A186519(n+1)+A001523(n))`
-/

namespace A247124.P1963088118110172171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186519 (A186519 (n + 1) + A001523 n).toNat

end

end A247124.P1963088118110172171

/-! ## A247124.P14898138269356803202

`A147795(A025223(n+1))+1`
-/

namespace A247124.P14898138269356803202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147795 (A025223 (n + 1)).toNat + 1

end

end A247124.P14898138269356803202

/-! ## A247124.P1540124321656099924

`A280710(A116485(n))+A098482(n)`
-/

namespace A247124.P1540124321656099924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A116485 n).toNat + A098482 n

end

end A247124.P1540124321656099924

/-! ## A247124.P5319726820232457213

`A331416(A107867(n+1))+A098482(n)`
-/

namespace A247124.P5319726820232457213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A107867 (n + 1)).toNat + A098482 n

end

end A247124.P5319726820232457213

/-!
# A247128: Positive numbers that are congruent to {0,5,9,13,17} mod 22.

The programs for A247128, the canonical program `A247128.P13409766879198222715` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247128 has offset 1).

The definition of A247128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247128.P13409766879198222715

`a(n-5)+22` with `a(0)=5, a(1)=9, a(2)=13, a(3)=17, a(4)=22`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247128

/-- `a(n-5)+22` -/
def P13409766879198222715.Spec : Prop :=
  ∀ n, (P13409766879198222715.a n : ℤ) = A247128 (n + 1)

theorem P13409766879198222715.correct : P13409766879198222715.Spec := by
  intro n
  simp only [A247128, Nat.add_sub_cancel]

end A247128

/-! ## A247128.P15819808695522884658

`∑[5-(∑[n]^4)%5]`
-/

namespace A247128.P15819808695522884658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 4 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P15819808695522884658

namespace A247128

/-- `∑[5-(∑[n]^4)%5]` -/
def P15819808695522884658.Spec : Prop :=
  ∀ n, P15819808695522884658.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P1880954413810172335

`∑[gcd(2, ∑[n]%5)+3]`
-/

namespace A247128.P1880954413810172335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((∑ j ∈ Finset.range (n + 1), f2 j) % 5) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P1880954413810172335

namespace A247128

/-- `∑[gcd(2, ∑[n]%5)+3]` -/
def P1880954413810172335.Spec : Prop :=
  ∀ n, (P1880954413810172335.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P16893684869332657241

`∑[abs(a(n-5))]` with `a(0)=5, a(1)=4, a(2)=4, a(3)=4, a(4)=5`
-/

namespace A247128.P16893684869332657241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 4, 4, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P16893684869332657241

namespace A247128

/-- `∑[abs(a(n-5))]` -/
def P16893684869332657241.Spec : Prop :=
  ∀ n, (P16893684869332657241.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P9192128655142297070

`∑[dr(a(n-5))]` with `a(0)=5, a(1)=4, a(2)=4, a(3)=4, a(4)=5`
-/

namespace A247128.P9192128655142297070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 4, 4, 5] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 5) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P9192128655142297070

namespace A247128

/-- `∑[dr(a(n-5))]` -/
def P9192128655142297070.Spec : Prop :=
  ∀ n, (P9192128655142297070.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P13459762647206004956

`∑[floor(a(n-5))]` with `a(0)=5, a(1)=4, a(2)=4, a(3)=4, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A247128.P13459762647206004956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 4, 4, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P13459762647206004956

namespace A247128

/-- `∑[floor(a(n-5))]` -/
def P13459762647206004956.Spec : Prop :=
  ∀ n, (P13459762647206004956.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P4544794663067831787

`∑[ceil(a(n-5))]` with `a(0)=5, a(1)=4, a(2)=4, a(3)=4, a(4)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A247128.P4544794663067831787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 4, 4, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P4544794663067831787

namespace A247128

/-- `∑[ceil(a(n-5))]` -/
def P4544794663067831787.Spec : Prop :=
  ∀ n, (P4544794663067831787.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P17084378562280502159

`∑[or(4, (2*n+1)²%5)]`
-/

namespace A247128.P17084378562280502159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 ((2 * n + 1) ^ 2 % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P17084378562280502159

namespace A247128

/-- `∑[or(4, (2*n+1)²%5)]` -/
def P17084378562280502159.Spec : Prop :=
  ∀ n, (P17084378562280502159.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P12482440794698622969

`∑[a(n-5)%6]` with `a(0)=5, a(1)=4, a(2)=4, a(3)=4, a(4)=5`
-/

namespace A247128.P12482440794698622969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 4, 4, 5] fun n f1 =>
  f1 (n - 5) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P12482440794698622969

namespace A247128

/-- `∑[a(n-5)%6]` -/
def P12482440794698622969.Spec : Prop :=
  ∀ n, (P12482440794698622969.a n : ℤ) = A247128 (n + 1)

end A247128

/-! ## A247128.P6995463429948466271

`A016969(n)-A047511(n+1)`
-/

namespace A247128.P6995463429948466271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A047511 (n + 1)

end

end A247128.P6995463429948466271

namespace A247128

/-- `A016969(n)-A047511(n+1)` -/
def P6995463429948466271.Spec : Prop :=
  ∀ n, P6995463429948466271.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P14813650251597525815

`A180486(n+1)+A047373(n+1)`
-/

namespace A247128.P14813650251597525815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1) + A047373 (n + 1)

end

end A247128.P14813650251597525815

namespace A247128

/-- `A180486(n+1)+A047373(n+1)` -/
def P14813650251597525815.Spec : Prop :=
  ∀ n, P14813650251597525815.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P9078110935531751204

`A047302(n+1)+A016789(n)+2`
-/

namespace A247128.P9078110935531751204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047302 (n + 1) + (A016789 n + 2)

end

end A247128.P9078110935531751204

namespace A247128

/-- `A047302(n+1)+A016789(n)+2` -/
def P9078110935531751204.Spec : Prop :=
  ∀ n, P9078110935531751204.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P7289796027928313248

`A047363(n+2)+3*(n+1)`
-/

namespace A247128.P7289796027928313248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 2) + (3 * (n + 1) : ℤ)

end

end A247128.P7289796027928313248

namespace A247128

/-- `A047363(n+2)+3*(n+1)` -/
def P7289796027928313248.Spec : Prop :=
  ∀ n, P7289796027928313248.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P9773573266210173462

`6*(n+1)-A047486(n+2)`
-/

namespace A247128.P9773573266210173462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A047486 (n + 2)

end

end A247128.P9773573266210173462

namespace A247128

/-- `6*(n+1)-A047486(n+2)` -/
def P9773573266210173462.Spec : Prop :=
  ∀ n, P9773573266210173462.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P17337600654871492310

`∑[A047311(Δ[A047309(n+1)])]`
-/

namespace A247128.P17337600654871492310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047311 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P17337600654871492310

namespace A247128

/-- `∑[A047311(Δ[A047309(n+1)])]` -/
def P17337600654871492310.Spec : Prop :=
  ∀ n, P17337600654871492310.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P7490584760782800605

`∑[A047311(Δ[A047363(n+1)])]`
-/

namespace A247128.P7490584760782800605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047311 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P7490584760782800605

namespace A247128

/-- `∑[A047311(Δ[A047363(n+1)])]` -/
def P7490584760782800605.Spec : Prop :=
  ∀ n, P7490584760782800605.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P4089290122506309988

`A315707(n+1)-A047299(n+2)`
-/

namespace A247128.P4089290122506309988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 (n + 1) - A047299 (n + 2)

end

end A247128.P4089290122506309988

namespace A247128

/-- `A315707(n+1)-A047299(n+2)` -/
def P4089290122506309988.Spec : Prop :=
  ∀ n, P4089290122506309988.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P9435102248052902588

`∑[A047309(Δ[A047309(n+1)]+2)]`
-/

namespace A247128.P9435102248052902588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247128.P9435102248052902588

namespace A247128

/-- `∑[A047309(Δ[A047309(n+1)]+2)]` -/
def P9435102248052902588.Spec : Prop :=
  ∀ n, P9435102248052902588.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P5291739727374626460

`A042965(n+2)+A047363(n+2)+A047222(n+2)`
-/

namespace A247128.P5291739727374626460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2) + (A047363 (n + 2) + A047222 (n + 2))

end

end A247128.P5291739727374626460

namespace A247128

/-- `A042965(n+2)+A047363(n+2)+A047222(n+2)` -/
def P5291739727374626460.Spec : Prop :=
  ∀ n, P5291739727374626460.a n = A247128 (n + 1)

end A247128

/-! ## A247128.P6806112931602713753

`A072154(n+1)+2*(n+1)`
-/

namespace A247128.P6806112931602713753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (n + 1) + (2 * (n + 1) : ℤ)

end

end A247128.P6806112931602713753

namespace A247128

/-- `A072154(n+1)+2*(n+1)` -/
def P6806112931602713753.Spec : Prop :=
  ∀ n, P6806112931602713753.a n = A247128 (n + 1)

end A247128

/-!
# A247129: Semiprimes n such that phi(n) is a square.

The programs for A247129, the canonical program `A247129.P9398303988228665836` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247129 has offset 1).

The definition of A247129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247129.P9398303988228665836

`∩[A262406(n+1), A324745(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A247129

/-- `∩[A262406(n+1), A324745(n+1)]` -/
def P9398303988228665836.Spec : Prop :=
  ∀ n, (P9398303988228665836.a n : ℤ) = A247129 (n + 1)

theorem P9398303988228665836.correct : P9398303988228665836.Spec := by
  intro n
  simp only [A247129, Nat.add_sub_cancel]

end A247129

/-! ## A247129.P6458886861841698407

`record[A007913(A324745(n+1))]`
-/

namespace A247129.P6458886861841698407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A324745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247129.P6458886861841698407

namespace A247129

/-- `record[A007913(A324745(n+1))]` -/
def P6458886861841698407.Spec : Prop :=
  ∀ n, P6458886861841698407.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P5734521267664282093

`filter[A324745(n+1), A008966(#)]`
-/

namespace A247129.P5734521267664282093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A247129.P5734521267664282093

namespace A247129

/-- `filter[A324745(n+1), A008966(#)]` -/
def P5734521267664282093.Spec : Prop :=
  ∀ n, P5734521267664282093.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P4845614472141610860

`filter[A324745(n+1), A354819(#)]`
-/

namespace A247129.P4845614472141610860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A247129.P4845614472141610860

namespace A247129

/-- `filter[A324745(n+1), A354819(#)]` -/
def P4845614472141610860.Spec : Prop :=
  ∀ n, P4845614472141610860.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P5708266811427323279

`filter[A324745(n+1), A354927(#)]`
-/

namespace A247129.P5708266811427323279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A247129.P5708266811427323279

namespace A247129

/-- `filter[A324745(n+1), A354927(#)]` -/
def P5708266811427323279.Spec : Prop :=
  ∀ n, P5708266811427323279.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P14808266577196958007

`filter[A324745(n+1), A374128(#)]`
-/

namespace A247129.P14808266577196958007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A247129.P14808266577196958007

namespace A247129

/-- `filter[A324745(n+1), A374128(#)]` -/
def P14808266577196958007.Spec : Prop :=
  ∀ n, P14808266577196958007.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P5138726635941299419

`filter[A262406(n+2), A354927(#)]`
-/

namespace A247129.P5138726635941299419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A247129.P5138726635941299419

namespace A247129

/-- `filter[A262406(n+2), A354927(#)]` -/
def P5138726635941299419.Spec : Prop :=
  ∀ n, P5138726635941299419.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P15799272990331799781

`record[A007947(A324745(C(n+1, n)))]`
-/

namespace A247129.P15799272990331799781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A324745 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247129.P15799272990331799781

namespace A247129

/-- `record[A007947(A324745(C(n+1, n)))]` -/
def P15799272990331799781.Spec : Prop :=
  ∀ n, P15799272990331799781.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P10692998109360393605

`∩[A001358(n+1), A039770(n+1)]`
-/

namespace A247129.P10692998109360393605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P10692998109360393605

namespace A247129

/-- `∩[A001358(n+1), A039770(n+1)]` -/
def P10692998109360393605.Spec : Prop :=
  ∀ n, (P10692998109360393605.a n : ℤ) = A247129 (n + 1)

end A247129

/-! ## A247129.P11708442309360512974

`∩[A001358(n+1), A245199(n+1)]`
-/

namespace A247129.P11708442309360512974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P11708442309360512974

namespace A247129

/-- `∩[A001358(n+1), A245199(n+1)]` -/
def P11708442309360512974.Spec : Prop :=
  ∀ n, (P11708442309360512974.a n : ℤ) = A247129 (n + 1)

end A247129

/-! ## A247129.P7793120537625061415

`∩[A001358(n+1), A262406(n+1)]`
-/

namespace A247129.P7793120537625061415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P7793120537625061415

namespace A247129

/-- `∩[A001358(n+1), A262406(n+1)]` -/
def P7793120537625061415.Spec : Prop :=
  ∀ n, (P7793120537625061415.a n : ℤ) = A247129 (n + 1)

end A247129

/-! ## A247129.P4775008050796065317

`∩[A001358(n+1), A324745(n+1)]`
-/

namespace A247129.P4775008050796065317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P4775008050796065317

namespace A247129

/-- `∩[A001358(n+1), A324745(n+1)]` -/
def P4775008050796065317.Spec : Prop :=
  ∀ n, (P4775008050796065317.a n : ℤ) = A247129 (n + 1)

end A247129

/-! ## A247129.P12270326186116688821

`∩[A005117(n+1), A324745(n+1)]`
-/

namespace A247129.P12270326186116688821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P12270326186116688821

namespace A247129

/-- `∩[A005117(n+1), A324745(n+1)]` -/
def P12270326186116688821.Spec : Prop :=
  ∀ n, (P12270326186116688821.a n : ℤ) = A247129 (n + 1)

end A247129

/-! ## A247129.P13719868051325909991

`filter[A039770(n+1), A064911(#)]`
-/

namespace A247129.P13719868051325909991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A247129.P13719868051325909991

namespace A247129

/-- `filter[A039770(n+1), A064911(#)]` -/
def P13719868051325909991.Spec : Prop :=
  ∀ n, P13719868051325909991.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P15175711664309475881

`filter[A245199(n+1), A064911(#)]`
-/

namespace A247129.P15175711664309475881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A247129.P15175711664309475881

namespace A247129

/-- `filter[A245199(n+1), A064911(#)]` -/
def P15175711664309475881.Spec : Prop :=
  ∀ n, P15175711664309475881.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P5038167891650299925

`filter[A039770(n+1), A280710(#)]`
-/

namespace A247129.P5038167891650299925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A247129.P5038167891650299925

namespace A247129

/-- `filter[A039770(n+1), A280710(#)]` -/
def P5038167891650299925.Spec : Prop :=
  ∀ n, P5038167891650299925.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P16052858823566957080

`filter[A262406(n+1), A064911(#)]`
-/

namespace A247129.P16052858823566957080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A247129.P16052858823566957080

namespace A247129

/-- `filter[A262406(n+1), A064911(#)]` -/
def P16052858823566957080.Spec : Prop :=
  ∀ n, P16052858823566957080.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P9454669292369779241

`filter[A245199(n+1), A101040(#)]`
-/

namespace A247129.P9454669292369779241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A247129.P9454669292369779241

namespace A247129

/-- `filter[A245199(n+1), A101040(#)]` -/
def P9454669292369779241.Spec : Prop :=
  ∀ n, P9454669292369779241.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P3690982161910344366

`filter[A324745(n+1), A064911(#)]`
-/

namespace A247129.P3690982161910344366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A247129.P3690982161910344366

namespace A247129

/-- `filter[A324745(n+1), A064911(#)]` -/
def P3690982161910344366.Spec : Prop :=
  ∀ n, P3690982161910344366.a n = A247129 (n + 1)

end A247129

/-! ## A247129.P5833140046945930910

`filter[A324745(n+1), A101040(#)]`
-/

namespace A247129.P5833140046945930910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A247129.P5833140046945930910

namespace A247129

/-- `filter[A324745(n+1), A101040(#)]` -/
def P5833140046945930910.Spec : Prop :=
  ∀ n, P5833140046945930910.a n = A247129 (n + 1)

end A247129

/-!
# A247130: a(n) = A272295(m) where m is the n-th integer that is both squarefree and not divisible by 3.

The programs for A247130, there is no canonical definition to state claims against.
-/

/-! ## A247130.P17051745698548786259

`A272295(A097702(n+1))`
-/

namespace A247130.P17051745698548786259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272295 (A097702 (n + 1)).toNat

end

end A247130.P17051745698548786259

/-!
# A247131: Numbers n > 0 such that a record number of composite numbers k have n as the sum of the nontrivial divisors of k.

The programs for A247131, there is no canonical definition to state claims against.
-/

/-! ## A247131.P971117848051932843

`A238895(n+1)-1`
-/

namespace A247131.P971117848051932843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238895 (n + 1) - 1

end

end A247131.P971117848051932843

/-! ## A247131.P1495089644932835024

`record[A238895(A242112(n))-1]`
-/

namespace A247131.P1495089644932835024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238895 (A242112 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247131.P1495089644932835024

/-! ## A247131.P14218511857652245452

`abs(1-A238895(A242112(2*n)))`
-/

namespace A247131.P14218511857652245452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A238895 (A242112 (2 * n)).toNat|

end

end A247131.P14218511857652245452

/-! ## A247131.P13079764471608567909

`A260196(n+2)+A238895(n+1)`
-/

namespace A247131.P13079764471608567909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A238895 (n + 1)

end

end A247131.P13079764471608567909

/-! ## A247131.P9649855247311899870

`abs(A238895(n+1)+A057428(n+1))`
-/

namespace A247131.P9649855247311899870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238895 (n + 1) + A057428 (n + 1)|

end

end A247131.P9649855247311899870

/-! ## A247131.P17084311506009486577

`A115638(2*n+1)+A238895(n+1)`
-/

namespace A247131.P17084311506009486577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A238895 (n + 1)

end

end A247131.P17084311506009486577

/-! ## A247131.P18242343175027195896

`A309214(A016825(n))+A238895(n+1)`
-/

namespace A247131.P18242343175027195896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A016825 n).toNat + A238895 (n + 1)

end

end A247131.P18242343175027195896

/-! ## A247131.P11940030315322106272

`abs(A238895(n+1)+A134824(A123930(n)))`
-/

namespace A247131.P11940030315322106272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238895 (n + 1) + A134824 (A123930 n).toNat|

end

end A247131.P11940030315322106272

/-! ## A247131.P7948847253718582320

`A317673(A001132(n+1))+A238895(n+1)`
-/

namespace A247131.P7948847253718582320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A001132 (n + 1)).toNat + A238895 (n + 1)

end

end A247131.P7948847253718582320

/-! ## A247131.P12304212926787757555

`A349340(A019406(n+1))+A238895(n+1)`
-/

namespace A247131.P12304212926787757555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A019406 (n + 1)).toNat + A238895 (n + 1)

end

end A247131.P12304212926787757555

/-! ## A247131.P5065342024314856086

`A309214(A082542(n+1))+A238895(n+1)`
-/

namespace A247131.P5065342024314856086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A082542 (n + 1)).toNat + A238895 (n + 1)

end

end A247131.P5065342024314856086

/-! ## A247131.P2051114298675194772

`xor(A014963(A067536(n+1)), A238895(n+1))`
-/

namespace A247131.P2051114298675194772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A067536 (n + 1)).toNat) (A238895 (n + 1))

end

end A247131.P2051114298675194772

/-! ## A247131.P5696244507185520786

`xor(-A238895(n+1), A008683(A038888(n+1)))`
-/

namespace A247131.P5696244507185520786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A238895 (n + 1)) (A008683 (A038888 (n + 1)).toNat)

end

end A247131.P5696244507185520786

/-! ## A247131.P9093192862305415946

`A125601(A238896(n+1))-1`
-/

namespace A247131.P9093192862305415946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125601 (A238896 (n + 1)).toNat - 1

end

end A247131.P9093192862305415946

/-! ## A247131.P17660653651443783719

`A317673(A137796(n+1))+A238895(n+1)`
-/

namespace A247131.P17660653651443783719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A137796 (n + 1)).toNat + A238895 (n + 1)

end

end A247131.P17660653651443783719

/-!
# A247133: Expansion of f(-x, -x^11) in powers of x where f() is a Ramanujan theta function.

The programs for A247133, the canonical program `A247133.P10561037915194657674` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247133 has offset 0).

The definition of A247133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247133.P18041998446382579474

`(-1)^n*char[A195818(n)]`
-/

namespace A247133.P18041998446382579474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195818 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A247133.P18041998446382579474

namespace A247133

/-- `(-1)^n*char[A195818(n)]` -/
def P18041998446382579474.Spec : Prop :=
  ∀ n, P18041998446382579474.a n = A247133 n

end A247133

/-! ## A247133.P10489427378445863435

`floor(A010815(n+1)/2)^n`
-/

namespace A247133.P10489427378445863435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010815 (n + 1) : ℚ) / 2⌋ ^ n

end

end A247133.P10489427378445863435

namespace A247133

/-- `floor(A010815(n+1)/2)^n` -/
def P10489427378445863435.Spec : Prop :=
  ∀ n, P10489427378445863435.a n = A247133 n

end A247133

/-! ## A247133.P10561037915194657674

`A033999(n)*A186742(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A247133

/-- `A033999(n)*A186742(n)` -/
def P10561037915194657674.Spec : Prop :=
  ∀ n, P10561037915194657674.a n = A247133 n

theorem P10561037915194657674.correct : P10561037915194657674.Spec := by
  intro n
  simp only [A247133]

end A247133

/-! ## A247133.P5063916616264358773

`A121373(n+1)*A186742(n)`
-/

namespace A247133.P5063916616264358773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (n + 1) * A186742 n

end

end A247133.P5063916616264358773

namespace A247133

/-- `A121373(n+1)*A186742(n)` -/
def P5063916616264358773.Spec : Prop :=
  ∀ n, P5063916616264358773.a n = A247133 n

end A247133

/-! ## A247133.P15996375183669165691

`(Δ[A186742(n)]-A186742(n+1))^n`
-/

namespace A247133.P15996375183669165691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A186742 (n + 1)) ^ n

end

end A247133.P15996375183669165691

namespace A247133

/-- `(Δ[A186742(n)]-A186742(n+1))^n` -/
def P15996375183669165691.Spec : Prop :=
  ∀ n, P15996375183669165691.a n = A247133 n

end A247133

/-! ## A247133.P15838742493395948918

`(A121373(n+1)-A133985(n+1))/2`
-/

namespace A247133.P15838742493395948918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (n + 1) - A133985 (n + 1) : ℚ) / 2

end

end A247133.P15838742493395948918

namespace A247133

/-- `(A121373(n+1)-A133985(n+1))/2` -/
def P15838742493395948918.Spec : Prop :=
  ∀ n, P15838742493395948918.a n = (A247133 n : ℚ)

end A247133

/-! ## A247133.P49875774967316261

`A121373(A186741(n+1)+n+1)`
-/

namespace A247133.P49875774967316261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A186741 (n + 1) + (n + 1 : ℤ)).toNat

end

end A247133.P49875774967316261

namespace A247133

/-- `A121373(A186741(n+1)+n+1)` -/
def P49875774967316261.Spec : Prop :=
  ∀ n, P49875774967316261.a n = A247133 n

end A247133

/-! ## A247133.P6027766992258923646

`A121373(A247223(n+1)+n+1)`
-/

namespace A247133.P6027766992258923646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A247223 (n + 1) + (n + 1 : ℤ)).toNat

end

end A247133.P6027766992258923646

namespace A247133

/-- `A121373(A247223(n+1)+n+1)` -/
def P6027766992258923646.Spec : Prop :=
  ∀ n, P6027766992258923646.a n = A247133 n

end A247133

/-! ## A247133.P10741075333856787035

`A247223(n+1)-A133985(n+1)`
-/

namespace A247133.P10741075333856787035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247223 (n + 1) - A133985 (n + 1)

end

end A247133.P10741075333856787035

namespace A247133

/-- `A247223(n+1)-A133985(n+1)` -/
def P10741075333856787035.Spec : Prop :=
  ∀ n, P10741075333856787035.a n = A247133 n

end A247133

/-! ## A247133.P2251834554234524185

`(A186741(n+1)-1)*A133985(n+1)`
-/

namespace A247133.P2251834554234524185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186741 (n + 1) - 1) * A133985 (n + 1)

end

end A247133.P2251834554234524185

namespace A247133

/-- `(A186741(n+1)-1)*A133985(n+1)` -/
def P2251834554234524185.Spec : Prop :=
  ∀ n, P2251834554234524185.a n = A247133 n

end A247133

/-! ## A247133.P5720900134789848364

`A186742(n)*A280569(n+2)`
-/

namespace A247133.P5720900134789848364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186742 n * A280569 (n + 2)

end

end A247133.P5720900134789848364

namespace A247133

/-- `A186742(n)*A280569(n+2)` -/
def P5720900134789848364.Spec : Prop :=
  ∀ n, P5720900134789848364.a n = A247133 n

end A247133

/-! ## A247133.P6245382791495517791

`A247223(A158060(n+1))`
-/

namespace A247133.P6245382791495517791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247223 (A158060 (n + 1)).toNat

end

end A247133.P6245382791495517791

namespace A247133

/-- `A247223(A158060(n+1))` -/
def P6245382791495517791.Spec : Prop :=
  ∀ n, P6245382791495517791.a n = A247133 n

end A247133

/-! ## A247133.P6635659554722973146

`A186742(n)*A257181(n²)`
-/

namespace A247133.P6635659554722973146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186742 n * A257181 (n ^ 2)

end

end A247133.P6635659554722973146

namespace A247133

/-- `A186742(n)*A257181(n²)` -/
def P6635659554722973146.Spec : Prop :=
  ∀ n, P6635659554722973146.a n = A247133 n

end A247133

/-! ## A247133.P10759882410800495080

`A186742(n)/A280569(n²)`
-/

namespace A247133.P10759882410800495080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186742 n : ℚ) / (A280569 (n ^ 2) : ℚ)

end

end A247133.P10759882410800495080

namespace A247133

/-- `A186742(n)/A280569(n²)` -/
def P10759882410800495080.Spec : Prop :=
  ∀ n, P10759882410800495080.a n = (A247133 n : ℚ)

end A247133

/-!
# A247135: Composite numbers for which the root mean square of proper divisors is an integer.

The programs for A247135, there is no canonical definition to state claims against.
-/

/-! ## A247135.P3560434594028109946

`filter[A247142(n+3), A005171(#)]`
-/

namespace A247135.P3560434594028109946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247135.P3560434594028109946

/-! ## A247135.P1308528786633821776

`∩[A001358(n+1), A247142(n+1)]`
-/

namespace A247135.P1308528786633821776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247135.P1308528786633821776

/-! ## A247135.P9664707932135401823

`∩[A002808(n+1), A247142(n+1)]`
-/

namespace A247135.P9664707932135401823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247135.P9664707932135401823

/-! ## A247135.P3732159773207173033

`∩[A005381(n+1), A247142(n+1)]`
-/

namespace A247135.P3732159773207173033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247135.P3732159773207173033

/-! ## A247135.P8672319891419069771

`∩[A014076(n+1), A247142(n+1)]`
-/

namespace A247135.P8672319891419069771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247135.P8672319891419069771

/-!
# A247136: Numbers for which the root mean square of nontrivial divisors is an integer.

The programs for A247136, there is no canonical definition to state claims against.
-/

/-! ## A247136.P735751509964760061

`∪[A001248(n+1), A247137(n+1)]`
-/

namespace A247136.P735751509964760061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P735751509964760061

/-! ## A247136.P5493752970253636639

`∪[A247137(n+1), Δ[A007504(n)]²]`
-/

namespace A247136.P5493752970253636639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P5493752970253636639

/-! ## A247136.P11820219831284034606

`∪[A247137(n+1), Δ[A008348(n)]²]`
-/

namespace A247136.P11820219831284034606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P11820219831284034606

/-! ## A247136.P7329317504165923072

`∪[A247137(n+1), Δ[A022837(n)]²]`
-/

namespace A247136.P7329317504165923072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P7329317504165923072

/-! ## A247136.P17911987707366121828

`∪[A247137(n+1), Δ[A309222(n)]²]`
-/

namespace A247136.P17911987707366121828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P17911987707366121828

/-! ## A247136.P1472531578525310895

`∪[A000040(n+1)², A247137(n+1)]`
-/

namespace A247136.P1472531578525310895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P1472531578525310895

/-! ## A247136.P1869249918211079860

`∪[A000040(2*n+1-n)*A000040(n+1), A247137(n+1)]`
-/

namespace A247136.P1869249918211079860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1 - n) * A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247136.P1869249918211079860

/-!
# A247137: Numbers for which the root mean square of nontrivial divisors is an integer and which are not a square of prime numbers.

The programs for A247137, there is no canonical definition to state claims against.
-/

/-! ## A247137.P6465567088225164541

`filter[A247136(n+1), A324903(#)]`
-/

namespace A247137.P6465567088225164541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A247137.P6465567088225164541

/-! ## A247137.P7740924183513792371

`filter[A247136(n+1), A374474(#)]`
-/

namespace A247137.P7740924183513792371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A247137.P7740924183513792371

/-! ## A247137.P13238151632698567552

`filter[A247136(n+1), A049240(#)]`
-/

namespace A247137.P13238151632698567552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A247137.P13238151632698567552

/-! ## A247137.P14583569033234398206

`filter[A247136(n+1), A324908(#)]`
-/

namespace A247137.P14583569033234398206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A247137.P14583569033234398206

/-! ## A247137.P16054037384955818988

`filter[A247136(n+1), A380458(#)]`
-/

namespace A247137.P16054037384955818988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A247137.P16054037384955818988

/-! ## A247137.P8059044658265391995

`filter[A247136(n+2), A323158(#)]`
-/

namespace A247137.P8059044658265391995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A247137.P8059044658265391995

/-!
# A247138: Least k >= 0 such that 2n+1 - 2^k is a prime power, or -1 if no such k exists.

The programs for A247138, there is no canonical definition to state claims against.
-/

/-! ## A247138.P12264245838974840552

`A071625(n+1)-A229062(A001045(n))`
-/

namespace A247138.P12264245838974840552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) - A229062 (A001045 n).toNat

end

end A247138.P12264245838974840552

/-! ## A247138.P17055740415320447912

`∑{p}[n+1, A001222(#)]-A249133(A224374(n+1))`
-/

namespace A247138.P17055740415320447912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p - A249133 (A224374 (n + 1)).toNat

end

end A247138.P17055740415320447912

/-! ## A247138.P13329056652120325164

`A064547(A169989(2*(n+1))+A093713(n+1))-1`
-/

namespace A247138.P13329056652120325164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A169989 (2 * (n + 1)) + A093713 (n + 1)).toNat - 1

end

end A247138.P13329056652120325164

/-! ## A247138.P9800906135962618670

`A071625(n+1)-A143064(A029651(A124759(n)))`
-/

namespace A247138.P9800906135962618670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) - A143064 (A029651 (A124759 n).toNat).toNat

end

end A247138.P9800906135962618670

/-! ## A247138.P5272373333248841041

`A121561(2^n--1%(n+1))-1`
-/

namespace A247138.P5272373333248841041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 ((2 ^ n : ℤ) - Int.tmod (-1) (n + 1 : ℤ)).toNat - 1

end

end A247138.P5272373333248841041

/-!
# A247139: The number of tilings of a triangular shape T_n with n rectangles identifying all tilings which use the same rectangular shapes.

The programs for A247139, there is no canonical definition to state claims against.
-/

/-! ## A247139.P3135927788450210113

`A392457((n+1)*A375120(n+1))`
-/

namespace A247139.P3135927788450210113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392457 ((n + 1 : ℤ) * A375120 (n + 1)).toNat

end

end A247139.P3135927788450210113

/-! ## A247139.P12341776335810935610

`A073188(A303836(n))`
-/

namespace A247139.P12341776335810935610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A303836 n).toNat

end

end A247139.P12341776335810935610

/-! ## A247139.P8396425849380920748

`A023193(or(A053304(n), A072796(n)))`
-/

namespace A247139.P8396425849380920748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A053304 n) (A072796 n)).toNat

end

end A247139.P8396425849380920748

/-! ## A247139.P12293764793925027606

`or(A000931(n), A001462(A216617(n)))`
-/

namespace A247139.P12293764793925027606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000931 n) (A001462 (A216617 n).toNat)

end

end A247139.P12293764793925027606

/-!
# A247140: Number of distinct values obtained from 1 to n when listing all distinct values of both numerators and denominators of sigma(n)/n.

The programs for A247140, there is no canonical definition to state claims against.
-/

/-! ## A247140.P13606942293983482715

`∑[A242082(A335197(A108918(n+1)))]`
-/

namespace A247140.P13606942293983482715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 (A335197 (A108918 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247140.P13606942293983482715

/-! ## A247140.P10441864701225446037

`A298871(n)-A109129(A257830(n+1))`
-/

namespace A247140.P10441864701225446037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298871 n - A109129 (A257830 (n + 1)).toNat

end

end A247140.P10441864701225446037

/-! ## A247140.P17515885207894687192

`A328179(A285251(n+1)+A016777(n))-A036453(n+1)`
-/

namespace A247140.P17515885207894687192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328179 (A285251 (n + 1) + A016777 n).toNat - A036453 (n + 1)

end

end A247140.P17515885207894687192

/-! ## A247140.P13049436269484161271

`∑[A316826(C(A170892(n+3), 2))]`
-/

namespace A247140.P13049436269484161271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (Nat.choose (A170892 (n + 3)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247140.P13049436269484161271

/-!
# A247142: Numbers for which the root mean square of proper divisors is an integer.

The programs for A247142, there is no canonical definition to state claims against.
-/

/-! ## A247142.P2816453302114207395

`∪[A000040(n+1), A247135(n+1)]`
-/

namespace A247142.P2816453302114207395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247142.P2816453302114207395

/-! ## A247142.P17775045456296862196

`∩[A127161(n+1), A192489(n+1)]`
-/

namespace A247142.P17775045456296862196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247142.P17775045456296862196

/-! ## A247142.P9422579579034949229

`∩[A192489(n+1), A333638(n+1)]`
-/

namespace A247142.P9422579579034949229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247142.P9422579579034949229

/-! ## A247142.P7294511061411264729

`eq[A274658(A077018(n)), A274658(n)]`
-/

namespace A247142.P7294511061411264729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274658 (A077018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247142.P7294511061411264729

/-! ## A247142.P2471449777571893454

`lt[A002597(A003415(n)), A364915(n)]`
-/

namespace A247142.P2471449777571893454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002597 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247142.P2471449777571893454

/-!
# A247146: As a binary numeral, the bit 2^(m-1) of a(n) is 1 iff m is a proper divisor of n.

The programs for A247146, the canonical program `A247146.P7652991668944919018` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247146 has offset 1).

The definition of A247146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247146.P7652991668944919018

`A034729(n+1)-2^n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A247146

/-- `A034729(n+1)-2^n` -/
def P7652991668944919018.Spec : Prop :=
  ∀ n, P7652991668944919018.a n = A247146 (n + 1)

theorem P7652991668944919018.correct : P7652991668944919018.Spec := by
  intro n
  simp only [A247146, Nat.add_sub_cancel]

end A247146

/-! ## A247146.P3543980538427126994

`∑{d}[n+1, A178472(#)]`
-/

namespace A247146.P3543980538427126994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178472 d

end

end A247146.P3543980538427126994

namespace A247146

/-- `∑{d}[n+1, A178472(#)]` -/
def P3543980538427126994.Spec : Prop :=
  ∀ n, P3543980538427126994.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P17369198268809783275

`A328337(n+1)+A057427(n)`
-/

namespace A247146.P17369198268809783275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) + A057427 n

end

end A247146.P17369198268809783275

namespace A247146

/-- `A328337(n+1)+A057427(n)` -/
def P17369198268809783275.Spec : Prop :=
  ∀ n, P17369198268809783275.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P10468458186221827082

`A328337(n+1)-A057428(n)`
-/

namespace A247146.P10468458186221827082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) - A057428 n

end

end A247146.P10468458186221827082

namespace A247146

/-- `A328337(n+1)-A057428(n)` -/
def P10468458186221827082.Spec : Prop :=
  ∀ n, P10468458186221827082.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P11447498864972799684

`A328337(n+1)+A107286(A107286(n))`
-/

namespace A247146.P11447498864972799684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) + A107286 (A107286 n).toNat

end

end A247146.P11447498864972799684

namespace A247146

/-- `A328337(n+1)+A107286(A107286(n))` -/
def P11447498864972799684.Spec : Prop :=
  ∀ n, P11447498864972799684.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P10145692328563747180

`A034729(n+1)%A000079(n)`
-/

namespace A247146.P10145692328563747180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034729 (n + 1)) (A000079 n)

end

end A247146.P10145692328563747180

namespace A247146

/-- `A034729(n+1)%A000079(n)` -/
def P10145692328563747180.Spec : Prop :=
  ∀ n, P10145692328563747180.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P16071473940348351180

`and(A000225(n), A034729(n+1))`
-/

namespace A247146.P16071473940348351180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A034729 (n + 1))

end

end A247146.P16071473940348351180

namespace A247146

/-- `and(A000225(n), A034729(n+1))` -/
def P16071473940348351180.Spec : Prop :=
  ∀ n, P16071473940348351180.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P18010376501582382714

`and(A034729(n+1), A116362(n))`
-/

namespace A247146.P18010376501582382714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A116362 n)

end

end A247146.P18010376501582382714

namespace A247146

/-- `and(A034729(n+1), A116362(n))` -/
def P18010376501582382714.Spec : Prop :=
  ∀ n, P18010376501582382714.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P15852841182798836809

`and(A034729(n+1), A140252(n))`
-/

namespace A247146.P15852841182798836809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A140252 n)

end

end A247146.P15852841182798836809

namespace A247146

/-- `and(A034729(n+1), A140252(n))` -/
def P15852841182798836809.Spec : Prop :=
  ∀ n, P15852841182798836809.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P13246745642075651405

`and(-A000051(n), A034729(n+1))`
-/

namespace A247146.P13246745642075651405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000051 n) (A034729 (n + 1))

end

end A247146.P13246745642075651405

namespace A247146

/-- `and(-A000051(n), A034729(n+1))` -/
def P13246745642075651405.Spec : Prop :=
  ∀ n, P13246745642075651405.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P12744520079976400338

`∑{d}[n+1, A011946(#)*A091954((n+1)/#)]`
-/

namespace A247146.P12744520079976400338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A091954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247146.P12744520079976400338

namespace A247146

/-- `∑{d}[n+1, A011946(#)*A091954((n+1)/#)]` -/
def P12744520079976400338.Spec : Prop :=
  ∀ n, P12744520079976400338.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P17170778075033987951

`∑{d}[n+1, A034729(#)*A157658((n+1)/#)]`
-/

namespace A247146.P17170778075033987951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247146.P17170778075033987951

namespace A247146

/-- `∑{d}[n+1, A034729(#)*A157658((n+1)/#)]` -/
def P17170778075033987951.Spec : Prop :=
  ∀ n, P17170778075033987951.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P15176163258814260720

`∑{d}[n+1, A001065(#)*A349570((n+1)/#)]`
-/

namespace A247146.P15176163258814260720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247146.P15176163258814260720

namespace A247146

/-- `∑{d}[n+1, A001065(#)*A349570((n+1)/#)]` -/
def P15176163258814260720.Spec : Prop :=
  ∀ n, P15176163258814260720.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P5191540613323786179

`∑{d}[n+1, A238952(#)*A296302((n+1)/#)]`
-/

namespace A247146.P5191540613323786179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238952 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247146.P5191540613323786179

namespace A247146

/-- `∑{d}[n+1, A238952(#)*A296302((n+1)/#)]` -/
def P5191540613323786179.Spec : Prop :=
  ∀ n, P5191540613323786179.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P11503415100381348771

`∑{d}[n+1, A127804(#-1)*A296066((n+1)/#)]`
-/

namespace A247146.P11503415100381348771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127804 (d - 1) * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247146.P11503415100381348771

namespace A247146

/-- `∑{d}[n+1, A127804(#-1)*A296066((n+1)/#)]` -/
def P11503415100381348771.Spec : Prop :=
  ∀ n, P11503415100381348771.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P8790502483389220384

`∑{d}[n+1, A000079(#-1)*A057427((n+1)/#-1)]`
-/

namespace A247146.P8790502483389220384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A247146.P8790502483389220384

namespace A247146

/-- `∑{d}[n+1, A000079(#-1)*A057427((n+1)/#-1)]` -/
def P8790502483389220384.Spec : Prop :=
  ∀ n, P8790502483389220384.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P8026521692362014560

`and(A034729(n+1), A303611(n+2))`
-/

namespace A247146.P8026521692362014560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A303611 (n + 2))

end

end A247146.P8026521692362014560

namespace A247146

/-- `and(A034729(n+1), A303611(n+2))` -/
def P8026521692362014560.Spec : Prop :=
  ∀ n, P8026521692362014560.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P3802755782979864090

`and(A034729(n+1), A140683(n))`
-/

namespace A247146.P3802755782979864090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A140683 n)

end

end A247146.P3802755782979864090

namespace A247146

/-- `and(A034729(n+1), A140683(n))` -/
def P3802755782979864090.Spec : Prop :=
  ∀ n, P3802755782979864090.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P14115109100353690074

`and(A034729(n+1), A153893(n))`
-/

namespace A247146.P14115109100353690074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A153893 n)

end

end A247146.P14115109100353690074

namespace A247146

/-- `and(A034729(n+1), A153893(n))` -/
def P14115109100353690074.Spec : Prop :=
  ∀ n, P14115109100353690074.a n = A247146 (n + 1)

end A247146

/-! ## A247146.P17868275476077794597

`and(A034729(n+1), A086224(n))`
-/

namespace A247146.P17868275476077794597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A086224 n)

end

end A247146.P17868275476077794597

namespace A247146

/-- `and(A034729(n+1), A086224(n))` -/
def P17868275476077794597.Spec : Prop :=
  ∀ n, P17868275476077794597.a n = A247146 (n + 1)

end A247146

/-!
# A247147: Numbers k such that 3*k-4 and 2^k-1 are prime.

The programs for A247147, there is no canonical definition to state claims against.
-/

/-! ## A247147.P8204727830902462324

`∩[A000043(n+1), A258261(n+1)]`
-/

namespace A247147.P8204727830902462324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247147.P8204727830902462324

/-! ## A247147.P14074278665761985592

`∩[A048737(n+1), A258261(n+1)]`
-/

namespace A247147.P14074278665761985592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247147.P14074278665761985592

/-! ## A247147.P8729996346726830570

`∩[A258261(n+1), A285929(n+1)]`
-/

namespace A247147.P8729996346726830570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247147.P8729996346726830570

/-! ## A247147.P6651902687338123963

`filter[A228121(n+1), A332219(#)]`
-/

namespace A247147.P6651902687338123963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A247147.P6651902687338123963

/-! ## A247147.P1479955559161465193

`filter[A258261(n+1), A332219(#)]`
-/

namespace A247147.P1479955559161465193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A247147.P1479955559161465193

/-!
# A247151: Numbers n such that abs(36*n^2 - 810*n + 2753) is prime.

The programs for A247151, there is no canonical definition to state claims against.
-/

/-! ## A247151.P10386616767708979819

`comp[Δ[C(10*n, 2)]]%A291275(n+3)`
-/

namespace A247151.P10386616767708979819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A291275 (n + 3))

end

end A247151.P10386616767708979819

/-! ## A247151.P8516110795872591313

`∑[A051904(∑[A061411(n+1)])]`
-/

namespace A247151.P8516110795872591313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061411 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247151.P8516110795872591313

/-! ## A247151.P16312960648982389009

`comp[A228058(n+1)]%A096356(n)`
-/

namespace A247151.P16312960648982389009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A096356 n)

end

end A247151.P16312960648982389009

/-! ## A247151.P17985306114038256052

`comp[A190033(n+1)]%A357058(n)`
-/

namespace A247151.P17985306114038256052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A357058 n)

end

end A247151.P17985306114038256052

/-! ## A247151.P200729472630178933

`comp[A053743(n)]%A328218(n+5)`
-/

namespace A247151.P200729472630178933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A328218 (n + 5))

end

end A247151.P200729472630178933

/-! ## A247151.P7187880909304856573

`comp[A067828(n+1)]%A084592(n+1)`
-/

namespace A247151.P7187880909304856573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067828 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A084592 (n + 1))

end

end A247151.P7187880909304856573

/-! ## A247151.P6929288721138215777

`comp[A001488(n+1)]%A375714(n+1)`
-/

namespace A247151.P6929288721138215777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001488 (n + 1 + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A375714 (n + 1))

end

end A247151.P6929288721138215777

/-! ## A247151.P4427595890044208793

`comp[A049104(n+1)]%A350115(n+1)`
-/

namespace A247151.P4427595890044208793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A350115 (n + 1))

end

end A247151.P4427595890044208793

/-! ## A247151.P7878928699901767306

`comp[A306939(n+2)]%A103381(n+1)`
-/

namespace A247151.P7878928699901767306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306939 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A103381 (n + 1))

end

end A247151.P7878928699901767306

/-! ## A247151.P15577661812233732678

`comp[A008440(n+4)]%A335483(n+2)`
-/

namespace A247151.P15577661812233732678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A335483 (n + 2))

end

end A247151.P15577661812233732678

/-!
# A247152: Least composite which contains prime(n) as a substring.

The programs for A247152, there is no canonical definition to state claims against.
-/

/-! ## A247152.P15129344050189169446

`A080470(A000040(n+1)^A009194(n+1))`
-/

namespace A247152.P15129344050189169446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080470 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A009194 (n + 1) : ℤ))).toNat

end

end A247152.P15129344050189169446

/-!
# A247153: a(n) = smallest prime p for which cyclic digit shifts produce exactly n different primes, or 0 if no such p exists for n.

The programs for A247153, there is no canonical definition to state claims against.
-/

/-! ## A247153.P10790104428847401040

`A317716(∑[n+1])`
-/

namespace A247153.P10790104428847401040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247153.P10790104428847401040

/-! ## A247153.P17490507748490518723

`A317716(A025747(n))+char[17]`
-/

namespace A247153.P17490507748490518723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A025747 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247153.P17490507748490518723

/-! ## A247153.P9949286623143317175

`A010893(n)!*A317716(C(n+2, 2))`
-/

namespace A247153.P9949286623143317175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010893 (n + 13)).toNat : ℤ) * A317716 (Nat.choose (n + 2) 2)

end

end A247153.P9949286623143317175

/-! ## A247153.P564534903611719694

`A007318(∑[n])*A317716(A025747(n))`
-/

namespace A247153.P564534903611719694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A317716 (A025747 n).toNat

end

end A247153.P564534903611719694

/-! ## A247153.P7497837397099581693

`A317716(A025747(n))^A000041(C(2, n+2))`
-/

namespace A247153.P7497837397099581693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317716 (A025747 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A247153.P7497837397099581693

/-!
# A247154: a(n) = smallest composite c such that n^(A000010(c)) == 1 (mod c^2), i.e., smallest composite Wieferich number to base n.

The programs for A247154, there is no canonical definition to state claims against.
-/

/-! ## A247154.P14977434890608444874

`A247072(n+1)*A270776(A288795(n+1))`
-/

namespace A247154.P14977434890608444874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247072 (n + 1) * A270776 (A288795 (n + 1)).toNat

end

end A247154.P14977434890608444874

/-! ## A247154.P4908241996958322125

`(A096082(n+1)-A058026(A000165(n)))*A053669(n+1)`
-/

namespace A247154.P4908241996958322125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096082 (n + 1) - A058026 (A000165 n).toNat) * A053669 (n + 1)

end

end A247154.P4908241996958322125

/-!
# A247155: a(n) = 31*n^2 + 1.

The programs for A247155, the canonical program `A247155.P2492165000439679223` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247155 has offset 0).

The definition of A247155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31*n²+1` (program `A247155.P2492165000439679223`, by `A247155.P2492165000439679223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247155.P2492165000439679223

`31*n²+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247155

/-- `31*n²+1` -/
def P2492165000439679223.Spec : Prop :=
  ∀ n, (P2492165000439679223.a n : ℤ) = A247155 n

theorem P2492165000439679223.correct : P2492165000439679223.Spec := by
  intro n
  simp only [A247155]

end A247155

/-! ## A247155.P8878935665588439287

`ceil(or(1, 62*n²)/2)`
-/

namespace A247155.P8878935665588439287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (62 * n ^ 2) : ℚ) / 2⌉

end

end A247155.P8878935665588439287

namespace A247155

/-- `ceil(or(1, 62*n²)/2)` -/
def P8878935665588439287.Spec : Prop :=
  ∀ n, P8878935665588439287.a n = A247155 n

end A247155

/-! ## A247155.P981783272990174961

`round(or(1, 62*n²)/2)`
-/

namespace A247155.P981783272990174961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (62 * n ^ 2) : ℚ) / 2)

end

end A247155.P981783272990174961

namespace A247155

/-- `round(or(1, 62*n²)/2)` -/
def P981783272990174961.Spec : Prop :=
  ∀ n, P981783272990174961.a n = A247155 n

end A247155

/-! ## A247155.P13980485298278114970

`ceil(xor(1, 62*n²)/2)`
-/

namespace A247155.P13980485298278114970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (62 * n ^ 2) : ℚ) / 2⌉

end

end A247155.P13980485298278114970

namespace A247155

/-- `ceil(xor(1, 62*n²)/2)` -/
def P13980485298278114970.Spec : Prop :=
  ∀ n, P13980485298278114970.a n = A247155 n

end A247155

/-! ## A247155.P17544692503995377171

`round(xor(1, 62*n²)/2)`
-/

namespace A247155.P17544692503995377171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (62 * n ^ 2) : ℚ) / 2)

end

end A247155.P17544692503995377171

namespace A247155

/-- `round(xor(1, 62*n²)/2)` -/
def P17544692503995377171.Spec : Prop :=
  ∀ n, P17544692503995377171.a n = A247155 n

end A247155

/-! ## A247155.P13566978779827779291

`ceil(A158676(n)/2)`
-/

namespace A247155.P13566978779827779291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158676 n : ℚ) / 2⌉

end

end A247155.P13566978779827779291

namespace A247155

/-- `ceil(A158676(n)/2)` -/
def P13566978779827779291.Spec : Prop :=
  ∀ n, P13566978779827779291.a n = A247155 n

end A247155

/-! ## A247155.P17982081939462235229

`ceil(abs(2*n²-A158686(n))/2)`
-/

namespace A247155.P17982081939462235229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(2 * n ^ 2 : ℤ) - A158686 n| : ℚ) / 2⌉

end

end A247155.P17982081939462235229

namespace A247155

/-- `ceil(abs(2*n²-A158686(n))/2)` -/
def P17982081939462235229.Spec : Prop :=
  ∀ n, P17982081939462235229.a n = A247155 n

end A247155

/-! ## A247155.P12748843643227695778

`A158574(n)%A158557(n)`
-/

namespace A247155.P12748843643227695778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158574 n) (A158557 n)

end

end A247155.P12748843643227695778

namespace A247155

/-- `A158574(n)%A158557(n)` -/
def P12748843643227695778.Spec : Prop :=
  ∀ n, P12748843643227695778.a n = A247155 n

end A247155

/-! ## A247155.P8346820477619348596

`C(31*A000290(n)+1, 31*A000290(n))`
-/

namespace A247155.P8346820477619348596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (31 * A000290 n + 1).toNat (31 * A000290 n).toNat

end

end A247155.P8346820477619348596

namespace A247155

/-- `C(31*A000290(n)+1, 31*A000290(n))` -/
def P8346820477619348596.Spec : Prop :=
  ∀ n, (P8346820477619348596.a n : ℤ) = A247155 n

end A247155

/-! ## A247155.P17135482951148943667

`A000027(A081585(2*n)-n²)`
-/

namespace A247155.P17135482951148943667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A081585 (2 * n) - (n ^ 2 : ℤ)).toNat

end

end A247155.P17135482951148943667

namespace A247155

/-- `A000027(A081585(2*n)-n²)` -/
def P17135482951148943667.Spec : Prop :=
  ∀ n, P17135482951148943667.a n = A247155 n

end A247155

/-! ## A247155.P1326880470658086468

`record[A135631(A214859(n))+1]`
-/

namespace A247155.P1326880470658086468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (A214859 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247155.P1326880470658086468

namespace A247155

/-- `record[A135631(A214859(n))+1]` -/
def P1326880470658086468.Spec : Prop :=
  ∀ n, P1326880470658086468.a n = A247155 n

end A247155

/-!
# A247156: 

The programs for A247156, there is no canonical definition to state claims against.
-/

/-! ## A247156.P10496082925310440481

`A001379(A244431(2*(n+1)))`
-/

namespace A247156.P10496082925310440481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001379 (A244431 (2 * (n + 1))).toNat

end

end A247156.P10496082925310440481

/-!
# A247157: Greatest number of colors possible for interval edge-colorings of the complete graph K_{2n}.

The programs for A247157, there is no canonical definition to state claims against.
-/

/-! ## A247157.P12925265598889090051

`lt[(n-1)*∑{e}[n, #], 2*n]+comp[3*(n+1)]+n`
-/

namespace A247157.P12925265598889090051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n)

end

end A247157.P12925265598889090051

/-! ## A247157.P4843145215218390501

`A342516(n)+3*n`
-/

namespace A247157.P4843145215218390501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 n + (3 * n : ℤ)

end

end A247157.P4843145215218390501

/-! ## A247157.P3371889288981802203

`A026466(3*n+2)-2`
-/

namespace A247157.P3371889288981802203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026466 (3 * n + 2) - 2

end

end A247157.P3371889288981802203

/-! ## A247157.P11888882084988248180

`A368363(n+2)+2*n`
-/

namespace A247157.P11888882084988248180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368363 (n + 2) + (2 * n : ℤ)

end

end A247157.P11888882084988248180

/-! ## A247157.P8799152010338693876

`A379667(n+1)+3*n`
-/

namespace A247157.P8799152010338693876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379667 (n + 1) + (3 * n : ℤ)

end

end A247157.P8799152010338693876

/-!
# A247158: Number of binary n X n matrices in which each row or column sum is at most n/2.

The programs for A247158, there is no canonical definition to state claims against.
-/

/-! ## A247158.P14197217845328876552

`A261690(A279212(n)^A000041(n))`
-/

namespace A247158.P14197217845328876552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261690 (SequenceMachineLib.roundAway ((A279212 n : ℚ) ^ (A000041 n : ℤ))).toNat

end

end A247158.P14197217845328876552

/-!
# A247159: Sum of divisors of even semiprimes.

The programs for A247159, the canonical program `A247159.P14898152283325292687` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247159 has offset 1).

The definition of A247159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247159.P14898152283325292687

`A000203(A100484(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A247159

/-- `A000203(A100484(n+1))` -/
def P14898152283325292687.Spec : Prop :=
  ∀ n, P14898152283325292687.a n = A247159 (n + 1)

theorem P14898152283325292687.correct : P14898152283325292687.Spec := by
  intro n
  simp only [A247159, Nat.add_sub_cancel]

end A247159

/-! ## A247159.P18441279389515668197

`A000203(2*A000040(n+1))`
-/

namespace A247159.P18441279389515668197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A000040 (n + 1)).toNat

end

end A247159.P18441279389515668197

namespace A247159

/-- `A000203(2*A000040(n+1))` -/
def P18441279389515668197.Spec : Prop :=
  ∀ n, P18441279389515668197.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P15193880483595263873

`∑{d}[1-A072055(n+1), #]`
-/

namespace A247159.P15193880483595263873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247159.P15193880483595263873

namespace A247159

/-- `∑{d}[1-A072055(n+1), #]` -/
def P15193880483595263873.Spec : Prop :=
  ∀ n, (P15193880483595263873.a n : ℤ) = A247159 (n + 1)

end A247159

/-! ## A247159.P12697014601802811339

`∑{d}[A001749(n+1)/2, #]`
-/

namespace A247159.P12697014601802811339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A247159.P12697014601802811339

namespace A247159

/-- `∑{d}[A001749(n+1)/2, #]` -/
def P12697014601802811339.Spec : Prop :=
  ∀ n, (P12697014601802811339.a n : ℤ) = A247159 (n + 1)

end A247159

/-! ## A247159.P1870938302074997995

`A001748(n+1)+3%comp[∑[n]]`
-/

namespace A247159.P1870938302074997995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + ((3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ)

end

end A247159.P1870938302074997995

namespace A247159

/-- `A001748(n+1)+3%comp[∑[n]]` -/
def P1870938302074997995.Spec : Prop :=
  ∀ n, P1870938302074997995.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P4304316235189354054

`A122553(n)+A001748(n+1)`
-/

namespace A247159.P4304316235189354054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A001748 (n + 1)

end

end A247159.P4304316235189354054

namespace A247159

/-- `A122553(n)+A001748(n+1)` -/
def P4304316235189354054.Spec : Prop :=
  ∀ n, P4304316235189354054.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P11493843464208767501

`A089241(n+1)+A055670(n+1)`
-/

namespace A247159.P11493843464208767501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A055670 (n + 1)

end

end A247159.P11493843464208767501

namespace A247159

/-- `A089241(n+1)+A055670(n+1)` -/
def P11493843464208767501.Spec : Prop :=
  ∀ n, P11493843464208767501.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P10128361371064035574

`A008864(n+1)+A055670(n+1)+A008864(n+1)`
-/

namespace A247159.P10128361371064035574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A055670 (n + 1) + A008864 (n + 1))

end

end A247159.P10128361371064035574

namespace A247159

/-- `A008864(n+1)+A055670(n+1)+A008864(n+1)` -/
def P10128361371064035574.Spec : Prop :=
  ∀ n, P10128361371064035574.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P7397444904825316129

`A028815(n+1)+A055670(n+1)+A028815(n+1)`
-/

namespace A247159.P7397444904825316129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + (A055670 (n + 1) + A028815 (n + 1))

end

end A247159.P7397444904825316129

namespace A247159

/-- `A028815(n+1)+A055670(n+1)+A028815(n+1)` -/
def P7397444904825316129.Spec : Prop :=
  ∀ n, P7397444904825316129.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P3383045919406654533

`∑{d}[A001747(n+2), #]`
-/

namespace A247159.P3383045919406654533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247159.P3383045919406654533

namespace A247159

/-- `∑{d}[A001747(n+2), #]` -/
def P3383045919406654533.Spec : Prop :=
  ∀ n, (P3383045919406654533.a n : ℤ) = A247159 (n + 1)

end A247159

/-! ## A247159.P15722715862619170443

`A000203(A001747(n+2))`
-/

namespace A247159.P15722715862619170443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001747 (n + 2)).toNat

end

end A247159.P15722715862619170443

namespace A247159

/-- `A000203(A001747(n+2))` -/
def P15722715862619170443.Spec : Prop :=
  ∀ n, P15722715862619170443.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P797317914256125968

`A000203(sqrt(A069262(n+1)))`
-/

namespace A247159.P797317914256125968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A069262 (n + 1) : ℝ))).toNat

end

end A247159.P797317914256125968

namespace A247159

/-- `A000203(sqrt(A069262(n+1)))` -/
def P797317914256125968.Spec : Prop :=
  ∀ n, P797317914256125968.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P15530912670411226221

`A000203(Δ[2*A007504(n)])`
-/

namespace A247159.P15530912670411226221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A247159.P15530912670411226221

namespace A247159

/-- `A000203(Δ[2*A007504(n)])` -/
def P15530912670411226221.Spec : Prop :=
  ∀ n, P15530912670411226221.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P12878042270231838390

`A000203(A037168(n+1)+2)`
-/

namespace A247159.P12878042270231838390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A037168 (n + 1) + 2).toNat

end

end A247159.P12878042270231838390

namespace A247159

/-- `A000203(A037168(n+1)+2)` -/
def P12878042270231838390.Spec : Prop :=
  ∀ n, P12878042270231838390.a n = A247159 (n + 1)

theorem P12878042270231838390.correct : P12878042270231838390.Spec := by
  intro n
  simp only [A247159, Nat.add_sub_cancel, A247159.P12878042270231838390.a, A247159.P14898152283325292687.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037168, A037168.P225285487484933431.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247159

/-! ## A247159.P14620348102086741471

`A000203(A072055(n+1)-1)`
-/

namespace A247159.P14620348102086741471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072055 (n + 1) - 1).toNat

end

end A247159.P14620348102086741471

namespace A247159

/-- `A000203(A072055(n+1)-1)` -/
def P14620348102086741471.Spec : Prop :=
  ∀ n, P14620348102086741471.a n = A247159 (n + 1)

theorem P14620348102086741471.correct : P14620348102086741471.Spec := by
  intro n
  simp only [A247159, Nat.add_sub_cancel, A247159.P14620348102086741471.a, A247159.P14898152283325292687.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072055, A072055.P8252801676711237860.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247159

/-! ## A247159.P13490599099296217631

`A000203(A076274(n+2)+1)`
-/

namespace A247159.P13490599099296217631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A076274 (n + 2) + 1).toNat

end

end A247159.P13490599099296217631

namespace A247159

/-- `A000203(A076274(n+2)+1)` -/
def P13490599099296217631.Spec : Prop :=
  ∀ n, P13490599099296217631.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P528502887135771389

`A000203(A089241(n+1)-2)`
-/

namespace A247159.P528502887135771389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089241 (n + 1) - 2).toNat

end

end A247159.P528502887135771389

namespace A247159

/-- `A000203(A089241(n+1)-2)` -/
def P528502887135771389.Spec : Prop :=
  ∀ n, P528502887135771389.a n = A247159 (n + 1)

theorem P528502887135771389.correct : P528502887135771389.Spec := by
  intro n
  simp only [A247159, Nat.add_sub_cancel, A247159.P528502887135771389.a, A247159.P14898152283325292687.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A089241, A089241.P14705987553220613803.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247159

/-! ## A247159.P7743079951600929620

`A000203(A001749(n+1)/2)`
-/

namespace A247159.P7743079951600929620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A247159.P7743079951600929620

namespace A247159

/-- `A000203(A001749(n+1)/2)` -/
def P7743079951600929620.Spec : Prop :=
  ∀ n, P7743079951600929620.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P12656724913917699790

`A000203(2*A008578(n+2))`
-/

namespace A247159.P12656724913917699790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A008578 (n + 2)).toNat

end

end A247159.P12656724913917699790

namespace A247159

/-- `A000203(2*A008578(n+2))` -/
def P12656724913917699790.Spec : Prop :=
  ∀ n, P12656724913917699790.a n = A247159 (n + 1)

end A247159

/-! ## A247159.P17151251550074882439

`A000203(2*A182986(n+2))`
-/

namespace A247159.P17151251550074882439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A182986 (n + 2)).toNat

end

end A247159.P17151251550074882439

namespace A247159

/-- `A000203(2*A182986(n+2))` -/
def P17151251550074882439.Spec : Prop :=
  ∀ n, P17151251550074882439.a n = A247159 (n + 1)

end A247159

/-!
# A247160: Dynamic Betting Game D(n,4,3).

The programs for A247160, the canonical program `A247160.P6970090979618269589` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247160 has offset 1).

The definition of A247160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247160.P6970090979618269589

`floor((n+1)*16/15)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247160

/-- `floor((n+1)*16/15)` -/
def P6970090979618269589.Spec : Prop :=
  ∀ n, P6970090979618269589.a n = A247160 (n + 1)

theorem P6970090979618269589.correct : P6970090979618269589.Spec := by
  intro n
  simp only [A247160, Nat.add_sub_cancel]

end A247160

/-! ## A247160.P2565815891717499330

`comp[2*or(7, n)]+1`
-/

namespace A247160.P2565815891717499330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 7 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A247160.P2565815891717499330

namespace A247160

/-- `comp[2*or(7, n)]+1` -/
def P2565815891717499330.Spec : Prop :=
  ∀ n, (P2565815891717499330.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P6367823607830248228

`lt[val(n+2, 2), 4]+1`
-/

namespace A247160.P6367823607830248228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A247160.P6367823607830248228

namespace A247160

/-- `lt[val(n+2, 2), 4]+1` -/
def P6367823607830248228.Spec : Prop :=
  ∀ n, (P6367823607830248228.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P16394181390269196800

`comp[n%2*record[xor(7, n)]]`
-/

namespace A247160.P16394181390269196800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247160.P16394181390269196800

namespace A247160

/-- `comp[n%2*record[xor(7, n)]]` -/
def P16394181390269196800.Spec : Prop :=
  ∀ n, (P16394181390269196800.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P15410103340941354646

`comp[a(n-1)+16]` with `a(0)=0, a(1)=-1`
-/

namespace A247160.P15410103340941354646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) + 16

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247160.P15410103340941354646

namespace A247160

/-- `comp[a(n-1)+16]` -/
def P15410103340941354646.Spec : Prop :=
  ∀ n, (P15410103340941354646.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P14415103336066087969

`record[and(n+1, or(7, n+2))]`
-/

namespace A247160.P14415103336066087969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.lor 7 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247160.P14415103336066087969

namespace A247160

/-- `record[and(n+1, or(7, n+2))]` -/
def P14415103336066087969.Spec : Prop :=
  ∀ n, (P14415103336066087969.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P8349770487059544121

`∑[gcd(gcd(3, n+1)+2, n+1)%3]`
-/

namespace A247160.P8349770487059544121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.gcd 3 (n + 1) + 2) (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247160.P8349770487059544121

namespace A247160

/-- `∑[gcd(gcd(3, n+1)+2, n+1)%3]` -/
def P8349770487059544121.Spec : Prop :=
  ∀ n, (P8349770487059544121.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P2320164269027967533

`lt[2*(n+1)*xor(n, n+1), 40*n]`
-/

namespace A247160.P2320164269027967533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * Nat.xor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247160.P2320164269027967533

namespace A247160

/-- `lt[2*(n+1)*xor(n, n+1), 40*n]` -/
def P2320164269027967533.Spec : Prop :=
  ∀ n, (P2320164269027967533.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P15491047763753670629

`comp[A008598(n)-2]+1`
-/

namespace A247160.P15491047763753670629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247160.P15491047763753670629

namespace A247160

/-- `comp[A008598(n)-2]+1` -/
def P15491047763753670629.Spec : Prop :=
  ∀ n, (P15491047763753670629.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P9292252111991409630

`comp[2*A004771(n)]+1`
-/

namespace A247160.P9292252111991409630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247160.P9292252111991409630

namespace A247160

/-- `comp[2*A004771(n)]+1` -/
def P9292252111991409630.Spec : Prop :=
  ∀ n, (P9292252111991409630.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P16832200278723542172

`comp[A022144(2*n)-1]`
-/

namespace A247160.P16832200278723542172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247160.P16832200278723542172

namespace A247160

/-- `comp[A022144(2*n)-1]` -/
def P16832200278723542172.Spec : Prop :=
  ∀ n, (P16832200278723542172.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P5882266236654117891

`comp[A017137(2*n+1)]+1`
-/

namespace A247160.P5882266236654117891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247160.P5882266236654117891

namespace A247160

/-- `comp[A017137(2*n+1)]+1` -/
def P5882266236654117891.Spec : Prop :=
  ∀ n, (P5882266236654117891.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P11407669094036617286

`∪[A247063(n+1), A049638(n)]`
-/

namespace A247160.P11407669094036617286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247160.P11407669094036617286

namespace A247160

/-- `∪[A247063(n+1), A049638(n)]` -/
def P11407669094036617286.Spec : Prop :=
  ∀ n, (P11407669094036617286.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P8717522465965855470

`comp[A047203(A008574(3*n))+n]`
-/

namespace A247160.P8717522465965855470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (A008574 (3 * n)).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247160.P8717522465965855470

namespace A247160

/-- `comp[A047203(A008574(3*n))+n]` -/
def P8717522465965855470.Spec : Prop :=
  ∀ n, (P8717522465965855470.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P8586335714945484395

`A002266(A002264(n+1))+n+1`
-/

namespace A247160.P8586335714945484395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A002264 (n + 1)).toNat + (n + 1 : ℤ)

end

end A247160.P8586335714945484395

namespace A247160

/-- `A002266(A002264(n+1))+n+1` -/
def P8586335714945484395.Spec : Prop :=
  ∀ n, P8586335714945484395.a n = A247160 (n + 1)

end A247160

/-! ## A247160.P11747996153356550123

`A002264(A002264(n-A057354(n)))+n+1`
-/

namespace A247160.P11747996153356550123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 ((n : ℤ) - A057354 n).toNat).toNat + (n + 1 : ℤ)

end

end A247160.P11747996153356550123

namespace A247160

/-- `A002264(A002264(n-A057354(n)))+n+1` -/
def P11747996153356550123.Spec : Prop :=
  ∀ n, P11747996153356550123.a n = A247160 (n + 1)

end A247160

/-! ## A247160.P6974584888075372284

`∑[Δ[comp[16*n]]!]`
-/

namespace A247160.P6974584888075372284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247160.P6974584888075372284

namespace A247160

/-- `∑[Δ[comp[16*n]]!]` -/
def P6974584888075372284.Spec : Prop :=
  ∀ n, (P6974584888075372284.a n : ℤ) = A247160 (n + 1)

end A247160

/-! ## A247160.P10972392027663751166

`∑[A000041(Δ[comp[16*n]])]`
-/

namespace A247160.P10972392027663751166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247160.P10972392027663751166

namespace A247160

/-- `∑[A000041(Δ[comp[16*n]])]` -/
def P10972392027663751166.Spec : Prop :=
  ∀ n, P10972392027663751166.a n = A247160 (n + 1)

end A247160

/-! ## A247160.P17804546192200493330

`∑[A000108(Δ[comp[16*n]])]`
-/

namespace A247160.P17804546192200493330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247160.P17804546192200493330

namespace A247160

/-- `∑[A000108(Δ[comp[16*n]])]` -/
def P17804546192200493330.Spec : Prop :=
  ∀ n, P17804546192200493330.a n = A247160 (n + 1)

end A247160

/-! ## A247160.P972479924918003499

`A008620(A002266(n+1))+n`
-/

namespace A247160.P972479924918003499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A002266 (n + 1)).toNat + (n : ℤ)

end

end A247160.P972479924918003499

namespace A247160

/-- `A008620(A002266(n+1))+n` -/
def P972479924918003499.Spec : Prop :=
  ∀ n, P972479924918003499.a n = A247160 (n + 1)

end A247160

/-!
# A247161: Dynamic Betting Game D(n,4,2).

The programs for A247161, the canonical program `A247161.P3236696413619216189` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247161 has offset 1).

The definition of A247161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247161.P3236696413619216189

`floor(12*(n+1)/11)+floor((4*(n+1)+1)/11)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247161

/-- `floor(12*(n+1)/11)+floor((4*(n+1)+1)/11)` -/
def P3236696413619216189.Spec : Prop :=
  ∀ n, P3236696413619216189.a n = A247161 (n + 1)

theorem P3236696413619216189.correct : P3236696413619216189.Spec := by
  intro n
  simp only [A247161, Nat.add_sub_cancel]

end A247161

/-! ## A247161.P15914949594973905819

`∪[A047610(n+1), A247062(n+1)]`
-/

namespace A247161.P15914949594973905819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247161.P15914949594973905819

namespace A247161

/-- `∪[A047610(n+1), A247062(n+1)]` -/
def P15914949594973905819.Spec : Prop :=
  ∀ n, (P15914949594973905819.a n : ℤ) = A247161 (n + 1)

end A247161

/-! ## A247161.P13429395530713326815

`∪[A247062(n+1), A277549(n+1)]`
-/

namespace A247161.P13429395530713326815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247161.P13429395530713326815

namespace A247161

/-- `∪[A247062(n+1), A277549(n+1)]` -/
def P13429395530713326815.Spec : Prop :=
  ∀ n, (P13429395530713326815.a n : ℤ) = A247161 (n + 1)

end A247161

/-! ## A247161.P16284912065943490186

`A004777(comp[A298024(n)-1]+1)`
-/

namespace A247161.P16284912065943490186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A247161.P16284912065943490186

namespace A247161

/-- `A004777(comp[A298024(n)-1]+1)` -/
def P16284912065943490186.Spec : Prop :=
  ∀ n, P16284912065943490186.a n = A247161 (n + 1)

end A247161

/-! ## A247161.P1226013123354319986

`record[n+1-Δ[A130766(A130766(n+1))]]`
-/

namespace A247161.P1226013123354319986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (A130766 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247161.P1226013123354319986

namespace A247161

/-- `record[n+1-Δ[A130766(A130766(n+1))]]` -/
def P1226013123354319986.Spec : Prop :=
  ∀ n, P1226013123354319986.a n = A247161 (n + 1)

end A247161

/-! ## A247161.P11351370114533376757

`record[A133310(A047612(n+1)%A133310(n))]`
-/

namespace A247161.P11351370114533376757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (Int.tmod (A047612 (n + 1)) (A133310 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247161.P11351370114533376757

namespace A247161

/-- `record[A133310(A047612(n+1)%A133310(n))]` -/
def P11351370114533376757.Spec : Prop :=
  ∀ n, P11351370114533376757.a n = A247161 (n + 1)

end A247161

/-! ## A247161.P9870919353105976925

`A285870(A285870(A313045(2*n+1)+4*n))`
-/

namespace A247161.P9870919353105976925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A285870 (A313045 (2 * n + 1) + (4 * n : ℤ)).toNat).toNat

end

end A247161.P9870919353105976925

namespace A247161

/-- `A285870(A285870(A313045(2*n+1)+4*n))` -/
def P9870919353105976925.Spec : Prop :=
  ∀ n, P9870919353105976925.a n = A247161 (n + 1)

end A247161

/-! ## A247161.P12447624307589119086

`lt[A274617(n+1), or(2, n)+1]`
-/

namespace A247161.P12447624307589119086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274617 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A247161.P12447624307589119086

namespace A247161

/-- `lt[A274617(n+1), or(2, n)+1]` -/
def P12447624307589119086.Spec : Prop :=
  ∀ n, (P12447624307589119086.a n : ℤ) = A247161 (n + 1)

end A247161

/-!
# A247162: G.f. 1-(2*x^3)/(-sqrt(-3*x^4-4*x^3-2*x^2+1)-x^2+1).

The programs for A247162, there is no canonical definition to state claims against.
-/

/-! ## A247162.P2355082576377998293

`A001678(n)-A240328(A260022(n))`
-/

namespace A247162.P2355082576377998293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 n - A240328 (A260022 n).toNat

end

end A247162.P2355082576377998293

/-! ## A247162.P12846852157242594947

`xor(A001678(n), A024360(A008891(n)))`
-/

namespace A247162.P12846852157242594947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001678 n) (A024360 (A008891 n).toNat)

end

end A247162.P12846852157242594947

/-! ## A247162.P9808390181398144640

`xor(A001678(n), A035185(A007088(n+4)))`
-/

namespace A247162.P9808390181398144640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001678 n) (A035185 (A007088 (n + 4)).toNat)

end

end A247162.P9808390181398144640

/-! ## A247162.P17278371015633555720

`xor(A001678(n), A010054(A161409(3*n)))`
-/

namespace A247162.P17278371015633555720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001678 n) (A010054 (A161409 (3 * n)).toNat)

end

end A247162.P17278371015633555720

/-! ## A247162.P14397136068293058340

`xor(A001678(n), A240328(A000292(3*n)))`
-/

namespace A247162.P14397136068293058340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001678 n) (A240328 (A000292 (3 * n)).toNat)

end

end A247162.P14397136068293058340

/-!
# A247163: Nonnegative numbers n such that abs(1/4 (n^5 - 133n^4 + 6729n^3 - 158379n^2 + 1720294n - 6823316)) is prime.

The programs for A247163, there is no canonical definition to state claims against.
-/

/-! ## A247163.P1920491839338602818

`or(n, and(2, A203031(n+1)))`
-/

namespace A247163.P1920491839338602818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.land 2 (A203031 (n + 1)))

end

end A247163.P1920491839338602818

/-! ## A247163.P3968706581909577246

`A335453(A355145(n))+n`
-/

namespace A247163.P3968706581909577246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A355145 n).toNat + (n : ℤ)

end

end A247163.P3968706581909577246

/-! ## A247163.P3440727206830474890

`or(n, A185264(A059674(n)))`
-/

namespace A247163.P3440727206830474890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A185264 (A059674 n).toNat)

end

end A247163.P3440727206830474890

/-! ## A247163.P4304931823621566293

`A055941(A186729(n+1))+n`
-/

namespace A247163.P4304931823621566293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A186729 (n + 1)).toNat + (n : ℤ)

end

end A247163.P4304931823621566293

/-! ## A247163.P5698867782408435206

`A226460(A254211(n+1))+n`
-/

namespace A247163.P5698867782408435206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 (A254211 (n + 1)).toNat + (n : ℤ)

end

end A247163.P5698867782408435206

/-! ## A247163.P3985329534755819873

`A000122(A342034(n+2))+n`
-/

namespace A247163.P3985329534755819873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A342034 (n + 2)).toNat + (n : ℤ)

end

end A247163.P3985329534755819873

/-! ## A247163.P17784772190459522298

`A277475(A262079(n+3))+n`
-/

namespace A247163.P17784772190459522298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277475 (A262079 (n + 3)).toNat + (n : ℤ)

end

end A247163.P17784772190459522298

/-! ## A247163.P9054448275539547981

`or(n, A024155(A319649(n+1)))`
-/

namespace A247163.P9054448275539547981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A024155 (A319649 (n + 1)).toNat)

end

end A247163.P9054448275539547981

/-! ## A247163.P11155580821452369481

`and(2, A284562(A001263(n+2)))+n`
-/

namespace A247163.P11155580821452369481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A284562 (A001263 (n + 2)).toNat) + (n : ℤ)

end

end A247163.P11155580821452369481

/-! ## A247163.P2664137261248946574

`floor(A180062(n+5)/A046025(2*n+3)+n)`
-/

namespace A247163.P2664137261248946574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180062 (n + 5) : ℚ) / (A046025 (2 * n + 3) : ℚ) + (n : ℚ)⌋

end

end A247163.P2664137261248946574

/-!
# A247164: Primes p such that Product_{d|(p-2)} phi(d) = Product_{d|(p-1)} phi(d) where phi(x) = Euler totient function (A000010).

The programs for A247164, there is no canonical definition to state claims against.
-/

/-! ## A247164.P11358494452540857946

`A248796(∪[A171596(n+1), A001504(n)])`
-/

namespace A247164.P11358494452540857946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248796 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A247164.P11358494452540857946

/-!
# A247165: Numbers m such that m^2 + 1 divides 2^m - 1.

The programs for A247165, there is no canonical definition to state claims against.
-/

/-! ## A247165.P4574654895745705444

`A260407(n+1)-1`
-/

namespace A247165.P4574654895745705444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260407 (n + 1) - 1

end

end A247165.P4574654895745705444

/-! ## A247165.P7233083564634425560

`xor(1, A260407(A005496(n)))`
-/

namespace A247165.P7233083564634425560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260407 (A005496 n).toNat)

end

end A247165.P7233083564634425560

/-! ## A247165.P451513942865107252

`xor(1, A260407(A209638(n)))`
-/

namespace A247165.P451513942865107252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260407 (A209638 n).toNat)

end

end A247165.P451513942865107252

/-! ## A247165.P4275447014943876579

`xor(1, A260407(A000027(n+1)))`
-/

namespace A247165.P4275447014943876579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260407 (A000027 (n + 1)).toNat)

end

end A247165.P4275447014943876579

/-!
# A247167: Fixed points of permutations A247143 and A247144.

The programs for A247167, there is no canonical definition to state claims against.
-/

/-! ## A247167.P13992922386742269359

`eq[n, A247143(n)]`
-/

namespace A247167.P13992922386742269359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247167.P13992922386742269359

/-! ## A247167.P2966866933694630208

`eq[n, A247144(n)]`
-/

namespace A247167.P2966866933694630208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247167.P2966866933694630208

/-!
# A247168: Number of times n occurs in the sequence floor(log_Pi(i)) with i=1,2,3,... .

The programs for A247168, the canonical program `A247168.P7862381625369425862` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247168 has offset 1).

The definition of A247168 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247168.P7862381625369425862

`A001672(n+2)-A001672(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A247168

/-- `A001672(n+2)-A001672(n+1)` -/
def P7862381625369425862.Spec : Prop :=
  ∀ n, P7862381625369425862.a n = A247168 (n + 1)

theorem P7862381625369425862.correct : P7862381625369425862.Spec := by
  intro n
  simp only [A247168, Nat.add_sub_cancel]

end A247168

/-! ## A247168.P5036297287632940945

`Δ[floor(π^(n+1))]`
-/

namespace A247168.P5036297287632940945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ (n + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247168.P5036297287632940945

namespace A247168

/-- `Δ[floor(π^(n+1))]` -/
def P5036297287632940945.Spec : Prop :=
  ∀ n, P5036297287632940945.a n = A247168 (n + 1)

end A247168

/-! ## A247168.P7857655219200190337

`abs(Δ[A001672(n+1)])`
-/

namespace A247168.P7857655219200190337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247168.P7857655219200190337

namespace A247168

/-- `abs(Δ[A001672(n+1)])` -/
def P7857655219200190337.Spec : Prop :=
  ∀ n, P7857655219200190337.a n = A247168 (n + 1)

end A247168

/-! ## A247168.P10604436583305189652

`abs(Δ[A001673(n+1)])`
-/

namespace A247168.P10604436583305189652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247168.P10604436583305189652

namespace A247168

/-- `abs(Δ[A001673(n+1)])` -/
def P10604436583305189652.Spec : Prop :=
  ∀ n, P10604436583305189652.a n = A247168 (n + 1)

end A247168

/-! ## A247168.P4464593174720103730

`abs(Δ[A102475(2*(n+1))])`
-/

namespace A247168.P4464593174720103730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247168.P4464593174720103730

namespace A247168

/-- `abs(Δ[A102475(2*(n+1))])` -/
def P4464593174720103730.Spec : Prop :=
  ∀ n, P4464593174720103730.a n = A247168 (n + 1)

end A247168

/-! ## A247168.P9292943154388094601

`A001673(n+2)-A001673(n+1)`
-/

namespace A247168.P9292943154388094601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 (n + 2) - A001673 (n + 1)

end

end A247168.P9292943154388094601

namespace A247168

/-- `A001673(n+2)-A001673(n+1)` -/
def P9292943154388094601.Spec : Prop :=
  ∀ n, P9292943154388094601.a n = A247168 (n + 1)

theorem P9292943154388094601.correct : P9292943154388094601.Spec := by
  intro n
  simp only [A247168, Nat.add_sub_cancel, A247168.P9292943154388094601.a, A247168.P7862381625369425862.a, A001672, A001672.P3969469059550511315.a, A001673, A001673.P15664192120311044095.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247168

/-! ## A247168.P3644557300267398572

`abs(Δ[Δ[A117882(n)]])`
-/

namespace A247168.P3644557300267398572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247168.P3644557300267398572

namespace A247168

/-- `abs(Δ[Δ[A117882(n)]])` -/
def P3644557300267398572.Spec : Prop :=
  ∀ n, P3644557300267398572.a n = A247168 (n + 1)

end A247168

/-!
# A247171: G.f.: (2*x^2+4*x+3)/((2*x+2)*sqrt(-4*x^3-4*x^2+1))-1/(2*x+2).

The programs for A247171, there is no canonical definition to state claims against.
-/

/-! ## A247171.P613851370667691805

`A077070(or(A122334(n), A151372(n)))`
-/

namespace A247171.P613851370667691805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (Int.lor (A122334 n) (A151372 n)).toNat

end

end A247171.P613851370667691805

/-! ## A247171.P1822553429943503686

`A183233(A333313(n+1))`
-/

namespace A247171.P1822553429943503686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A333313 (n + 1)).toNat

end

end A247171.P1822553429943503686

/-! ## A247171.P7668525973734428590

`A336488(A026643(n))+A300453(n)`
-/

namespace A247171.P7668525973734428590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (A026643 n).toNat + A300453 n

end

end A247171.P7668525973734428590

/-! ## A247171.P14742411528704699686

`A345167(A128695(n))+A000006(n+1)`
-/

namespace A247171.P14742411528704699686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A128695 n).toNat + A000006 (n + 1)

end

end A247171.P14742411528704699686

/-!
# A247172: Expansion of -1 - (sqrt(x^4 + 4*x^3 - 2*x^2 - 4*x + 1) - x^2 - 2*x - 1)/(4*x).

The programs for A247172, there is no canonical definition to state claims against.
-/

/-! ## A247172.P17462054511306693358

`floor((A085139(n)+A057427(n))/2)`
-/

namespace A247172.P17462054511306693358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085139 n + A057427 n : ℚ) / 2⌋

end

end A247172.P17462054511306693358

/-! ## A247172.P4865998910547072248

`abs(floor(A033999(n)*A085139(n)/2))`
-/

namespace A247172.P4865998910547072248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A033999 n * A085139 n : ℚ) / 2⌋|

end

end A247172.P4865998910547072248

/-! ## A247172.P881878482009210777

`A033999(and(n, a(n-2)+1))*A085139(n)/2` with `a(0)=0, a(1)=1`
-/

namespace A247172.P881878482009210777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A033999 (Int.land (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2) + 1))).toNat * A085139 n : ℚ) / 2

end

end A247172.P881878482009210777

/-! ## A247172.P12246975638836716887

`round(A085139(n)/A069735(A020482(n+2)))`
-/

namespace A247172.P12246975638836716887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085139 n : ℚ) / (A069735 (A020482 (n + 2)).toNat : ℚ))

end

end A247172.P12246975638836716887

/-! ## A247172.P12953920675794596291

`round(A085139(n)/A069735(A089968(n+1)))`
-/

namespace A247172.P12953920675794596291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085139 n : ℚ) / (A069735 (A089968 (n + 1)).toNat : ℚ))

end

end A247172.P12953920675794596291

/-!
# A247173: Expansion of g.f. (-1)/(2*x^2+2*x) +(-2*x^3-3*x^2+1) / (sqrt(x^4+4*x^3-2*x^2-4*x+1)*(2*x^2+2*x)).

The programs for A247173, there is no canonical definition to state claims against.
-/

/-! ## A247173.P17083514168380104756

`Δ[Δ[A195177(floor(((2^n+1)/2)²))]]`
-/

namespace A247173.P17083514168380104756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 ⌊((2 ^ n + 1 : ℚ) / 2) ^ 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247173.P17083514168380104756

/-! ## A247173.P13699673536281925698

`A117634(2^n)-∏{e}[n+1, 2*#+1]`
-/

namespace A247173.P13699673536281925698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117634 (2 ^ n) - ((∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A247173.P13699673536281925698

/-!
# A247174: Numbers k such that phi(k) = phi(k+1) and simultaneously Product_{d|k} phi(d) = Product_{d|(k+1)} phi(d) where phi(x) = Euler totient function (A000010).

The programs for A247174, there is no canonical definition to state claims against.
-/

/-! ## A247174.P2867867193523816048

`∩[A001274(n+1), A248795(n+1)]`
-/

namespace A247174.P2867867193523816048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247174.P2867867193523816048

/-! ## A247174.P11676589875609309558

`A248795(A326178(n+1))`
-/

namespace A247174.P11676589875609309558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248795 (A326178 (n + 1)).toNat

end

end A247174.P11676589875609309558

/-! ## A247174.P12040840555880328587

`∩[A063739(n+1), A248795(n+1)]`
-/

namespace A247174.P12040840555880328587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247174.P12040840555880328587

/-! ## A247174.P8289759939883676875

`A248795(lt[A010052(3*n), A128117(n+1)])`
-/

namespace A247174.P8289759939883676875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248795 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247174.P8289759939883676875

/-! ## A247174.P7853086675346120810

`A248795(lt[A010052(3*n), A206487(n+1)])`
-/

namespace A247174.P7853086675346120810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248795 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247174.P7853086675346120810

/-!
# A247175: Numbers n such that 2*(n^2 + 2) - 1 and 2*(n^2 + 2) + 1 are both prime.

The programs for A247175, there is no canonical definition to state claims against.
-/

/-! ## A247175.P1988069793638214709

`eq[2, A166597(2*(n²+2))]`
-/

namespace A247175.P1988069793638214709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * (n ^ 2 + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247175.P1988069793638214709

/-! ## A247175.P16451615365394678095

`lt[A171487(A059100(n)), 2]`
-/

namespace A247175.P16451615365394678095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171487 (A059100 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A247175.P16451615365394678095

/-!
# A247176: Largest number of maximal order mod n.

The programs for A247176, there is no canonical definition to state claims against.
-/

/-! ## A247176.P2261729761848434463

`A251865(∑[A111725(n+1)])`
-/

namespace A247176.P2261729761848434463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251865 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247176.P2261729761848434463

/-! ## A247176.P11612515944351978430

`n-A124763(A003244(n+1))`
-/

namespace A247176.P11612515944351978430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A124763 (A003244 (n + 1)).toNat

end

end A247176.P11612515944351978430

/-! ## A247176.P1202561242817687923

`A000353(A284306(n))%(n+1)`
-/

namespace A247176.P1202561242817687923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000353 (A284306 n).toNat) (n + 1 : ℤ)

end

end A247176.P1202561242817687923

/-! ## A247176.P16403443573288572331

`or(A007814(n+1), A064415(A046932(n+1)))`
-/

namespace A247176.P16403443573288572331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (n + 1)) (A064415 (A046932 (n + 1)).toNat)

end

end A247176.P16403443573288572331

/-!
# A247177: Primes p with property that the sum of the squares of the successive gaps between primes <= p is a prime number.

The programs for A247177, there is no canonical definition to state claims against.
-/

/-! ## A247177.P8109632078350420496

`A279857(A282139(n+1))`
-/

namespace A247177.P8109632078350420496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279857 (A282139 (n + 1)).toNat

end

end A247177.P8109632078350420496

/-! ## A247177.P12818859177996072416

`∩[A045454(n+1), A191850(n+1)]`
-/

namespace A247177.P12818859177996072416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247177.P12818859177996072416

/-!
# A247178: Primes p with property that the sum of the cubes of the successive gaps between primes <= p is a prime number.

The programs for A247178, there is no canonical definition to state claims against.
-/

/-! ## A247178.P13703100780469294219

`record[A143429(∑[comp[floor(2/3*∑[n])]])]`
-/

namespace A247178.P13703100780469294219
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ)⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143429 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247178.P13703100780469294219

/-!
# A247179: Floor of area enclosed in the interior of n unit circles arranged in a circle.

The programs for A247179, the canonical program `A247179.P11170627886484101448` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247179 has offset 3).

The definition of A247179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247179.P11170627886484101448

`floor((n+3)/tan(π/(n+3))-π*((n+3)/2-1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247179

/-- `floor((n+3)/tan(π/(n+3))-π*((n+3)/2-1))` -/
def P11170627886484101448.Spec : Prop :=
  ∀ n, P11170627886484101448.a n = A247179 (n + 3)

theorem P11170627886484101448.correct : P11170627886484101448.Spec := by
  intro n
  simp only [A247179, Nat.add_sub_cancel]

end A247179

/-! ## A247179.P16031619177894638610

`A135661(A341135(n+6)+A023894(2*(n+2)))`
-/

namespace A247179.P16031619177894638610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A341135 (n + 6) + A023894 (2 * (n + 2))).toNat

end

end A247179.P16031619177894638610

namespace A247179

/-- `A135661(A341135(n+6)+A023894(2*(n+2)))` -/
def P16031619177894638610.Spec : Prop :=
  ∀ n, P16031619177894638610.a n = A247179 (n + 3)

end A247179

/-! ## A247179.P15234752468815797834

`floor(log(A153553(n)))`
-/

namespace A247179.P15234752468815797834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A153553 n : ℝ)⌋

end

end A247179.P15234752468815797834

namespace A247179

/-- `floor(log(A153553(n)))` -/
def P15234752468815797834.Spec : Prop :=
  ∀ n, P15234752468815797834.a n = A247179 (n + 3)

end A247179

/-! ## A247179.P1998159246475356370

`floor(∑[n/atan(A156446(n+2))])`
-/

namespace A247179.P1998159246475356370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.arctan (A156446 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A247179.P1998159246475356370

namespace A247179

/-- `floor(∑[n/atan(A156446(n+2))])` -/
def P1998159246475356370.Spec : Prop :=
  ∀ n, P1998159246475356370.a n = A247179 (n + 3)

end A247179

/-! ## A247179.P12786189055830251790

`A002266(Δ[A002266(((2*n)^3+n)/3)])`
-/

namespace A247179.P12786189055830251790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway (((2 * n) ^ 3 + n : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f1 (n + 1) - f1 n).toNat

end

end A247179.P12786189055830251790

namespace A247179

/-- `A002266(Δ[A002266(((2*n)^3+n)/3)])` -/
def P12786189055830251790.Spec : Prop :=
  ∀ n, P12786189055830251790.a n = A247179 (n + 3)

end A247179

/-!
# A247180: Numbers with nonrepeating smallest prime factor.

The programs for A247180, the canonical program `A247180.P10468119857668656301` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247180 has offset 1).

The definition of A247180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6697 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247180.P6688924779836821781

`eq[1, A087179(n+1)]+1`
-/

namespace A247180.P6688924779836821781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247180.P6688924779836821781

namespace A247180

/-- `eq[1, A087179(n+1)]+1` -/
def P6688924779836821781.Spec : Prop :=
  ∀ n, (P6688924779836821781.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P1735433080150885884

`eq[1, A290109(n+2)]+2`
-/

namespace A247180.P1735433080150885884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A247180.P1735433080150885884

namespace A247180

/-- `eq[1, A290109(n+2)]+2` -/
def P1735433080150885884.Spec : Prop :=
  ∀ n, (P1735433080150885884.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P9640806229231474338

`comp[A283050(n+1)-2]+2`
-/

namespace A247180.P9640806229231474338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A247180.P9640806229231474338

namespace A247180

/-- `comp[A283050(n+1)-2]+2` -/
def P9640806229231474338.Spec : Prop :=
  ∀ n, (P9640806229231474338.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P2702817946205460357

`comp[xor(1, n)*A020639(n+1)]`
-/

namespace A247180.P2702817946205460357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) * A020639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247180.P2702817946205460357

namespace A247180

/-- `comp[xor(1, n)*A020639(n+1)]` -/
def P2702817946205460357.Spec : Prop :=
  ∀ n, (P2702817946205460357.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P12792329887703913202

`comp[A285109(n+1)-1]+1`
-/

namespace A247180.P12792329887703913202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247180.P12792329887703913202

namespace A247180

/-- `comp[A285109(n+1)-1]+1` -/
def P12792329887703913202.Spec : Prop :=
  ∀ n, (P12792329887703913202.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P7681224456173483133

`record[A371573(n+2)]`
-/

namespace A247180.P7681224456173483133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371573 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247180.P7681224456173483133

namespace A247180

/-- `record[A371573(n+2)]` -/
def P7681224456173483133.Spec : Prop :=
  ∀ n, P7681224456173483133.a n = A247180 (n + 1)

end A247180

/-! ## A247180.P10468119857668656301

`eq[1, A067029(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A247180

/-- `eq[1, A067029(n+1)]+1` -/
def P10468119857668656301.Spec : Prop :=
  ∀ n, (P10468119857668656301.a n : ℤ) = A247180 (n + 1)

theorem P10468119857668656301.correct : P10468119857668656301.Spec := by
  intro n
  simp only [A247180, Nat.add_sub_cancel]

end A247180

/-! ## A247180.P3531515308934043690

`lt[1, A126773(n+1)]+1`
-/

namespace A247180.P3531515308934043690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A247180.P3531515308934043690

namespace A247180

/-- `lt[1, A126773(n+1)]+1` -/
def P3531515308934043690.Spec : Prop :=
  ∀ n, (P3531515308934043690.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P12237093495104804582

`lt[A067029(n+2), 2]+2`
-/

namespace A247180.P12237093495104804582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A247180.P12237093495104804582

namespace A247180

/-- `lt[A067029(n+2), 2]+2` -/
def P12237093495104804582.Spec : Prop :=
  ∀ n, (P12237093495104804582.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P4953544994748455159

`eq[1, A067029(A028310(n))]`
-/

namespace A247180.P4953544994748455159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247180.P4953544994748455159

namespace A247180

/-- `eq[1, A067029(A028310(n))]` -/
def P4953544994748455159.Spec : Prop :=
  ∀ n, (P4953544994748455159.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P2034724043394977994

`comp[A103164(n)*A107286(n)]`
-/

namespace A247180.P2034724043394977994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n * A107286 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247180.P2034724043394977994

namespace A247180

/-- `comp[A103164(n)*A107286(n)]` -/
def P2034724043394977994.Spec : Prop :=
  ∀ n, (P2034724043394977994.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P1387444553184115733

`A020725(eq[1, A067029(n+1)])`
-/

namespace A247180.P1387444553184115733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247180.P1387444553184115733

namespace A247180

/-- `A020725(eq[1, A067029(n+1)])` -/
def P1387444553184115733.Spec : Prop :=
  ∀ n, P1387444553184115733.a n = A247180 (n + 1)

end A247180

/-! ## A247180.P6629729435136388527

`eq[2, A000005(A028233(n+1))]+1`
-/

namespace A247180.P6629729435136388527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028233 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247180.P6629729435136388527

namespace A247180

/-- `eq[2, A000005(A028233(n+1))]+1` -/
def P6629729435136388527.Spec : Prop :=
  ∀ n, (P6629729435136388527.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P12665474353290568420

`record[A020639(n+2)*A028234(n+2)]`
-/

namespace A247180.P12665474353290568420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A028234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247180.P12665474353290568420

namespace A247180

/-- `record[A020639(n+2)*A028234(n+2)]` -/
def P12665474353290568420.Spec : Prop :=
  ∀ n, P12665474353290568420.a n = A247180 (n + 1)

end A247180

/-! ## A247180.P15768511034411694428

`eq[A020639(n+2), A028233(n+2)]+2`
-/

namespace A247180.P15768511034411694428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A247180.P15768511034411694428

namespace A247180

/-- `eq[A020639(n+2), A028233(n+2)]+2` -/
def P15768511034411694428.Spec : Prop :=
  ∀ n, (P15768511034411694428.a n : ℤ) = A247180 (n + 1)

end A247180

/-! ## A247180.P979591267001819766

`eq[A028234(n+2), A032742(n+2)]+2`
-/

namespace A247180.P979591267001819766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A247180.P979591267001819766

namespace A247180

/-- `eq[A028234(n+2), A032742(n+2)]+2` -/
def P979591267001819766.Spec : Prop :=
  ∀ n, (P979591267001819766.a n : ℤ) = A247180 (n + 1)

end A247180

/-!
# A247181: Total domination number of the n-hypercube graph.

The programs for A247181, there is no canonical definition to state claims against.
-/

/-! ## A247181.P17339040127148329729

`a(n-1)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=4, a(4)=8, a(5)=14, a(6)=24, a(7)=32, a(8)=64, a(9)=124`
-/

namespace A247181.P17339040127148329729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4, 4, 8, 14, 24, 32, 64, 124] fun n a =>
  a (n - 1)

end

end A247181.P17339040127148329729

/-! ## A247181.P6589263655629913543

`A230014(∑[n]+1)`
-/

namespace A247181.P6589263655629913543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230014 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247181.P6589263655629913543

/-! ## A247181.P16122384518166473185

`2*A000983(floor(acot(n)+n))`
-/

namespace A247181.P16122384518166473185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000983 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A247181.P16122384518166473185

/-! ## A247181.P8340734153912007492

`2*A060438(∑[n-1]+2)`
-/

namespace A247181.P8340734153912007492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060438 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A247181.P8340734153912007492

/-! ## A247181.P15893476893512029235

`2*A000983(round(sqrt(n²+1)))`
-/

namespace A247181.P15893476893512029235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000983 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A247181.P15893476893512029235

/-!
# A247182: Numbers k such that the smallest k-digit odd number concatenated with the largest k-digit odd number is prime.

The programs for A247182, there is no canonical definition to state claims against.
-/

/-! ## A247182.P236680983056763672

`A029458(n+1)+A029445(A072034(n))`
-/

namespace A247182.P236680983056763672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029458 (n + 1) + A029445 (A072034 n).toNat

end

end A247182.P236680983056763672

/-!
# A247183: Numbers k such that the largest k-digit odd number concatenated with the smallest k-digit odd number is prime.

The programs for A247183, there is no canonical definition to state claims against.
-/

/-! ## A247183.P17549590745774006127

`A266406(A026679(n+1))`
-/

namespace A247183.P17549590745774006127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266406 (A026679 (n + 1)).toNat

end

end A247183.P17549590745774006127

/-!
# A247184: a(0) = 0. a(n) is the number of distinct sums of two elements in [a(0), ... a(n-1)] chosen without replacement.

The programs for A247184, there is no canonical definition to state claims against.
-/

/-! ## A247184.P12782811860835307061

`∑[A000720(A144876(n+1)-n)]`
-/

namespace A247184.P12782811860835307061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A144876 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247184.P12782811860835307061

/-! ## A247184.P401371156863979618

`∑[A056847(n-A340988(A000124(n)))]`
-/

namespace A247184.P401371156863979618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 ((n : ℤ) - A340988 ((A000124 n).toNat + 91)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247184.P401371156863979618

/-! ## A247184.P13196825074612726795

`round(A319158(n+1)-sqrt(n))`
-/

namespace A247184.P13196825074612726795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319158 (n + 1) : ℝ) - Real.sqrt (n : ℝ))

end

end A247184.P13196825074612726795

/-! ## A247184.P7436962692433888502

`∑[∑[A039997(A026553(n))]]`
-/

namespace A247184.P7436962692433888502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A026553 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247184.P7436962692433888502

/-! ## A247184.P8781471005663489938

`∑[∑[A362422(A096231(n))]]`
-/

namespace A247184.P8781471005663489938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (A096231 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247184.P8781471005663489938

/-!
# A247186: a(0) = 0. a(n) is the number of repeating sums in the collection of all sums formed from [a(0), ... a(n-1)] + [a(0), ... a(n-1)].

The programs for A247186, there is no canonical definition to state claims against.
-/

/-! ## A247186.P13233490804693956510

`ceil(char[2]+(n/2)²)-A145573(∑[n+2]+4)`
-/

namespace A247186.P13233490804693956510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉ - A145573 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

end

end A247186.P13233490804693956510

/-! ## A247186.P10281630928389599325

`A091225(A026567(n))+A002620(n)`
-/

namespace A247186.P10281630928389599325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A026567 n).toNat + A002620 n

end

end A247186.P10281630928389599325

/-! ## A247186.P9739401612708318719

`A156660(A000129(n))+A002620(n)`
-/

namespace A247186.P9739401612708318719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A000129 n).toNat + A002620 n

end

end A247186.P9739401612708318719

/-! ## A247186.P15142719379645516610

`A267292(A018006(n))+A002620(n)`
-/

namespace A247186.P15142719379645516610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267292 (A018006 n).toNat + A002620 n

end

end A247186.P15142719379645516610

/-! ## A247186.P6601870191767104163

`A033638(n)-A285952(A107428(n+4))`
-/

namespace A247186.P6601870191767104163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A285952 (A107428 (n + 4)).toNat

end

end A247186.P6601870191767104163

/-!
# A247187: Numbers containing nine distinct decimal digits (zero is not considered) and having the property that the digits 1 to 5 appear in the order but not the digits 1 to 6.

The programs for A247187, there is no canonical definition to state claims against.
-/

/-! ## A247187.P9547344151496230386

`A050289(A187829(n+1)+24)`
-/

namespace A247187.P9547344151496230386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050289 (A187829 (n + 1) + 24).toNat

end

end A247187.P9547344151496230386

/-!
# A247188: a(0) = 0. a(n) is the number of repeating sums in the collection of all sums of any k elements in [a(0), ... a(n-1)] chosen without replacement for 2 <= k <= n.

The programs for A247188, the canonical program `A247188.P13673202595491743515` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247188 has offset 0).

The definition of A247188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247188.P13673202595491743515

`2*a(n-1)-1+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A247188

/-- `2*a(n-1)-1+n` -/
def P13673202595491743515.Spec : Prop :=
  ∀ n, P13673202595491743515.a n = A247188 n

theorem P13673202595491743515.correct : P13673202595491743515.Spec := by
  intro n
  simp only [A247188]

end A247188

/-! ## A247188.P13532907372909414135

`2*a(n-1)-(1-n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A247188.P13532907372909414135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ))

end

end A247188.P13532907372909414135

namespace A247188

/-- `2*a(n-1)-(1-n)` -/
def P13532907372909414135.Spec : Prop :=
  ∀ n, P13532907372909414135.a n = A247188 n

theorem P13532907372909414135.correct : P13532907372909414135.Spec := by
  intro n
  simp only [A247188, Nat.add_sub_cancel, A247188.P13532907372909414135.a, A247188.P13673202595491743515.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A247188

/-! ## A247188.P348461536871067482

`n-1+a(n-1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A247188.P348461536871067482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + a (n - 1))

end

end A247188.P348461536871067482

namespace A247188

/-- `n-1+a(n-1)+a(n-1)` -/
def P348461536871067482.Spec : Prop :=
  ∀ n, P348461536871067482.a n = A247188 n

end A247188

/-! ## A247188.P15695216446752743065

`n-(1-a(n-1)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A247188.P15695216446752743065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A247188.P15695216446752743065

namespace A247188

/-- `n-(1-a(n-1)-a(n-1))` -/
def P15695216446752743065.Spec : Prop :=
  ∀ n, P15695216446752743065.a n = A247188 n

end A247188

/-! ## A247188.P17592076393045808076

`floor(A026622(n)/2-n)`
-/

namespace A247188.P17592076393045808076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026622 n : ℚ) / 2 - (n : ℚ)⌋

end

end A247188.P17592076393045808076

namespace A247188

/-- `floor(A026622(n)/2-n)` -/
def P17592076393045808076.Spec : Prop :=
  ∀ n, P17592076393045808076.a n = A247188 n

end A247188

/-! ## A247188.P256839321904736081

`Δ[A365062(n+1)]-(n+1)`
-/

namespace A247188.P256839321904736081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A247188.P256839321904736081

namespace A247188

/-- `Δ[A365062(n+1)]-(n+1)` -/
def P256839321904736081.Spec : Prop :=
  ∀ n, P256839321904736081.a n = A247188 n

end A247188

/-!
# A247191: Number of prime divisors, counted with multiplicity, of A180202(n), the product of the two numbers in the n-th amicable pair, A002025(n) * A002046(n).

The programs for A247191, there is no canonical definition to state claims against.
-/

/-! ## A247191.P8482302798000553647

`A001222(A002025(n+1))+A001222(A002046(n+1))`
-/

namespace A247191.P8482302798000553647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002025 (n + 1)).toNat + A001222 (A002046 (n + 1)).toNat

end

end A247191.P8482302798000553647

/-! ## A247191.P7600833089307848609

`A001222(A259180(2*n+1))+A001222(A002046(n+1))`
-/

namespace A247191.P7600833089307848609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259180 (2 * n + 1)).toNat + A001222 (A002046 (n + 1)).toNat

end

end A247191.P7600833089307848609

/-! ## A247191.P17304648996185993222

`A001222(A259180(2*n+1))+A001222(A259180(2*(n+1)))`
-/

namespace A247191.P17304648996185993222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259180 (2 * n + 1)).toNat + A001222 (A259180 (2 * (n + 1))).toNat

end

end A247191.P17304648996185993222

/-!
# A247193: a(n) = gcd(n!, Fibonacci(n)).

The programs for A247193, the canonical program `A247193.P14514072611661913119` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247193 has offset 1).

The definition of A247193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd((n+1)!, A000045(n+1))` (program `A247193.P14514072611661913119`, by `A247193.P14514072611661913119.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247193.P14514072611661913119

`gcd((n+1)!, A000045(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A247193

/-- `gcd((n+1)!, A000045(n+1))` -/
def P14514072611661913119.Spec : Prop :=
  ∀ n, (P14514072611661913119.a n : ℤ) = A247193 (n + 1)

theorem P14514072611661913119.correct : P14514072611661913119.Spec := by
  intro n
  simp only [A247193, Nat.add_sub_cancel]

end A247193

/-! ## A247193.P7969856029566280924

`gcd(∑[A212804(n)], A182213(n+1))`
-/

namespace A247193.P7969856029566280924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A182213 (n + 1))

end

end A247193.P7969856029566280924

namespace A247193

/-- `gcd(∑[A212804(n)], A182213(n+1))` -/
def P7969856029566280924.Spec : Prop :=
  ∀ n, (P7969856029566280924.a n : ℤ) = A247193 (n + 1)

end A247193

/-! ## A247193.P9623610366506954106

`gcd(A064497(n+1), A073841(n+1))`
-/

namespace A247193.P9623610366506954106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064497 (n + 1)) (A073841 (n + 1))

end

end A247193.P9623610366506954106

namespace A247193

/-- `gcd(A064497(n+1), A073841(n+1))` -/
def P9623610366506954106.Spec : Prop :=
  ∀ n, (P9623610366506954106.a n : ℤ) = A247193 (n + 1)

end A247193

/-! ## A247193.P3810259607415443107

`gcd(A000045(n+1), A224096(n))`
-/

namespace A247193.P3810259607415443107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (A224096 n)

end

end A247193.P3810259607415443107

namespace A247193

/-- `gcd(A000045(n+1), A224096(n))` -/
def P3810259607415443107.Spec : Prop :=
  ∀ n, (P3810259607415443107.a n : ℤ) = A247193 (n + 1)

end A247193

/-! ## A247193.P8718195874839719614

`gcd(record[A053602(n)], A195506(n+1))`
-/

namespace A247193.P8718195874839719614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A195506 (n + 1))

end

end A247193.P8718195874839719614

namespace A247193

/-- `gcd(record[A053602(n)], A195506(n+1))` -/
def P8718195874839719614.Spec : Prop :=
  ∀ n, (P8718195874839719614.a n : ℤ) = A247193 (n + 1)

end A247193

/-! ## A247193.P15737742410534650517

`gcd(or(1, n)!, A036355(∑[n]))`
-/

namespace A247193.P15737742410534650517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (Nat.lor 1 n) : ℤ) (A036355 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A247193.P15737742410534650517

namespace A247193

/-- `gcd(or(1, n)!, A036355(∑[n]))` -/
def P15737742410534650517.Spec : Prop :=
  ∀ n, (P15737742410534650517.a n : ℤ) = A247193 (n + 1)

end A247193

/-! ## A247193.P5221612377244071253

`gcd(∏[A005843(n+1)], A103609(2*(n+1)))`
-/

namespace A247193.P5221612377244071253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A103609 (2 * (n + 1)))

end

end A247193.P5221612377244071253

namespace A247193

/-- `gcd(∏[A005843(n+1)], A103609(2*(n+1)))` -/
def P5221612377244071253.Spec : Prop :=
  ∀ n, (P5221612377244071253.a n : ℤ) = A247193 (n + 1)

end A247193

/-!
# A247194: a(n) = ceiling(Pi*n^3).

The programs for A247194, the canonical program `A247194.P11839691143919852225` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247194 has offset 0).

The definition of A247194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247194.P11978280272945957897

`ceil(π*n^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247194.P11978280272945957897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n ^ 3 : ℝ)⌉

end

end A247194.P11978280272945957897

namespace A247194

/-- `ceil(π*n^3)` -/
def P11978280272945957897.Spec : Prop :=
  ∀ n, P11978280272945957897.a n = A247194 n

end A247194

/-! ## A247194.P11839691143919852225

`A121381(n^3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A247194

/-- `A121381(n^3)` -/
def P11839691143919852225.Spec : Prop :=
  ∀ n, P11839691143919852225.a n = A247194 n

theorem P11839691143919852225.correct : P11839691143919852225.Spec := by
  intro n
  simp only [A247194]

end A247194

/-! ## A247194.P16432178485623803572

`floor(π*n^3-A057428(n))`
-/

namespace A247194.P16432178485623803572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 3 : ℝ) - (A057428 n : ℝ)⌋

end

end A247194.P16432178485623803572

namespace A247194

/-- `floor(π*n^3-A057428(n))` -/
def P16432178485623803572.Spec : Prop :=
  ∀ n, P16432178485623803572.a n = A247194 n

end A247194

/-! ## A247194.P15031264012339924259

`floor(π*A000578(n))-A057428(n)`
-/

namespace A247194.P15031264012339924259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000578 n : ℝ)⌋ - A057428 n

end

end A247194.P15031264012339924259

namespace A247194

/-- `floor(π*A000578(n))-A057428(n)` -/
def P15031264012339924259.Spec : Prop :=
  ∀ n, P15031264012339924259.a n = A247194 n

end A247194

/-! ## A247194.P1682586377426130179

`lcm(ceil(π*A000578(n)), A033999(n))`
-/

namespace A247194.P1682586377426130179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈Real.pi * (A000578 n : ℝ)⌉ (A033999 n)

end

end A247194.P1682586377426130179

namespace A247194

/-- `lcm(ceil(π*A000578(n)), A033999(n))` -/
def P1682586377426130179.Spec : Prop :=
  ∀ n, (P1682586377426130179.a n : ℤ) = A247194 n

end A247194

/-! ## A247194.P7283001414338151942

`floor(π*A000578(n))+1-A000007(n)`
-/

namespace A247194.P7283001414338151942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000578 n : ℝ)⌋ + (1 - A000007 n)

end

end A247194.P7283001414338151942

namespace A247194

/-- `floor(π*A000578(n))+1-A000007(n)` -/
def P7283001414338151942.Spec : Prop :=
  ∀ n, P7283001414338151942.a n = A247194 n

end A247194

/-! ## A247194.P12419654532685323651

`floor(π*A000578(n))+2-A054977(n)`
-/

namespace A247194.P12419654532685323651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000578 n : ℝ)⌋ + 2 - A054977 n

end

end A247194.P12419654532685323651

namespace A247194

/-- `floor(π*A000578(n))+2-A054977(n)` -/
def P12419654532685323651.Spec : Prop :=
  ∀ n, P12419654532685323651.a n = A247194 n

end A247194

/-! ## A247194.P9696000962461113736

`floor(π*A000578(n))+A000040(n+1)%2`
-/

namespace A247194.P9696000962461113736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000578 n : ℝ)⌋ + Int.tmod (A000040 (n + 1)) 2

end

end A247194.P9696000962461113736

namespace A247194

/-- `floor(π*A000578(n))+A000040(n+1)%2` -/
def P9696000962461113736.Spec : Prop :=
  ∀ n, P9696000962461113736.a n = A247194 n

end A247194

/-! ## A247194.P12237884095488630941

`floor(π*A000578(n))-A010051((2*n+1)²+1)+1`
-/

namespace A247194.P12237884095488630941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000578 n : ℝ)⌋ - A010051 ((2 * n + 1) ^ 2 + 1) + 1

end

end A247194.P12237884095488630941

namespace A247194

/-- `floor(π*A000578(n))-A010051((2*n+1)²+1)+1` -/
def P12237884095488630941.Spec : Prop :=
  ∀ n, P12237884095488630941.a n = A247194 n

end A247194

/-!
# A247195: Expansion of -(sqrt(x^4-4*x^3-6*x^2-4*x+1) +x^2-2*x-1)/4.

The programs for A247195, there is no canonical definition to state claims against.
-/

/-! ## A247195.P182342377753088087

`or(A059995(A122449(n)), A267084(n+1))`
-/

namespace A247195.P182342377753088087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059995 (A122449 n).toNat) (A267084 (n + 1))

end

end A247195.P182342377753088087

/-! ## A247195.P10668228483117604275

`A117448(∑[4*a(n-1)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=9`
-/

namespace A247195.P10668228483117604275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 9] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247195.P10668228483117604275

/-! ## A247195.P18237128365096753346

`A117448(A092898(n))`
-/

namespace A247195.P18237128365096753346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A092898 n).toNat

end

end A247195.P18237128365096753346

/-!
# A247196: Number of tilings of a 5 X n rectangle using n pentominoes of shapes T, I, P.

The programs for A247196, there is no canonical definition to state claims against.
-/

/-! ## A247196.P14787927165121426349

`or(A002262(A208223(n+1)), A264765(n))`
-/

namespace A247196.P14787927165121426349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A208223 (n + 1)).toNat) (A264765 n)

end

end A247196.P14787927165121426349

/-! ## A247196.P9377746686674539644

`or(A045917(A017970(n)), A264765(n))`
-/

namespace A247196.P9377746686674539644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045917 (A017970 n).toNat) (A264765 n)

end

end A247196.P9377746686674539644

/-!
# A247197: Primes p such that 2*p^2 + 3 and 2*p^2 + 5 are also primes.

The programs for A247197, there is no canonical definition to state claims against.
-/

/-! ## A247197.P9219068620037220858

`p?[A247175(n+1)]`
-/

namespace A247197.P9219068620037220858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247197.P9219068620037220858

/-! ## A247197.P4815233904355671772

`p?[record[A247175(A052938(n))]]`
-/

namespace A247197.P4815233904355671772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247197.P4815233904355671772

/-! ## A247197.P17548793441425554783

`p?[record[A247175(A106466(n))]]`
-/

namespace A247197.P17548793441425554783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247197.P17548793441425554783

/-! ## A247197.P11808507353174301109

`p?[record[A247175(A324347(n))]]`
-/

namespace A247197.P11808507353174301109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247197.P11808507353174301109

/-! ## A247197.P680436012187979356

`∩[A045359(n+1), A247175(n+1)]`
-/

namespace A247197.P680436012187979356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P680436012187979356

/-! ## A247197.P2471715911054054690

`∩[A003631(n+1), A247175(n+1)]`
-/

namespace A247197.P2471715911054054690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P2471715911054054690

/-! ## A247197.P1047116882246173356

`∩[A042993(n+1), A247175(n+1)]`
-/

namespace A247197.P1047116882246173356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P1047116882246173356

/-! ## A247197.P17497240341303274908

`∩[A042995(n+1), A247175(n+1)]`
-/

namespace A247197.P17497240341303274908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P17497240341303274908

/-! ## A247197.P7086395069712763515

`∩[A045351(n+1), A247175(n+1)]`
-/

namespace A247197.P7086395069712763515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P7086395069712763515

/-! ## A247197.P14400481137521854584

`∩[A045354(n+1), A247175(n+1)]`
-/

namespace A247197.P14400481137521854584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P14400481137521854584

/-! ## A247197.P3499417176453374411

`∩[A045358(n+1), A247175(n+1)]`
-/

namespace A247197.P3499417176453374411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247197.P3499417176453374411

/-!
# A247199: Numbers n such that the sum of all terms of the form d/d' with d>d' both divisors of n is an integer.

The programs for A247199, there is no canonical definition to state claims against.
-/

/-! ## A247199.P12339212199241078744

`∪[A000961(n+1), A341129(n+1)]`
-/

namespace A247199.P12339212199241078744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247199.P12339212199241078744

/-! ## A247199.P15542138868104046198

`record[gcd(n+1, A341117(n+1))]`
-/

namespace A247199.P15542138868104046198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A341117 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247199.P15542138868104046198

/-! ## A247199.P15320608613232941599

`∪[A341129(n+1), A378696(n+1)]`
-/

namespace A247199.P15320608613232941599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247199.P15320608613232941599

/-! ## A247199.P18100996446565126568

`eq[A063435(A127121(n)), A231813(n)]`
-/

namespace A247199.P18100996446565126568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A127121 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247199.P18100996446565126568

/-! ## A247199.P282910824036568075

`eq[A025474(A146992(n+1)), A231813(n)]`
-/

namespace A247199.P282910824036568075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (A146992 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247199.P282910824036568075

