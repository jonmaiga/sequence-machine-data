import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A375400: Heinz number of the multiset of minima of maximal anti-runs in the weakly increasing prime indices of n.

The programs for A375400, there is no canonical definition to state claims against.
-/

/-! ## A375400.P9521488142440832339

`(n+1)/A381639(n+1)`
-/

namespace A375400.P9521488142440832339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A381639 (n + 1) : ℚ)

end

end A375400.P9521488142440832339

/-! ## A375400.P9031220157689586739

`(n+1)/A028234(∏{p}[n+1, #])`
-/

namespace A375400.P9031220157689586739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028234 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A375400.P9031220157689586739

/-! ## A375400.P12059922043621058503

`(n+1)/A032742(∏{p}[n+1, #])`
-/

namespace A375400.P12059922043621058503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A375400.P12059922043621058503

/-! ## A375400.P8587608420588017322

`A285109(n+1)/∏{p}[n+1, #]`
-/

namespace A375400.P8587608420588017322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A375400.P8587608420588017322

/-! ## A375400.P11482654312527041400

`(n+1)/∏{p}[n+1, #]*A020639(n+1)`
-/

namespace A375400.P11482654312527041400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A020639 (n + 1) : ℚ)

end

end A375400.P11482654312527041400

/-! ## A375400.P367470439068445223

`(n+1)/∏{p}[n+1, #]*A284694(∏{p}[n+1, #])`
-/

namespace A375400.P367470439068445223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A284694 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A375400.P367470439068445223

/-! ## A375400.P4896887973292318869

`A003557(A285109(n+1))`
-/

namespace A375400.P4896887973292318869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A285109 (n + 1)).toNat

end

end A375400.P4896887973292318869

/-! ## A375400.P2263159490297789434

`A003557((n+1)*A020639(n+1))`
-/

namespace A375400.P2263159490297789434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A020639 (n + 1)).toNat

end

end A375400.P2263159490297789434

/-!
# A375401: Number of integer partitions of n whose maximal anti-runs do not all have different maxima.

The programs for A375401, there is no canonical definition to state claims against.
-/

/-! ## A375401.P10568657553444990668

`A000041(n)-A375133(n)`
-/

namespace A375401.P10568657553444990668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A375133 n

end

end A375401.P10568657553444990668

/-! ## A375401.P16084174843979298426

`A213598(n)-A375133(n)`
-/

namespace A375401.P16084174843979298426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A375133 n

end

end A375401.P16084174843979298426

/-! ## A375401.P3048105487458249721

`∑[A002865(n)]-A375133(n)`
-/

namespace A375401.P3048105487458249721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A375133 n

end

end A375401.P3048105487458249721

/-! ## A375401.P10122647974872711844

`A238343(∑[n])-A375133(n)`
-/

namespace A375401.P10122647974872711844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A375133 n

end

end A375401.P10122647974872711844

/-! ## A375401.P4076474522676980905

`A293108(A034856(n+1))-A375133(n)`
-/

namespace A375401.P4076474522676980905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A034856 (n + 1)).toNat - A375133 n

end

end A375401.P4076474522676980905

/-!
# A375402: Numbers whose maximal anti-runs of weakly increasing prime factors (with multiplicity) have distinct maxima.

The programs for A375402, there is no canonical definition to state claims against.
-/

/-! ## A375402.P6742490427862902043

`record[A277803(n+1)]`
-/

namespace A375402.P6742490427862902043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375402.P6742490427862902043

/-! ## A375402.P15534319610098043965

`lt[n, A304408(n+1)]+1`
-/

namespace A375402.P15534319610098043965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375402.P15534319610098043965

/-! ## A375402.P8110115944227084082

`comp[A277781(n+1)-1]+1`
-/

namespace A375402.P8110115944227084082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277781 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375402.P8110115944227084082

/-! ## A375402.P10124100063451063644

`comp[A375403(n+1)-1]+1`
-/

namespace A375402.P10124100063451063644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375403 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375402.P10124100063451063644

/-! ## A375402.P3346083938935783072

`∪[A317092(n+1), A000098(n)]`
-/

namespace A375402.P3346083938935783072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375402.P3346083938935783072

/-! ## A375402.P9850345823957946560

`∪[A317092(n+1), A000603(n)]`
-/

namespace A375402.P9850345823957946560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375402.P9850345823957946560

/-! ## A375402.P9846731535303121737

`∪[A317092(n+1), A000605(n)]`
-/

namespace A375402.P9846731535303121737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375402.P9846731535303121737

/-! ## A375402.P15498615859190342534

`∪[A317092(n+1), A000710(n)]`
-/

namespace A375402.P15498615859190342534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375402.P15498615859190342534

/-! ## A375402.P15154930704393308773

`∪[A317092(n+1), A001287(n)]`
-/

namespace A375402.P15154930704393308773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375402.P15154930704393308773

/-! ## A375402.P2753279986470769649

`∪[A317092(n+1), A001288(n)]`
-/

namespace A375402.P2753279986470769649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375402.P2753279986470769649

/-!
# A375403: Numbers whose maximal anti-runs of weakly increasing prime factors (with multiplicity) do not have distinct maxima.

The programs for A375403, there is no canonical definition to state claims against.
-/

/-! ## A375403.P15394529896642079990

`∪[A046099(n+1), A070003(n+1)]`
-/

namespace A375403.P15394529896642079990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P15394529896642079990

/-! ## A375403.P5593189135829566176

`∪[A070003(n+1), A074451(n+1)]`
-/

namespace A375403.P5593189135829566176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P5593189135829566176

/-! ## A375403.P15397670038272970849

`∪[A046099(n+1), A195212(n+1)]`
-/

namespace A375403.P15397670038272970849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P15397670038272970849

/-! ## A375403.P155701145891466846

`∪[A070003(n+1), A253782(n+1)]`
-/

namespace A375403.P155701145891466846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P155701145891466846

/-! ## A375403.P17424104305808408547

`∪[A070003(n+1), A317493(n+1)]`
-/

namespace A375403.P17424104305808408547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P17424104305808408547

/-! ## A375403.P2968137825575703970

`∪[A046099(n+1), A368780(n+1)]`
-/

namespace A375403.P2968137825575703970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P2968137825575703970

/-! ## A375403.P4803121009993742614

`∪[A070003(n+1), A362148(n+1)]`
-/

namespace A375403.P4803121009993742614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P4803121009993742614

/-! ## A375403.P7952756614050099099

`∪[A046099(n+1), A388654(n+1)]`
-/

namespace A375403.P7952756614050099099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P7952756614050099099

/-! ## A375403.P18076080277438206077

`∪[A070003(n+1), A365866(n+1)]`
-/

namespace A375403.P18076080277438206077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P18076080277438206077

/-! ## A375403.P1602437997326952445

`∪[A070003(n+1), A375145(n+1)]`
-/

namespace A375403.P1602437997326952445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375403.P1602437997326952445

/-!
# A375404: Number of integer partitions of n whose minima of maximal anti-runs are not all different.

The programs for A375404, there is no canonical definition to state claims against.
-/

/-! ## A375404.P11772299621234882834

`A000041(n)-A375134(n)`
-/

namespace A375404.P11772299621234882834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A375134 n

end

end A375404.P11772299621234882834

/-! ## A375404.P15877319105564281428

`A213598(n)-A375134(n)`
-/

namespace A375404.P15877319105564281428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A375134 n

end

end A375404.P15877319105564281428

/-! ## A375404.P18058117939179671778

`sqrt(A001255(n))-A375134(n)`
-/

namespace A375404.P18058117939179671778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A375134 n : ℝ)

end

end A375404.P18058117939179671778

/-! ## A375404.P13649673184681252102

`∑[A002865(n)]-A375134(n)`
-/

namespace A375404.P13649673184681252102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A375134 n

end

end A375404.P13649673184681252102

/-! ## A375404.P8798876104147063253

`A238343(A000217(n))-A375134(n)`
-/

namespace A375404.P8798876104147063253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A375134 n

end

end A375404.P8798876104147063253

/-!
# A375405: Number of integer partitions of n with a repeated part other than the least.

The programs for A375405, there is no canonical definition to state claims against.
-/

/-! ## A375405.P14390585616066588847

`A000041(n)-A115029(n)`
-/

namespace A375405.P14390585616066588847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A115029 n

end

end A375405.P14390585616066588847

/-! ## A375405.P11219465554664704464

`∑[A002865(n)]-A115029(n)`
-/

namespace A375405.P11219465554664704464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A115029 n

end

end A375405.P11219465554664704464

/-! ## A375405.P2370213061514223219

`A035363(2*n)-A115029(n)`
-/

namespace A375405.P2370213061514223219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A115029 n

end

end A375405.P2370213061514223219

/-! ## A375405.P2898371062360316214

`A183568(A000217(n))-A115029(n)`
-/

namespace A375405.P2898371062360316214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 n).toNat - A115029 n

end

end A375405.P2898371062360316214

/-! ## A375405.P2867551861030776001

`A008284(A001844(n))-A115029(n)`
-/

namespace A375405.P2867551861030776001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A115029 n

end

end A375405.P2867551861030776001

/-!
# A375406: Number of integer compositions of n that match the dashed pattern 3-12.

The programs for A375406, there is no canonical definition to state claims against.
-/

/-! ## A375406.P14939861160662821925

