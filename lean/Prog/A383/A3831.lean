import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A383100: Numbers whose prime indices have no permutation with all equal run-sums.

The programs for A383100, there is no canonical definition to state claims against.
-/

/-! ## A383100.P11041939761213924994

`comp[A383110(n+1)-1]+1`
-/

namespace A383100.P11041939761213924994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A383100.P11041939761213924994

/-! ## A383100.P9666583604134926068

`∪[A381871(n+1), A355462(n+2)]`
-/

namespace A383100.P9666583604134926068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P9666583604134926068

/-! ## A383100.P13968863271828492966

`∪[A014574(2*(n+2)), A381871(n+1)]`
-/

namespace A383100.P13968863271828492966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P13968863271828492966

/-! ## A383100.P1946879824476749470

`∪[A381871(n+1), A139577(n+2)+n]`
-/

namespace A383100.P1946879824476749470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139577 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P1946879824476749470

/-! ## A383100.P7527440845597026416

`A381871(n+1)-A358304(A008442(n+2))`
-/

namespace A383100.P7527440845597026416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1) - A358304 (A008442 (n + 2)).toNat

end

end A383100.P7527440845597026416

/-! ## A383100.P18248437130181270118

`∪[A018252(A204825(n+1)), A381871(n+1)]`
-/

namespace A383100.P18248437130181270118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A204825 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P18248437130181270118

/-! ## A383100.P6357023421288818593

`∪[A381871(n+1), A088359(A053182(n+4))]`
-/

namespace A383100.P6357023421288818593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (A053182 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P6357023421288818593

/-! ## A383100.P12476343352161814126

`∪[A018252(A080458(2*(n+1))), A381871(n+1)]`
-/

namespace A383100.P12476343352161814126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A080458 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P12476343352161814126

/-! ## A383100.P7015158770515434698

`∪[A187326(A026471(2*(n+2))), A381871(n+1)]`
-/

namespace A383100.P7015158770515434698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (A026471 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383100.P7015158770515434698

/-!
# A383101: Number of compositions of n such that any part 1 can be m different colors where m is the largest part of the composition.

The programs for A383101, there is no canonical definition to state claims against.
-/

/-! ## A383101.P18145598505083062922

`A225086(A001519(n))`
-/

namespace A383101.P18145598505083062922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A001519 n).toNat

end

end A383101.P18145598505083062922

/-! ## A383101.P10419175054574909906

`A070000(A039919(n+2))`
-/

namespace A383101.P10419175054574909906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A039919 (n + 2)).toNat

end

end A383101.P10419175054574909906

/-!
# A383103: Numbers k such that A008683(k) = 0 and A382883(k) = 1.

The programs for A383103, there is no canonical definition to state claims against.
-/

/-! ## A383103.P2089174329105155066

`∪[A053810(n+1), A077438(n+1)]`
-/

namespace A383103.P2089174329105155066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383103.P2089174329105155066

/-! ## A383103.P2936117508897791667

`∪[A053810(n+1), A162143(n+1)]`
-/

namespace A383103.P2936117508897791667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383103.P2936117508897791667

/-! ## A383103.P861568930488391867

`∪[A053810(n+1), A391320(n+1)]`
-/

namespace A383103.P861568930488391867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383103.P861568930488391867

/-! ## A383103.P4212775691123898060

`∪[A053810(n+1), A391428(n+1)]`
-/

namespace A383103.P4212775691123898060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383103.P4212775691123898060

/-! ## A383103.P5309297008630294133

`∪[A053810(n+1), A392741(n+1)]`
-/

namespace A383103.P5309297008630294133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383103.P5309297008630294133

/-!
# A383104: Inverse Möbius transform of A382883.

The programs for A383104, there is no canonical definition to state claims against.
-/

/-! ## A383104.P8631311273799523307

`∑{d}[n+1, A382883(#)]`
-/

namespace A383104.P8631311273799523307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A382883 d

end

end A383104.P8631311273799523307

/-! ## A383104.P6405922988636932064

`A002494(A051903(n+1))%5`
-/

namespace A383104.P6405922988636932064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002494 (A051903 (n + 1)).toNat) 5

end

end A383104.P6405922988636932064

/-! ## A383104.P11762777181999918894

`∏{e}[A375931(n+1), A335603(#)]`
-/

namespace A383104.P11762777181999918894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A335603 (Nat.factorization (f1 n).natAbs p)

end

end A383104.P11762777181999918894

/-! ## A383104.P6519477745994010677

`A297113(abs(abs(A051903(n+1)-n)+1-n)+1)`
-/

namespace A383104.P6519477745994010677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (|(|A051903 (n + 1) - (n : ℤ)| + 1 - (n : ℤ))| + 1).toNat

end

end A383104.P6519477745994010677

/-! ## A383104.P6148718141445231898

`A065770(A066301(n+1)+A054977(n))`
-/

namespace A383104.P6148718141445231898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A066301 (n + 1) + A054977 n).toNat

end

end A383104.P6148718141445231898

/-! ## A383104.P3978847014286590422

`A297113(A051903(n+1)+A000038(n))`
-/

namespace A383104.P3978847014286590422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A051903 (n + 1) + A000038 n).toNat

end

end A383104.P3978847014286590422

/-! ## A383104.P2445223143397712209

`A324852(∏{e}[n+1, #!]*A045371(2*n+1))`
-/

namespace A383104.P2445223143397712209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ) * A045371 (2 * n + 1)).toNat

end

end A383104.P2445223143397712209

/-! ## A383104.P11591098305766127455

`A196563(A354358(n+1)+A000122(n))`
-/

namespace A383104.P11591098305766127455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A354358 (n + 1) + A000122 n).toNat

end

end A383104.P11591098305766127455

/-!
# A383105: Numbers k such that A382883(k) != A008683(k).

The programs for A383105, there is no canonical definition to state claims against.
-/

/-! ## A383105.P13028422489760100090

`filter[A072777(n+1), A370598(#)]`
-/

namespace A383105.P13028422489760100090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A383105.P13028422489760100090

/-! ## A383105.P771091152094527211

`filter[A076292(n+2), A370598(#)]`
-/

namespace A383105.P771091152094527211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A383105.P771091152094527211

/-! ## A383105.P13479961492534355924

`filter[A384418(n+2), A384667(#)]`
-/

namespace A383105.P13479961492534355924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A383105.P13479961492534355924

/-! ## A383105.P10745055362022536708

`∩[A072777(n+1), A209061(n+1)]`
-/

namespace A383105.P10745055362022536708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P10745055362022536708

/-! ## A383105.P7180960528424814596

`∩[A062770(n+1), A384418(n+1)]`
-/

namespace A383105.P7180960528424814596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P7180960528424814596

/-! ## A383105.P10381248537766964089

`∩[A072777(n+1), A384418(n+1)]`
-/

namespace A383105.P10381248537766964089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P10381248537766964089

/-! ## A383105.P8866426400428506513

`∩[A072777(n+1), A398164(n+1)]`
-/

namespace A383105.P8866426400428506513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P8866426400428506513

/-! ## A383105.P5960598742165325468

`∩[A375142(n+1), A384418(n+1)]`
-/

namespace A383105.P5960598742165325468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P5960598742165325468

/-! ## A383105.P18390578178636099772

`∪[A383018(n+1), A383103(n+1)]`
-/