`ceil(2^(n-1))-A188900(n)`
-/

namespace A375406.P14939861160662821925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A188900 n

end

end A375406.P14939861160662821925

/-! ## A375406.P14814630845276509692

`abs(A011782(n)-A188900(n))`
-/

namespace A375406.P14814630845276509692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A188900 n|

end

end A375406.P14814630845276509692

/-! ## A375406.P4438647191233764461

`A289207(A056469(n)-A188900(n))`
-/

namespace A375406.P4438647191233764461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A056469 n - A188900 n).toNat

end

end A375406.P4438647191233764461

/-! ## A375406.P1345310544405592965

`A087734(A000079(n)-A188900(n))`
-/

namespace A375406.P1345310544405592965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A000079 n - A188900 n).toNat

end

end A375406.P1345310544405592965

/-! ## A375406.P14351357996180694712

`A002033(A000225(n))%A188900(n)`
-/

namespace A375406.P14351357996180694712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 (A000225 n).toNat) (A188900 n)

end

end A375406.P14351357996180694712

/-!
# A375408: Numbers k such that the k-th composition in standard order is not weakly increasing or weakly decreasing.

The programs for A375408, there is no canonical definition to state claims against.
-/

/-! ## A375408.P11897045297950515744

`comp[∪[A225620(n+1), A114994(n)]]`
-/

namespace A375408.P11897045297950515744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A375408.P11897045297950515744

/-! ## A375408.P3711649435262662358

`∪[A335373(n+1), A335374(n+1)]`
-/

namespace A375408.P3711649435262662358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375408.P3711649435262662358

/-! ## A375408.P974299742868031057

`lt[A124761(n), A124761(n)*A124765(n)]`
-/

namespace A375408.P974299742868031057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n * A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375408.P974299742868031057

/-! ## A375408.P11690647762280431309

`∩[A335485(n+1), A335486(n+3)]`
-/

namespace A375408.P11690647762280431309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335486 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375408.P11690647762280431309

/-! ## A375408.P9124159494408150990

`lt[4, A335465(n)]`
-/

namespace A375408.P9124159494408150990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A375408.P9124159494408150990

/-!
# A375409: Expansion of e.g.f. exp(-x * (1 - x)) / (1 - x).

The programs for A375409, the canonical program `A375409.P11156999550607660290` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375409 has offset 0).

The definition of A375409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375409.P11156999550607660290

`(n-1)*(a(n-1)+3*a(n-2)-2*(n-2)*a(n-3))` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375409

/-- `(n-1)*(a(n-1)+3*a(n-2)-2*(n-2)*a(n-3))` -/
def P11156999550607660290.Spec : Prop :=
  ∀ n, P11156999550607660290.a n = A375409 n

theorem P11156999550607660290.correct : P11156999550607660290.Spec := by
  intro n
  simp only [A375409]

end A375409

/-!
# A375411: Expansion of e.g.f. exp(-x * (1 - x)^3) / (1 - x).

The programs for A375411, there is no canonical definition to state claims against.
-/

/-! ## A375411.P3599228506176838466

`A367809(n)+A364272(A004000(n+1))`
-/

namespace A375411.P3599228506176838466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367809 n + A364272 (A004000 (n + 1)).toNat

end

end A375411.P3599228506176838466

/-!
# A375412: Expansion of e.g.f. exp(x^2 * (1 - x)) / (1 - x).

The programs for A375412, there is no canonical definition to state claims against.
-/

/-! ## A375412.P12018493897519240163

`A333665(A120355(n))`
-/

namespace A375412.P12018493897519240163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333665 (A120355 n).toNat

end

end A375412.P12018493897519240163

/-! ## A375412.P3123659115337668658

`A236021(A375127(n)+A005043(n))`
-/

namespace A375412.P3123659115337668658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (A375127 n + A005043 n).toNat

end

end A375412.P3123659115337668658

/-! ## A375412.P4824185681337635891

`A278222(lcm(A061061(n+1), A326519(n)))`
-/

namespace A375412.P4824185681337635891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.lcm (A061061 (n + 1)) (A326519 n))

end

end A375412.P4824185681337635891

/-!
# A375414: Expansion of e.g.f. exp(-x^3 * (1 - x)) / (1 - x).

The programs for A375414, there is no canonical definition to state claims against.
-/

/-! ## A375414.P7034456631237806399

`A048803(n)*A055640(A058803(n))`
-/

namespace A375414.P7034456631237806399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048803 n * A055640 (A058803 n).toNat

end

end A375414.P7034456631237806399

/-! ## A375414.P15127042987842439451

`A375415(n)/A040455(A080795(n))`
-/

namespace A375414.P15127042987842439451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375415 n : ℚ) / (A040455 (A080795 n).toNat : ℚ)

end

end A375414.P15127042987842439451

/-! ## A375414.P3566549645139239895

`A375415(n)/A013679(A375394(n))`
-/

namespace A375414.P3566549645139239895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375415 n : ℚ) / (A013679 (A375394 n).toNat : ℚ)

end

end A375414.P3566549645139239895

/-!
# A375415: Expansion of e.g.f. exp(-x^3 * (1 - x)^2) / (1 - x).

The programs for A375415, there is no canonical definition to state claims against.
-/

/-! ## A375415.P13777267905911439349

`A003557(A000260(n))*A375414(n)`
-/

namespace A375415.P13777267905911439349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000260 n).toNat * A375414 n

end

end A375415.P13777267905911439349

/-! ## A375415.P12611590415929000494

`A026517(A023881(n))*A375414(n)`
-/

namespace A375415.P12611590415929000494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026517 (A023881 n).toNat * A375414 n

end

end A375415.P12611590415929000494

/-! ## A375415.P3289899814993912652

`A135010(A010036(n))*A375414(n)`
-/

namespace A375415.P3289899814993912652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A010036 n).toNat * A375414 n

end

end A375415.P3289899814993912652

/-!
# A375419: Number of maximal matchings in the n-triangular honeycomb obtuse knight graph.

The programs for A375419, there is no canonical definition to state claims against.
-/

/-! ## A375419.P4046771683011378816

`A224381(∏[n!])`
-/

namespace A375419.P4046771683011378816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224381 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A375419.P4046771683011378816

/-!
# A375420: a(n) is the number of straight lines passing through the points (i, prime(i)) and (j, prime(j)) with i < j <= n (where prime(k) denotes the k-th prime number).

The programs for A375420, there is no canonical definition to state claims against.
-/

/-! ## A375420.P3827713592886859642

`eq[A006821(A122202(2*n+1)), A185118(3*n+1)]`
-/

namespace A375420.P3827713592886859642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 (A122202 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375420.P3827713592886859642

/-!
# A375421: a(n) is the number of distinct straight lines passing through the points (k, prime(k)) and (n, prime(n)) for k < n (where prime(k) denotes the k-th prime number).

The programs for A375421, there is no canonical definition to state claims against.
-/

/-! ## A375421.P10415522332277343139

`n-A334046(n+1)`
-/

namespace A375421.P10415522332277343139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A334046 (n + 1)

end

end A375421.P10415522332277343139

/-! ## A375421.P991296579630735863

`A025581(A334046(n+1)+A000217(n))`
-/

namespace A375421.P991296579630735863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A334046 (n + 1) + A000217 n).toNat

end

end A375421.P991296579630735863

/-! ## A375421.P6596619963815018449

`n-A220400(record[A075164(n+1)])`
-/

namespace A375421.P6596619963815018449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A220400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375421.P6596619963815018449

/-!
# A375422: a(n) is the maximum number of points from the set {(k, prime(k)), k = 1..n} belonging to a straight line passing through the point (n, prime(n)) (where prime(k) denotes the k-th prime number).

The programs for A375422, there is no canonical definition to state claims against.
-/

/-! ## A375422.P7440084492410566404

`A001221(A048242(n+3)*A328416(n+2))`
-/

namespace A375422.P7440084492410566404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048242 (n + 3) * A328416 (n + 2)).toNat

end

end A375422.P7440084492410566404

/-! ## A375422.P4336791712545439917

`A297770(A194455(n)+A038712(n+1))`
-/

namespace A375422.P4336791712545439917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A194455 n + A038712 (n + 1)).toNat

end

end A375422.P4336791712545439917

/-! ## A375422.P14024837985141403724

`A358553(A324162(n+2)+A016921(n))`
-/

namespace A375422.P14024837985141403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358553 (A324162 (n + 2) + A016921 n).toNat

end

end A375422.P14024837985141403724

/-! ## A375422.P9345223573357752044

`A001221(A103692(n+3)*A250120(n))`
-/

namespace A375422.P9345223573357752044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103692 (n + 3) * A250120 n).toNat

end

end A375422.P9345223573357752044

/-! ## A375422.P11790191501736819

`A001221(A288814(n+4)*A299100(n+1))`
-/

namespace A375422.P11790191501736819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A288814 (n + 4) * A299100 (n + 1)).toNat

end

end A375422.P11790191501736819

/-!
# A375424: Expansion of e.g.f. exp(-x * (1 - x)) / (1 - x)^2.

The programs for A375424, the canonical program `A375424.P13525796360598704993` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375424 has offset 0).

The definition of A375424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375424.P13525796360598704993