namespace A383105.P18390578178636099772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P18390578178636099772

/-! ## A383105.P5954963509996307627

`∪[A383211(n+1), A390126(n+1)]`
-/

namespace A383105.P5954963509996307627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383105.P5954963509996307627

/-!
# A383106: Numbers k such that A382883(k) != 0.

The programs for A383106, there is no canonical definition to state claims against.
-/

/-! ## A383106.P11780615836589965583

`filter[A072774(n+1), A370598(#)]`
-/

namespace A383106.P11780615836589965583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A383106.P11780615836589965583

/-! ## A383106.P18146649943481261034

`filter[A209061(n+1), A384667(#)]`
-/

namespace A383106.P18146649943481261034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A383106.P18146649943481261034

/-! ## A383106.P14869359084964812806

`filter[A304449(n+1), A370598(#)]`
-/

namespace A383106.P14869359084964812806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A383106.P14869359084964812806

/-! ## A383106.P18267832219580393999

`∩[A072774(n+1), A209061(n+1)]`
-/

namespace A383106.P18267832219580393999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383106.P18267832219580393999

/-!
# A383107: Number of king permutations on n elements avoiding the mesh pattern (12, {(0,0),(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)}).

The programs for A383107, there is no canonical definition to state claims against.
-/

/-! ## A383107.P13628700863670492881

`A383407(A306593(n))`
-/

namespace A383107.P13628700863670492881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383407 (A306593 n).toNat

end

end A383107.P13628700863670492881

/-! ## A383107.P1245922282264050569

`A383407(A005188(n+1))`
-/

namespace A383107.P1245922282264050569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383407 (A005188 (n + 1)).toNat

end

end A383107.P1245922282264050569

/-! ## A383107.P15717471793538029964

`A383407(A249517(n+1))`
-/

namespace A383107.P15717471793538029964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383407 (A249517 (n + 1)).toNat

end

end A383107.P15717471793538029964

/-!
# A383110: Numbers whose prime indices have a permutation with all equal run-sums.

The programs for A383110, there is no canonical definition to state claims against.
-/

/-! ## A383110.P4320125481185349254

`∪[A353833(n+1), A137344(n)]`
-/

namespace A383110.P4320125481185349254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137344 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P4320125481185349254

/-! ## A383110.P3700095792232994894

`∩[A326841(n+1), A395790(n+1)]`
-/

namespace A383110.P3700095792232994894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P3700095792232994894

/-! ## A383110.P16980386018376360553

`∪[A032835(n+1), A353833(n+1)]`
-/

namespace A383110.P16980386018376360553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P16980386018376360553

/-! ## A383110.P16171620925036441490

`∪[A073771(n+1), A353833(n+1)]`
-/

namespace A383110.P16171620925036441490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P16171620925036441490

/-! ## A383110.P1894920187081674780

`∪[A102237(n+1), A353833(n+1)]`
-/

namespace A383110.P1894920187081674780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P1894920187081674780

/-! ## A383110.P4065279020096480765

`∪[A308531(n+1), A353833(n+1)]`
-/

namespace A383110.P4065279020096480765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P4065279020096480765

/-! ## A383110.P5024301150821926372

`∪[A348342(n+1), A353833(n+1)]`
-/

namespace A383110.P5024301150821926372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P5024301150821926372

/-! ## A383110.P1368315894217574648

`∪[A353833(n+1), A383099(n+1)]`
-/

namespace A383110.P1368315894217574648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P1368315894217574648

/-! ## A383110.P14113375151897784879

`∪[A353834(n+1), A383099(n+1)]`
-/

namespace A383110.P14113375151897784879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P14113375151897784879

/-! ## A383110.P17714538498117672237

`∪[A383015(n+1), A383099(n+1)]`
-/

namespace A383110.P17714538498117672237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383110.P17714538498117672237

/-!
# A383112: Numbers whose multiset of prime indices has exactly one permutation with all equal run-lengths.

The programs for A383112, there is no canonical definition to state claims against.
-/

/-! ## A383112.P15691434811181412894

`eq[1, A080100(A303838(n+1))]+1`
-/

namespace A383112.P15691434811181412894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A303838 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383112.P15691434811181412894

/-! ## A383112.P15709878476392370329

`∪[A114129(n+1), A166982(n+1)]`
-/

namespace A383112.P15709878476392370329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P15709878476392370329

/-! ## A383112.P14736308048659579881

`∪[A115651(n+1), A166982(n+1)]`
-/

namespace A383112.P14736308048659579881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P14736308048659579881

/-! ## A383112.P2975890566034105158

`∪[A166982(n+1), A377818(n+1)]`
-/

namespace A383112.P2975890566034105158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P2975890566034105158

/-! ## A383112.P10313480590919954992

`∪[A166982(n+1), A377819(n+1)]`
-/

namespace A383112.P10313480590919954992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P10313480590919954992

/-! ## A383112.P12859497190689190874

`∪[A166982(n+1), A381314(n+1)]`
-/

namespace A383112.P12859497190689190874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P12859497190689190874

/-! ## A383112.P10674946994389391291

`∪[A230843(n+1), A320966(n+1)]`
-/

namespace A383112.P10674946994389391291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P10674946994389391291

/-! ## A383112.P12979349008797958532

`∪[A166982(n+1), A385288(n+1)]`
-/

namespace A383112.P12979349008797958532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P12979349008797958532

/-! ## A383112.P1476665817600496378

`∪[A230843(n+1), A377819(n+1)]`
-/

namespace A383112.P1476665817600496378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P1476665817600496378

/-! ## A383112.P8851667410539319208

`∪[A230843(n+1), A377847(n+1)]`
-/

namespace A383112.P8851667410539319208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383112.P8851667410539319208

/-!
# A383113: Numbers whose prime indices have more than one permutation with all distinct run-lengths.

The programs for A383113, there is no canonical definition to state claims against.
-/

/-! ## A383113.P4350928904814100132

`filter[A123711(n+1), A174898(#)]`
-/

namespace A383113.P4350928904814100132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A383113.P4350928904814100132

/-! ## A383113.P8357300747503404399

`∪[A025487(A275168(2*n+1)), A177425(n+1)]`
-/

namespace A383113.P8357300747503404399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A275168 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383113.P8357300747503404399

/-! ## A383113.P11404104725093038000

`∪[A064597(A187971(3*n+1)), A177425(n+1)]`
-/