`n*a(n-1)+3*(n-1)*a(n-2)-2*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375424

/-- `n*a(n-1)+3*(n-1)*a(n-2)-2*(n-1)*(n-2)*a(n-3)` -/
def P13525796360598704993.Spec : Prop :=
  ∀ n, P13525796360598704993.a n = A375424 n

theorem P13525796360598704993.correct : P13525796360598704993.Spec := by
  intro n
  simp only [A375424]

end A375424

/-! ## A375424.P8271963484081083778

`A075677(A317080(n)+A284825(n+1))`
-/

namespace A375424.P8271963484081083778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A317080 n + A284825 (n + 1 + 31)).toNat

end

end A375424.P8271963484081083778

namespace A375424

/-- `A075677(A317080(n)+A284825(n+1))` -/
def P8271963484081083778.Spec : Prop :=
  ∀ n, P8271963484081083778.a n = A375424 n

end A375424

/-!
# A375425: Expansion of e.g.f. exp(-x * (1 - x)) / (1 - x)^3.

The programs for A375425, there is no canonical definition to state claims against.
-/

/-! ## A375425.P15861135780954658880

`A033862(A150907(n))`
-/

namespace A375425.P15861135780954658880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A150907 n).toNat

end

end A375425.P15861135780954658880

/-!
# A375426: Expansion of e.g.f. exp(-x * (1 - x)^2) / (1 - x)^2.

The programs for A375426, there is no canonical definition to state claims against.
-/

/-! ## A375426.P3869902557285973991

`A353412(A080337(n+1)+A006126(n))`
-/

namespace A375426.P3869902557285973991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A080337 (n + 1) + A006126 n).toNat

end

end A375426.P3869902557285973991

/-!
# A375427: Expansion of e.g.f. exp(-x * (1 - x)^2) / (1 - x)^3.

The programs for A375427, there is no canonical definition to state claims against.
-/

/-! ## A375427.P7273241963564459910

`A323418(a(n-1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A375427.P7273241963564459910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A323418 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A375427.P7273241963564459910

/-!
# A375428: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

The programs for A375428, the canonical program `A375428.P1929730211812684430` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375428 has offset 1).

The definition of A375428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375428.P1929730211812684430

`A000045(A130233(A051903(n+1)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375428

/-- `A000045(A130233(A051903(n+1)))` -/
def P1929730211812684430.Spec : Prop :=
  ∀ n, P1929730211812684430.a n = A375428 (n + 1)

theorem P1929730211812684430.correct : P1929730211812684430.Spec := by
  intro n
  simp only [A375428, Nat.add_sub_cancel]

end A375428

/-! ## A375428.P9016017367644896745

`A000045(A375429(n+1)+A146076(2*n+1))`
-/

namespace A375428.P9016017367644896745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A375429 (n + 1) + A146076 (2 * n + 1)).toNat

end

end A375428.P9016017367644896745

namespace A375428

/-- `A000045(A375429(n+1)+A146076(2*n+1))` -/
def P9016017367644896745.Spec : Prop :=
  ∀ n, P9016017367644896745.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P18053699595645738637

`A000045(A375429(n+1)^A006519(2*n+1))`
-/

namespace A375428.P18053699595645738637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A375429 (n + 1) : ℚ) ^ (A006519 (2 * n + 1) : ℤ))).toNat

end

end A375428.P18053699595645738637

namespace A375428

/-- `A000045(A375429(n+1)^A006519(2*n+1))` -/
def P18053699595645738637.Spec : Prop :=
  ∀ n, P18053699595645738637.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P1008834481830296213

`A375430(A355264(n+1))`
-/

namespace A375428.P1008834481830296213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375430 (A355264 (n + 1)).toNat

end

end A375428.P1008834481830296213

namespace A375428

/-- `A375430(A355264(n+1))` -/
def P1008834481830296213.Spec : Prop :=
  ∀ n, P1008834481830296213.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P16610651609635463741

`A386468(A366904(n+1)*A366994(n+1))`
-/

namespace A375428.P16610651609635463741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386468 (A366904 (n + 1) * A366994 (n + 1)).toNat

end

end A375428.P16610651609635463741

namespace A375428

/-- `A386468(A366904(n+1)*A366994(n+1))` -/
def P16610651609635463741.Spec : Prop :=
  ∀ n, P16610651609635463741.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P8094284101664040862

`A001221(∏{e}[n+1, A084920(2^#)])`
-/

namespace A375428.P8094284101664040862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A084920 (2 ^ Nat.factorization (f1 n) p)).toNat

end

end A375428.P8094284101664040862

namespace A375428

/-- `A001221(∏{e}[n+1, A084920(2^#)])` -/
def P8094284101664040862.Spec : Prop :=
  ∀ n, P8094284101664040862.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P16762965943290067129

`(A072411(n+1)-A281617(A072411(n+1)))%A276625(n+1)`
-/

namespace A375428.P16762965943290067129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (n + 1) - A281617 (A072411 (n + 1)).toNat) (A276625 (n + 1))

end

end A375428.P16762965943290067129

namespace A375428

/-- `(A072411(n+1)-A281617(A072411(n+1)))%A276625(n+1)` -/
def P16762965943290067129.Spec : Prop :=
  ∀ n, P16762965943290067129.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P8683250132749766032

`A037870(6^A051903(n+1))`
-/

namespace A375428.P8683250132749766032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A051903 (n + 1) : ℤ))).toNat

end

end A375428.P8683250132749766032

namespace A375428

/-- `A037870(6^A051903(n+1))` -/
def P8683250132749766032.Spec : Prop :=
  ∀ n, P8683250132749766032.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P18127165304882101414

`A051903(n+1)-A335877(A344859(n))`
-/

namespace A375428.P18127165304882101414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A335877 (A344859 n).toNat

end

end A375428.P18127165304882101414

namespace A375428

/-- `A051903(n+1)-A335877(A344859(n))` -/
def P18127165304882101414.Spec : Prop :=
  ∀ n, P18127165304882101414.a n = A375428 (n + 1)

end A375428

/-! ## A375428.P1770444075146353988

`A056239(A294877(A034444(A293524(n+1))))`
-/

namespace A375428.P1770444075146353988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A294877 (A034444 (A293524 (n + 1)).toNat).toNat).toNat

end

end A375428.P1770444075146353988

namespace A375428

/-- `A056239(A294877(A034444(A293524(n+1))))` -/
def P1770444075146353988.Spec : Prop :=
  ∀ n, P1770444075146353988.a n = A375428 (n + 1)

end A375428

/-!
# A375429: The indices of the terms of A375428 in the Fibonacci sequence.

The programs for A375429, the canonical program `A375429.P12447372994373852055` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375429 has offset 1).

The definition of A375429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375429.P12447372994373852055

`A130233(A051903(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375429

/-- `A130233(A051903(n+1))` -/
def P12447372994373852055.Spec : Prop :=
  ∀ n, P12447372994373852055.a n = A375429 (n + 1)

theorem P12447372994373852055.correct : P12447372994373852055.Spec := by
  intro n
  simp only [A375429, Nat.add_sub_cancel]

end A375429

/-! ## A375429.P15315838242000919626

`A130233(A375428(n+1))`
-/

namespace A375429.P15315838242000919626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375428 (n + 1)).toNat

end

end A375429.P15315838242000919626

namespace A375429

/-- `A130233(A375428(n+1))` -/
def P15315838242000919626.Spec : Prop :=
  ∀ n, P15315838242000919626.a n = A375429 (n + 1)

end A375429

/-! ## A375429.P616113213718086420

`A108852(val(A278254(n+1), 4))-1`
-/

namespace A375429.P616113213718086420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4) - 1

end

end A375429.P616113213718086420

namespace A375429

/-- `A108852(val(A278254(n+1), 4))-1` -/
def P616113213718086420.Spec : Prop :=
  ∀ n, P616113213718086420.a n = A375429 (n + 1)

end A375429

/-! ## A375429.P16560626452919884099

`A375431(A355264(n+1))`
-/

namespace A375429.P16560626452919884099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375431 (A355264 (n + 1)).toNat

end

end A375429.P16560626452919884099

namespace A375429

/-- `A375431(A355264(n+1))` -/
def P16560626452919884099.Spec : Prop :=
  ∀ n, P16560626452919884099.a n = A375429 (n + 1)

end A375429

/-! ## A375429.P15369652812768005461

`A072643(∑{p}[A124859(n+1), #])`
-/

namespace A375429.P15369652812768005461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A375429.P15369652812768005461

namespace A375429

/-- `A072643(∑{p}[A124859(n+1), #])` -/
def P15369652812768005461.Spec : Prop :=
  ∀ n, P15369652812768005461.a n = A375429 (n + 1)

end A375429

/-! ## A375429.P8597857606748571657

`A051903(A062383(A392280((n+1)²)))`
-/

namespace A375429.P8597857606748571657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A062383 (A392280 ((n + 1) ^ 2)).toNat).toNat

end

end A375429.P8597857606748571657

namespace A375429

/-- `A051903(A062383(A392280((n+1)²)))` -/
def P8597857606748571657.Spec : Prop :=
  ∀ n, P8597857606748571657.a n = A375429 (n + 1)

end A375429

/-! ## A375429.P17566473392639499793

`A316506(A111219(n+1))`
-/

namespace A375429.P17566473392639499793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316506 (A111219 (n + 1)).toNat

end

end A375429.P17566473392639499793

namespace A375429

/-- `A316506(A111219(n+1))` -/
def P17566473392639499793.Spec : Prop :=
  ∀ n, P17566473392639499793.a n = A375429 (n + 1)

end A375429

/-!
# A375430: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the dual Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

The programs for A375430, the canonical program `A375430.P15072398528399193857` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375430 has offset 1).