namespace A383113.P11404104725093038000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (A187971 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383113.P11404104725093038000

/-!
# A383116: Permissible phase values, in degrees, associated with restricted Fourier amplitudes obtained via Fourier transform of a three-dimensional crystal lattice.

The programs for A383116, there is no canonical definition to state claims against.
-/

/-! ## A383116.P16625237413957673262

`15*comp[A127798(n)]`
-/

namespace A383116.P16625237413957673262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127798 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383116.P16625237413957673262

/-! ## A383116.P12340876400866057556

`15*A047229(n+1)`
-/

namespace A383116.P12340876400866057556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A047229 (n + 1)

end

end A383116.P12340876400866057556

/-! ## A383116.P13251135269073882428

`15*comp[A007310(n+1)]`
-/

namespace A383116.P13251135269073882428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383116.P13251135269073882428

/-! ## A383116.P17340951840345234107

`15*comp[A054500(n+1)]`
-/

namespace A383116.P17340951840345234107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383116.P17340951840345234107

/-!
# A383118: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(3*k,k).

The programs for A383118, there is no canonical definition to state claims against.
-/

/-! ## A383118.P15678239881017078124

`A382202(n)+A008620(A005169(3*n+2))`
-/

namespace A383118.P15678239881017078124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382202 n + A008620 (A005169 (3 * n + 2)).toNat

end

end A383118.P15678239881017078124

/-!
# A383119: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(4*k,k).

The programs for A383119, there is no canonical definition to state claims against.
-/

/-! ## A383119.P12812211878210376819

`A350809(A115551(n+2))`
-/

namespace A383119.P12812211878210376819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350809 (A115551 (n + 2)).toNat

end

end A383119.P12812211878210376819

/-!
# A383120: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n*k,k).

The programs for A383120, there is no canonical definition to state claims against.
-/

/-! ## A383120.P11320810001812460801

`A268572(2*(n+1))+A008987(n)`
-/

namespace A383120.P11320810001812460801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268572 (2 * (n + 1)) + A008987 n

end

end A383120.P11320810001812460801

/-!
# A383121: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(n*k,k).

The programs for A383121, there is no canonical definition to state claims against.
-/

/-! ## A383121.P2033410062126352512

`A000040(A327426(n+2))-A007582(n)`
-/

namespace A383121.P2033410062126352512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A327426 (n + 2)).toNat - A007582 n

end

end A383121.P2033410062126352512

/-!
# A383123: The Möbius transform of A382883.

The programs for A383123, there is no canonical definition to state claims against.
-/

/-! ## A383123.P3977331415150636372

`∑{d}[n+1, A008683(#)*A382883((n+1)/#)]`
-/

namespace A383123.P3977331415150636372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A382883 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383123.P3977331415150636372

/-!
# A383124: a(n) = Sum_{d|n} A382883(d)*(n/d).

The programs for A383124, there is no canonical definition to state claims against.
-/

/-! ## A383124.P5034282462564722043

`∑{d}[n+1, #*A382883((n+1)/#)]`
-/

namespace A383124.P5034282462564722043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A382883 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383124.P5034282462564722043

/-! ## A383124.P12769539304600266145

`A385132(A385136(n+1)%A062572(n+1))`
-/

namespace A383124.P12769539304600266145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385132 (Int.tmod (A385136 (n + 1)) (A062572 (n + 1))).toNat

end

end A383124.P12769539304600266145

/-! ## A383124.P2222483756656551141

`or(A000010(n+1), A362562(A046644(n+1)))`
-/

namespace A383124.P2222483756656551141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (n + 1)) (A362562 (A046644 (n + 1)).toNat)

end

end A383124.P2222483756656551141

/-! ## A383124.P3343018402812027583

`or(A000010(n+1), A275024(A351307(n+1)))`
-/

namespace A383124.P3343018402812027583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (n + 1)) (A275024 (A351307 (n + 1)).toNat)

end

end A383124.P3343018402812027583

/-! ## A383124.P17616693563196869679

`A385132(A385136(n+1))%A385145(2*n+1)`
-/

namespace A383124.P17616693563196869679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385132 (A385136 (n + 1)).toNat) (A385145 (2 * n + 1))

end

end A383124.P17616693563196869679

/-!
# A383125: Number of cyclic edge cuts in the n-web graph.

The programs for A383125, there is no canonical definition to state claims against.
-/

/-! ## A383125.P9312227251722098090

`2^(n+3)*A378311(n+3)`
-/

namespace A383125.P9312227251722098090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A378311 (n + 3)

end

end A383125.P9312227251722098090

/-!
# A383130: Coefficients of the linear terms in the continued fraction representation of the product logarithm.

The programs for A383130, there is no canonical definition to state claims against.
-/

/-! ## A383130.P10314340137263588085

`A034327(A022568(n))`
-/

namespace A383130.P10314340137263588085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034327 (A022568 n).toNat

end

end A383130.P10314340137263588085

/-! ## A383130.P10904431498244295865

`A335075(∑[A322451(n)])`
-/

namespace A383130.P10904431498244295865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335075 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383130.P10904431498244295865

/-!
# A383131: a(n) is the number of iterations that n requires to reach 1 under the map x -> -x/2 if x is even, 3x + 1 if x is odd; a(n) = -1 if 1 is never reached.

The programs for A383131, there is no canonical definition to state claims against.
-/

/-! ## A383131.P5462169590965447850

`A386885(2*(n+1))-1`
-/

namespace A383131.P5462169590965447850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386885 (2 * (n + 1)) - 1

end

end A383131.P5462169590965447850

/-!
# A383134: Array read by ascending antidiagonals: A(n,k) is the length of the arithmetic progression of only primes having difference n and first term prime(k).

The programs for A383134, there is no canonical definition to state claims against.
-/

/-! ## A383134.P4406810336678182965

`A141289(A180133(n+1)+A032742(n+1))`
-/

namespace A383134.P4406810336678182965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141289 (A180133 (n + 1) + A032742 (n + 1)).toNat

end

end A383134.P4406810336678182965

/-! ## A383134.P12846919582377236571

`A228351(A228351(n+1)+A027597(3*n))`
-/

namespace A383134.P12846919582377236571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A228351 (n + 1) + A027597 (3 * n)).toNat

end

end A383134.P12846919582377236571

/-! ## A383134.P10897600074389029133

`gcd(A100542(A100546(3*n+4)), A124769(n+3))`
-/

namespace A383134.P10897600074389029133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100542 (A100546 (3 * n + 4)).toNat) (A124769 (n + 3))

end

end A383134.P10897600074389029133

/-! ## A383134.P2862738680811665691

`A245562(A160050(n+1)+A002982(n+1))`
-/

namespace A383134.P2862738680811665691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245562 (A160050 (n + 1) + A002982 (n + 1)).toNat

end

end A383134.P2862738680811665691

/-! ## A383134.P13206455756936625083

`A154402(A197442(n+1)-n)`
-/

namespace A383134.P13206455756936625083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A197442 (n + 1) - (n : ℤ)).toNat

end

end A383134.P13206455756936625083

/-!
# A383135: a(n) = number of iterations that n requires to reach 1 under the x -> A380891(x) map, or -1 if it never does.

The programs for A383135, there is no canonical definition to state claims against.
-/

/-! ## A383135.P6138229903156285077

`A001222(or(A000084(n+1), A359042(n)))`
-/

namespace A383135.P6138229903156285077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000084 (n + 1)) (A359042 n)).toNat

end

end A383135.P6138229903156285077

/-!
# A383136: a(n) = Sum_{k=0..n} k^2 * 2^(n-k) * binomial(n,k).

The programs for A383136, the canonical program `A383136.P11164818409498782840` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383136 has offset 0).

The definition of A383136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383136.P12244570213649467452

`3^(n-2)*n*(2+n)`
-/

namespace A383136.P12244570213649467452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (2 + n : ℚ)

end

end A383136.P12244570213649467452

namespace A383136

/-- `3^(n-2)*n*(2+n)` -/
def P12244570213649467452.Spec : Prop :=
  ∀ n, P12244570213649467452.a n = (A383136 n : ℚ)

theorem P12244570213649467452.correct : P12244570213649467452.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A383136, Nat.add_sub_cancel, A383136.P12244570213649467452.a, A383136.P11164818409498782840.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A383136, Nat.add_sub_cancel, A383136.P12244570213649467452.a, A383136.P11164818409498782840.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A383136

/-! ## A383136.P11164818409498782840

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383136

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P11164818409498782840.Spec : Prop :=
  ∀ n, P11164818409498782840.a n = A383136 n

theorem P11164818409498782840.correct : P11164818409498782840.Spec := by
  intro n
  simp only [A383136]

end A383136

/-! ## A383136.P7455330323247726625

`n*A199923(n)/2`
-/

namespace A383136.P7455330323247726625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A199923 n : ℚ) / 2

end

end A383136.P7455330323247726625

namespace A383136

/-- `n*A199923(n)/2` -/
def P7455330323247726625.Spec : Prop :=
  ∀ n, P7455330323247726625.a n = (A383136 n : ℚ)

end A383136

/-! ## A383136.P10399200609157942072

`A036068(n)-A081892(n)`
-/

namespace A383136.P10399200609157942072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036068 n - A081892 n

end

end A383136.P10399200609157942072

namespace A383136

/-- `A036068(n)-A081892(n)` -/
def P10399200609157942072.Spec : Prop :=
  ∀ n, P10399200609157942072.a n = A383136 n

end A383136

/-! ## A383136.P1534324253400304049

`A081278(n)-A081038(n)`
-/

namespace A383136.P1534324253400304049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 n - A081038 n

end

end A383136.P1534324253400304049

namespace A383136

/-- `A081278(n)-A081038(n)` -/
def P1534324253400304049.Spec : Prop :=
  ∀ n, P1534324253400304049.a n = A383136 n

end A383136

/-! ## A383136.P5098118010049921089

`A084900(n)-A129530(n)`
-/

namespace A383136.P5098118010049921089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084900 n - A129530 n

end

end A383136.P5098118010049921089

namespace A383136

/-- `A084900(n)-A129530(n)` -/
def P5098118010049921089.Spec : Prop :=
  ∀ n, P5098118010049921089.a n = A383136 n

end A383136

/-! ## A383136.P10699621149666244071

`A069515(n+1)/3`
-/

namespace A383136.P10699621149666244071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069515 (n + 1) : ℚ) / 3

end

end A383136.P10699621149666244071

namespace A383136

/-- `A069515(n+1)/3` -/
def P10699621149666244071.Spec : Prop :=
  ∀ n, P10699621149666244071.a n = (A383136 n : ℚ)

end A383136

/-! ## A383136.P16647223365386294020

`n*A064017(n+1)/3`
-/

namespace A383136.P16647223365386294020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A064017 (n + 1) : ℚ) / 3

end

end A383136.P16647223365386294020

namespace A383136

/-- `n*A064017(n+1)/3` -/
def P16647223365386294020.Spec : Prop :=
  ∀ n, P16647223365386294020.a n = (A383136 n : ℚ)

end A383136

/-! ## A383136.P5085514336465219718

`n*A120926(n+1)/4`
-/

namespace A383136.P5085514336465219718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A120926 (n + 1) : ℚ) / 4

end

end A383136.P5085514336465219718

namespace A383136

/-- `n*A120926(n+1)/4` -/
def P5085514336465219718.Spec : Prop :=
  ∀ n, P5085514336465219718.a n = (A383136 n : ℚ)

end A383136

/-! ## A383136.P3513481174197915578

`A062189(n)-A069996(n)`
-/

namespace A383136.P3513481174197915578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062189 n - A069996 n

end

end A383136.P3513481174197915578

namespace A383136

/-- `A062189(n)-A069996(n)` -/
def P3513481174197915578.Spec : Prop :=
  ∀ n, P3513481174197915578.a n = A383136 n

end A383136

/-! ## A383136.P12315626233258348354

`A183189(A340266(n+2))`
-/

namespace A383136.P12315626233258348354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183189 (A340266 (n + 2)).toNat

end

end A383136.P12315626233258348354

namespace A383136

/-- `A183189(A340266(n+2))` -/
def P12315626233258348354.Spec : Prop :=
  ∀ n, P12315626233258348354.a n = A383136 n

end A383136

/-! ## A383136.P12706690152482300424

`Δ[A099097(∑[n+3])]`
-/

namespace A383136.P12706690152482300424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383136.P12706690152482300424

namespace A383136

/-- `Δ[A099097(∑[n+3])]` -/
def P12706690152482300424.Spec : Prop :=
  ∀ n, P12706690152482300424.a n = A383136 n

end A383136

/-!
# A383137: a(n) = Sum_{k=0..n} k^3 * 2^(n-k) * binomial(n,k).

The programs for A383137, the canonical program `A383137.P2665079454095051903` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383137 has offset 0).

The definition of A383137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383137.P10450044967867847133

`3^(n-3)*n*(2+6*n+n²)`
-/

namespace A383137.P10450044967867847133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * (2 + 6 * n + n ^ 2 : ℚ)

end

end A383137.P10450044967867847133

namespace A383137

/-- `3^(n-3)*n*(2+6*n+n²)` -/
def P10450044967867847133.Spec : Prop :=
  ∀ n, P10450044967867847133.a n = (A383137 n : ℚ)

theorem P10450044967867847133.correct : P10450044967867847133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A383137, Nat.add_sub_cancel, A383137.P10450044967867847133.a, A383137.P2665079454095051903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A383137, Nat.add_sub_cancel, A383137.P10450044967867847133.a, A383137.P2665079454095051903.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A383137

/-! ## A383137.P2665079454095051903

`12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=87`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383137

/-- `12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` -/
def P2665079454095051903.Spec : Prop :=
  ∀ n, P2665079454095051903.a n = A383137 n

theorem P2665079454095051903.correct : P2665079454095051903.Spec := by
  intro n
  simp only [A383137]

end A383137

/-! ## A383137.P9153695659218039574

`A069996(n)+A052791(n)`
-/

namespace A383137.P9153695659218039574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069996 n + A052791 n

end

end A383137.P9153695659218039574

namespace A383137

/-- `A069996(n)+A052791(n)` -/
def P9153695659218039574.Spec : Prop :=
  ∀ n, P9153695659218039574.a n = A383137 n

end A383137

/-!
# A383138: a(n) = Sum_{k=0..n} k^4 * 2^(n-k) * binomial(n,k).

The programs for A383138, there is no canonical definition to state claims against.
-/

/-! ## A383138.P6481527064758855274

`n*A316989(A270613(3*n+1))`
-/

namespace A383138.P6481527064758855274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316989 (A270613 (3 * n + 1)).toNat

end

end A383138.P6481527064758855274

/-!
# A383142: Smallest positive integer with shortest addition-subtraction chain of length n.

The programs for A383142, there is no canonical definition to state claims against.
-/

/-! ## A383142.P17081236101971794006

`A348520(A003064(n))`
-/

namespace A383142.P17081236101971794006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (A003064 n).toNat

end

end A383142.P17081236101971794006

/-! ## A383142.P557675479531303248

`A348520(A115617(n))`
-/

namespace A383142.P557675479531303248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (A115617 n).toNat

end

end A383142.P557675479531303248

/-! ## A383142.P10865575708983345338

`A342441(A008930(n))+n`
-/

namespace A383142.P10865575708983345338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (A008930 n).toNat + (n : ℤ)

end

end A383142.P10865575708983345338

/-! ## A383142.P16094058327862866460

`A322554(A169985(n)+A080593(n))`
-/