The definition of A375430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375430.P15072398528399193857

`A000045(ceil(log((A051903(n+1)+1)²)))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375430

/-- `A000045(ceil(log((A051903(n+1)+1)²)))` -/
def P15072398528399193857.Spec : Prop :=
  ∀ n, P15072398528399193857.a n = A375430 (n + 1)

theorem P15072398528399193857.correct : P15072398528399193857.Spec := by
  intro n
  simp only [A375430, Nat.add_sub_cancel]

end A375430

/-! ## A375430.P5939175097966019422

`A000045(A001511(2*n+5)*A375431(n+1))`
-/

namespace A375430.P5939175097966019422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001511 (2 * n + 5) * A375431 (n + 1)).toNat

end

end A375430.P5939175097966019422

namespace A375430

/-- `A000045(A001511(2*n+5)*A375431(n+1))` -/
def P5939175097966019422.Spec : Prop :=
  ∀ n, P5939175097966019422.a n = A375430 (n + 1)

end A375430

/-!
# A375431: The indices of the terms of A375430 in the Fibonacci sequence.

The programs for A375431, the canonical program `A375431.P1013115202346062773` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375431 has offset 1).

The definition of A375431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375431.P2991517430571916729

`A056556(5*A051903(n+1))`
-/

namespace A375431.P2991517430571916729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (5 * A051903 (n + 1)).toNat

end

end A375431.P2991517430571916729

namespace A375431

/-- `A056556(5*A051903(n+1))` -/
def P2991517430571916729.Spec : Prop :=
  ∀ n, P2991517430571916729.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P1013115202346062773

`A048766(18*A051903(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375431

/-- `A048766(18*A051903(n+1))` -/
def P1013115202346062773.Spec : Prop :=
  ∀ n, P1013115202346062773.a n = A375431 (n + 1)

theorem P1013115202346062773.correct : P1013115202346062773.Spec := by
  intro n
  simp only [A375431, Nat.add_sub_cancel]

end A375431

/-! ## A375431.P4069471555617731384

`A046693(A051903(n+1))%A139419(n+1)`
-/

namespace A375431.P4069471555617731384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046693 (A051903 (n + 1)).toNat) (A139419 (n + 1))

end

end A375431.P4069471555617731384

namespace A375431

/-- `A046693(A051903(n+1))%A139419(n+1)` -/
def P4069471555617731384.Spec : Prop :=
  ∀ n, P4069471555617731384.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P5194428307320101502

`A057427(n)*A366901(A304180(n+1))`
-/

namespace A375431.P5194428307320101502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A366901 (A304180 (n + 1)).toNat

end

end A375431.P5194428307320101502

namespace A375431

/-- `A057427(n)*A366901(A304180(n+1))` -/
def P5194428307320101502.Spec : Prop :=
  ∀ n, P5194428307320101502.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P14632156019930543715

`A299090(n+1)+A057427(A139250(n))`
-/

namespace A375431.P14632156019930543715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1) + A057427 (A139250 n).toNat

end

end A375431.P14632156019930543715

namespace A375431

/-- `A299090(n+1)+A057427(A139250(n))` -/
def P14632156019930543715.Spec : Prop :=
  ∀ n, P14632156019930543715.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P7728951110210580874

`A299090(n+1)+A299090(A019565(n))`
-/

namespace A375431.P7728951110210580874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1) + A299090 (A019565 n).toNat

end

end A375431.P7728951110210580874

namespace A375431

/-- `A299090(n+1)+A299090(A019565(n))` -/
def P7728951110210580874.Spec : Prop :=
  ∀ n, P7728951110210580874.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P11899905839941823432

`A375430(n+1)+A341675(A005384(3*n+1))`
-/

namespace A375431.P11899905839941823432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375430 (n + 1) + A341675 (A005384 (3 * n + 1)).toNat

end

end A375431.P11899905839941823432

namespace A375431

/-- `A375430(n+1)+A341675(A005384(3*n+1))` -/
def P11899905839941823432.Spec : Prop :=
  ∀ n, P11899905839941823432.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P11215028453449750674

`A299090(A000188((n+1)²)²)`
-/

namespace A375431.P11215028453449750674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A000188 ((n + 1) ^ 2) ^ 2).toNat

end

end A375431.P11215028453449750674

namespace A375431

/-- `A299090(A000188((n+1)²)²)` -/
def P11215028453449750674.Spec : Prop :=
  ∀ n, P11215028453449750674.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P14313854438374771389

`A299090(n+1)+A057427(n²)`
-/

namespace A375431.P14313854438374771389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1) + A057427 (n ^ 2)

end

end A375431.P14313854438374771389

namespace A375431

/-- `A299090(n+1)+A057427(n²)` -/
def P14313854438374771389.Spec : Prop :=
  ∀ n, P14313854438374771389.a n = A375431 (n + 1)

end A375431

/-! ## A375431.P231040249996957134

`A375430(n+1)+A057427(n²)`
-/

namespace A375431.P231040249996957134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375430 (n + 1) + A057427 (n ^ 2)

end

end A375431.P231040249996957134

namespace A375431

/-- `A375430(n+1)+A057427(n²)` -/
def P231040249996957134.Spec : Prop :=
  ∀ n, P231040249996957134.a n = A375431 (n + 1)

end A375431

/-!
# A375433: a(n) is the smallest number of parallel straight lines needed to intersect all points (k, a(k)) for k < n.

The programs for A375433, there is no canonical definition to state claims against.
-/

/-! ## A375433.P11503906578695330744

`∑[char[∑[A375465(n+1)]]]`
-/

namespace A375433.P11503906578695330744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375433.P11503906578695330744

/-! ## A375433.P7237187496571330659

`A163352(lt[A341461(n), A298398(n+1)])`
-/

namespace A375433.P7237187496571330659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341461 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375433.P7237187496571330659

/-! ## A375433.P15259403425197740372

`A003056(lt[A374706(2*(n+1)), 4])`
-/

namespace A375433.P15259403425197740372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A375433.P15259403425197740372

/-!
# A375434: Expansion of g.f. A(x) satisfying A(x) = (1 + x*A(x)) * (1 + 3*x*A(x)^2).

The programs for A375434, there is no canonical definition to state claims against.
-/

/-! ## A375434.P10209153640367622873

`A121323(n+1)-A103120(A121323(n+1))`
-/

namespace A375434.P10209153640367622873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121323 (n + 1) - A103120 (A121323 (n + 1)).toNat

end

end A375434.P10209153640367622873

/-!
# A375435: Expansion of g.f. A(x) satisfying A(x) = (1 + 3*x*A(x)) * (1 + x*A(x)^2).

The programs for A375435, there is no canonical definition to state claims against.
-/

/-! ## A375435.P8134525740906364108

`A020908(A058410(n))+n`
-/

namespace A375435.P8134525740906364108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 (A058410 n).toNat + (n : ℤ)

end

end A375435.P8134525740906364108

/-!
# A375437: Expansion of g.f. A(x) satisfying A(x) = (1 + 3*x*A(x)) * (1 + 2*x*A(x)^2).

The programs for A375437, there is no canonical definition to state claims against.
-/

/-! ## A375437.P11889543523322788139

`A276378(A215624(n))`
-/

namespace A375437.P11889543523322788139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276378 (A215624 n).toNat

end

end A375437.P11889543523322788139

/-!
# A375438: Expansion of g.f. A(x) satisfying A(x) = x + x^2 + (A(x)^3 + 2*A(x^3))/3.

The programs for A375438, there is no canonical definition to state claims against.
-/

/-! ## A375438.P4950002802355067395

`A012265(A122391(n))`
-/

namespace A375438.P4950002802355067395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A122391 n).toNat

end

end A375438.P4950002802355067395

/-! ## A375438.P3490577394332167639

`A103960(A110138(n))`
-/

namespace A375438.P3490577394332167639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (A110138 n).toNat

end

end A375438.P3490577394332167639

/-! ## A375438.P7061820898871917854

`A390626(A000602(n))`
-/

namespace A375438.P7061820898871917854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (A000602 n).toNat

end

end A375438.P7061820898871917854

/-! ## A375438.P12936633254004790026

`A088520(A307677(n))`
-/

namespace A375438.P12936633254004790026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088520 (A307677 n).toNat

end

end A375438.P12936633254004790026

/-! ## A375438.P17147018048420291576

`A085761(A369688(n))`
-/

namespace A375438.P17147018048420291576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A369688 n).toNat

end

end A375438.P17147018048420291576

/-!
# A375439: Expansion of g.f. A(x) satisfying A(x) = x + x^2 + (2*A(x)^3 + A(x^3))/3.

The programs for A375439, there is no canonical definition to state claims against.
-/

/-! ## A375439.P15166001639870477304

`A333224(A335514(n))+A036717(n)`
-/

namespace A375439.P15166001639870477304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A335514 n).toNat + A036717 n

end

end A375439.P15166001639870477304

/-! ## A375439.P2722690696068961960

`A160408(A018843(3*n))+A000081(n)`
-/

namespace A375439.P2722690696068961960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160408 (A018843 (3 * n)).toNat + A000081 n

end

end A375439.P2722690696068961960

/-! ## A375439.P14147114174091626901

`A018843(A160408(n))+A000081(n)`
-/

namespace A375439.P14147114174091626901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A160408 n).toNat + A000081 n

end

end A375439.P14147114174091626901

/-! ## A375439.P10985557165440965272

`A124766(A353882(n))+A000081(n)`
-/

namespace A375439.P10985557165440965272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A353882 n).toNat + A000081 n

end

end A375439.P10985557165440965272

/-! ## A375439.P17174320699748629492

`A320536(A001333(n)^A046213(n+1))`
-/

namespace A375439.P17174320699748629492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (SequenceMachineLib.roundAway ((A001333 n : ℚ) ^ (A046213 (n + 1) : ℤ))).toNat

end

end A375439.P17174320699748629492

/-!
# A375440: Expansion of g.f. A(x) satisfying 0 = Sum_{k=0..n} (-1)^k * binomial(2*n, 2*k) * ([x^k] A(x)^n) for n >= 1.

The programs for A375440, there is no canonical definition to state claims against.
-/

/-! ## A375440.P17736272823988787107

`A247515((n-1)*n*a(n-1)+1)-1` with `a(0)=1`
-/

namespace A375440.P17736272823988787107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247515 (((n : ℤ) - 1) * ((n : ℤ) * a (n - 1)) + 1).toNat - 1

end

end A375440.P17736272823988787107

/-!
# A375441: Expansion of g.f. A(x) satisfying 0 = Sum_{k=0..n} (-1)^k * binomial(3*n-2*k, k) * ([x^k] A(x)^n) for n >= 1.

The programs for A375441, there is no canonical definition to state claims against.
-/

/-! ## A375441.P16656765629560057787

`A105511(A008542(n))`
-/

namespace A375441.P16656765629560057787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105511 (A008542 n).toNat

end

end A375441.P16656765629560057787

/-!
# A375442: Expansion of g.f. A(x) satisfying 0 = Sum_{k=0..n} (-1)^k * binomial(4*n-3*k, k) * ([x^k] A(x)^n) for n >= 1.

The programs for A375442, there is no canonical definition to state claims against.
-/

/-! ## A375442.P8632677442266280679

`A094660(A026011(n)-n)`
-/

namespace A375442.P8632677442266280679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094660 (A026011 n - (n : ℤ)).toNat

end

end A375442.P8632677442266280679

/-!
# A375443: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2/(1-2*x)^3 )/(1-2*x).

The programs for A375443, there is no canonical definition to state claims against.
-/

/-! ## A375443.P8627964895339978812

`A247911(A149034(n))`
-/

namespace A375443.P8627964895339978812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A149034 n).toNat

end

end A375443.P8627964895339978812

/-! ## A375443.P7223971261291714384

`A225086(A209230(n))`
-/

namespace A375443.P7223971261291714384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A209230 n).toNat

end

end A375443.P7223971261291714384

/-! ## A375443.P4105240645041957233

`A369715(A272687(n))`
-/

namespace A375443.P4105240645041957233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A272687 n).toNat

end

end A375443.P4105240645041957233

/-!
# A375444: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2/(1-2*x)^4 )/(1-2*x).

The programs for A375444, there is no canonical definition to state claims against.
-/

/-! ## A375444.P13326328987021605101

`A097992(xor(A002331(n+2), A005061(n)))`
-/

namespace A375444.P13326328987021605101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (Int.xor (A002331 (n + 2)) (A005061 n)).toNat

end

end A375444.P13326328987021605101

/-! ## A375444.P16020408283201709500

`xor(A002379(n), A111859(A368835(n+3)))`
-/

namespace A375444.P16020408283201709500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002379 n) (A111859 (A368835 (n + 3)).toNat)

end

end A375444.P16020408283201709500

/-! ## A375444.P15467246948479165342

`A097992(A005061(n))-A054908(2*(n+1))`
-/

namespace A375444.P15467246948479165342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A005061 n).toNat - A054908 (2 * (n + 1))

end

end A375444.P15467246948479165342

/-!
# A375445: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2/(1-2*x)^5 )/(1-2*x).

The programs for A375445, there is no canonical definition to state claims against.
-/

/-! ## A375445.P10429400221131843408

`A356065(a(n-1)+6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8`
-/

namespace A375445.P10429400221131843408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 8] fun n a =>
  A356065 (a (n - 1) + 6).toNat

end

end A375445.P10429400221131843408

/-! ## A375445.P6597513719210660075

`A215938(A104431(n))`
-/

namespace A375445.P6597513719210660075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215938 (A104431 n).toNat

end

end A375445.P6597513719210660075

/-!
# A375446: Triangle read by rows: T(n, k) = n! * 3^k * hypergeom([-k], [-n], -1/3).

The programs for A375446, there is no canonical definition to state claims against.
-/

/-! ## A375446.P14874511474598703611

`A000196(A210662(n+1))+A000078(n)`
-/

namespace A375446.P14874511474598703611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A210662 (n + 1)).toNat + A000078 n

end

end A375446.P14874511474598703611

/-!
# A375448: Expansion of the g.f. A(x) with the property that the sum of the first n coefficients in A(x/n)^n equals n^2 for n >= 1.

The programs for A375448, there is no canonical definition to state claims against.
-/

/-! ## A375448.P9750487240788103214

`A254438(A190667(n))`
-/

namespace A375448.P9750487240788103214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254438 (A190667 n).toNat

end

end A375448.P9750487240788103214

/-!
# A375449: Expansion of g.f. A(x) satisfying [x^n] x*A'(x) / (1 - n*A(x)) = n^(n+1) for n >= 1.

The programs for A375449, there is no canonical definition to state claims against.
-/

/-! ## A375449.P5962235256135029274

`A064989(A201367(n))`
-/

namespace A375449.P5962235256135029274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A201367 n).toNat

end

end A375449.P5962235256135029274

/-!
# A375450: Expansion of g.f. A(x) satisfying 0 = Sum_{k=0..n} (-1)^k * binomial(2*n-k,k) * ([x^k] A(x)^n) for n >= 1.

The programs for A375450, there is no canonical definition to state claims against.
-/

/-! ## A375450.P8681640570101686735

`A111856(or(7, A136222(n)))`
-/

namespace A375450.P8681640570101686735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (Int.lor 7 (A136222 n)).toNat

end

end A375450.P8681640570101686735

/-! ## A375450.P10797533302153687083

`ceil(exp((n-1)/2))*A330104(A001710(n))`
-/

namespace A375450.P10797533302153687083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉ * A330104 (A001710 n).toNat

end

end A375450.P10797533302153687083

/-!
# A375451: Expansion of g.f. A(x) satisfying 0 = Sum_{k=0..n} (-1)^k * binomial(n,k)^2 * ([x^k] A(x)^n) for n >= 1.

The programs for A375451, there is no canonical definition to state claims against.
-/

/-! ## A375451.P3693452795080124531