namespace A383142.P16094058327862866460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A169985 n + A080593 n).toNat

end

end A383142.P16094058327862866460

/-! ## A383142.P1365685928073764903

`A345921(A374747(n))+A069010(n)`
-/

namespace A383142.P1365685928073764903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A374747 n).toNat + A069010 n

end

end A383142.P1365685928073764903

/-!
# A383143: Number of positive integers with a shortest addition-subtraction chain of length n.

The programs for A383143, there is no canonical definition to state claims against.
-/

/-! ## A383143.P12502481222374219777

`A097285(A111285(n))`
-/

namespace A383143.P12502481222374219777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A111285 n).toNat

end

end A383143.P12502481222374219777

/-! ## A383143.P2760215870842369314

`A074198(A151442(n))`
-/

namespace A383143.P2760215870842369314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A151442 n).toNat

end

end A383143.P2760215870842369314

/-! ## A383143.P923632341925451242

`A074198(A216617(n))`
-/

namespace A383143.P923632341925451242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A216617 n).toNat

end

end A383143.P923632341925451242

/-! ## A383143.P10137053445313462804

`A227568(A106606(n))`
-/

namespace A383143.P10137053445313462804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A106606 n).toNat

end

end A383143.P10137053445313462804

/-! ## A383143.P804605459131635561

`A002024(A356698(n))`
-/

namespace A383143.P804605459131635561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A356698 n).toNat

end

end A383143.P804605459131635561

/-!
# A383144: Number of abelian/medial racks of order n, up to isomorphism.

The programs for A383144, there is no canonical definition to state claims against.
-/

/-! ## A383144.P18176730788949867958

`A091226(2*A005651(n))`
-/

namespace A383144.P18176730788949867958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (2 * A005651 n).toNat

end

end A383144.P18176730788949867958

/-! ## A383144.P6496001303728488097

`A091226(2*A226880(n))`
-/

namespace A383144.P6496001303728488097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (2 * A226880 n).toNat

end

end A383144.P6496001303728488097

/-! ## A383144.P13622267161097374179

`A030603(A111063(n+1)+1)`
-/

namespace A383144.P13622267161097374179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (A111063 (n + 1) + 1).toNat

end

end A383144.P13622267161097374179

/-!
# A383145: Number of GL-racks of order n, up to isomorphism.

The programs for A383145, there is no canonical definition to state claims against.
-/

/-! ## A383145.P5331700857285259509

`A097992(A151314(n)+A151295(n))`
-/

namespace A383145.P5331700857285259509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A151314 n + A151295 n).toNat

end

end A383145.P5331700857285259509

/-! ## A383145.P9197854195004002996

`A369715(A087805(n)+A006013(n))`
-/

namespace A383145.P9197854195004002996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A087805 n + A006013 n).toNat

end

end A383145.P9197854195004002996

/-!
# A383146: Number of medial GL-racks of order n, up to isomorphism.

The programs for A383146, there is no canonical definition to state claims against.
-/

/-! ## A383146.P14423993124492128679

`A081386(∑[∑[A258789(n)]])`
-/

namespace A383146.P14423993124492128679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383146.P14423993124492128679

/-! ## A383146.P10559568125392260067

`A332086(A148920(n)+A005809(n))`
-/

namespace A383146.P10559568125392260067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A148920 n + A005809 n).toNat

end

end A383146.P10559568125392260067

/-!
# A383147: Sum of odd divisors m of n such that there is a divisor d of n with d < m < 2*d.

The programs for A383147, there is no canonical definition to state claims against.
-/

/-! ## A383147.P10713494958496803038

`A000593(n+1)-A379379(n+1)`
-/

namespace A383147.P10713494958496803038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A379379 (n + 1)

end

end A383147.P10713494958496803038

/-! ## A383147.P6866848886158382762

`A389591(n+1)-A146076(n+1)`
-/

namespace A383147.P6866848886158382762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389591 (n + 1) - A146076 (n + 1)

end

end A383147.P6866848886158382762

/-! ## A383147.P7244900051643430483

`A389591(n+1)%A000593(n+1)`
-/

namespace A383147.P7244900051643430483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389591 (n + 1)) (A000593 (n + 1))

end

end A383147.P7244900051643430483

/-!
# A383148: k-facile numbers: Numbers m such that the sum of the divisors of m is equal to 2*m+s where s is a product of distinct divisors of m.

The programs for A383148, there is no canonical definition to state claims against.
-/

/-! ## A383148.P6624432294508732887

`A005101(lt[A286833(n+2), A118833(n+1)])`
-/

namespace A383148.P6624432294508732887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383148.P6624432294508732887

/-! ## A383148.P2002635627971053318

`A005101(lt[A109886(2*(n+1)), A268180(2*n+3)])`
-/

namespace A383148.P2002635627971053318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109886 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383148.P2002635627971053318

/-! ## A383148.P13948656905576774620

`A005101(lt[0, A245168(2*n+3)])`
-/

namespace A383148.P13948656905576774620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245168 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A383148.P13948656905576774620

/-!
# A383149: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = (-1)^k * [m^k] (1/2^(m-n)) * Sum_{k=0..m} k^n * (-1)^m * 3^(m-k) * binomial(m,k).

The programs for A383149, there is no canonical definition to state claims against.
-/

/-! ## A383149.P1058585628818516650

`A354581(A307419(n))`
-/

namespace A383149.P1058585628818516650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A307419 n).toNat

end

end A383149.P1058585628818516650

/-! ## A383149.P17732848292341503537

`A130573(A137431(n+1))`
-/

namespace A383149.P17732848292341503537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A137431 (n + 1)).toNat

end

end A383149.P17732848292341503537

/-!
# A383150: a(n) = Sum_{k=0..n} k^3 * (-1)^k * 3^(n-k) * binomial(n,k).

The programs for A383150, there is no canonical definition to state claims against.
-/

/-! ## A383150.P11326204265962925672

`A392684(A392703(3*n+1))-A122204(n)`
-/

namespace A383150.P11326204265962925672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392684 (A392703 (3 * n + 1)).toNat - A122204 n

end

end A383150.P11326204265962925672

/-! ## A383150.P10081813003932602383

`A392684(A392703(3*n+1))-A392681(n+1)`
-/

namespace A383150.P10081813003932602383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392684 (A392703 (3 * n + 1)).toNat - A392681 (n + 1)

end

end A383150.P10081813003932602383

/-!
# A383154: The number of 2n-by-2n fers-wazir tours.

The programs for A383154, there is no canonical definition to state claims against.
-/

/-! ## A383154.P15546710021168684264

`A383153((n+1)²+n²)`
-/

namespace A383154.P15546710021168684264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383153 ((n + 1) ^ 2 + n ^ 2)

end

end A383154.P15546710021168684264

/-!
# A383156: The sum of the maximum exponents in the prime factorizations of the divisors of n.

The programs for A383156, the canonical program `A383156.P4501511777961019996` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383156 has offset 1).

The definition of A383156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383156.P14098241865009713546

`A000005(n+1)*A383157(n+1)/A383158(n+1)`
-/

namespace A383156.P14098241865009713546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A383157 (n + 1) : ℚ) / (A383158 (n + 1) : ℚ)

end

end A383156.P14098241865009713546

namespace A383156