`A242139(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A375451.P3693452795080124531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A242139 (2 * a (n - 1)).toNat

end

end A375451.P3693452795080124531

/-!
# A375452: Expansion of g.f. A(x) satisfying [x^n] x*A'(x) / (1 - n*A(x)) = n^n for n >= 1.

The programs for A375452, there is no canonical definition to state claims against.
-/

/-! ## A375452.P12339791471899634665

`A383589(A219282(n²))`
-/

namespace A375452.P12339791471899634665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A219282 (n ^ 2)).toNat

end

end A375452.P12339791471899634665

/-! ## A375452.P16955457524635123550

`A211275(A006153(n))+A106356(n+1)`
-/

namespace A375452.P16955457524635123550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (A006153 n).toNat + A106356 (n + 1)

end

end A375452.P16955457524635123550

/-!
# A375453: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2/(1-2*x)^3 ).

The programs for A375453, there is no canonical definition to state claims against.
-/

/-! ## A375453.P5607668952004372017

`A384323(A000332(n))+A073724(n)`
-/

namespace A375453.P5607668952004372017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 (A000332 n).toNat + A073724 n

end

end A375453.P5607668952004372017

/-! ## A375453.P11981408605621259139

`or(A073724(n), A124389(A001157(n+1)))`
-/

namespace A375453.P11981408605621259139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073724 n) (A124389 (A001157 (n + 1)).toNat)

end

end A375453.P11981408605621259139

/-! ## A375453.P1219326462503993279

`or(A073724(n), A122179(A275955(n+1)))`
-/

namespace A375453.P1219326462503993279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073724 n) (A122179 (A275955 (n + 1)).toNat)

end

end A375453.P1219326462503993279

/-!
# A375454: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2/(1-2*x)^4 ).

The programs for A375454, there is no canonical definition to state claims against.
-/

/-! ## A375454.P12894752500031757210

`A276798(A126402(n))+A245092(n)`
-/

namespace A375454.P12894752500031757210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A126402 n).toNat + A245092 n

end

end A375454.P12894752500031757210

/-!
# A375455: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2/(1-2*x)^5 ).

The programs for A375455, there is no canonical definition to state claims against.
-/

/-! ## A375455.P10470373857387238816

`A165477(A330783(2*n+1))+n`
-/

namespace A375455.P10470373857387238816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A330783 (2 * n + 1)).toNat + (n : ℤ)

end

end A375455.P10470373857387238816

/-!
# A375456: Expansion of g.f. A(x) satisfying x = A( A(x) - 2*A(x)^2*A'(x) ).

The programs for A375456, there is no canonical definition to state claims against.
-/

/-! ## A375456.P841409823689554900

`A383375(n)-A341027(A029519(n+1))`
-/

namespace A375456.P841409823689554900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383375 n - A341027 ((A029519 (n + 1)).toNat + 220)

end

end A375456.P841409823689554900

/-!
# A375457: Expansion of the g.f. A(x) with the property that the sum of the first n coefficients in A(x/n)^n equals n for n >= 1.

The programs for A375457, there is no canonical definition to state claims against.
-/

/-! ## A375457.P14713380779617859828

`A074286(A340474(n)+1)`
-/

namespace A375457.P14713380779617859828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A340474 n + 1).toNat

end

end A375457.P14713380779617859828

/-! ## A375457.P5564107311354704337

`A096605(A344753(n+1)+A139086(n+1))`
-/

namespace A375457.P5564107311354704337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (A344753 (n + 1) + A139086 (n + 1)).toNat

end

end A375457.P5564107311354704337

/-!
# A375458: Expansion of g.f. A(x) satisfying A(x) = x + (A(x+x^2) - A(x-x^2))/2.

The programs for A375458, there is no canonical definition to state claims against.
-/

/-! ## A375458.P17135615150831980618

`A070787(a(n-1))+n!` with `a(0)=1`
-/

namespace A375458.P17135615150831980618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070787 (a (n - 1)).toNat + (Nat.factorial n : ℤ)

end

end A375458.P17135615150831980618

/-! ## A375458.P18278589675348415237

`filter[A122852(n), A395958(#)]`
-/

namespace A375458.P18278589675348415237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A375458.P18278589675348415237

/-! ## A375458.P5764633560313409019

`A171181(A324088(n+4))+n!`
-/

namespace A375458.P5764633560313409019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A324088 (n + 4)).toNat + (Nat.factorial n : ℤ)

end

end A375458.P5764633560313409019

/-!
# A375463: Numbers appearing on all three positions in ordered primitive Pythagorean triples.

The programs for A375463, there is no canonical definition to state claims against.
-/

/-! ## A375463.P3354508573607556297

`∩[A004613(n+1), A024354(n+1)]`
-/

namespace A375463.P3354508573607556297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375463.P3354508573607556297

/-! ## A375463.P18281111732468312705

`∩[A008784(n+1), A024354(n+1)]`
-/

namespace A375463.P18281111732468312705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375463.P18281111732468312705

/-! ## A375463.P14350207697721261340

`∩[A008846(n+1), A024354(n+1)]`
-/

namespace A375463.P14350207697721261340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375463.P14350207697721261340

/-! ## A375463.P10411394538871926296

`∩[A024354(n+1), A024409(n+1)]`
-/

namespace A375463.P10411394538871926296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375463.P10411394538871926296

/-! ## A375463.P10061285124984358505

`∩[A024354(n+1), A120961(n+1)]`
-/

namespace A375463.P10061285124984358505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375463.P10061285124984358505

/-!
# A375466: Array read by ascending antidiagonals of triangles read by rows: the coefficients of the polynomials n! * m^(n-k) * x^k * A094587(n, k), for m >= 0.

The programs for A375466, there is no canonical definition to state claims against.
-/

/-! ## A375466.P1964744477178440267

`gcd(A056170(A002234(n+1)), A292804(n))`
-/

namespace A375466.P1964744477178440267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056170 (A002234 (n + 1)).toNat) (A292804 n)

end

end A375466.P1964744477178440267

/-! ## A375466.P11291436181552316962

`gcd(A067255(A194079(n)), A378320(n))`
-/

namespace A375466.P11291436181552316962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067255 (A194079 n).toNat) (A378320 n)

end

end A375466.P11291436181552316962

/-! ## A375466.P7671840308475025981

`gcd(A129251(A267707(n)), A286957(n))`
-/

namespace A375466.P7671840308475025981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129251 (A267707 n).toNat) (A286957 n)

end

end A375466.P7671840308475025981

/-! ## A375466.P9335894680344996938

`A286957(n)^A265210(A003814(n+1))`
-/

namespace A375466.P9335894680344996938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286957 n : ℚ) ^ (A265210 (A003814 (n + 1)).toNat : ℤ)

end

end A375466.P9335894680344996938

/-! ## A375466.P4162805786264167250

`A292804(n)^A364406(A131224(n+4))`
-/

namespace A375466.P4162805786264167250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292804 n : ℚ) ^ (A364406 (A131224 (n + 4)).toNat : ℤ)

end

end A375466.P4162805786264167250

/-!
# A375467: Triangle read by rows: Number of unlabeled rooted trees with n vertices where the level of a vertex is bounded by k.

The programs for A375467, there is no canonical definition to state claims against.
-/

/-! ## A375467.P1052041205601338252

`∑{d}[A244132(n), A291291(#)]`
-/

namespace A375467.P1052041205601338252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A291291 d

end

end A375467.P1052041205601338252

/-! ## A375467.P12523800494562856922

`A001221(C(A040039(n), A056885(n)))`
-/

namespace A375467.P12523800494562856922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A040039 n).toNat (A056885 n).toNat)

end

end A375467.P12523800494562856922

/-! ## A375467.P2896094055771376203

`C(A083912(A011782(n)), A193739(n))`
-/

namespace A375467.P2896094055771376203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083912 (A011782 n).toNat).toNat (A193739 n).toNat

end

end A375467.P2896094055771376203

/-! ## A375467.P7992649206559436455

`A002262(n)-A175253(A194576(n+1))`
-/

namespace A375467.P7992649206559436455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A175253 (A194576 (n + 1)).toNat

end

end A375467.P7992649206559436455

/-! ## A375467.P2848654611245688799

`A006577(A026768(n))%A002260(n+1)`
-/

namespace A375467.P2848654611245688799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (A026768 n).toNat) (A002260 (n + 1))

end

end A375467.P2848654611245688799

/-!
# A375468: Row sums of A375467.

The programs for A375468, there is no canonical definition to state claims against.
-/

/-! ## A375468.P3860557985526336245

`A366844(A025781(3*n+1)+A025742(n))`
-/

namespace A375468.P3860557985526336245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366844 (A025781 (3 * n + 1) + A025742 n).toNat

end

end A375468.P3860557985526336245

/-! ## A375468.P4706829859376269431

`A366844(A051424(2*(n+2))-A344371(n+1))`
-/

namespace A375468.P4706829859376269431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366844 (A051424 (2 * (n + 2)) - A344371 (n + 1)).toNat

end

end A375468.P4706829859376269431

/-!
# A375469: Triangle read by rows: a permutation of the nonnegative integers based on the Eytzinger order.

The programs for A375469, there is no canonical definition to state claims against.
-/

/-! ## A375469.P8116319683046350959

`A385406(n+1)-A385395((3-n)²)`
-/

namespace A375469.P8116319683046350959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385406 (n + 1) - A385395 ((3 - (n : ℤ)) ^ 2).toNat

end

end A375469.P8116319683046350959

/-! ## A375469.P17810987897444466208

`A348041(A095069(n+1)+A091242(n+1))+A057944(n)-1`
-/

namespace A375469.P17810987897444466208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (A095069 (n + 1) + A091242 (n + 1)).toNat + A057944 n - 1

end

end A375469.P17810987897444466208

/-!
# A375471: Integers equal to the sum of divisors of their anti-divisors.

The programs for A375471, there is no canonical definition to state claims against.
-/

/-! ## A375471.P3867686114379334689

`A034513(n)%A005381(A146718(3*(n+1)))`
-/

namespace A375471.P3867686114379334689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034513 n) (A005381 (A146718 (3 * (n + 1))).toNat)

end

end A375471.P3867686114379334689

/-!
# A375473: a(n) is the area of the largest rectangle with integer sides that can be inscribed under the parabola y = -x^2 + n and on or above the x-axis.

The programs for A375473, there is no canonical definition to state claims against.
-/

/-! ## A375473.P16967220328029309159

`∑[A086520(A008611(4*n))]`
-/

namespace A375473.P16967220328029309159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A008611 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375473.P16967220328029309159

/-! ## A375473.P2569744771545361725

`∑[A086520(A008611(n)+n)]`
-/

namespace A375473.P2569744771545361725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A008611 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375473.P2569744771545361725

/-! ## A375473.P1751902075366074520

`∑[∑[A000122(A099848(n+2))]]`
-/

namespace A375473.P1751902075366074520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A099848 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375473.P1751902075366074520

/-! ## A375473.P11098741918786614100

`∑[∑[A133827(A017533(2*n))]]`
-/

namespace A375473.P11098741918786614100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133827 (A017533 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375473.P11098741918786614100

/-! ## A375473.P16818416509706227647

`∑[A350951(A287293(n+1))]`
-/

namespace A375473.P16818416509706227647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350951 (A287293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375473.P16818416509706227647

/-!
# A375474: Numbers k such that k is the area of a rational isosceles triangle.

The programs for A375474, there is no canonical definition to state claims against.
-/

/-! ## A375474.P5113297561506318164

`eq[1, A290349(2*(n+1))]+1`
-/

namespace A375474.P5113297561506318164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375474.P5113297561506318164

/-! ## A375474.P9060549029427934605

`eq[1, A290349(A008574(2*n))]`
-/

namespace A375474.P9060549029427934605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375474.P9060549029427934605

/-! ## A375474.P7625844620146573036

`A153152(eq[1, A290349(2*(n+1))])`
-/

namespace A375474.P7625844620146573036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375474.P7625844620146573036

/-! ## A375474.P3592564671889248625

`A004525(∩[A003273(n+1), A004277(n)])`
-/

namespace A375474.P3592564671889248625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A375474.P3592564671889248625

/-! ## A375474.P487545085799576399

`A004526(∩[A003273(n+1), A004277(n)])`
-/

namespace A375474.P487545085799576399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A375474.P487545085799576399

/-! ## A375474.P1440119971100856801

`A060681(∩[A003273(n+1), A005843(n)])`
-/

namespace A375474.P1440119971100856801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A375474.P1440119971100856801

/-! ## A375474.P6593484791700737152

`eq[1, A290349(A233583(2*n+1))]`
-/

namespace A375474.P6593484791700737152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375474.P6593484791700737152

/-!
# A375478: Irregular triangle read by rows in which row n lists the iterates of the phi(x) map from n to 1, where phi(x) is Euler's totient function (A000010).

The programs for A375478, there is no canonical definition to state claims against.
-/

/-! ## A375478.P4323861530321273794

`A246700(n+1)%A089142(n+3)`
-/

namespace A375478.P4323861530321273794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246700 (n + 1)) (A089142 (n + 3))

end

end A375478.P4323861530321273794

/-! ## A375478.P11697210237850034592

`A246700(A103124(n+2)%2+n)`
-/

namespace A375478.P11697210237850034592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246700 (Int.tmod (A103124 (n + 2)) 2 + (n : ℤ)).toNat

end

end A375478.P11697210237850034592

/-! ## A375478.P12187980969140914515

`A010052(floor((n/2)²)²)*A246700(n+1)`
-/

namespace A375478.P12187980969140914515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (⌊((n : ℚ) / 2) ^ 2⌋ ^ 2).toNat * A246700 (n + 1)

end

end A375478.P12187980969140914515

/-! ## A375478.P16427345792186934843

`A246700(n+1)*A319101(A107870(n))`
-/

namespace A375478.P16427345792186934843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246700 (n + 1) * A319101 (A107870 n).toNat

end

end A375478.P16427345792186934843

/-! ## A375478.P12506773247124247363

`A246700(n+1)*A367516(A138185(n))`
-/

namespace A375478.P12506773247124247363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246700 (n + 1) * A367516 (A138185 n).toNat

end

end A375478.P12506773247124247363

/-!
# A375482: a(n) is the number of points (k, prime(k)) at integer distance from the point (n, prime(n)) for k < n (where prime(k) denotes the k-th prime number).

The programs for A375482, there is no canonical definition to state claims against.
-/

/-! ## A375482.P6628949088769006385

`A108950(2*n+1)%A000002(A329131(2*n+5))`
-/

namespace A375482.P6628949088769006385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108950 (2 * n + 1)) (A000002 (A329131 (2 * n + 5)).toNat)

end

end A375482.P6628949088769006385

/-! ## A375482.P18208484786941097376

`A288997(A289053(2*(n+1))+A289053(n+1))`
-/

namespace A375482.P18208484786941097376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A289053 (2 * (n + 1)) + A289053 (n + 1)).toNat

end

end A375482.P18208484786941097376

/-! ## A375482.P14320482202456078653

`A348327(A115654(2*n+3)*A347609(2*(n+2)))`
-/

namespace A375482.P14320482202456078653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (A115654 (2 * n + 3) * A347609 (2 * (n + 2))).toNat

end

end A375482.P14320482202456078653

/-! ## A375482.P7528639714208432230

`A347519(A316296(n+2))`
-/

namespace A375482.P7528639714208432230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347519 (A316296 (n + 2)).toNat

end

end A375482.P7528639714208432230

/-! ## A375482.P6437528465309251017

`A105386(n+1)%A006928(n+1)`
-/

namespace A375482.P6437528465309251017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105386 (n + 1)) (A006928 (n + 1))

end

end A375482.P6437528465309251017

/-!
# A375483: Number of nonabelian groups of order m where m is the n-th squarefree number.

The programs for A375483, there is no canonical definition to state claims against.
-/

/-! ## A375483.P10148734920075832769

`A375491(n+1)-1`
-/

namespace A375483.P10148734920075832769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375491 (n + 1) - 1

end

end A375483.P10148734920075832769

/-! ## A375483.P9637624700845495857

`A057918(A375491(n+1)²)`
-/

namespace A375483.P9637624700845495857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A375491 (n + 1) ^ 2).toNat

end

end A375483.P9637624700845495857

/-! ## A375483.P7580277655089392179

`A057918(A375491(n+1)*A375491(n+1))`
-/

namespace A375483.P7580277655089392179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A375491 (n + 1) * A375491 (n + 1)).toNat

end

end A375483.P7580277655089392179

/-! ## A375483.P640945773882416875

`A060689(A005117(n+1))`
-/

namespace A375483.P640945773882416875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A005117 (n + 1)).toNat

end

end A375483.P640945773882416875

/-! ## A375483.P3146393514124613321

`A000001(record[A003967(n+1)])-1`
-/

namespace A375483.P3146393514124613321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A375483.P3146393514124613321

/-! ## A375483.P8520399574755409178

`A000001(record[A007913(n+1)])-1`
-/

namespace A375483.P8520399574755409178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A375483.P8520399574755409178

/-! ## A375483.P15143658722085494175

`A000001(record[A007947(n+1)])-1`
-/

namespace A375483.P15143658722085494175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A375483.P15143658722085494175

/-! ## A375483.P14650861398758302548

`A000001(record[A019555(n+1)])-1`
-/

namespace A375483.P14650861398758302548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A375483.P14650861398758302548

/-! ## A375483.P14572948426762311110

`A000001(record[A336965(n+1)])-1`
-/

namespace A375483.P14572948426762311110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A375483.P14572948426762311110

/-! ## A375483.P16690588064840991056

`A060689(A243348(n+1)+n+1)`
-/

namespace A375483.P16690588064840991056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A375483.P16690588064840991056

/-! ## A375483.P9831854129784201976

`A057918(A000001(A005117(n+1))²)`
-/

namespace A375483.P9831854129784201976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A000001 (A005117 (n + 1)).toNat ^ 2).toNat

end

end A375483.P9831854129784201976

/-! ## A375483.P13941693262982624650

`A291776(n+2)%A375491(n+1)`
-/

namespace A375483.P13941693262982624650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291776 (n + 2)) (A375491 (n + 1))

end

end A375483.P13941693262982624650

/-! ## A375483.P8435783921911171696

`A083800(n+1)%A375491(n+1)`
-/

namespace A375483.P8435783921911171696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A375491 (n + 1))

end

end A375483.P8435783921911171696

/-! ## A375483.P15107823014970174305

`A070198(n)%A375491(n+1)`
-/

namespace A375483.P15107823014970174305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A375491 (n + 1))

end

end A375483.P15107823014970174305

/-! ## A375483.P7971194328842747405

`A079782(n+1)%A375491(n+1)`
-/

namespace A375483.P7971194328842747405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A375491 (n + 1))

end

end A375483.P7971194328842747405

/-! ## A375483.P15111598431906084266

`A083685(n+1)%A375491(n+1)`
-/

namespace A375483.P15111598431906084266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A375491 (n + 1))

end

end A375483.P15111598431906084266

/-! ## A375483.P7193409957125821018

`A030494(n+1)%A375491(n+1)`
-/

namespace A375483.P7193409957125821018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A375491 (n + 1))

end

end A375483.P7193409957125821018

/-! ## A375483.P2130701271085894890

`A072828(n+1)%A375491(n+1)`
-/

namespace A375483.P2130701271085894890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A375491 (n + 1))

end

end A375483.P2130701271085894890

/-! ## A375483.P17635570105715424102

`A086827(n+1)%A375491(n+1)`
-/

namespace A375483.P17635570105715424102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A375491 (n + 1))

end

end A375483.P17635570105715424102

/-!
# A375488: Numbers k such that k^(sigma(k) - k) == k (mod sigma(k)), where sigma = A000203.

The programs for A375488, there is no canonical definition to state claims against.
-/

/-! ## A375488.P1910651905913274388

`A358378(n+1)+A099313(A038754(n))`
-/

namespace A375488.P1910651905913274388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (n + 1) + A099313 (A038754 n).toNat

end

end A375488.P1910651905913274388

/-! ## A375488.P907288044339908011

`lt[A360042(n+1), A057547(A030101(n))]`
-/

namespace A375488.P907288044339908011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375488.P907288044339908011

/-! ## A375488.P5664403764160636934

`lt[A004719(n+1), A001055(A074377(3*n+2))]`
-/

namespace A375488.P5664403764160636934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A074377 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375488.P5664403764160636934

/-! ## A375488.P11350422953528478103

`lt[A158522(A197863(3*n+2)), A385047(n+1)]`
-/