/-- `A000005(n+1)*A383157(n+1)/A383158(n+1)` -/
def P14098241865009713546.Spec : Prop :=
  ∀ n, P14098241865009713546.a n = (A383156 (n + 1) : ℚ)

end A383156

/-! ## A383156.P4501511777961019996

`∑{d}[n+1, A051903(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383156

/-- `∑{d}[n+1, A051903(#)]` -/
def P4501511777961019996.Spec : Prop :=
  ∀ n, P4501511777961019996.a n = A383156 (n + 1)

theorem P4501511777961019996.correct : P4501511777961019996.Spec := by
  intro n
  simp only [A383156, Nat.add_sub_cancel]

end A383156

/-! ## A383156.P1672537421260401315

`∑{d}[n+1, val(A046523(#), 2)]`
-/

namespace A383156.P1672537421260401315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A046523 d).toNat 2

end

end A383156.P1672537421260401315

namespace A383156

/-- `∑{d}[n+1, val(A046523(#), 2)]` -/
def P1672537421260401315.Spec : Prop :=
  ∀ n, (P1672537421260401315.a n : ℤ) = A383156 (n + 1)

end A383156

/-! ## A383156.P9951013095634892495

`∑{d}[n+1, A007814(A046523(#))]`
-/

namespace A383156.P9951013095634892495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007814 (A046523 d).toNat

end

end A383156.P9951013095634892495

namespace A383156

/-- `∑{d}[n+1, A007814(A046523(#))]` -/
def P9951013095634892495.Spec : Prop :=
  ∀ n, P9951013095634892495.a n = A383156 (n + 1)

end A383156

/-! ## A383156.P7036579366484120111

`∑{d}[n+1, A130054(#)*A384655((n+1)/#)]`
-/

namespace A383156.P7036579366484120111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A384655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383156.P7036579366484120111

namespace A383156

/-- `∑{d}[n+1, A130054(#)*A384655((n+1)/#)]` -/
def P7036579366484120111.Spec : Prop :=
  ∀ n, P7036579366484120111.a n = A383156 (n + 1)

end A383156

/-!
# A383157: a(n) is the numerator of the mean of the maximum exponents in the prime factorizations of the divisors of n.

The programs for A383157, there is no canonical definition to state claims against.
-/

/-! ## A383157.P5906580978248100985

`A383156(n+1)/A000005(n+1)*A383158(n+1)`
-/

namespace A383157.P5906580978248100985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383156 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A383158 (n + 1) : ℚ)

end

end A383157.P5906580978248100985

/-! ## A383157.P1345223561460083791

`A056434(A000005(n+1)%A217857(2*n+5))`
-/

namespace A383157.P1345223561460083791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056434 (Int.tmod (A000005 (n + 1)) (A217857 (2 * n + 5))).toNat

end

end A383157.P1345223561460083791

/-! ## A383157.P3110436569162973704

`A113908(A100587(n+1))`
-/

namespace A383157.P3110436569162973704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113908 (A100587 (n + 1)).toNat

end

end A383157.P3110436569162973704

/-! ## A383157.P5542080897325592719

`A337474(A066572(n+1))`
-/

namespace A383157.P5542080897325592719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337474 (A066572 (n + 1)).toNat

end

end A383157.P5542080897325592719

/-! ## A383157.P14404931332592649468

`A038575(A130674(n+1)+1)`
-/

namespace A383157.P14404931332592649468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (A130674 (n + 1) + 1).toNat

end

end A383157.P14404931332592649468

/-!
# A383158: a(n) is the denominator of the mean of the maximum exponents in the prime factorizations of the divisors of n.

The programs for A383158, there is no canonical definition to state claims against.
-/

/-! ## A383158.P9327132377368516759

`gcd(A000005(n+1), A197639(A018892(n+1)))`
-/

namespace A383158.P9327132377368516759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A197639 (A018892 (n + 1)).toNat)

end

end A383158.P9327132377368516759

/-! ## A383158.P906682887830536684

`gcd(∏{e}[n+1, #+1], A338005(∏{p}[n+1, 2%#²]-1))`
-/

namespace A383158.P906682887830536684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A338005 (∏ p ∈ Nat.primeFactors (f2 n), 2 % p ^ 2 - 1))

end

end A383158.P906682887830536684

/-! ## A383158.P10622551475062220261

`A224702(A016009(n+1))`
-/

namespace A383158.P10622551475062220261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224702 (A016009 (n + 1)).toNat

end

end A383158.P10622551475062220261

/-! ## A383158.P7131153382120341430

`A331128(A016007(n+1))`
-/

namespace A383158.P7131153382120341430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331128 (A016007 (n + 1)).toNat

end

end A383158.P7131153382120341430

/-! ## A383158.P2458532754533924856

`A373352(A110088(n+1))`
-/

namespace A383158.P2458532754533924856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373352 (A110088 (n + 1)).toNat

end

end A383158.P2458532754533924856

/-!
# A383159: The sum of the maximum exponents in the prime factorizations of the unitary divisors of n.

The programs for A383159, there is no canonical definition to state claims against.
-/

/-! ## A383159.P1777093346457865132

`A034444(n+1)*A383160(n+1)/A383161(n+1)`
-/

namespace A383159.P1777093346457865132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) * A383160 (n + 1) : ℚ) / (A383161 (n + 1) : ℚ)

end

end A383159.P1777093346457865132

/-! ## A383159.P13590772526350945123

`A048675(A320389(n+1))`
-/

namespace A383159.P13590772526350945123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A320389 (n + 1)).toNat

end

end A383159.P13590772526350945123

/-! ## A383159.P5372111756470982814

`A183093(A293448(n+1))+A066301(n+1)`
-/

namespace A383159.P5372111756470982814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (A293448 (n + 1)).toNat + A066301 (n + 1)

end

end A383159.P5372111756470982814

/-! ## A383159.P18381127552713752088

`A028897(A320390(n+1))`
-/

namespace A383159.P18381127552713752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A320390 (n + 1)).toNat

end

end A383159.P18381127552713752088

/-! ## A383159.P17923204612470136463

`A156552(∏{e}[n+1, #+1])%A220698(n+1)`
-/

namespace A383159.P17923204612470136463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) (A220698 (n + 1))

end

end A383159.P17923204612470136463

/-! ## A383159.P15743723276280598816

`A156552((A334954(n+1)-1)%A125199(n+1))`
-/

namespace A383159.P15743723276280598816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A334954 (n + 1) - 1) (A125199 (n + 1))).toNat

end

end A383159.P15743723276280598816

/-!
# A383160: a(n) is the numerator of the mean of the maximum exponents in the prime factorizations of the unitary divisors of n.

The programs for A383160, there is no canonical definition to state claims against.
-/

/-! ## A383160.P8848327720253076525

`A383159(n+1)/A034444(n+1)*A383161(n+1)`
-/

namespace A383160.P8848327720253076525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383159 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ) * (A383161 (n + 1) : ℚ)

end

end A383160.P8848327720253076525

/-! ## A383160.P12552606856615176579

`sqrt(A035116(n+1))-A358525(A035116(n+1))`
-/

namespace A383160.P12552606856615176579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) - (A358525 (A035116 (n + 1)).toNat : ℝ)

end

end A383160.P12552606856615176579

/-! ## A383160.P4431426843189403324

`∏{e}[n+1, #+1]-A329312(∏{e}[n+1, C(#+3, 3)])`
-/

namespace A383160.P4431426843189403324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A329312 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 3) 3)

end

end A383160.P4431426843189403324

/-! ## A383160.P2965857445941640580

`∏{e}[n+1, #+1]-A329313(∏{e}[n+1, C(#+3, 3)])`
-/

namespace A383160.P2965857445941640580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A329313 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 3) 3)

end

end A383160.P2965857445941640580

/-! ## A383160.P11162542911813591149

`A000120(A357642(∏{e}[n+1, #+1]))`
-/

namespace A383160.P11162542911813591149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A357642 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A383160.P11162542911813591149

/-!
# A383161: a(n) is the denominator of the mean of the maximum exponents in the prime factorizations of the unitary divisors of n.

The programs for A383161, there is no canonical definition to state claims against.
-/

/-! ## A383161.P4347102744193580915

`gcd(∏{e}[n+1, 7*#+1], A037289(∏{p}[n+1, #]))`
-/

namespace A383161.P4347102744193580915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (7 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A037289 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A383161.P4347102744193580915

/-! ## A383161.P9561231323277936867

`A034444(∏{p}[n+1, #]^∑{e}[n+1, val(#+1, 2)])`
-/

namespace A383161.P9561231323277936867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorization (f2 n) p + 1) 2))

end

end A383161.P9561231323277936867

/-! ## A383161.P16957088309025455494

`A178544(A110088(n+1))`
-/

namespace A383161.P16957088309025455494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178544 (A110088 (n + 1)).toNat

end

end A383161.P16957088309025455494

/-! ## A383161.P7796256245073963484

`A034444((n+1)^A162642(n+1))`
-/

namespace A383161.P7796256245073963484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A162642 (n + 1) : ℤ))).toNat

end

end A383161.P7796256245073963484

/-! ## A383161.P2696074102449061981

`A256688(A256688(A007426(n+1))²)`
-/

namespace A383161.P2696074102449061981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256688 (A256688 (A007426 (n + 1)).toNat ^ 2).toNat

end

end A383161.P2696074102449061981

/-!
# A383163: Expansion of e.g.f. log(1 - (exp(2*x) - 1)/2)^2 / 2.

The programs for A383163, there is no canonical definition to state claims against.
-/

/-! ## A383163.P466797866758834843

`A383149(A133263(n))`
-/

namespace A383163.P466797866758834843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383149 (A133263 n).toNat

end

end A383163.P466797866758834843

/-! ## A383163.P3820129836419744671

`A383149(A238531(n+1))`
-/

namespace A383163.P3820129836419744671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383149 (A238531 (n + 1)).toNat

end

end A383163.P3820129836419744671

/-!
# A383164: Expansion of e.g.f. -log(1 - (exp(2*x) - 1)/2)^3 / 6.

The programs for A383164, there is no canonical definition to state claims against.
-/

/-! ## A383164.P14033984253736847249

`A383149(∑[∑[A321620(n)]])`
-/

namespace A383164.P14033984253736847249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383149 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383164.P14033984253736847249

/-! ## A383164.P717597901834637102

`A036862(A098660(n))`
-/

namespace A383164.P717597901834637102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (A098660 n).toNat

end

end A383164.P717597901834637102

/-!
# A383167: Primes p such that p + 4, p + 10, p + 12, p + 18 and p + 22 are also primes.

The programs for A383167, there is no canonical definition to state claims against.
-/

/-! ## A383167.P10743929301660545604

`∩[A064101(n+1), A078851(n+1)]`
-/

namespace A383167.P10743929301660545604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383167.P10743929301660545604

/-! ## A383167.P3849439425283405004

`∩[A064101(n+1), A078955(n+1)]`
-/

namespace A383167.P3849439425283405004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383167.P3849439425283405004

/-! ## A383167.P6913286721849859210

`∩[A078955(n+1), A154881(n+1)]`
-/

namespace A383167.P6913286721849859210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383167.P6913286721849859210

/-!
# A383170: Expansion of e.g.f. -log(1 + log(1 - 2*x)/2).

The programs for A383170, there is no canonical definition to state claims against.
-/

/-! ## A383170.P14022475162863087247

`A182434(Δ[n²]^n)`
-/

namespace A383170.P14022475162863087247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182434 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n).toNat

end

end A383170.P14022475162863087247

/-!
# A383171: Expansion of e.g.f. log(1 + log(1 - 2*x)/2)^2 / 2.

The programs for A383171, there is no canonical definition to state claims against.
-/

/-! ## A383171.P5521185258066094590

`floor(A217830(n+1)/A000227(3*n+1))`
-/

namespace A383171.P5521185258066094590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217830 (n + 1) : ℚ) / (A000227 (3 * n + 1) : ℚ)⌋

end

end A383171.P5521185258066094590

/-! ## A383171.P396094005179680617

`A002265(A140185(n)+A025168(n))`
-/

namespace A383171.P396094005179680617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A140185 n + A025168 n).toNat

end

end A383171.P396094005179680617

/-!
# A383172: Expansion of e.g.f. -log(1 + log(1 - 2*x)/2)^3 / 6.

The programs for A383172, there is no canonical definition to state claims against.
-/

/-! ## A383172.P12118722488489286369

`A300585(A110026(n))`
-/

namespace A383172.P12118722488489286369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300585 (A110026 n).toNat

end

end A383172.P12118722488489286369

/-! ## A383172.P17081735155636801133

`∑[A025429(A362206(n))]`
-/

namespace A383172.P17081735155636801133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (A362206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383172.P17081735155636801133

/-!
# A383175: Number of compositions of n such that any fixed point k can be k different colors.

The programs for A383175, there is no canonical definition to state claims against.
-/

/-! ## A383175.P1950631984223763212

`A383074(A149175(n))`
-/

namespace A383175.P1950631984223763212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A149175 n).toNat

end

end A383175.P1950631984223763212

/-! ## A383175.P8610415161045517395

`A071860(A091200(n))`
-/

namespace A383175.P8610415161045517395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A091200 n).toNat

end

end A383175.P8610415161045517395

/-! ## A383175.P2752483713067477291

`A071860(A127632(n))`
-/

namespace A383175.P2752483713067477291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A127632 n).toNat

end

end A383175.P2752483713067477291

/-! ## A383175.P16706915896924641208

`A071860(A258788(n))`
-/

namespace A383175.P16706915896924641208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A258788 n).toNat

end

end A383175.P16706915896924641208

/-!
# A383176: If p = A002313(n) is a prime such that p = x^2 + y^2, then a(n) is the largest integer k that satisfies x^2 + y^2 - k*x*y > 0.

The programs for A383176, there is no canonical definition to state claims against.
-/

/-! ## A383176.P13324810824096323726

`floor(A280084(n+1)/A145019(n))`
-/

namespace A383176.P13324810824096323726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280084 (n + 1) : ℚ) / (A145019 n : ℚ)⌋

end

end A383176.P13324810824096323726

/-! ## A383176.P8115966575328239880

`A121041(A357189(2*(n+2))+A067756(n+1))`
-/

namespace A383176.P8115966575328239880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (A357189 (2 * (n + 2)) + A067756 (n + 1)).toNat

end

end A383176.P8115966575328239880

/-!
# A383177: Sphenic numbers k such that floor(log(k)/log(lpf(k))) = 1+floor(log(k)/log(p)) for all primes p | k such that p > lpf(k), where lpf = A020639(k).