namespace A375488.P11350422953528478103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A197863 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375488.P11350422953528478103

/-! ## A375488.P1612902711347321422

`lt[A153733(A078747(3*n+5)), A038040(3*(n+1))]`
-/

namespace A375488.P1612902711347321422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A078747 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375488.P1612902711347321422

/-!
# A375489: Omit the trailing zeros from double factorial of even numbers (A000165).

The programs for A375489, the canonical program `A375489.P9278473890610164610` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375489 has offset 0).

The definition of A375489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375489.P9278473890610164610

`A000165(n)/10^A027868(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375489

/-- `A000165(n)/10^A027868(n)` -/
def P9278473890610164610.Spec : Prop :=
  ∀ n, P9278473890610164610.a n = (A375489 n : ℚ)

end A375489

/-! ## A375489.P8340174437458687263

`A000079(n)*A004154(n)`
-/

namespace A375489.P8340174437458687263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004154 n

end

end A375489.P8340174437458687263

namespace A375489

/-- `A000079(n)*A004154(n)` -/
def P8340174437458687263.Spec : Prop :=
  ∀ n, P8340174437458687263.a n = A375489 n

end A375489

/-! ## A375489.P13644565327559774959

`sqrt(A000302(n))*A004154(n)`
-/

namespace A375489.P13644565327559774959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) * (A004154 n : ℝ)

end

end A375489.P13644565327559774959

namespace A375489

/-- `sqrt(A000302(n))*A004154(n)` -/
def P13644565327559774959.Spec : Prop :=
  ∀ n, P13644565327559774959.a n = (A375489 n : ℝ)

end A375489

/-! ## A375489.P9564375604848090236

`Δ[A000051(n)]*A004154(n)`
-/

namespace A375489.P9564375604848090236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004154 n

end

end A375489.P9564375604848090236

namespace A375489

/-- `Δ[A000051(n)]*A004154(n)` -/
def P9564375604848090236.Spec : Prop :=
  ∀ n, P9564375604848090236.a n = A375489 n

end A375489

/-! ## A375489.P15977087740953592858

`(A000225(n)+1)*A004154(n)`
-/

namespace A375489.P15977087740953592858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * A004154 n

end

end A375489.P15977087740953592858

namespace A375489

/-- `(A000225(n)+1)*A004154(n)` -/
def P15977087740953592858.Spec : Prop :=
  ∀ n, P15977087740953592858.a n = A375489 n

end A375489

/-! ## A375489.P11218703272253663351

`A004154(n)*A016116(2*n)`
-/

namespace A375489.P11218703272253663351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n * A016116 (2 * n)

end

end A375489.P11218703272253663351

namespace A375489

/-- `A004154(n)*A016116(2*n)` -/
def P11218703272253663351.Spec : Prop :=
  ∀ n, P11218703272253663351.a n = A375489 n

end A375489

/-! ## A375489.P13436728112528746711

`A004154(n)*A252754(A000040(n+1))`
-/

namespace A375489.P13436728112528746711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n * A252754 (A000040 (n + 1)).toNat

end

end A375489.P13436728112528746711

namespace A375489

/-- `A004154(n)*A252754(A000040(n+1))` -/
def P13436728112528746711.Spec : Prop :=
  ∀ n, P13436728112528746711.a n = A375489 n

end A375489

/-!
# A375491: Number of groups of order m where m is the n-th squarefree number.

The programs for A375491, there is no canonical definition to state claims against.
-/

/-! ## A375491.P7700881396082505924

`A000001(A005117(n+1))`
-/

namespace A375491.P7700881396082505924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A005117 (n + 1)).toNat

end

end A375491.P7700881396082505924

/-! ## A375491.P490190832554654349

`A375483(n+1)+1`
-/

namespace A375491.P490190832554654349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375483 (n + 1) + 1

end

end A375491.P490190832554654349

/-! ## A375491.P12502692876730500374

`A000001(record[A003967(n+1)])`
-/

namespace A375491.P12502692876730500374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375491.P12502692876730500374

/-! ## A375491.P6978716507299077176

`A000001(record[A007913(n+1)])`
-/

namespace A375491.P6978716507299077176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375491.P6978716507299077176

/-! ## A375491.P9866672507744595511

`A000001(record[A007947(n+1)])`
-/

namespace A375491.P9866672507744595511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375491.P9866672507744595511

/-! ## A375491.P15233104064156649131

`A000001(record[A019555(n+1)])`
-/

namespace A375491.P15233104064156649131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375491.P15233104064156649131

/-! ## A375491.P2762673600071284486

`A000001(record[A336965(n+1)])`
-/

namespace A375491.P2762673600071284486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375491.P2762673600071284486

/-! ## A375491.P1026539200040451215

`A000001(A243348(n+1)+n+1)`
-/

namespace A375491.P1026539200040451215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A375491.P1026539200040451215

/-! ## A375491.P1544266302061525544

`A000001(eq[A000038(n), A105570(n)])`
-/

namespace A375491.P1544266302061525544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375491.P1544266302061525544

/-! ## A375491.P1923967676222944868

`A247371(A308993(A005117(n+1)²))`
-/

namespace A375491.P1923967676222944868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247371 (A308993 (A005117 (n + 1) ^ 2).toNat).toNat

end

end A375491.P1923967676222944868

/-!
# A375492: Number of compositions of n into powers of two that each divide the sum of previous powers.

The programs for A375492, there is no canonical definition to state claims against.
-/

/-! ## A375492.P1739002868692637601

`A318509(A332868(n))`
-/

namespace A375492.P1739002868692637601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A332868 n).toNat

end

end A375492.P1739002868692637601

/-!
# A375496: Nonnegative integers k which have a unique minimum length construction starting from 1 and choosing operations f(x) = 3x+1 or g(x) = floor(x/2).

The programs for A375496, there is no canonical definition to state claims against.
-/

/-! ## A375496.P15808279450373241292

`eq[1, A375495(n)]`
-/

namespace A375496.P15808279450373241292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375496.P15808279450373241292

/-! ## A375496.P2692841647236282455

`lt[A375495(A028310(n)), 2]`
-/

namespace A375496.P2692841647236282455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375495 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375496.P2692841647236282455

/-! ## A375496.P12627444664185360961

`lt[A375495(n), A001316(A001316(n))]`
-/

namespace A375496.P12627444664185360961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375496.P12627444664185360961

/-! ## A375496.P1340660857638666461

`lt[A375495(n), A000005(A000928(n+1))]`
-/

namespace A375496.P1340660857638666461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000928 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375496.P1340660857638666461

/-! ## A375496.P11242156980752569893

`lt[A375495(n), A000005(A001359(n+1))]`
-/

namespace A375496.P11242156980752569893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001359 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375496.P11242156980752569893

/-!
# A375497: Numbers k such that 16*k^4 - 1 is squarefree.

The programs for A375497, there is no canonical definition to state claims against.
-/

/-! ## A375497.P11589369005322161933

`sqrt(A233409(n+1))/2`
-/

namespace A375497.P11589369005322161933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A233409 (n + 1) : ℝ) / 2

end

end A375497.P11589369005322161933

/-! ## A375497.P4391004799969569571

`A004526(sqrt(A233409(n+1)))`
-/

namespace A375497.P4391004799969569571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

end

end A375497.P4391004799969569571

/-! ## A375497.P8594868917871010995

`A122352(sqrt(A233409(n+1)))`
-/

namespace A375497.P8594868917871010995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122352 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

end

end A375497.P8594868917871010995

/-! ## A375497.P14461893402917401587

`A004524(sqrt(A233409(n+1))+1)`
-/

namespace A375497.P14461893402917401587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ) + 1)).toNat

end

end A375497.P14461893402917401587

/-! ## A375497.P1544239236783655765

`A033676((n+1)*sqrt(A233409(n+1)))`
-/

namespace A375497.P1544239236783655765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (A233409 (n + 1) : ℝ))).toNat

end

end A375497.P1544239236783655765

/-!
# A375499: a(n) is the smallest number of straight lines needed to intersect all points (k, d(k)) for k = 1..n (where d is the sum-of-divisors function A000005).

The programs for A375499, there is no canonical definition to state claims against.
-/

/-! ## A375499.P7746431030437778764

`A225541(A375749(n+1))`
-/

namespace A375499.P7746431030437778764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A375749 (n + 1)).toNat

end

end A375499.P7746431030437778764

/-! ## A375499.P2738484438679077300

`A000196(comp[A027861(n+1)-A081155(n)])`
-/

namespace A375499.P2738484438679077300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) - A081155 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A375499.P2738484438679077300

/-! ## A375499.P7936390518346747203

`A087739(A087739(2*n+1)-A063524(n))`
-/

namespace A375499.P7936390518346747203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A087739 (2 * n + 1) - A063524 n).toNat

end

end A375499.P7936390518346747203

/-! ## A375499.P5932200289341798094

`A070939(A174995(n+1)-A363887(n+1))`
-/

namespace A375499.P5932200289341798094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A174995 (n + 1) - A363887 (n + 1)).toNat

end

end A375499.P5932200289341798094

/-! ## A375499.P12395418563178665800

`floor(log2(A156729(3*n+2)+A009087(n+1)))`
-/

namespace A375499.P12395418563178665800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A156729 (3 * n + 2) + A009087 (n + 1)).toNat

end

end A375499.P12395418563178665800