The programs for A383177, there is no canonical definition to state claims against.
-/

/-! ## A383177.P5647624214575859280

`∩[A380995(n+1), A382022(n+1)]`
-/

namespace A383177.P5647624214575859280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383177.P5647624214575859280

/-! ## A383177.P13381728539838898106

`∩[A377713(n+1), A382022(n+1)]`
-/

namespace A383177.P13381728539838898106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383177.P13381728539838898106

/-!
# A383180: Irregular table T(n,k) = A010846(A019565(2^n + k)).

The programs for A383180, there is no canonical definition to state claims against.
-/

/-! ## A383180.P8981618037791401247

`A363924(A246353(n))`
-/

namespace A383180.P8981618037791401247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363924 (A246353 n).toNat

end

end A383180.P8981618037791401247

/-! ## A383180.P7534778318844033889

`A010846(A019565(n))`
-/

namespace A383180.P7534778318844033889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A019565 n).toNat

end

end A383180.P7534778318844033889

/-! ## A383180.P2262964554660086561

`A010846(A339809(n)+1)`
-/

namespace A383180.P2262964554660086561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A339809 n + 1).toNat

end

end A383180.P2262964554660086561

/-! ## A383180.P17518273657441263429

`A284003(A003188(n))-A360543(A334110(n))`
-/

namespace A383180.P17518273657441263429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat - A360543 (A334110 n).toNat

end

end A383180.P17518273657441263429

/-! ## A383180.P16244857217442993820

`A277006(A048680(n))-A360543(A334110(n))`
-/

namespace A383180.P16244857217442993820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A048680 n).toNat - A360543 (A334110 n).toNat

end

end A383180.P16244857217442993820

/-!
# A383181: Family of 2-colorings of {1..7824} with no monochromatic Pythagorean triples.

The programs for A383181, there is no canonical definition to state claims against.
-/

/-! ## A383181.P2205392019594161636

`and(3, A037909(A086878(3*n+1)))`
-/

namespace A383181.P2205392019594161636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A037909 (A086878 (3 * n + 1)).toNat)

end

end A383181.P2205392019594161636

/-! ## A383181.P5945011238694573230

`A080237(n+1)-A035263(A001006(n))`
-/

namespace A383181.P5945011238694573230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (n + 1) - A035263 (A001006 n).toNat

end

end A383181.P5945011238694573230

/-! ## A383181.P17053212995508050544

`and(A213786(A299276(2*n)), A306366(n+1))`
-/

namespace A383181.P17053212995508050544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213786 (A299276 (2 * n)).toNat) (A306366 (n + 1))

end

end A383181.P17053212995508050544

/-! ## A383181.P10486803896038383499

`A074013(n+1)%A341231(A348520(2*n+1))`
-/

namespace A383181.P10486803896038383499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074013 (n + 1)) (A341231 (A348520 (2 * n + 1)).toNat)

end

end A383181.P10486803896038383499

/-! ## A383181.P10525884343004028672

`A080843(A133424(n+1))`
-/

namespace A383181.P10525884343004028672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A133424 (n + 1)).toNat

end

end A383181.P10525884343004028672

/-!
# A383182: a(n) = 2^n - A129629(n+1).

The programs for A383182, there is no canonical definition to state claims against.
-/

/-! ## A383182.P13614545396257193400

`2^n-A011947(n)`
-/

namespace A383182.P13614545396257193400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A011947 n

end

end A383182.P13614545396257193400

/-! ## A383182.P12591070317088043026

`A000079(n)-A056476(2*n+1)`
-/

namespace A383182.P12591070317088043026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A056476 (2 * n + 1)

end

end A383182.P12591070317088043026

/-! ## A383182.P17690766316924223215

`A011782(n+1)-A045683(2*n+1)`
-/

namespace A383182.P17690766316924223215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A045683 (2 * n + 1)

end

end A383182.P17690766316924223215

/-! ## A383182.P16897432875874715100

`A011782(n+1)-A056513(2*n+1)`
-/

namespace A383182.P16897432875874715100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A056513 (2 * n + 1)

end

end A383182.P16897432875874715100

/-! ## A383182.P5895915803667503072

`A016116(2*n)-A056476(2*n+1)`
-/

namespace A383182.P5895915803667503072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A056476 (2 * n + 1)

end

end A383182.P5895915803667503072

/-! ## A383182.P18217742768559620572

`A016116(2*n)-A056513(2*n+1)`
-/

namespace A383182.P18217742768559620572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A056513 (2 * n + 1)

end

end A383182.P18217742768559620572

/-! ## A383182.P8093949552248968105

`A082392(2*n)-A045683(2*n+1)`
-/

namespace A383182.P8093949552248968105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 (2 * n) - A045683 (2 * n + 1)

end

end A383182.P8093949552248968105

/-! ## A383182.P1148615119733143883

`A016116(2*n)-A179781(2*n+1)`
-/

namespace A383182.P1148615119733143883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A179781 (2 * n + 1)

end

end A383182.P1148615119733143883

/-! ## A383182.P15742051996705901517

`A045674(2*n+1)-A045683(2*n+1)`
-/

namespace A383182.P15742051996705901517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (2 * n + 1) - A045683 (2 * n + 1)

end

end A383182.P15742051996705901517

/-! ## A383182.P14429723471370286109

`A045674(2*n+1)-A056476(2*n+1)`
-/

namespace A383182.P14429723471370286109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (2 * n + 1) - A056476 (2 * n + 1)

end

end A383182.P14429723471370286109

/-!
# A383185: Number of the square visited by a king moving on a spirally numbered board always to the lowest available unvisited square, when a wall delimiting the spiral must be crossed on each move.

The programs for A383185, there is no canonical definition to state claims against.
-/

/-! ## A383185.P1982413219330415831

`A375925(n+1)-1`
-/

namespace A383185.P1982413219330415831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375925 (n + 1) - 1

end

end A383185.P1982413219330415831

/-! ## A383185.P4294362768658784033

`A023443(A375925(n+1))`
-/

namespace A383185.P4294362768658784033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A375925 (n + 1)).toNat

end

end A383185.P4294362768658784033

/-! ## A383185.P1717199174089748886

`A140106(2*A375925(n+1))`
-/

namespace A383185.P1717199174089748886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A375925 (n + 1)).toNat

end

end A383185.P1717199174089748886

/-!
# A383195: Primes that are the concatenation of three primes, of which two are equal.

The programs for A383195, there is no canonical definition to state claims against.
-/

/-! ## A383195.P6190530742694833795

`A378081(comp[record[A379060(n)]])`
-/

namespace A383195.P6190530742694833795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A383195.P6190530742694833795

/-! ## A383195.P11848359567058641154

`∩[A109303(n+1), A124888(n+1)]`
-/

namespace A383195.P11848359567058641154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383195.P11848359567058641154

/-! ## A383195.P5851208522409413838

`∩[A092623(n+1), A346408(n+1)]`
-/

namespace A383195.P5851208522409413838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383195.P5851208522409413838

/-! ## A383195.P7585645486861316972

`∩[A092625(n+1), A346408(n+1)]`
-/

namespace A383195.P7585645486861316972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383195.P7585645486861316972

/-! ## A383195.P611934449635058179

`∩[A100607(n+1), A346408(n+1)]`
-/

namespace A383195.P611934449635058179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383195.P611934449635058179

