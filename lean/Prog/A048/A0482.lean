import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A048200: Minimal length pair-exchange / set-rotate sequence to reverse n distinct ordered elements.

The programs for A048200, there is no canonical definition to state claims against.
-/

/-! ## A048200.P2480499292119742610

`Δ[A176690(round(sqrt(n²+1)))]`
-/

namespace A048200.P2480499292119742610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176690 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048200.P2480499292119742610

/-! ## A048200.P2928658500163787008

`record[Δ[A176690(A008619(n))]]`
-/

namespace A048200.P2928658500163787008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176690 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048200.P2928658500163787008

/-! ## A048200.P18262130085895690291

`record[Δ[A176690(A008620(n))]]`
-/

namespace A048200.P18262130085895690291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176690 (A008620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048200.P18262130085895690291

/-! ## A048200.P10443012279481667886

`record[Δ[A176690(A020915(n))]]`
-/

namespace A048200.P10443012279481667886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176690 (A020915 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048200.P10443012279481667886

/-! ## A048200.P14067349087899754116

`A007094(lt[A182441(n), 7])`
-/

namespace A048200.P14067349087899754116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182441 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048200.P14067349087899754116

/-!
# A048201: Triangular array T read by rows: T(i,j)=b(i+1)-b(i+1-j); j=1,2,...,i; i=1,2,3,...; b=A004978.

The programs for A048201, there is no canonical definition to state claims against.
-/

/-! ## A048201.P1749740992741243803

`∑{p}[A066117(n+1), A030065(#)]`
-/

namespace A048201.P1749740992741243803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A030065 p

end

end A048201.P1749740992741243803

/-! ## A048201.P8676085346497016640

`∑{p}[A066117(n+1), A081609(#)]`
-/

namespace A048201.P8676085346497016640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A081609 p

end

end A048201.P8676085346497016640

/-!
# A048202: a(n)=T(n,2), array T given by A048201.

The programs for A048202, there is no canonical definition to state claims against.
-/

/-! ## A048202.P16474604057017674898

`A002048(n+1)+A002048(n+2)`
-/

namespace A048202.P16474604057017674898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1) + A002048 (n + 2)

end

end A048202.P16474604057017674898

/-! ## A048202.P17663215683787399360

`Δ[A004978(n+1)+A002049(n+1)]`
-/

namespace A048202.P17663215683787399360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1) + A002049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048202.P17663215683787399360

/-! ## A048202.P15518726029506125677

`A048203(n+3)-Δ[A048204(n+1)]`
-/

namespace A048202.P15518726029506125677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048203 (n + 3) - (f1 (n + 1) - f1 n)

end

end A048202.P15518726029506125677

/-! ## A048202.P9635919191444672817

`A048204(n+1)+A048203(n+3)-A048204(n+2)`
-/

namespace A048202.P9635919191444672817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1) + (A048203 (n + 3) - A048204 (n + 2))

end

end A048202.P9635919191444672817

/-! ## A048202.P8273060023461272902

`A004978(n+3)-A004978(n+1)`
-/

namespace A048202.P8273060023461272902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 3) - A004978 (n + 1)

end

end A048202.P8273060023461272902

/-! ## A048202.P14280647777406224011

`Δ[A004978(n+1)+A004978(n+2)]`
-/

namespace A048202.P14280647777406224011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1) + A004978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048202.P14280647777406224011

/-! ## A048202.P12825469656969699405

`A048203(n+3)-Δ[A002049(n+2)]`
-/

namespace A048202.P12825469656969699405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048203 (n + 3) - (f1 (n + 1) - f1 n)

end

end A048202.P12825469656969699405

/-! ## A048202.P15681444974557072942

`A048201(∑[n+1]+2)`
-/

namespace A048202.P15681444974557072942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048202.P15681444974557072942

/-!
# A048203: a(n)=T(n,3), array T given by A048201.

The programs for A048203, there is no canonical definition to state claims against.
-/

/-! ## A048203.P13093691471949017281

`A048202(n+3)+A002048(n+1)`
-/

namespace A048203.P13093691471949017281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048202 (n + 3) + A002048 (n + 1)

end

end A048203.P13093691471949017281

/-! ## A048203.P8358026593384895736

`A048202(n+2)+Δ[A048204(n+1)]`
-/

namespace A048203.P8358026593384895736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048202 (n + 2) + (f1 (n + 1) - f1 n)

end

end A048203.P8358026593384895736

/-! ## A048203.P5975109950207992931

`A048202(n+3)+Δ[A004978(n+1)]`
-/

namespace A048203.P5975109950207992931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048202 (n + 3) + (f1 (n + 1) - f1 n)

end

end A048203.P5975109950207992931

/-! ## A048203.P17909430362877454575

`A048204(n+2)+A048202(n+2)-A048204(n+1)`
-/

namespace A048203.P17909430362877454575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 2) + (A048202 (n + 2) - A048204 (n + 1))

end

end A048203.P17909430362877454575

/-! ## A048203.P15926756146640505967

`A004978(n+2)+A048202(n+3)-A004978(n+1)`
-/

namespace A048203.P15926756146640505967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 2) + (A048202 (n + 3) - A004978 (n + 1))

end

end A048203.P15926756146640505967

/-! ## A048203.P14402871943981554717

`A004978(n+4)-A004978(n+1)`
-/

namespace A048203.P14402871943981554717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 4) - A004978 (n + 1)

end

end A048203.P14402871943981554717

/-! ## A048203.P186147616635334008

`A048201(∑[n+2]+4)`
-/

namespace A048203.P186147616635334008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048203.P186147616635334008

/-!
# A048204: a(n) = T(n+1,n), array T given by A048201.

The programs for A048204, there is no canonical definition to state claims against.
-/

/-! ## A048204.P12437134414511714850

`A004978(n+3)-2`
-/

namespace A048204.P12437134414511714850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 3) - 2

end

end A048204.P12437134414511714850

/-! ## A048204.P10984593200531983788

`∑[A048202(n+2)]-A002049(n+1)`
-/

namespace A048204.P10984593200531983788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002049 (n + 1)

end

end A048204.P10984593200531983788

/-! ## A048204.P14725168041882338869

`∑[A002048(n+2)]`
-/

namespace A048204.P14725168041882338869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048204.P14725168041882338869

/-! ## A048204.P17655120428895646036

`A002049(n+2)-1`
-/

namespace A048204.P17655120428895646036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 2) - 1

end

end A048204.P17655120428895646036

/-! ## A048204.P11735650224109904509

`Δ[A173702(n+1)]-1`
-/

namespace A048204.P11735650224109904509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A048204.P11735650224109904509

/-! ## A048204.P10004005813341411510

`∑[abs(Δ[A002049(n+1)])]`
-/

namespace A048204.P10004005813341411510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048204.P10004005813341411510

/-! ## A048204.P15432137441837422012

`∑[Δ[A002049(n+1)]%A017137(n)]`
-/

namespace A048204.P15432137441837422012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017137 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048204.P15432137441837422012

/-! ## A048204.P18365486462648982355

`A048210(n+2)-(A002048(n+2)+1)`
-/

namespace A048204.P18365486462648982355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048210 (n + 2) - (A002048 (n + 2) + 1)

end

end A048204.P18365486462648982355

/-! ## A048204.P5538761058958178245

`∑[abs(Δ[A004978(n+2)])]`
-/

namespace A048204.P5538761058958178245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048204.P5538761058958178245

/-! ## A048204.P6705471006294227683

`A048201(∑[n+2])`
-/

namespace A048204.P6705471006294227683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048204.P6705471006294227683

/-! ## A048204.P13079129971348327549

`record[A048201(n+2)/A006019(n+3)]`
-/

namespace A048204.P13079129971348327549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048201 (n + 2) : ℚ) / (A006019 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048204.P13079129971348327549

/-!
# A048205: a(n)=T(n+2,n), array T given by A048201.

The programs for A048205, there is no canonical definition to state claims against.
-/

/-! ## A048205.P281220916730555096

`A004978(n+4)-4`
-/

namespace A048205.P281220916730555096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 4) - 4

end

end A048205.P281220916730555096

/-! ## A048205.P3727621860182308360

`∑[A048203(n+3)-A048202(n+2)]`
-/

namespace A048205.P3727621860182308360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048203 (n + 3) - A048202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048205.P3727621860182308360

/-! ## A048205.P134832231663866189

`A048204(n+2)-2`
-/

namespace A048205.P134832231663866189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 2) - 2

end

end A048205.P134832231663866189

/-! ## A048205.P1408242549139133149

`∑[abs(Δ[A048204(n+1)])]`
-/

namespace A048205.P1408242549139133149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048205.P1408242549139133149

/-! ## A048205.P11509414066927779372

`∑[Δ[A048204(n+1)]%A006512(n+1)]`
-/

namespace A048205.P11509414066927779372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A006512 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048205.P11509414066927779372

/-! ## A048205.P13256414734070681400

`∑[Δ[A048204(n+1)]^(A006530(2*n+3)%2)]`
-/

namespace A048205.P13256414734070681400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (Int.tmod (A006530 (2 * n + 3)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048205.P13256414734070681400

/-! ## A048205.P12192177582237781908

`∑[A002048(n+3)]`
-/

namespace A048205.P12192177582237781908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048205.P12192177582237781908

/-! ## A048205.P9365257567224812534

`A002049(n+3)-3`
-/

namespace A048205.P9365257567224812534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 3) - 3

end

end A048205.P9365257567224812534

/-! ## A048205.P7063038887385090951

`∑[abs(Δ[A002049(n+2)])]`
-/

namespace A048205.P7063038887385090951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048205.P7063038887385090951

/-! ## A048205.P13134086119802350490

`A048201(∑[n+3]+1)`
-/

namespace A048205.P13134086119802350490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048205.P13134086119802350490

/-!
# A048206: a(n)=least m such that row m of T contains n, array T given by A048201.

The programs for A048206, there is no canonical definition to state claims against.
-/

/-! ## A048206.P16556858116867610053

`A147981(A074121(n+1))`
-/

namespace A048206.P16556858116867610053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A074121 (n + 1)).toNat

end

end A048206.P16556858116867610053

/-! ## A048206.P9432161702910062984

`A334947(A078312(n+1))+A000194(n)`
-/

namespace A048206.P9432161702910062984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A078312 (n + 1)).toNat + A000194 n

end

end A048206.P9432161702910062984

/-! ## A048206.P6762085893217068805

`A054990(A092101(n+1)-A100318(n+1))`
-/

namespace A048206.P6762085893217068805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (A092101 (n + 1) - A100318 (n + 1)).toNat

end

end A048206.P6762085893217068805

/-!
# A048207: a(n)=least m such that column m of T that contains n, array T given by A048201.

The programs for A048207, there is no canonical definition to state claims against.
-/

/-! ## A048207.P7980021898378488671

`A066099(A212099(n)+A016957(n))`
-/

namespace A048207.P7980021898378488671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A212099 n + A016957 n).toNat

end

end A048207.P7980021898378488671

/-! ## A048207.P13038412924134603419

`A250068(A218735(n+2)-A319430(n))`
-/

namespace A048207.P13038412924134603419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A218735 (n + 2) - A319430 n).toNat

end

end A048207.P13038412924134603419

/-! ## A048207.P1227391036139294788

`A089309(∑[A351307(n+1)²])`
-/

namespace A048207.P1227391036139294788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048207.P1227391036139294788

/-! ## A048207.P14613000473241663782

`A161904(or(1, ∑[A003057(n+2)]))`
-/

namespace A048207.P14613000473241663782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161904 (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A048207.P14613000473241663782

/-! ## A048207.P4945453038040915760

`A161906(A340792(record[A075362(n+2)]))`
-/

namespace A048207.P4945453038040915760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A340792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A048207.P4945453038040915760

/-!
# A048208: a(n) = T(2n-1,n), array T given by A048201.

The programs for A048208, there is no canonical definition to state claims against.
-/

/-! ## A048208.P15542715690409013755

`A004978(2*(n+1))-A004978(n+1)`
-/

namespace A048208.P15542715690409013755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (2 * (n + 1)) - A004978 (n + 1)

end

end A048208.P15542715690409013755

/-! ## A048208.P14189577608666125145

`record[A004978(A031424(n+1))]-A004978(n+1)`
-/

namespace A048208.P14189577608666125145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (A031424 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004978 (n + 1)

end

end A048208.P14189577608666125145

/-! ## A048208.P10104160410455719346

`A004978(2*n+2)+A001489(A004978(n+1))`
-/

namespace A048208.P10104160410455719346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (2 * n + 2) + A001489 (A004978 (n + 1)).toNat

end

end A048208.P10104160410455719346

/-! ## A048208.P3222482335282205443

`A048201(∑[4*n]+1)`
-/

namespace A048208.P3222482335282205443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048208.P3222482335282205443

/-! ## A048208.P3034512056701748096

`(A048201(A001844(n))^(1/2))²`
-/

namespace A048208.P3034512056701748096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A048201 (A001844 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A048208.P3034512056701748096

/-! ## A048208.P2732479276099713479

`A048201(A001844(n))%A061550(n)`
-/

namespace A048208.P2732479276099713479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048201 (A001844 n).toNat) (A061550 n)

end

end A048208.P2732479276099713479

/-! ## A048208.P10872432852981206858

`lcm(A033999(n), A048201(A001844(n)))`
-/

namespace A048208.P10872432852981206858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A048201 (A001844 n).toNat)

end

end A048208.P10872432852981206858

/-! ## A048208.P14477433757505199147

`A007318(C(2, n))*A048201(A001844(n))`
-/

namespace A048208.P14477433757505199147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A048201 (A001844 n).toNat

end

end A048208.P14477433757505199147

/-! ## A048208.P4336656878676796518

`A000041(n*char[1])+A048201(A001844(n))-1`
-/

namespace A048208.P4336656878676796518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n * (if ∃ j, f1 j = n then 1 else 0)) + (A048201 (A001844 n).toNat - 1)

end

end A048208.P4336656878676796518

/-! ## A048208.P7295233692544163789

`A000045(A020639(2*(n+1)))*A048201(A001844(n))`
-/

namespace A048208.P7295233692544163789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A048201 (A001844 n).toNat

end

end A048208.P7295233692544163789

/-!
# A048209: a(n)=Sum{T(n,j): j=1,2,...,n}, array T given by A048201.

The programs for A048209, there is no canonical definition to state claims against.
-/

/-! ## A048209.P11057198777551808494

`∑[(n+1)*A002048(n+1)]`
-/

namespace A048209.P11057198777551808494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048209.P11057198777551808494

/-! ## A048209.P1413078076149086209

`∑[(n+1)*Δ[A004978(n+1)]]`
-/

namespace A048209.P1413078076149086209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048209.P1413078076149086209

/-! ## A048209.P8704163174767460458

`∑[(A048210(n+1)-A002049(n+1))*(n+1)]`
-/

namespace A048209.P8704163174767460458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048210 (n + 1) - A002049 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048209.P8704163174767460458

/-! ## A048209.P11364655264713792853

`∑[(n+1)*(A004978(n+2)-A004978(n+1))]`
-/

namespace A048209.P11364655264713792853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004978 (n + 2) - A004978 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048209.P11364655264713792853

/-! ## A048209.P17573973736583647737

`∑[(n+1)*(A002049(n+1)+A048202(n+2)-A002049(n+2))]`
-/

namespace A048209.P17573973736583647737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002049 (n + 1) + (A048202 (n + 2) - A002049 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048209.P17573973736583647737

/-! ## A048209.P13391912833409879210

`∑[(n+1)*A048201(∑[n]+1)]`
-/

namespace A048209.P13391912833409879210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048201 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048209.P13391912833409879210

/-!
# A048210: T(n,1) + T(n,n), array T given by A048201.

The programs for A048210, there is no canonical definition to state claims against.
-/

/-! ## A048210.P1310009280465694587

`2*A004978(n+2)-A004978(n+1)-1`
-/

namespace A048210.P1310009280465694587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004978 (n + 2) - A004978 (n + 1) - 1

end

end A048210.P1310009280465694587

/-! ## A048210.P9699537615226600155

`A002049(n+1)+A002048(n+1)`
-/

namespace A048210.P9699537615226600155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + A002048 (n + 1)

end

end A048210.P9699537615226600155

/-! ## A048210.P14693779096005989255

`A002049(n+1)+Δ[A004978(n+1)]`
-/

namespace A048210.P14693779096005989255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048210.P14693779096005989255

/-! ## A048210.P11840184135898215700

`A002048(n+1)+A004978(n+2)-1`
-/

namespace A048210.P11840184135898215700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1) + (A004978 (n + 2) - 1)

end

end A048210.P11840184135898215700

/-! ## A048210.P17218420110849075780

`Δ[A004978(n+1)]+∑[A002048(n+1)]`
-/

namespace A048210.P17218420110849075780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A048210.P17218420110849075780

/-! ## A048210.P1762267072056343035

`A002049(n+1)+A004978(n+2)-A004978(n+1)`
-/

namespace A048210.P1762267072056343035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + (A004978 (n + 2) - A004978 (n + 1))

end

end A048210.P1762267072056343035

/-! ## A048210.P6502172502592521081

`A002049(n+1)+A048203(n+3)-A048202(n+3)`
-/

namespace A048210.P6502172502592521081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + (A048203 (n + 3) - A048202 (n + 3))

end

end A048210.P6502172502592521081

/-! ## A048210.P10840983033110113915

`A004978(n+1)+A004273(A002048(n+1))`
-/

namespace A048210.P10840983033110113915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1) + A004273 (A002048 (n + 1)).toNat

end

end A048210.P10840983033110113915

/-! ## A048210.P8237799538107095585

`A048201(A000217(n+1))+A002048(n+1)`
-/

namespace A048210.P8237799538107095585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (A000217 (n + 1)).toNat + A002048 (n + 1)

end

end A048210.P8237799538107095585

/-!
# A048211: Number of distinct resistances that can be produced from a circuit of n equal resistors using only series and parallel combinations.

The programs for A048211, there is no canonical definition to state claims against.
-/

/-! ## A048211.P6589423676354840371

`A176497(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A048211.P6589423676354840371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176497 (n + 1) + 2 * a (n - 1)

end

end A048211.P6589423676354840371

/-! ## A048211.P3140504472327752273

`A238826(n+1)+A185284((1-n)²)`
-/

namespace A048211.P3140504472327752273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238826 (n + 1) + A185284 ((1 - (n : ℤ)) ^ 2).toNat

end

end A048211.P3140504472327752273

/-! ## A048211.P17247236019132290236

`A023193(A182453(n)+A000079(n))`
-/

namespace A048211.P17247236019132290236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A182453 n + A000079 n).toNat

end

end A048211.P17247236019132290236

/-! ## A048211.P14849244719078542952

`A023193(A182453(n)+A008859(n))`
-/

namespace A048211.P14849244719078542952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A182453 n + A008859 n).toNat

end

end A048211.P14849244719078542952

/-!
# A048213: a(n)=T(n,1), array T given by A048212.

The programs for A048213, there is no canonical definition to state claims against.
-/

/-! ## A048213.P5187417818767073770

`Δ[A004979(n+1)]`
-/

namespace A048213.P5187417818767073770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048213.P5187417818767073770

/-! ## A048213.P7988360972096113849

`A048214(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A048213.P7988360972096113849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048214 (n + 1) - a (n - 1)

end

end A048213.P7988360972096113849

/-! ## A048213.P14863416410276887735

`A048223(n+1)-A048216(n+1)`
-/

namespace A048213.P14863416410276887735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048223 (n + 1) - A048216 (n + 1)

end

end A048213.P14863416410276887735

/-! ## A048213.P622931315702741253

`A004979(n+2)-A004979(n+1)`
-/

namespace A048213.P622931315702741253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 2) - A004979 (n + 1)

end

end A048213.P622931315702741253

/-! ## A048213.P9272899642245634806

`A048215(n+3)-A048214(n+3)`
-/

namespace A048213.P9272899642245634806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048215 (n + 3) - A048214 (n + 3)

end

end A048213.P9272899642245634806

/-! ## A048213.P1280038153907193943

`A000038(n)+Δ[A048216(A028310(n))]`
-/

namespace A048213.P1280038153907193943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A048213.P1280038153907193943

/-! ## A048213.P13387027561550328780

`A048216(n+1)+A000038(n)-A048216(A028310(n))`
-/

namespace A048213.P13387027561550328780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (A000038 n - A048216 (A028310 n).toNat)

end

end A048213.P13387027561550328780

/-! ## A048213.P2476678357512939450

`A048214(n+2)-Δ[A048216(n+1)]`
-/

namespace A048213.P2476678357512939450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048214 (n + 2) - (f1 (n + 1) - f1 n)

end

end A048213.P2476678357512939450

/-! ## A048213.P8517876727254957391

`A048216(n+1)+A048214(n+2)-A048216(n+2)`
-/

namespace A048213.P8517876727254957391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (A048214 (n + 2) - A048216 (n + 2))

end

end A048213.P8517876727254957391

/-! ## A048213.P15739368450726853671

`Δ[A048217(n+1)-A048214(n+2)]`
-/

namespace A048213.P15739368450726853671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 1) - A048214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048213.P15739368450726853671

/-! ## A048213.P2390548921180357901

`Δ[A048218(n+1)-A048215(n+3)]`
-/

namespace A048213.P2390548921180357901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048218 (n + 1) - A048215 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048213.P2390548921180357901

/-! ## A048213.P3976018829629631300

`A048212(∑[n]+1)`
-/

namespace A048213.P3976018829629631300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048213.P3976018829629631300

/-!
# A048214: a(n)=T(n,2), array T given by A048212.

The programs for A048214, there is no canonical definition to state claims against.
-/

/-! ## A048214.P2419337869426584814

`A004979(n+3)-A004979(n+1)`
-/

namespace A048214.P2419337869426584814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 3) - A004979 (n + 1)

end

end A048214.P2419337869426584814

/-! ## A048214.P1752090636188772018

`A048213(n+1)+A048213(n+2)`
-/

namespace A048214.P1752090636188772018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (n + 1) + A048213 (n + 2)

end

end A048214.P1752090636188772018

/-! ## A048214.P14324121953413899946

`Δ[A048216(n+1)+A004979(n+1)]`
-/

namespace A048214.P14324121953413899946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + A004979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048214.P14324121953413899946

/-! ## A048214.P15626550772780897410

`Δ[A048216(n+1)]+A048223(n+1)-A048216(n+1)`
-/

namespace A048214.P15626550772780897410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A048223 (n + 1) - A048216 (n + 1))

end

end A048214.P15626550772780897410

/-! ## A048214.P1032982810115282888

`A048217(n+1)+A048215(n+3)-A048217(n+2)`
-/

namespace A048214.P1032982810115282888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 1) + (A048215 (n + 3) - A048217 (n + 2))

end

end A048214.P1032982810115282888

/-! ## A048214.P16303918282865486365

`Δ[A048216(n+1)+A048218(n+1)-A048215(n+3)]`
-/

namespace A048214.P16303918282865486365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (A048218 (n + 1) - A048215 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048214.P16303918282865486365

/-! ## A048214.P537342103136562608

`A048212(∑[n+1]+2)`
-/

namespace A048214.P537342103136562608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048214.P537342103136562608

/-!
# A048215: a(n)=T(n,3), array T given by A048212.

The programs for A048215, there is no canonical definition to state claims against.
-/

/-! ## A048215.P13041541020336201341

`A004979(n+4)-A004979(n+1)`
-/

namespace A048215.P13041541020336201341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 4) - A004979 (n + 1)

end

end A048215.P13041541020336201341

/-! ## A048215.P13725093788631804906

`Δ[A004979(n+1)+∑[A048214(n+2)]]`
-/

namespace A048215.P13725093788631804906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048214 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048215.P13725093788631804906

/-! ## A048215.P6745989727775183683

`A048214(n+3)+A048213(n+1)`
-/

namespace A048215.P6745989727775183683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048214 (n + 3) + A048213 (n + 1)

end

end A048215.P6745989727775183683

/-! ## A048215.P6799193008480642288

`A048223(n+1)+A048214(n+3)-A048216(n+1)`
-/

namespace A048215.P6799193008480642288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048223 (n + 1) + (A048214 (n + 3) - A048216 (n + 1))

end

end A048215.P6799193008480642288

/-! ## A048215.P1921716731326891757

`A048214(n+2)+Δ[A048217(n+1)]`
-/

namespace A048215.P1921716731326891757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048214 (n + 2) + (f1 (n + 1) - f1 n)

end

end A048215.P1921716731326891757

/-! ## A048215.P16949595367665359989

`A048213(n+1)+A048213(n+2)+A048213(n+3)`
-/

namespace A048215.P16949595367665359989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (n + 1) + (A048213 (n + 2) + A048213 (n + 3))

end

end A048215.P16949595367665359989

/-! ## A048215.P13503411737819657160

`A048214(n+2)+A048217(n+2)-A048217(n+1)`
-/

namespace A048215.P13503411737819657160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048214 (n + 2) + (A048217 (n + 2) - A048217 (n + 1))

end

end A048215.P13503411737819657160

/-! ## A048215.P1311104313585169968

`A048212(∑[n+2]+4)`
-/

namespace A048215.P1311104313585169968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048215.P1311104313585169968

/-!
# A048216: a(n) = T(n,n), where array T is given by A048212.

The programs for A048216, there is no canonical definition to state claims against.
-/

/-! ## A048216.P7491171710841075296

`A004979(n+2)-1`
-/

namespace A048216.P7491171710841075296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 2) - 1

end

end A048216.P7491171710841075296

/-! ## A048216.P2626668732991710306

`∑[A048213(n+1)]`
-/

namespace A048216.P2626668732991710306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048216.P2626668732991710306

/-! ## A048216.P8148219177329483927

`∑[abs(Δ[A004979(n+1)])]`
-/

namespace A048216.P8148219177329483927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048216.P8148219177329483927

/-! ## A048216.P3846739392519843569

`∑[A048214(n+1)-a(n-1)]` with `a(0)=2`
-/

namespace A048216.P3846739392519843569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A048214 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048216.P3846739392519843569

/-! ## A048216.P9107475795686498525

`A057428(n+1)+A004979(n+2)`
-/

namespace A048216.P9107475795686498525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A004979 (n + 2)

end

end A048216.P9107475795686498525

/-! ## A048216.P6479688454493132582

`A048223(n+1)-A048213(n+1)`
-/

namespace A048216.P6479688454493132582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048223 (n + 1) - A048213 (n + 1)

end

end A048216.P6479688454493132582

/-! ## A048216.P12412711282882250077

`∑[A048214(n+2)]-A048217(n+1)`
-/

namespace A048216.P12412711282882250077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048217 (n + 1)

end

end A048216.P12412711282882250077

/-! ## A048216.P12155186894548971139

`A048217(n+2)+2-A048214(n+3)`
-/

namespace A048216.P12155186894548971139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 2) + (2 - A048214 (n + 3))

end

end A048216.P12155186894548971139

/-! ## A048216.P14520665692919924348

`∑[A048212(∑[n]+1)]`
-/

namespace A048216.P14520665692919924348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048216.P14520665692919924348

/-! ## A048216.P11674360860787671403

`A048212(∑[n+1])`
-/

namespace A048216.P11674360860787671403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048216.P11674360860787671403

/-!
# A048217: a(n)=T(n+1,n), array T given by A048212.

The programs for A048217, there is no canonical definition to state claims against.
-/

/-! ## A048217.P10299590925409264968

`A004979(n+3)-3`
-/

namespace A048217.P10299590925409264968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 3) - 3

end

end A048217.P10299590925409264968

/-! ## A048217.P16242766588005097910

`∑[A048213(n+2)]`
-/

namespace A048217.P16242766588005097910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048217.P16242766588005097910

/-! ## A048217.P2707290841152354954

`A048216(n+2)-2`
-/

namespace A048217.P2707290841152354954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 2) - 2

end

end A048217.P2707290841152354954

/-! ## A048217.P8524924103958935201

`∑[abs(Δ[A048216(n+1)])]`
-/

namespace A048217.P8524924103958935201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048217.P8524924103958935201

/-! ## A048217.P12955705338442824708

`∑[abs(Δ[A004979(n+2)])]`
-/

namespace A048217.P12955705338442824708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048217.P12955705338442824708

/-! ## A048217.P6125762768638738567

`record[A048213(n)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A048217.P6125762768638738567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A048213 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048217.P6125762768638738567

/-! ## A048217.P3232539855287118670

`A048223(n+2)-(A048213(n+2)+2)`
-/

namespace A048217.P3232539855287118670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048223 (n + 2) - (A048213 (n + 2) + 2)

end

end A048217.P3232539855287118670

/-! ## A048217.P1440535473475214724

`record[Δ[A048216(A025581(n)+1)]]`
-/

namespace A048217.P1440535473475214724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (A025581 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048217.P1440535473475214724

/-! ## A048217.P15772343896108763262

`A048212(∑[n+2])`
-/

namespace A048217.P15772343896108763262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048217.P15772343896108763262

/-! ## A048217.P14399721970967037322

`A023444(A048216(n+2))`
-/

namespace A048217.P14399721970967037322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A048216 (n + 2)).toNat

end

end A048217.P14399721970967037322

/-!
# A048218: a(n)=T(n+2,n), array T given by A048212.

The programs for A048218, there is no canonical definition to state claims against.
-/

/-! ## A048218.P16528730077622307646

`A004979(n+4)-4`
-/

namespace A048218.P16528730077622307646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 4) - 4

end

end A048218.P16528730077622307646

/-! ## A048218.P9806542607670885452

`∑[A048213(n+3)]`
-/

namespace A048218.P9806542607670885452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048218.P9806542607670885452

/-! ## A048218.P15287441660821002592

`A048217(n+2)-1`
-/

namespace A048218.P15287441660821002592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 2) - 1

end

end A048218.P15287441660821002592

/-! ## A048218.P12246262516203471217

`A048216(n+3)-3`
-/

namespace A048218.P12246262516203471217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 3) - 3

end

end A048218.P12246262516203471217

/-! ## A048218.P5064134849153302230

`∑[abs(Δ[A048217(n+1)])]`
-/

namespace A048218.P5064134849153302230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048218.P5064134849153302230

/-! ## A048218.P6234333839113244274

`∑[abs(Δ[A048216(n+2)])]`
-/

namespace A048218.P6234333839113244274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048218.P6234333839113244274

/-! ## A048218.P8370730988098719329

`∑[A000027(Δ[A048217(n+1)])]`
-/

namespace A048218.P8370730988098719329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048218.P8370730988098719329

/-! ## A048218.P718740537821069195

`∑[Δ[A048216(n+2)]%A017610(n)]`
-/

namespace A048218.P718740537821069195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017610 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048218.P718740537821069195

/-! ## A048218.P16675375597204192145

`∑[A048215(n+3)-A048214(n+2)]`
-/

namespace A048218.P16675375597204192145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048215 (n + 3) - A048214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048218.P16675375597204192145

/-! ## A048218.P11430014184863331715

`record[Δ[A048216(A025581(n)+2)]]`
-/

namespace A048218.P11430014184863331715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (A025581 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048218.P11430014184863331715

/-! ## A048218.P14778211909073517866

`A048212(∑[n+3]+1)`
-/

namespace A048218.P14778211909073517866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048218.P14778211909073517866

/-!
# A048219: a(n)=least m such that row m of T contains n, array T given by A048212.

The programs for A048219, there is no canonical definition to state claims against.
-/

/-! ## A048219.P18121696189184899646

`A000120(A333801(n+1)+A034386(n))`
-/

namespace A048219.P18121696189184899646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A333801 (n + 1) + A034386 n).toNat

end

end A048219.P18121696189184899646

/-! ## A048219.P17267563405751044277

`A181572(A175265(n+1)%A048223(n+1))`
-/

namespace A048219.P17267563405751044277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181572 (Int.tmod (A175265 (n + 1)) (A048223 (n + 1))).toNat

end

end A048219.P17267563405751044277

/-! ## A048219.P15839826434126726250

`A181572(A175265(n+1))`
-/

namespace A048219.P15839826434126726250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181572 (A175265 (n + 1)).toNat

end

end A048219.P15839826434126726250

/-! ## A048219.P8656737885214492593

`A000120(A053810(n+1)-A289445(n+1))`
-/

namespace A048219.P8656737885214492593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053810 (n + 1) - A289445 (n + 1)).toNat

end

end A048219.P8656737885214492593

/-! ## A048219.P6969861864248099396

`A182535(A135737(2*(n+2))+A000129(n))`
-/

namespace A048219.P6969861864248099396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (A135737 (2 * (n + 2)) + A000129 n).toNat

end

end A048219.P6969861864248099396

/-!
# A048220: a(n)=least m such that column m of T contains n, array T given by A048212.

The programs for A048220, there is no canonical definition to state claims against.
-/

/-! ## A048220.P14597319279012310805

`A001876(A248692(n+1)^A287438(n+1))`
-/

namespace A048220.P14597319279012310805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A248692 (n + 1) : ℚ) ^ (A287438 (n + 1) : ℤ))).toNat

end

end A048220.P14597319279012310805

/-! ## A048220.P14916563799345019078

`A368216(A242706(n+1))`
-/

namespace A048220.P14916563799345019078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368216 (A242706 (n + 1)).toNat

end

end A048220.P14916563799345019078

/-! ## A048220.P17738938651483443918

`A103921(4^A241917(n+1))`
-/

namespace A048220.P17738938651483443918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A241917 (n + 1) : ℤ))).toNat

end

end A048220.P17738938651483443918

/-! ## A048220.P384534021561189138

`A017980(A243056(n+1)^A172369(n))`
-/

namespace A048220.P384534021561189138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 (SequenceMachineLib.roundAway ((A243056 (n + 1) : ℚ) ^ (A172369 n : ℤ))).toNat

end

end A048220.P384534021561189138

/-!
# A048221: a(n)=T(2n-1,n), array T given by A048212.

The programs for A048221, there is no canonical definition to state claims against.
-/

/-! ## A048221.P392301175382194618

`A004979(2*(n+1))-A004979(n+1)`
-/

namespace A048221.P392301175382194618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (2 * (n + 1)) - A004979 (n + 1)

end

end A048221.P392301175382194618

/-! ## A048221.P7237279902920353817

`A048212(∑[4*n]+1)`
-/

namespace A048221.P7237279902920353817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048221.P7237279902920353817

/-! ## A048221.P5096280198771428213

`or(char[1], A048212(A001844(n)))`
-/

namespace A048221.P5096280198771428213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048212 (A001844 n).toNat)

end

end A048221.P5096280198771428213

/-! ## A048221.P10183142519604961772

`∑{d}[A048212(A001844(n)), A000010(#)]`
-/

namespace A048221.P10183142519604961772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A048221.P10183142519604961772

/-! ## A048221.P3855951224465151182

`A048212(A001844(n))*A054977(n+1)`
-/

namespace A048221.P3855951224465151182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (A001844 n).toNat * A054977 (n + 1)

end

end A048221.P3855951224465151182

/-! ## A048221.P8019998938212665398

`A048212(A001844(n))%A031748(n+1)`
-/

namespace A048221.P8019998938212665398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048212 (A001844 n).toNat) (A031748 (n + 1))

end

end A048221.P8019998938212665398

/-! ## A048221.P13659155490393026543

`A007318(C(2, n))*A048212(A001844(n))`
-/

namespace A048221.P13659155490393026543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A048212 (A001844 n).toNat

end

end A048221.P13659155490393026543

/-! ## A048221.P6153194294407178635

`A007318(and(3, -n))*A048212(A001844(n))`
-/

namespace A048221.P6153194294407178635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A048212 (A001844 n).toNat

end

end A048221.P6153194294407178635

/-! ## A048221.P9267043641454742119

`A048212(A001844(n))+A008683(12*n+8)`
-/

namespace A048221.P9267043641454742119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (A001844 n).toNat + A008683 (12 * n + 8)

end

end A048221.P9267043641454742119

/-! ## A048221.P18385399589586286126

`A000041(C(2, n+2))*A048212(A001844(n))`
-/

namespace A048221.P18385399589586286126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A048212 (A001844 n).toNat

end

end A048221.P18385399589586286126

/-!
# A048222: a(n)=Sum{T(n,j): j=1,2,...,n}, array T given by A048212.

The programs for A048222, there is no canonical definition to state claims against.
-/

/-! ## A048222.P2946409771796594159

`∑[(n+1)*A048213(n+1)]`
-/

namespace A048222.P2946409771796594159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048222.P2946409771796594159

/-! ## A048222.P9583669242428485370

`∑[(n+1)*Δ[A004979(n+1)]]`
-/

namespace A048222.P9583669242428485370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048222.P9583669242428485370

/-! ## A048222.P11260402895341057821

`∑[(A048223(n+1)-A048216(n+1))*(n+1)]`
-/

namespace A048222.P11260402895341057821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048223 (n + 1) - A048216 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048222.P11260402895341057821

/-! ## A048222.P2261537256200186455

`∑[(A004979(n+2)-A004979(n+1))*(n+1)]`
-/

namespace A048222.P2261537256200186455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004979 (n + 2) - A004979 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048222.P2261537256200186455

/-! ## A048222.P4114533406483593950

`∑[(A048215(n+3)-A048214(n+3))*(n+1)]`
-/

namespace A048222.P4114533406483593950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048215 (n + 3) - A048214 (n + 3)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048222.P4114533406483593950

/-! ## A048222.P11553553421583905219

`∑[(n+1)*A048212(∑[n]+1)]`
-/

namespace A048222.P11553553421583905219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048212 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048222.P11553553421583905219

/-!
# A048223: a(n)=T(n,1)+T(n,n), array T given by A048212.

The programs for A048223, there is no canonical definition to state claims against.
-/

/-! ## A048223.P4531532213632303906

`2*A004979(n+2)-A004979(n+1)-1`
-/

namespace A048223.P4531532213632303906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004979 (n + 2) - A004979 (n + 1) - 1

end

end A048223.P4531532213632303906

/-! ## A048223.P12301284019275785088

`A048216(n+1)+A048213(n+1)`
-/

namespace A048223.P12301284019275785088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + A048213 (n + 1)

end

end A048223.P12301284019275785088

/-! ## A048223.P13725117181721093896

`A048216(n+1)+Δ[A004979(n+1)]`
-/

namespace A048223.P13725117181721093896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048223.P13725117181721093896

/-! ## A048223.P1388309731323278732

`A004979(n+2)+A048213(n+1)-1`
-/

namespace A048223.P1388309731323278732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 2) + (A048213 (n + 1) - 1)

end

end A048223.P1388309731323278732

/-! ## A048223.P16400197706418982578

`Δ[A004979(n+1)]+∑[A048213(n+1)]`
-/

namespace A048223.P16400197706418982578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A048223.P16400197706418982578

/-! ## A048223.P15553257415627856389

`A048216(n+1)+A004979(n+2)-A004979(n+1)`
-/

namespace A048223.P15553257415627856389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (A004979 (n + 2) - A004979 (n + 1))

end

end A048223.P15553257415627856389

/-! ## A048223.P1510193656832850749

`A048216(n+1)+A048215(n+3)-A048214(n+3)`
-/

namespace A048223.P1510193656832850749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (A048215 (n + 3) - A048214 (n + 3))

end

end A048223.P1510193656832850749

/-! ## A048223.P4908783638169344000

`A048216(n+1)+A048214(n+2)-Δ[A048216(n+1)]`
-/

namespace A048223.P4908783638169344000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (A048214 (n + 2) - (f1 (n + 1) - f1 n))

end

end A048223.P4908783638169344000

/-! ## A048223.P6642969471509816327

`A048216(n+1)+Δ[A048218(n+1)-A048215(n+3)]`
-/

namespace A048223.P6642969471509816327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048218 (n + 1) - A048215 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048223.P6642969471509816327

/-! ## A048223.P5170002222384183915

`A004273(A004979(n+2))-A004979(n+1)`
-/

namespace A048223.P5170002222384183915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004979 (n + 2)).toNat - A004979 (n + 1)

end

end A048223.P5170002222384183915

/-!
# A048224: a(n)=least number m such that m-a(n-1)<>a(j)-a(k) for all j,k less than m; a(1)=1, a(2)=4.

The programs for A048224, there is no canonical definition to state claims against.
-/

/-! ## A048224.P106866033287345764

`A048226(n)+a(n-1)` with `a(0)=1`
-/

namespace A048224.P106866033287345764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048226 n + a (n - 1)

end

end A048224.P106866033287345764

/-! ## A048224.P15920301676192737364

`∑[A048226(abs(1-n)+1)]`
-/

namespace A048224.P15920301676192737364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048224.P15920301676192737364

/-! ## A048224.P13640106533412913006

`A048227(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A048224.P13640106533412913006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A048227 n + a (n - 2)

end

end A048224.P13640106533412913006

/-! ## A048224.P16889261249520956971

`∑[A048226(A028310(n))]-2`
-/

namespace A048224.P16889261249520956971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A048224.P16889261249520956971

/-! ## A048224.P16760786052694907995

`A048229(n+1)+1-A048226(n+1)`
-/

namespace A048224.P16760786052694907995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + (1 - A048226 (n + 1))

end

end A048224.P16760786052694907995

/-! ## A048224.P16478181339857271788

`1-(A048227(n+2)-A048229(n+2))`
-/

namespace A048224.P16478181339857271788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048227 (n + 2) - A048229 (n + 2))

end

end A048224.P16478181339857271788

/-! ## A048224.P2384726444000712665

`A048236(n+1)-A004273(A048226(n+1))`
-/

namespace A048224.P2384726444000712665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048236 (n + 1) - A004273 (A048226 (n + 1)).toNat

end

end A048224.P2384726444000712665

/-!
# A048226: a(n)=T(n,1), array T given by A048225.

The programs for A048226, there is no canonical definition to state claims against.
-/

/-! ## A048226.P14276697195234581704

`Δ[A048224(n+1)]`
-/

namespace A048226.P14276697195234581704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048226.P14276697195234581704

/-! ## A048226.P6042557947074385477

`A048227(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A048226.P6042557947074385477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A048227 (n + 1) - a (n - 1)

end

end A048226.P6042557947074385477

/-! ## A048226.P5438405701927990519

`A048236(n+1)-A048229(n+1)`
-/

namespace A048226.P5438405701927990519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048236 (n + 1) - A048229 (n + 1)

end

end A048226.P5438405701927990519

/-! ## A048226.P12579973240777310281

`A048224(n+2)-A048224(n+1)`
-/

namespace A048226.P12579973240777310281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 2) - A048224 (n + 1)

end

end A048226.P12579973240777310281

/-! ## A048226.P341315179993900055

`A048227(n+2)-Δ[A048229(n+1)]`
-/

namespace A048226.P341315179993900055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048227 (n + 2) - (f1 (n + 1) - f1 n)

end

end A048226.P341315179993900055

/-! ## A048226.P8489022986789593236

`A048229(n+1)+A048227(n+2)-A048229(n+2)`
-/

namespace A048226.P8489022986789593236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + (A048227 (n + 2) - A048229 (n + 2))

end

end A048226.P8489022986789593236

/-! ## A048226.P12358747181030189525

`A048228(n+3)-A048227(n+3)`
-/

namespace A048226.P12358747181030189525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048228 (n + 3) - A048227 (n + 3)

end

end A048226.P12358747181030189525

/-! ## A048226.P5246619201464075130

`Δ[A048230(n+1)-A048227(n+2)]`
-/

namespace A048226.P5246619201464075130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048230 (n + 1) - A048227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048226.P5246619201464075130

/-! ## A048226.P31415514174108570

`A048225(∑[n]+1)`
-/

namespace A048226.P31415514174108570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048226.P31415514174108570

/-!
# A048227: a(n)=T(n,2), array T given by A048225.

The programs for A048227, there is no canonical definition to state claims against.
-/

/-! ## A048227.P8361963922179056883

`A048226(n+1)+A048226(n+2)`
-/

namespace A048227.P8361963922179056883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 1) + A048226 (n + 2)

end

end A048227.P8361963922179056883

/-! ## A048227.P4857796499881145625

`A048224(n+3)-A048224(n+1)`
-/

namespace A048227.P4857796499881145625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 3) - A048224 (n + 1)

end

end A048227.P4857796499881145625

/-! ## A048227.P11829221706755582995

`Δ[A048229(n+1)+A048224(n+1)]`
-/

namespace A048227.P11829221706755582995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + A048224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048227.P11829221706755582995

/-! ## A048227.P1057426274318094353

`Δ[A048224(n+1)+A048224(n+2)]`
-/

namespace A048227.P1057426274318094353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1) + A048224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048227.P1057426274318094353

/-! ## A048227.P10395759128732668240

`A048228(n+3)-Δ[A048230(n+1)]`
-/

namespace A048227.P10395759128732668240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048228 (n + 3) - (f1 (n + 1) - f1 n)

end

end A048227.P10395759128732668240

/-! ## A048227.P6436603646459878424

`A048230(n+1)+A048228(n+3)-A048230(n+2)`
-/

namespace A048227.P6436603646459878424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048230 (n + 1) + (A048228 (n + 3) - A048230 (n + 2))

end

end A048227.P6436603646459878424

/-! ## A048227.P17734276393122499796

`A048225(∑[n+1]+2)`
-/

namespace A048227.P17734276393122499796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048227.P17734276393122499796

/-!
# A048228: a(n)=T(n,3), array T given by A048225.

The programs for A048228, there is no canonical definition to state claims against.
-/

/-! ## A048228.P2263955121478976070

`A048227(n+3)+A048226(n+1)`
-/

namespace A048228.P2263955121478976070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048227 (n + 3) + A048226 (n + 1)

end

end A048228.P2263955121478976070

/-! ## A048228.P17820876508607279625

`A048224(n+4)-A048224(n+1)`
-/

namespace A048228.P17820876508607279625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 4) - A048224 (n + 1)

end

end A048228.P17820876508607279625

/-! ## A048228.P11083959759902511091

`A048227(n+2)+Δ[A048230(n+1)]`
-/

namespace A048228.P11083959759902511091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048227 (n + 2) + (f1 (n + 1) - f1 n)

end

end A048228.P11083959759902511091

/-! ## A048228.P9564757309453908838

`A048227(n+3)+Δ[A048224(n+1)]`
-/

namespace A048228.P9564757309453908838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048227 (n + 3) + (f1 (n + 1) - f1 n)

end

end A048228.P9564757309453908838

/-! ## A048228.P17043591837689104832

`A048226(n+1)+A048226(n+2)+A048226(n+3)`
-/

namespace A048228.P17043591837689104832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 1) + (A048226 (n + 2) + A048226 (n + 3))

end

end A048228.P17043591837689104832

/-! ## A048228.P14331921855984350885

`A048236(n+1)+A048227(n+3)-A048229(n+1)`
-/

namespace A048228.P14331921855984350885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048236 (n + 1) + (A048227 (n + 3) - A048229 (n + 1))

end

end A048228.P14331921855984350885

/-! ## A048228.P5611166072617073670

`A048227(n+2)+A048230(n+2)-A048230(n+1)`
-/

namespace A048228.P5611166072617073670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048227 (n + 2) + (A048230 (n + 2) - A048230 (n + 1))

end

end A048228.P5611166072617073670

/-! ## A048228.P2354169524999242036

`A048225(∑[n+2]+4)`
-/

namespace A048228.P2354169524999242036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048228.P2354169524999242036

/-!
# A048229: a(n)=T(n,n), array T given by A048225.

The programs for A048229, there is no canonical definition to state claims against.
-/

/-! ## A048229.P15358222940078536643

`∑[A048226(n+1)]`
-/

namespace A048229.P15358222940078536643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048229.P15358222940078536643

/-! ## A048229.P11798490446634431603

`A048224(n+2)-1`
-/

namespace A048229.P11798490446634431603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 2) - 1

end

end A048229.P11798490446634431603

/-! ## A048229.P3100956387108274855

`∑[abs(Δ[A048224(n+1)])]`
-/

namespace A048229.P3100956387108274855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048229.P3100956387108274855

/-! ## A048229.P1491186976842254877

`∑[A048227(n+1)-a(n-1)]` with `a(0)=3`
-/

namespace A048229.P1491186976842254877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A048227 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048229.P1491186976842254877

/-! ## A048229.P8223220865826321726

`A048236(n+1)-A048226(n+1)`
-/

namespace A048229.P8223220865826321726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048236 (n + 1) - A048226 (n + 1)

end

end A048229.P8223220865826321726

/-! ## A048229.P14352183743158436744

`∑[A048227(n+2)]-A048230(n+1)`
-/

namespace A048229.P14352183743158436744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048230 (n + 1)

end

end A048229.P14352183743158436744

/-! ## A048229.P6993868334593343125

`A048236(n+1)+A048227(n+3)-A048228(n+3)`
-/

namespace A048229.P6993868334593343125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048236 (n + 1) + (A048227 (n + 3) - A048228 (n + 3))

end

end A048229.P6993868334593343125

/-! ## A048229.P8317875272961817654

`∑[A048225(∑[n]+1)]`
-/

namespace A048229.P8317875272961817654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048229.P8317875272961817654

/-! ## A048229.P17714150837246854463

`A048225(∑[n+1])`
-/

namespace A048229.P17714150837246854463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048229.P17714150837246854463

/-! ## A048229.P13598449347154523132

`A023443(A048224(n+2))`
-/

namespace A048229.P13598449347154523132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048224 (n + 2)).toNat

end

end A048229.P13598449347154523132

/-!
# A048230: a(n)=T(n+1,n), array T given by A048225.

The programs for A048230, there is no canonical definition to state claims against.
-/

/-! ## A048230.P16494122146775608082

`∑[A048226(n+2)]`
-/

namespace A048230.P16494122146775608082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048230.P16494122146775608082

/-! ## A048230.P16760693991953068107

`record[A048226(n)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A048230.P16760693991953068107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A048226 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048230.P16760693991953068107

/-! ## A048230.P14109410374150861406

`A048229(n+2)-3`
-/

namespace A048230.P14109410374150861406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 2) - 3

end

end A048230.P14109410374150861406

/-! ## A048230.P15463191622467992841

`A048224(n+3)-4`
-/

namespace A048230.P15463191622467992841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 3) - 4

end

end A048230.P15463191622467992841

/-! ## A048230.P10085078117830699420

`∑[abs(Δ[A048229(n+1)])]`
-/

namespace A048230.P10085078117830699420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048230.P10085078117830699420

/-! ## A048230.P18230442007475978772

`∑[abs(Δ[A048224(n+2)])]`
-/

namespace A048230.P18230442007475978772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048230.P18230442007475978772

/-! ## A048230.P8733069300559673045

`record[Δ[A048229(A004736(n+1))]]`
-/

namespace A048230.P8733069300559673045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048230.P8733069300559673045

/-! ## A048230.P11882256735961559373

`A048225(∑[n+2])`
-/

namespace A048230.P11882256735961559373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048230.P11882256735961559373

/-! ## A048230.P11179056503087408726

`A023445(A048229(n+2))`
-/

namespace A048230.P11179056503087408726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A048229 (n + 2)).toNat

end

end A048230.P11179056503087408726

/-!
# A048231: a(n)=T(n+2,n), array T given by A048225.

The programs for A048231, there is no canonical definition to state claims against.
-/

/-! ## A048231.P225316033113956162

`∑[A048226(n+3)]`
-/

namespace A048231.P225316033113956162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048231.P225316033113956162

/-! ## A048231.P11406895524268419017

`A048230(n+2)-1`
-/

namespace A048231.P11406895524268419017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048230 (n + 2) - 1

end

end A048231.P11406895524268419017

/-! ## A048231.P15393989754506729096

`A048229(n+3)-4`
-/

namespace A048231.P15393989754506729096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 3) - 4

end

end A048231.P15393989754506729096

/-! ## A048231.P12887447357702119311

`A048224(n+4)-5`
-/

namespace A048231.P12887447357702119311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 4) - 5

end

end A048231.P12887447357702119311

/-! ## A048231.P7640438881282230229

`∑[abs(Δ[A048230(n+1)])]`
-/

namespace A048231.P7640438881282230229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048230 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048231.P7640438881282230229

/-! ## A048231.P221430829056380383

`∑[abs(Δ[A048229(n+2)])]`
-/

namespace A048231.P221430829056380383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048231.P221430829056380383

/-! ## A048231.P2190671814053660834

`∑[A048228(n+3)-A048227(n+2)]`
-/

namespace A048231.P2190671814053660834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048228 (n + 3) - A048227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048231.P2190671814053660834

/-! ## A048231.P14952590855491341407

`record[Δ[A048229(A004736(n+1)+1)]]`
-/

namespace A048231.P14952590855491341407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (A004736 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048231.P14952590855491341407

/-! ## A048231.P6786970223968357646

`∑[A048225(A167614(n+1)-2)]`
-/

namespace A048231.P6786970223968357646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (A167614 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048231.P6786970223968357646

/-! ## A048231.P781364448035681304

`A048225(∑[n+3]+1)`
-/

namespace A048231.P781364448035681304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048231.P781364448035681304

/-!
# A048232: a(n) is the least m such that row m of T contains n, array T given by A048225.

The programs for A048232, there is no canonical definition to state claims against.
-/

/-! ## A048232.P15329106657113614250

`A000120(A004669(n+1)-A001105(n))`
-/

namespace A048232.P15329106657113614250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004669 (n + 1) - A001105 n).toNat

end

end A048232.P15329106657113614250

/-!
# A048233: a(n)=least m such that column m of T contains n, array T given by A048225.

The programs for A048233, there is no canonical definition to state claims against.
-/

/-! ## A048233.P13502524441553409361

`gcd(A057945(A329701(n)), A224917(n))`
-/

namespace A048233.P13502524441553409361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057945 (A329701 n).toNat) (A224917 n)

end

end A048233.P13502524441553409361

/-! ## A048233.P14708077835204570445

`A135278(A114290(n+11)%A008611(n+8))`
-/

namespace A048233.P14708077835204570445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (Int.tmod (A114290 (n + 11)) (A008611 (n + 8))).toNat

end

end A048233.P14708077835204570445

/-! ## A048233.P6054727373469578286

`gcd(A001227(3*n+5)*A159934(4*n+5), A159934(3*n+5))`
-/

namespace A048233.P6054727373469578286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (3 * n + 5) * A159934 (4 * n + 5)) (A159934 (3 * n + 5))

end

end A048233.P6054727373469578286

/-! ## A048233.P11858277064695922018

`A005361(A162348(n+1)*A245608(A163733(n+1)))`
-/

namespace A048233.P11858277064695922018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A162348 (n + 1) * A245608 (A163733 (n + 1)).toNat).toNat

end

end A048233.P11858277064695922018

/-! ## A048233.P18052309095382550533

`A066099(A003215(n)*A008925(n))`
-/

namespace A048233.P18052309095382550533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A003215 n * A008925 n).toNat

end

end A048233.P18052309095382550533

/-!
# A048234: a(n) = T(2n-1,n), array T given by A048225.

The programs for A048234, there is no canonical definition to state claims against.
-/

/-! ## A048234.P7385191342678774182

`A048224(2*(n+1))-A048224(n+1)`
-/

namespace A048234.P7385191342678774182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (2 * (n + 1)) - A048224 (n + 1)

end

end A048234.P7385191342678774182

/-! ## A048234.P1763761220191551244

`A048229(2*n+1)+A048226(n+1)-A048229(n+1)`
-/

namespace A048234.P1763761220191551244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (2 * n + 1) + (A048226 (n + 1) - A048229 (n + 1))

end

end A048234.P1763761220191551244

/-! ## A048234.P7863210983110799248

`A048225(∑[4*n]+1)`
-/

namespace A048234.P7863210983110799248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048234.P7863210983110799248

/-! ## A048234.P18026438600146193928

`xor(1, xor(1, A048225(A001844(n))))`
-/

namespace A048234.P18026438600146193928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A048225 (A001844 n).toNat))

end

end A048234.P18026438600146193928

/-! ## A048234.P4020383902978675218

`or(A000038(n), A048225((n+1)²+n²))`
-/

namespace A048234.P4020383902978675218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A048225 ((n + 1) ^ 2 + n ^ 2))

end

end A048234.P4020383902978675218

/-! ## A048234.P18249277656055720110

`A007318(C(2, n))*A048225(A001844(n))`
-/

namespace A048234.P18249277656055720110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A048225 (A001844 n).toNat

end

end A048234.P18249277656055720110

/-! ## A048234.P16827895734617042503

`A048225(A001844(n))%A000040(n+2)²`
-/

namespace A048234.P16827895734617042503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048225 (A001844 n).toNat) (A000040 (n + 2) ^ 2)

end

end A048234.P16827895734617042503

/-! ## A048234.P18172291733090188086

`A048225(A001844(n))+A008683(4*(n+1))`
-/

namespace A048234.P18172291733090188086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048225 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A048234.P18172291733090188086

/-! ## A048234.P17708443342547240269

`A048225(A001844(n))^A014963(10*(n+1))`
-/

namespace A048234.P17708443342547240269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048225 (A001844 n).toNat : ℚ) ^ (A014963 (10 * (n + 1)) : ℤ)

end

end A048234.P17708443342547240269

/-! ## A048234.P16437278583546036784

`A014963(20*(n+1))*A048225(A001844(n))`
-/

namespace A048234.P16437278583546036784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A048225 (A001844 n).toNat

end

end A048234.P16437278583546036784

/-!
# A048235: a(n)=Sum{T(n,j): j=1,2,...,n}, array T given by A048225.

The programs for A048235, there is no canonical definition to state claims against.
-/

/-! ## A048235.P5789765830124947584

`∑[(n+1)*A048226(n+1)]`
-/

namespace A048235.P5789765830124947584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048235.P5789765830124947584

/-! ## A048235.P7995667502838860256

`∑[(n+1)*Δ[A048224(n+1)]]`
-/

namespace A048235.P7995667502838860256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048235.P7995667502838860256

/-! ## A048235.P14047531592808237082

`∑[(A048236(n+1)-A048229(n+1))*(n+1)]`
-/

namespace A048235.P14047531592808237082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048236 (n + 1) - A048229 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048235.P14047531592808237082

/-! ## A048235.P7120108591764647825

`∑[(A048224(n+2)-A048224(n+1))*(n+1)]`
-/

namespace A048235.P7120108591764647825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048224 (n + 2) - A048224 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048235.P7120108591764647825

/-! ## A048235.P16765454320686698199

`∑[(n+1)*(A048229(n+1)+A048227(n+2)-A048229(n+2))]`
-/

namespace A048235.P16765454320686698199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A048229 (n + 1) + (A048227 (n + 2) - A048229 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048235.P16765454320686698199

/-! ## A048235.P16094873107236675102

`∑[(n+1)*A048225(∑[n]+1)]`
-/

namespace A048235.P16094873107236675102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048225 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048235.P16094873107236675102

/-!
# A048236: a(n)=T(n,1)+T(n,n), array T given by A048225.

The programs for A048236, there is no canonical definition to state claims against.
-/

/-! ## A048236.P7976296800164603283

`A048226(n+1)+∑[A048226(n+1)]`
-/

namespace A048236.P7976296800164603283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048236.P7976296800164603283

/-! ## A048236.P943854384664800758

`A048229(n+1)+A048226(n+1)`
-/

namespace A048236.P943854384664800758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + A048226 (n + 1)

end

end A048236.P943854384664800758

/-! ## A048236.P5567116776558108755

`A048229(n+1)+Δ[A048224(n+1)]`
-/

namespace A048236.P5567116776558108755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048236.P5567116776558108755

/-! ## A048236.P871187127051686566

`A048226(n+1)+A048224(n+2)-1`
-/

namespace A048236.P871187127051686566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048226 (n + 1) + (A048224 (n + 2) - 1)

end

end A048236.P871187127051686566

/-! ## A048236.P14591484093209743096

`A048229(n+1)+A048224(n+2)-A048224(n+1)`
-/

namespace A048236.P14591484093209743096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + (A048224 (n + 2) - A048224 (n + 1))

end

end A048236.P14591484093209743096

/-! ## A048236.P13970782251266596219

`A048229(n+1)+A048227(n+2)-Δ[A048229(n+1)]`
-/

namespace A048236.P13970782251266596219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + (A048227 (n + 2) - (f1 (n + 1) - f1 n))

end

end A048236.P13970782251266596219

/-! ## A048236.P16834044026048689133

`A048229(n+1)+A048228(n+3)-A048227(n+3)`
-/

namespace A048236.P16834044026048689133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048229 (n + 1) + (A048228 (n + 3) - A048227 (n + 3))

end

end A048236.P16834044026048689133

/-! ## A048236.P5089549455739609303

`A048224(n+1)+A004273(A048226(n+1))`
-/

namespace A048236.P5089549455739609303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048224 (n + 1) + A004273 (A048226 (n + 1)).toNat

end

end A048236.P5089549455739609303

/-!
# A048241: Number of colors that can be mixed with n >= 0 units of yellow, blue, red.

The programs for A048241, there is no canonical definition to state claims against.
-/

/-! ## A048241.P18336225341442253180

`A048134(n)+1`
-/

namespace A048241.P18336225341442253180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048134 n + 1

end

end A048241.P18336225341442253180

/-! ## A048241.P15650583053597339971

`∑[A048240(n)]`
-/

namespace A048241.P15650583053597339971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048241.P15650583053597339971

/-! ## A048241.P16706339569048895539

`n-(A023443(n)-A048134(n))`
-/

namespace A048241.P16706339569048895539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A048134 n)

end

end A048241.P16706339569048895539

/-! ## A048241.P14869588932758415279

`1-(A218858(A218858(n))-A048134(n))`
-/

namespace A048241.P14869588932758415279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A218858 (A218858 n).toNat - A048134 n)

end

end A048241.P14869588932758415279

/-! ## A048241.P6169982281189040501

`A005728(n)-(A002088(n)-A048134(n))`
-/

namespace A048241.P6169982281189040501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - (A002088 n - A048134 n)

end

end A048241.P6169982281189040501

/-! ## A048241.P16450662008442689418

`A049632(n)+∑[A102309(n)]`
-/

namespace A048241.P16450662008442689418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048241.P16450662008442689418

/-!
# A048242: Numbers that are not the sum of two abundant numbers (not necessarily distinct).

The programs for A048242, there is no canonical definition to state claims against.
-/

/-! ## A048242.P8320532538183337984

`lt[A112215(n), A010674(A008578(2*(n+1)))]`
-/

namespace A048242.P8320532538183337984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 (A008578 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P8320532538183337984

/-! ## A048242.P5456176265712969023

`lt[(n+1)*A282568(n), A283550(n+1)]`
-/

namespace A048242.P5456176265712969023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A282568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P5456176265712969023

/-! ## A048242.P12983145097867306433

`lt[A282568(n), A001222(A283550(n+1))]`
-/

namespace A048242.P12983145097867306433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A283550 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P12983145097867306433

/-! ## A048242.P14973156239565917203

`lt[A282568(n), A237271(A283550(n+1)+1)]`
-/

namespace A048242.P14973156239565917203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A283550 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P14973156239565917203

/-! ## A048242.P2530883741943400511

`lt[A282568(n), A020639(A253909(n))]`
-/

namespace A048242.P2530883741943400511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P2530883741943400511

/-! ## A048242.P6390413789314316760

`eq[A001065(A097798(n+1)+1), A282568(n+1)]+1`
-/

namespace A048242.P6390413789314316760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A097798 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048242.P6390413789314316760

/-! ## A048242.P11022398056286590398

`lt[A282568(n), A020639(A066874(n+1))]`
-/

namespace A048242.P11022398056286590398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066874 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P11022398056286590398

/-! ## A048242.P12760980987975376051

`lt[A097798(n), A140356(A226602(n))]`
-/

namespace A048242.P12760980987975376051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P12760980987975376051

/-! ## A048242.P3082106005735486806

`lt[A282568(n), A140356(A226602(n))]`
-/

namespace A048242.P3082106005735486806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048242.P3082106005735486806

/-!
# A048243: Number of non-unitary divisors of binomial(n, floor(n/2)).

The programs for A048243, the canonical program `A048243.P9528040760750464915` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048243 has offset 1).

The definition of A048243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048243.P9528040760750464915

`A034974(n+1)-A039593(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A048243

/-- `A034974(n+1)-A039593(n+1)` -/
def P9528040760750464915.Spec : Prop :=
  ∀ n, P9528040760750464915.a n = A048243 (n + 1)

theorem P9528040760750464915.correct : P9528040760750464915.Spec := by
  intro n
  simp only [A048243, Nat.add_sub_cancel]

end A048243

/-! ## A048243.P14084614727267319563

`A034974(n+1)-A000079(A034973(n+1))`
-/

namespace A048243.P14084614727267319563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (n + 1) - A000079 (A034973 (n + 1)).toNat

end

end A048243.P14084614727267319563

namespace A048243

/-- `A034974(n+1)-A000079(A034973(n+1))` -/
def P14084614727267319563.Spec : Prop :=
  ∀ n, P14084614727267319563.a n = A048243 (n + 1)

end A048243

/-! ## A048243.P11812898617250841062

`A039593(n+1)-A048244(n+1)`
-/

namespace A048243.P11812898617250841062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1) - A048244 (n + 1)

end

end A048243.P11812898617250841062

namespace A048243

/-- `A039593(n+1)-A048244(n+1)` -/
def P11812898617250841062.Spec : Prop :=
  ∀ n, P11812898617250841062.a n = A048243 (n + 1)

end A048243

/-! ## A048243.P13953968579770107392

`A000079(A034973(n+1))-A048244(n+1)`
-/

namespace A048243.P13953968579770107392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1)).toNat - A048244 (n + 1)

end

end A048243.P13953968579770107392

namespace A048243

/-- `A000079(A034973(n+1))-A048244(n+1)` -/
def P13953968579770107392.Spec : Prop :=
  ∀ n, P13953968579770107392.a n = A048243 (n + 1)

end A048243

/-! ## A048243.P9410258433470209047

`A048275(n+1)-(A039593(n+1)+A020740(n+1))`
-/

namespace A048243.P9410258433470209047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - (A039593 (n + 1) + A020740 (n + 1))

end

end A048243.P9410258433470209047

namespace A048243

/-- `A048275(n+1)-(A039593(n+1)+A020740(n+1))` -/
def P9410258433470209047.Spec : Prop :=
  ∀ n, P9410258433470209047.a n = A048243 (n + 1)

end A048243

/-! ## A048243.P12237358536502102327

`A048275(n+1)-(A020740(n+1)+A000079(A034973(n+1)))`
-/

namespace A048243.P12237358536502102327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - (A020740 (n + 1) + A000079 (A034973 (n + 1)).toNat)

end

end A048243.P12237358536502102327

namespace A048243

/-- `A048275(n+1)-(A020740(n+1)+A000079(A034973(n+1)))` -/
def P12237358536502102327.Spec : Prop :=
  ∀ n, P12237358536502102327.a n = A048243 (n + 1)

end A048243

/-! ## A048243.P2779155849598094881

`A048570(∑[A098181(n)])-A039593(n+1)`
-/

namespace A048243.P2779155849598094881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A039593 (n + 1)

end

end A048243.P2779155849598094881

namespace A048243

/-- `A048570(∑[A098181(n)])-A039593(n+1)` -/
def P2779155849598094881.Spec : Prop :=
  ∀ n, P2779155849598094881.a n = A048243 (n + 1)

end A048243

/-! ## A048243.P16198685084808503846

`A048570(A074148(n+1))-A039593(n+1)`
-/

namespace A048243.P16198685084808503846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A074148 (n + 1)).toNat - A039593 (n + 1)

end

end A048243.P16198685084808503846

namespace A048243

/-- `A048570(A074148(n+1))-A039593(n+1)` -/
def P16198685084808503846.Spec : Prop :=
  ∀ n, P16198685084808503846.a n = A048243 (n + 1)

end A048243

/-!
# A048244: a(n) = A048106(A001405(n)).

The programs for A048244, the canonical program `A048244.P17897497883723303943` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048244 has offset 1).

The definition of A048244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048106, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048244.P17897497883723303943

`A048106(A001405(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048244

/-- `A048106(A001405(n+1))` -/
def P17897497883723303943.Spec : Prop :=
  ∀ n, P17897497883723303943.a n = A048244 (n + 1)

theorem P17897497883723303943.correct : P17897497883723303943.Spec := by
  intro n
  simp only [A048244, Nat.add_sub_cancel]

end A048244

/-! ## A048244.P6898393676958270997

`A039593(n+1)-A048243(n+1)`
-/

namespace A048244.P6898393676958270997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1) - A048243 (n + 1)

end

end A048244.P6898393676958270997

namespace A048244

/-- `A039593(n+1)-A048243(n+1)` -/
def P6898393676958270997.Spec : Prop :=
  ∀ n, P6898393676958270997.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P13816080413264101838

`2*A039593(n+1)-A034974(n+1)`
-/

namespace A048244.P13816080413264101838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039593 (n + 1) - A034974 (n + 1)

end

end A048244.P13816080413264101838

namespace A048244

/-- `2*A039593(n+1)-A034974(n+1)` -/
def P13816080413264101838.Spec : Prop :=
  ∀ n, P13816080413264101838.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P11596131344987302422

`A034974(n+1)-2*A048243(n+1)`
-/

namespace A048244.P11596131344987302422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (n + 1) - 2 * A048243 (n + 1)

end

end A048244.P11596131344987302422

namespace A048244

/-- `A034974(n+1)-2*A048243(n+1)` -/
def P11596131344987302422.Spec : Prop :=
  ∀ n, P11596131344987302422.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P729830872362957355

`A000079(A034973(n+1))-A048243(n+1)`
-/

namespace A048244.P729830872362957355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1)).toNat - A048243 (n + 1)

end

end A048244.P729830872362957355

namespace A048244

/-- `A000079(A034973(n+1))-A048243(n+1)` -/
def P729830872362957355.Spec : Prop :=
  ∀ n, P729830872362957355.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P4352475628806139089

`A000079(A034973(n+1)+1)-A034974(n+1)`
-/

namespace A048244.P4352475628806139089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1) + 1).toNat - A034974 (n + 1)

end

end A048244.P4352475628806139089

namespace A048244

/-- `A000079(A034973(n+1)+1)-A034974(n+1)` -/
def P4352475628806139089.Spec : Prop :=
  ∀ n, P4352475628806139089.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P8453004723323781111

`2*A039593(n+1)-A048570(A074148(n+1))`
-/

namespace A048244.P8453004723323781111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039593 (n + 1) - A048570 (A074148 (n + 1)).toNat

end

end A048244.P8453004723323781111

namespace A048244

/-- `2*A039593(n+1)-A048570(A074148(n+1))` -/
def P8453004723323781111.Spec : Prop :=
  ∀ n, P8453004723323781111.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P14201504208970309908

`A004277(A039593(n+1))-A034974(n+1)`
-/

namespace A048244.P14201504208970309908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A039593 (n + 1)).toNat - A034974 (n + 1)

end

end A048244.P14201504208970309908

namespace A048244

/-- `A004277(A039593(n+1))-A034974(n+1)` -/
def P14201504208970309908.Spec : Prop :=
  ∀ n, P14201504208970309908.a n = A048244 (n + 1)

end A048244

/-! ## A048244.P4250506297605398914

`A034974(n+1)-A005843(A048243(n+1))`
-/

namespace A048244.P4250506297605398914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (n + 1) - A005843 (A048243 (n + 1)).toNat

end

end A048244.P4250506297605398914

namespace A048244

/-- `A034974(n+1)-A005843(A048243(n+1))` -/
def P4250506297605398914.Spec : Prop :=
  ∀ n, P4250506297605398914.a n = A048244 (n + 1)

end A048244

/-!
# A048247: Every prime occurs to this power in some factorial.

The programs for A048247, there is no canonical definition to state claims against.
-/

/-! ## A048247.P12150103562552509522

`eq[0, A226460(n)]`
-/

namespace A048247.P12150103562552509522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048247.P12150103562552509522

/-! ## A048247.P12647071842572066469

`lt[A226460(A028310(n)), 1]`
-/

namespace A048247.P12647071842572066469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048247.P12647071842572066469

/-! ## A048247.P16235641440827237304

`lt[A226460(n), A054977(n)]`
-/

namespace A048247.P16235641440827237304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048247.P16235641440827237304

/-! ## A048247.P748391929617645453

`record[gcd(A038608(n), A226460(n))]`
-/

namespace A048247.P748391929617645453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A226460 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048247.P748391929617645453

/-! ## A048247.P1186560667420233396

`lt[A226460(n), cos(A226463(n))]`
-/

namespace A048247.P1186560667420233396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A226463 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A048247.P1186560667420233396

/-! ## A048247.P3983301464432373372

`lt[A226460(n), cos(A226464(n))]`
-/

namespace A048247.P3983301464432373372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A226464 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A048247.P3983301464432373372

/-! ## A048247.P13340774455731135250

`lt[A226460(n), A060576(2*n)]`
-/

namespace A048247.P13340774455731135250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048247.P13340774455731135250

/-! ## A048247.P8016058263447810892

`lt[A057427(n), A000038(A226460(n))]`
-/

namespace A048247.P8016058263447810892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A226460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048247.P8016058263447810892

/-! ## A048247.P3556175771155329799

`lt[A135416(n+1), A000038(A226460(n))]`
-/

namespace A048247.P3556175771155329799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A226460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048247.P3556175771155329799

/-!
# A048248: Possible traces of n-step walks on 1-D lattice, ignoring translations.

The programs for A048248, there is no canonical definition to state claims against.
-/

/-! ## A048248.P15888381197602771135

`A079289(n)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A048248.P15888381197602771135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079289 n + (a (n - 2) + a (n - 2))

end

end A048248.P15888381197602771135

/-! ## A048248.P10168677064585550280

`A079289(n)+A005843(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A048248.P10168677064585550280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079289 n + A005843 (a (n - 2)).toNat

end

end A048248.P10168677064585550280

/-! ## A048248.P17275233401526087574

`A001462(A006452(n+2))-A226764(n+7)`
-/

namespace A048248.P17275233401526087574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A006452 (n + 2)).toNat - A226764 (n + 7)

end

end A048248.P17275233401526087574

/-! ## A048248.P18029870082549196271

`A003056(A141413(n)+A003946(n))`
-/

namespace A048248.P18029870082549196271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A141413 n + A003946 n).toNat

end

end A048248.P18029870082549196271

/-! ## A048248.P11850679669649174089

`A002024(A116406(n)*A344741(n+2))`
-/

namespace A048248.P11850679669649174089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A116406 n * A344741 (n + 2)).toNat

end

end A048248.P11850679669649174089

/-!
# A048249: Number of distinct values produced from sums and products of n unity arguments.

The programs for A048249, there is no canonical definition to state claims against.
-/

/-! ## A048249.P5857803448219782394

`∑[A005421(n+1)]`
-/

namespace A048249.P5857803448219782394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048249.P5857803448219782394

/-! ## A048249.P12132237367292518669

`A005421(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A048249.P12132237367292518669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005421 (n + 1) + a (A023443 n).toNat

end

end A048249.P12132237367292518669

/-! ## A048249.P9826051452018413929

`A005421(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A048249.P9826051452018413929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005421 (n + 1) + a (A028310 n - 1).toNat

end

end A048249.P9826051452018413929

/-! ## A048249.P16711607143503291691

`A005421(n+1)+a(n-A165581(n²))` with `a(0)=1`
-/

namespace A048249.P16711607143503291691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005421 (n + 1) + a ((n : ℤ) - A165581 (n ^ 2)).toNat

end

end A048249.P16711607143503291691

/-! ## A048249.P9821706908731729628

`A005421(n+1)+a(A000038(n)+n-1)` with `a(0)=1`
-/

namespace A048249.P9821706908731729628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005421 (n + 1) + a (A000038 n + (n : ℤ) - 1).toNat

end

end A048249.P9821706908731729628

/-! ## A048249.P11385023095372959580

`a(n-1)+A151933(n)+A005421(n+1)` with `a(0)=1`
-/

namespace A048249.P11385023095372959580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A151933 n + A005421 (n + 1))

end

end A048249.P11385023095372959580

/-! ## A048249.P12929856524166670151

`A005421(n+1)+a(A038722(A038722(n))-1)` with `a(0)=1`
-/

namespace A048249.P12929856524166670151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005421 (n + 1) + a (A038722 (A038722 n).toNat - 1).toNat

end

end A048249.P12929856524166670151

/-!
# A048250: Sum of the squarefree divisors of n.

The programs for A048250, the canonical program `A048250.P6137918235727910070` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048250 has offset 1).

The definition of A048250 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048250.P6137918235727910070

`A001615(A007947(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048250

/-- `A001615(A007947(n+1))` -/
def P6137918235727910070.Spec : Prop :=
  ∀ n, P6137918235727910070.a n = A048250 (n + 1)

theorem P6137918235727910070.correct : P6137918235727910070.Spec := by
  intro n
  simp only [A048250, Nat.add_sub_cancel]

end A048250

/-! ## A048250.P17960441032552816313

`∏{p}[n+1, #+1]`
-/

namespace A048250.P17960441032552816313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1)

end

end A048250.P17960441032552816313

namespace A048250

/-- `∏{p}[n+1, #+1]` -/
def P17960441032552816313.Spec : Prop :=
  ∀ n, (P17960441032552816313.a n : ℤ) = A048250 (n + 1)

end A048250

/-! ## A048250.P4504832226406670755

`2^∑{p}[n+1, log2(#+1)]`
-/

namespace A048250.P4504832226406670755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p + 1 : ℝ))

end

end A048250.P4504832226406670755

namespace A048250

/-- `2^∑{p}[n+1, log2(#+1)]` -/
def P4504832226406670755.Spec : Prop :=
  ∀ n, P4504832226406670755.a n = (A048250 (n + 1) : ℝ)

end A048250

/-! ## A048250.P8133913570267794435

`∑{d}[∏{p}[2*n-(n-1), #], #]`
-/

namespace A048250.P8133913570267794435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A048250.P8133913570267794435

namespace A048250

/-- `∑{d}[∏{p}[2*n-(n-1), #], #]` -/
def P8133913570267794435.Spec : Prop :=
  ∀ n, (P8133913570267794435.a n : ℤ) = A048250 (n + 1)

end A048250

/-! ## A048250.P7828973542706784903

`abs(A323363(n+1))`
-/

namespace A048250.P7828973542706784903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323363 (n + 1)|

end

end A048250.P7828973542706784903

namespace A048250

/-- `abs(A323363(n+1))` -/
def P7828973542706784903.Spec : Prop :=
  ∀ n, P7828973542706784903.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P11924430270401200419

`∑{d}[A062953(n+1), #]`
-/

namespace A048250.P11924430270401200419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048250.P11924430270401200419

namespace A048250

/-- `∑{d}[A062953(n+1), #]` -/
def P11924430270401200419.Spec : Prop :=
  ∀ n, (P11924430270401200419.a n : ℤ) = A048250 (n + 1)

end A048250

/-! ## A048250.P172101881324731596

`A000113(∏{p}[n+1, #])`
-/

namespace A048250.P172101881324731596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P172101881324731596

namespace A048250

/-- `A000113(∏{p}[n+1, #])` -/
def P172101881324731596.Spec : Prop :=
  ∀ n, P172101881324731596.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P12432475934295925818

`A000203(∏{p}[n+1, #])`
-/

namespace A048250.P12432475934295925818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P12432475934295925818

namespace A048250

/-- `A000203(∏{p}[n+1, #])` -/
def P12432475934295925818.Spec : Prop :=
  ∀ n, P12432475934295925818.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P16579542395064451727

`A001615(∏{p}[n+1, #])`
-/

namespace A048250.P16579542395064451727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P16579542395064451727

namespace A048250

/-- `A001615(∏{p}[n+1, #])` -/
def P16579542395064451727.Spec : Prop :=
  ∀ n, P16579542395064451727.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P5478490314585775472

`A003959(∏{p}[n+1, #])`
-/

namespace A048250.P5478490314585775472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P5478490314585775472

namespace A048250

/-- `A003959(∏{p}[n+1, #])` -/
def P5478490314585775472.Spec : Prop :=
  ∀ n, P5478490314585775472.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P3021280566578123196

`A008473(∏{p}[n+1, #])`
-/

namespace A048250.P3021280566578123196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P3021280566578123196

namespace A048250

/-- `A008473(∏{p}[n+1, #])` -/
def P3021280566578123196.Spec : Prop :=
  ∀ n, P3021280566578123196.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P15554441067100571649

`A033634(∏{p}[n+1, #])`
-/

namespace A048250.P15554441067100571649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P15554441067100571649

namespace A048250

/-- `A033634(∏{p}[n+1, #])` -/
def P15554441067100571649.Spec : Prop :=
  ∀ n, P15554441067100571649.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P16145113535734414425

`A046897(∏{p}[n+1, #])`
-/

namespace A048250.P16145113535734414425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P16145113535734414425

namespace A048250

/-- `A046897(∏{p}[n+1, #])` -/
def P16145113535734414425.Spec : Prop :=
  ∀ n, P16145113535734414425.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P8052818638437949712

`A049417(∏{p}[n+1, #])`
-/

namespace A048250.P8052818638437949712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048250.P8052818638437949712

namespace A048250

/-- `A049417(∏{p}[n+1, #])` -/
def P8052818638437949712.Spec : Prop :=
  ∀ n, P8052818638437949712.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P5752451240489613795

`∑{d}[sqrt(A078615(n+1)), #]`
-/

namespace A048250.P5752451240489613795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A048250.P5752451240489613795

namespace A048250

/-- `∑{d}[sqrt(A078615(n+1)), #]` -/
def P5752451240489613795.Spec : Prop :=
  ∀ n, (P5752451240489613795.a n : ℤ) = A048250 (n + 1)

end A048250

/-! ## A048250.P7991509505289119133

`n+1+A325313(n+1)`
-/

namespace A048250.P7991509505289119133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A325313 (n + 1)

end

end A048250.P7991509505289119133

namespace A048250

/-- `n+1+A325313(n+1)` -/
def P7991509505289119133.Spec : Prop :=
  ∀ n, P7991509505289119133.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P1124300139828311322

`A181797(n+1)/(n+1)`
-/

namespace A048250.P1124300139828311322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A048250.P1124300139828311322

namespace A048250

/-- `A181797(n+1)/(n+1)` -/
def P1124300139828311322.Spec : Prop :=
  ∀ n, P1124300139828311322.a n = (A048250 (n + 1) : ℚ)

end A048250

/-! ## A048250.P4024991908302321618

`∑{d}[1-A076618(n+1), #]`
-/

namespace A048250.P4024991908302321618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A076618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048250.P4024991908302321618

namespace A048250

/-- `∑{d}[1-A076618(n+1), #]` -/
def P4024991908302321618.Spec : Prop :=
  ∀ n, (P4024991908302321618.a n : ℤ) = A048250 (n + 1)

end A048250

/-! ## A048250.P12305235995965065460

`∑{d}[n+1, #*A008966(#)]`
-/

namespace A048250.P12305235995965065460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008966 d

end

end A048250.P12305235995965065460

namespace A048250

/-- `∑{d}[n+1, #*A008966(#)]` -/
def P12305235995965065460.Spec : Prop :=
  ∀ n, P12305235995965065460.a n = A048250 (n + 1)

end A048250

/-! ## A048250.P6907325622470050094

`∑{d}[n+1, lcm(#, A008683(#))]`
-/

namespace A048250.P6907325622470050094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A008683 d)

end

end A048250.P6907325622470050094

namespace A048250

/-- `∑{d}[n+1, lcm(#, A008683(#))]` -/
def P6907325622470050094.Spec : Prop :=
  ∀ n, (P6907325622470050094.a n : ℤ) = A048250 (n + 1)

end A048250

/-!
# A048251: a(n) is the smallest number whose sum of divisors is 6^n.

The programs for A048251, there is no canonical definition to state claims against.
-/

/-! ## A048251.P15386932355138252872

`A051444(6^n)`
-/

namespace A048251.P15386932355138252872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (6 ^ n)

end

end A048251.P15386932355138252872

/-! ## A048251.P7187515975722862376

`A063972(6^n)`
-/

namespace A048251.P7187515975722862376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (6 ^ n)

end

end A048251.P7187515975722862376

/-!
# A048252: Largest number whose sum of divisors is 6^n.

The programs for A048252, there is no canonical definition to state claims against.
-/

/-! ## A048252.P5826714411142152054

`A057637(6^n)`
-/

namespace A048252.P5826714411142152054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (6 ^ n)

end

end A048252.P5826714411142152054

/-! ## A048252.P4942025398557377549

`A319068(6^n)`
-/

namespace A048252.P4942025398557377549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319068 (6 ^ n)

end

end A048252.P4942025398557377549

/-!
# A048254: Numbers whose sum of divisors is 6^4 = 1296.

The programs for A048254, there is no canonical definition to state claims against.
-/

/-! ## A048254.P12199494569111099977

`A019422(n+3)`
-/

namespace A048254.P12199494569111099977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019422 (n + 3)

end

end A048254.P12199494569111099977

/-! ## A048254.P1325132507409320322

`eq[4, A175432(round(acot(n)+n))]`
-/

namespace A048254.P1325132507409320322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048254.P1325132507409320322

/-! ## A048254.P9626938158927220215

`eq[4, A175432(A233583(n+1))]`
-/

namespace A048254.P9626938158927220215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048254.P9626938158927220215

/-!
# A048255: Integers whose sum of divisors is 6^5 = 7776.

The programs for A048255, there is no canonical definition to state claims against.
-/

/-! ## A048255.P9085853585358140235

`A019423(n+6)`
-/

namespace A048255.P9085853585358140235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019423 (n + 6)

end

end A048255.P9085853585358140235

/-!
# A048256: Numbers whose sum of divisors is 6^6 = 46656.

The programs for A048256, there is no canonical definition to state claims against.
-/

/-! ## A048256.P9210863845886836432

`A019424(n+4)`
-/

namespace A048256.P9210863845886836432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019424 (n + 4)

end

end A048256.P9210863845886836432

/-! ## A048256.P7526240938769488764

`record[A019424(A019303(A008619(n)))]`
-/

namespace A048256.P7526240938769488764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019424 (A019303 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048256.P7526240938769488764

/-! ## A048256.P6305582983336155509

`A000032(((-1)^n)²)*A019424(Δ[A141214(n)])`
-/

namespace A048256.P6305582983336155509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * A019424 (f1 (n + 1) - f1 n).toNat

end

end A048256.P6305582983336155509

/-! ## A048256.P16765311269628937086

`A000203(((-1)^n)²)*A019424(Δ[A141214(n)])`
-/

namespace A048256.P16765311269628937086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A019424 (f1 (n + 1) - f1 n).toNat

end

end A048256.P16765311269628937086

/-!
# A048259: Number of distinct solutions to x + y + z = 0 (mod n), where two solutions are equivalent if one can be obtained from the other by multiplying by units in Z/nZ and permuting x,y,z.

The programs for A048259, the canonical program `A048259.P11908636629173438456` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048259 has offset 0).

The definition of A048259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048259.P11908636629173438456

`A065033(2*∑{d}[n, A003050(#)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A048259

/-- `A065033(2*∑{d}[n, A003050(#)])` -/
def P11908636629173438456.Spec : Prop :=
  ∀ n, P11908636629173438456.a n = A048259 n

theorem P11908636629173438456.correct : P11908636629173438456.Spec := by
  intro n
  simp only [A048259]

end A048259

/-! ## A048259.P16633630081737208415

`A123108(2*∑{d}[n, A003050(#)])`
-/

namespace A048259.P16633630081737208415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (∑ d ∈ Nat.divisors (f1 n), A003050 d)).toNat

end

end A048259.P16633630081737208415

namespace A048259

/-- `A123108(2*∑{d}[n, A003050(#)])` -/
def P16633630081737208415.Spec : Prop :=
  ∀ n, P16633630081737208415.a n = A048259 n

end A048259

/-! ## A048259.P11328881905674832909

`A000007(n)+∑{d}[n, A003050(#)]`
-/

namespace A048259.P11328881905674832909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A003050 d

end

end A048259.P11328881905674832909

namespace A048259

/-- `A000007(n)+∑{d}[n, A003050(#)]` -/
def P11328881905674832909.Spec : Prop :=
  ∀ n, P11328881905674832909.a n = A048259 n

end A048259

/-! ## A048259.P17927467486832781463

`∏{d}[∑{d}[n, A003050(#)], A014963(#)]`
-/

namespace A048259.P17927467486832781463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A003050 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A048259.P17927467486832781463

namespace A048259

/-- `∏{d}[∑{d}[n, A003050(#)], A014963(#)]` -/
def P17927467486832781463.Spec : Prop :=
  ∀ n, P17927467486832781463.a n = A048259 n

end A048259

/-! ## A048259.P164376192127440177

`∑{d}[n, A003050(#)]+log2(A054977(n))`
-/

namespace A048259.P164376192127440177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A003050 d : ℤ) : ℝ) + Real.logb 2 (A054977 n : ℝ)

end

end A048259.P164376192127440177

namespace A048259

/-- `∑{d}[n, A003050(#)]+log2(A054977(n))` -/
def P164376192127440177.Spec : Prop :=
  ∀ n, P164376192127440177.a n = (A048259 n : ℝ)

end A048259

/-! ## A048259.P1700804071008744094

`∑{d}[n, A003050(#)]^-A057428(n)`
-/

namespace A048259.P1700804071008744094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A003050 d : ℤ) : ℚ) ^ (-A057428 n : ℤ)

end

end A048259.P1700804071008744094

namespace A048259

/-- `∑{d}[n, A003050(#)]^-A057428(n)` -/
def P1700804071008744094.Spec : Prop :=
  ∀ n, P1700804071008744094.a n = (A048259 n : ℚ)

end A048259

/-! ## A048259.P14915620960176839599

`∑{d}[n, A003050(#)]+1-A057427(n)`
-/

namespace A048259.P14915620960176839599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003050 d + (1 - A057427 n)

end

end A048259.P14915620960176839599

namespace A048259

/-- `∑{d}[n, A003050(#)]+1-A057427(n)` -/
def P14915620960176839599.Spec : Prop :=
  ∀ n, P14915620960176839599.a n = A048259 n

end A048259

/-! ## A048259.P8411745822909573814

`A036987(2*n)+∑{d}[n, A003050(#)]`
-/

namespace A048259.P8411745822909573814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + ∑ d ∈ Nat.divisors (f1 n), A003050 d

end

end A048259.P8411745822909573814

namespace A048259

/-- `A036987(2*n)+∑{d}[n, A003050(#)]` -/
def P8411745822909573814.Spec : Prop :=
  ∀ n, P8411745822909573814.a n = A048259 n

end A048259

/-! ## A048259.P9392335328940739382

`or(∑{d}[n, A003050(#)], A000007(2*n))`
-/

namespace A048259.P9392335328940739382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ d ∈ Nat.divisors (f1 n), A003050 d) (A000007 (2 * n))

end

end A048259.P9392335328940739382

namespace A048259

/-- `or(∑{d}[n, A003050(#)], A000007(2*n))` -/
def P9392335328940739382.Spec : Prop :=
  ∀ n, P9392335328940739382.a n = A048259 n

end A048259

/-! ## A048259.P2427817053573135948

`A008619(A004273(∑{d}[n, A003050(#)]))`
-/

namespace A048259.P2427817053573135948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 (∑ d ∈ Nat.divisors (f1 n), A003050 d).toNat).toNat

end

end A048259.P2427817053573135948

namespace A048259

/-- `A008619(A004273(∑{d}[n, A003050(#)]))` -/
def P2427817053573135948.Spec : Prop :=
  ∀ n, P2427817053573135948.a n = A048259 n

end A048259

/-! ## A048259.P15335823537846653395

`A065033(A005843(∑{d}[n, A003050(#)]))`
-/

namespace A048259.P15335823537846653395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005843 (∑ d ∈ Nat.divisors (f1 n), A003050 d).toNat).toNat

end

end A048259.P15335823537846653395

namespace A048259

/-- `A065033(A005843(∑{d}[n, A003050(#)]))` -/
def P15335823537846653395.Spec : Prop :=
  ∀ n, P15335823537846653395.a n = A048259 n

end A048259

/-! ## A048259.P17203815446340092133

`∑{d}[n, A003050(#)]+A008683(A008574(n))`
-/

namespace A048259.P17203815446340092133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003050 d + A008683 (A008574 n).toNat

end

end A048259.P17203815446340092133

namespace A048259

/-- `∑{d}[n, A003050(#)]+A008683(A008574(n))` -/
def P17203815446340092133.Spec : Prop :=
  ∀ n, P17203815446340092133.a n = A048259 n

end A048259

/-! ## A048259.P17969601268715076817

`∑{d}[A003056(A000124(n)), A003050(#)]`
-/

namespace A048259.P17969601268715076817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003050 d

end

end A048259.P17969601268715076817

namespace A048259

/-- `∑{d}[A003056(A000124(n)), A003050(#)]` -/
def P17969601268715076817.Spec : Prop :=
  ∀ n, P17969601268715076817.a n = A048259 n

end A048259

/-!
# A048260: The sum of 2 (not necessarily distinct) abundant numbers.

The programs for A048260, there is no canonical definition to state claims against.
-/

/-! ## A048260.P10434981507267238122

`lt[1, A375389(n+1)]+1`
-/

namespace A048260.P10434981507267238122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048260.P10434981507267238122

/-! ## A048260.P10664385202092546966

`lt[A022304(A100398(3*n+5)), A109389(n)]`
-/

namespace A048260.P10664385202092546966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (A100398 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048260.P10664385202092546966

/-! ## A048260.P15569579074688989855

`A270660(n+4)`
-/

namespace A048260.P15569579074688989855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270660 (n + 4)

end

end A048260.P15569579074688989855

/-! ## A048260.P10896190259825828020

`lt[A305473(A065033(n)), A035363(n)]`
-/

namespace A048260.P10896190259825828020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305473 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048260.P10896190259825828020

/-!
# A048261: Numbers that are the sum of the squares of distinct primes.

The programs for A048261, the canonical program `A048261.P561528646434980064` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048261 has offset 1).

The definition of A048261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048261.P11930092413273211216

`lt[2, A281477(n+1)+2]+1`
-/

namespace A048261.P11930092413273211216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281477 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048261.P11930092413273211216

namespace A048261

/-- `lt[2, A281477(n+1)+2]+1` -/
def P11930092413273211216.Spec : Prop :=
  ∀ n, (P11930092413273211216.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P15506033474610188787

`lt[0, A281477(A028310(n))]`
-/

namespace A048261.P15506033474610188787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281477 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048261.P15506033474610188787

namespace A048261

/-- `lt[0, A281477(A028310(n))]` -/
def P15506033474610188787.Spec : Prop :=
  ∀ n, (P15506033474610188787.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P555073924465152304

`lt[1/A065094(n+1), A111900(n)]`
-/

namespace A048261.P555073924465152304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A065094 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A048261.P555073924465152304

namespace A048261

/-- `lt[1/A065094(n+1), A111900(n)]` -/
def P555073924465152304.Spec : Prop :=
  ∀ n, (P555073924465152304.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P561528646434980064

`eq[A000007(n), A000007(A111900(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048261

/-- `eq[A000007(n), A000007(A111900(n))]` -/
def P561528646434980064.Spec : Prop :=
  ∀ n, (P561528646434980064.a n : ℤ) = A048261 (n + 1)

theorem P561528646434980064.correct : P561528646434980064.Spec := by
  intro n
  simp only [A048261, Nat.add_sub_cancel]

end A048261

/-! ## A048261.P18268860115643323771

`eq[A040110(n), A040110(A111900(n))]`
-/

namespace A048261.P18268860115643323771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 (A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048261.P18268860115643323771

namespace A048261

/-- `eq[A040110(n), A040110(A111900(n))]` -/
def P18268860115643323771.Spec : Prop :=
  ∀ n, (P18268860115643323771.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P2768365105538002517

`eq[A057428(n), A057428(A111900(n))]`
-/

namespace A048261.P2768365105538002517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048261.P2768365105538002517

namespace A048261

/-- `eq[A057428(n), A057428(A111900(n))]` -/
def P2768365105538002517.Spec : Prop :=
  ∀ n, (P2768365105538002517.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P8240212862773306772

`eq[1, A054977(n*A111900(n))]`
-/

namespace A048261.P8240212862773306772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n : ℤ) * A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048261.P8240212862773306772

namespace A048261

/-- `eq[1, A054977(n*A111900(n))]` -/
def P8240212862773306772.Spec : Prop :=
  ∀ n, (P8240212862773306772.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P10249191280007201594

`eq[1, A057427(n*A111900(n))]`
-/

namespace A048261.P10249191280007201594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048261.P10249191280007201594

namespace A048261

/-- `eq[1, A057427(n*A111900(n))]` -/
def P10249191280007201594.Spec : Prop :=
  ∀ n, (P10249191280007201594.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P14535449797294100092

`eq[1, A141044(n*A111900(n))]`
-/

namespace A048261.P14535449797294100092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 ((n : ℤ) * A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048261.P14535449797294100092

namespace A048261

/-- `eq[1, A141044(n*A111900(n))]` -/
def P14535449797294100092.Spec : Prop :=
  ∀ n, (P14535449797294100092.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P11361846179358983686

`eq[1, A158388(n*A111900(n))]`
-/

namespace A048261.P11361846179358983686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 ((n : ℤ) * A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048261.P11361846179358983686

namespace A048261

/-- `eq[1, A158388(n*A111900(n))]` -/
def P11361846179358983686.Spec : Prop :=
  ∀ n, (P11361846179358983686.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P12659154049240557956

`eq[1, A261143(n*A111900(n))]`
-/

namespace A048261.P12659154049240557956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 ((n : ℤ) * A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048261.P12659154049240557956

namespace A048261

/-- `eq[1, A261143(n*A111900(n))]` -/
def P12659154049240557956.Spec : Prop :=
  ∀ n, (P12659154049240557956.a n : ℤ) = A048261 (n + 1)

end A048261

/-! ## A048261.P5637961218890766272

`eq[1, A294619(n*A111900(n))]`
-/

namespace A048261.P5637961218890766272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 ((n : ℤ) * A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048261.P5637961218890766272

namespace A048261

/-- `eq[1, A294619(n*A111900(n))]` -/
def P5637961218890766272.Spec : Prop :=
  ∀ n, (P5637961218890766272.a n : ℤ) = A048261 (n + 1)

end A048261

/-!
# A048262: Numbers that aren't the sum of distinct primes of the form 4n+3.

The programs for A048262, there is no canonical definition to state claims against.
-/

/-! ## A048262.P1906497608380160989

`eq[0, A024942(n)]`
-/

namespace A048262.P1906497608380160989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048262.P1906497608380160989

/-! ## A048262.P14587630237124393648

`record[gcd(n+1, A024942(n+1))]`
-/

namespace A048262.P14587630237124393648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A024942 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048262.P14587630237124393648

/-! ## A048262.P12895975638106504597

`A000027(lt[A024942(n), 1])`
-/

namespace A048262.P12895975638106504597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024942 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048262.P12895975638106504597

/-! ## A048262.P557175850155517499

`A028310(lt[A024942(n), 1])`
-/

namespace A048262.P557175850155517499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024942 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048262.P557175850155517499

/-! ## A048262.P12192765064719550646

`record[gcd(A024942(n), A028310(n))]`
-/

namespace A048262.P12192765064719550646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024942 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048262.P12192765064719550646

/-!
# A048263: Numbers that aren't the sum of distinct primes of the form 4n+1.

The programs for A048263, there is no canonical definition to state claims against.
-/

/-! ## A048263.P4801377538901391308

`eq[0, A024941(n)]`
-/

namespace A048263.P4801377538901391308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024941 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048263.P4801377538901391308

/-! ## A048263.P6637354215979288264

`record[gcd(n+1, A024941(n+1))]`
-/

namespace A048263.P6637354215979288264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A024941 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048263.P6637354215979288264

/-! ## A048263.P2346532206625591564

`A000027(lt[A024941(n), 1])`
-/

namespace A048263.P2346532206625591564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024941 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048263.P2346532206625591564

/-! ## A048263.P16240532646984921892

`A028310(lt[A024941(n), 1])`
-/

namespace A048263.P16240532646984921892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024941 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048263.P16240532646984921892

/-! ## A048263.P3467552060863690754

`lt[A024941(n), A178334(n)]`
-/

namespace A048263.P3467552060863690754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048263.P3467552060863690754

/-!
# A048264: Numbers that aren't the sum of distinct primes of the form 6k+5.

The programs for A048264, there is no canonical definition to state claims against.
-/

/-! ## A048264.P6387172211945698507

`eq[0, A024944(n+1)]+1`
-/

namespace A048264.P6387172211945698507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048264.P6387172211945698507

/-! ## A048264.P7643434919381360525

`lt[A024944(C(n+1, n)), 1]+1`
-/

namespace A048264.P7643434919381360525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (Nat.choose (n + 1) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048264.P7643434919381360525

/-! ## A048264.P10880741614105106002

`lt[n*A024944(A028310(n)), n]`
-/

namespace A048264.P10880741614105106002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024944 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048264.P10880741614105106002

/-! ## A048264.P3927005147987223051

`lt[A024944(A028310(n)+1), 1]+1`
-/

namespace A048264.P3927005147987223051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (A028310 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048264.P3927005147987223051

/-! ## A048264.P15166140503638232973

`record[gcd(A000027(n+1), A024944(n+1))]`
-/

namespace A048264.P15166140503638232973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A024944 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048264.P15166140503638232973

/-! ## A048264.P15011164486371509313

`lt[A024944(A254667(n+2)-1), 1]+1`
-/

namespace A048264.P15011164486371509313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (A254667 (n + 2) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048264.P15011164486371509313

/-! ## A048264.P5963475855259388918

`eq[A000007(n), A024944(A028310(n))]`
-/

namespace A048264.P5963475855259388918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048264.P5963475855259388918

/-! ## A048264.P14279970283070097625

`eq[A000038(n), A024944(A028310(n))]`
-/

namespace A048264.P14279970283070097625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048264.P14279970283070097625

/-! ## A048264.P17084012116471579013

`lt[A024944(A028310(n)), A057427(n)]`
-/

namespace A048264.P17084012116471579013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048264.P17084012116471579013

/-! ## A048264.P627047412574696777

`eq[A000007(n), A024944(A065033(2*n))]`
-/

namespace A048264.P627047412574696777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024944 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048264.P627047412574696777

/-!
# A048265: Positive integers that aren't the sum of distinct primes of the form 6k+1.

The programs for A048265, there is no canonical definition to state claims against.
-/

/-! ## A048265.P7645626371397288179

`eq[0, A024943(n+1)]+1`
-/

namespace A048265.P7645626371397288179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048265.P7645626371397288179

/-! ## A048265.P16751963091009376844

`lt[A024943(abs(1-n)+2), 1]+1`
-/

namespace A048265.P16751963091009376844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024943 (|1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048265.P16751963091009376844

/-! ## A048265.P11560699523549437359

`lt[A024943(and(10, (n-2)*a(n-1))%2+n), 1]` with `a(0)=1`
-/

namespace A048265.P11560699523549437359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A024943 (Int.tmod (Int.land 10 (((n : ℤ) - 2) * f1 (n - 1))) 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048265.P11560699523549437359

/-! ## A048265.P3536594869533743137

`A000027(lt[A024943(n+1), 1]+1)`
-/

namespace A048265.P3536594869533743137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024943 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A048265.P3536594869533743137

/-! ## A048265.P3024941670575075000

`A008619(2*lt[A024943(n+1), 1])`
-/

namespace A048265.P3024941670575075000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024943 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048265.P3024941670575075000

/-! ## A048265.P2347132104119187047

`record[gcd(A000027(n+1), A024943(n+1))]`
-/

namespace A048265.P2347132104119187047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A024943 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048265.P2347132104119187047

/-! ## A048265.P15375818418260059382

`lt[A000005(A024943(n+1)+1), 2]+1`
-/

namespace A048265.P15375818418260059382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A024943 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048265.P15375818418260059382

/-! ## A048265.P10211862579147941394

`record[n+1-A024943(n+1)*A288045(n)]`
-/

namespace A048265.P10211862579147941394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A024943 (n + 1) * A288045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048265.P10211862579147941394

/-! ## A048265.P17694846897451255416

`record[n+1-A001358(n+1)*A024943(n+1)]`
-/

namespace A048265.P17694846897451255416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001358 (n + 1) * A024943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048265.P17694846897451255416

/-! ## A048265.P11278760351450820790

`eq[A000007(n), A024943(A028310(n))]`
-/

namespace A048265.P11278760351450820790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048265.P11278760351450820790

/-!
# A048266: Smallest integer requiring n fifth powers to sum to it.

The programs for A048266, there is no canonical definition to state claims against.
-/

/-! ## A048266.P10142544121296478843

`record[xor(31, abs(30-n))]`
-/

namespace A048266.P10142544121296478843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 31 |30 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048266.P10142544121296478843

/-! ## A048266.P7974837020912135149

`∑[1-n%31]+∑[n]`
-/

namespace A048266.P7974837020912135149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 31 : ℕ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A048266.P7974837020912135149

/-! ## A048266.P18031780785874942217

`∑[32^(C(n+1, 32)%4)]`
-/

namespace A048266.P18031780785874942217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 ^ (Nat.choose (n + 1) 32 % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048266.P18031780785874942217

/-! ## A048266.P11030919204216922931

`∑[32^and(3, C(n+1, 32))]`
-/

namespace A048266.P11030919204216922931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 ^ Nat.land 3 (Nat.choose (n + 1) 32)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048266.P11030919204216922931

/-! ## A048266.P8017779136998833964

`∑[32^∑[char[2*(n+1)²+29]]]`
-/

namespace A048266.P8017779136998833964
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2 + 29

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048266.P8017779136998833964

/-!
# A048268: Smallest palindrome greater than n in bases n and n+1.

The programs for A048268, there is no canonical definition to state claims against.
-/

/-! ## A048268.P15852606970139868112

`A293925(∑[n+1]+2)`
-/

namespace A048268.P15852606970139868112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293925 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048268.P15852606970139868112

/-! ## A048268.P4592091522986537656

`or(char[3], A293925(A133263(n+1)))`
-/

namespace A048268.P4592091522986537656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293925 (A133263 (n + 1)).toNat)

end

end A048268.P4592091522986537656

/-! ## A048268.P2865309343106292671

`∑{d}[A293925(A133263(n+1)), A000010(#)]`
-/

namespace A048268.P2865309343106292671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293925 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A048268.P2865309343106292671

/-! ## A048268.P6017997906775513060

`A293925(A133263(n+1))+char[A017493(n)]`
-/

namespace A048268.P6017997906775513060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017493 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293925 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A048268.P6017997906775513060

/-! ## A048268.P16893735063428876662

`char[A001057(n)]*A293925(A133263(n+1))`
-/

namespace A048268.P16893735063428876662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293925 (A133263 (n + 1)).toNat

end

end A048268.P16893735063428876662

/-! ## A048268.P9017599071305924244

`char[A004442(n)]*A293925(A133263(n+1))`
-/

namespace A048268.P9017599071305924244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293925 (A133263 (n + 1)).toNat

end

end A048268.P9017599071305924244

/-! ## A048268.P10357664197233500823

`char[A061579(n)]*A293925(A133263(n+1))`
-/

namespace A048268.P10357664197233500823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293925 (A133263 (n + 1)).toNat

end

end A048268.P10357664197233500823

/-! ## A048268.P13306407954001792529

`A293925(A133263(n+1))+A000007(n+1)`
-/

namespace A048268.P13306407954001792529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293925 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A048268.P13306407954001792529

/-! ## A048268.P8902940463735391585

`A293925(A133263(n+1))+A000035(2*n)`
-/

namespace A048268.P8902940463735391585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293925 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A048268.P8902940463735391585

/-! ## A048268.P3474654974694003715

`A000045(gcd(n, n+1))*A293925(A133263(n+1))`
-/

namespace A048268.P3474654974694003715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A293925 (A133263 (n + 1)).toNat

end

end A048268.P3474654974694003715

/-!
# A048269: First palindrome greater than n+2 in bases n+2 and n.

The programs for A048269, there is no canonical definition to state claims against.
-/

/-! ## A048269.P16273307589319890940

`A293925(∑[n+2]+2)`
-/

namespace A048269.P16273307589319890940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293925 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048269.P16273307589319890940

/-!
# A048270: Sequence of 2 Pythagorean triangles, each with a leg and hypotenuse prime. The leg of the second triangle is the hypotenuse of the first.

The programs for A048270, there is no canonical definition to state claims against.
-/

/-! ## A048270.P7035748777854336024

`∩[A048161(n+1), A116945(n+1)]`
-/

namespace A048270.P7035748777854336024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P7035748777854336024

/-! ## A048270.P8346852018535313145

`p?[A116945(n+1)]`
-/

namespace A048270.P8346852018535313145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048270.P8346852018535313145

/-! ## A048270.P9104349522140156323

`p?[and(1, n)*A116945(A008619(n))]`
-/

namespace A048270.P9104349522140156323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A116945 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048270.P9104349522140156323

/-! ## A048270.P15382931837863541842

`p?[A116945(A008619(n-1))-a(n-1)]` with `a(0)=0`
-/

namespace A048270.P15382931837863541842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A116945 (A008619 (n - 1)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048270.P15382931837863541842

/-! ## A048270.P8155808218349445976

`p?[A033999(n)*A116945(A008619(n))]`
-/

namespace A048270.P8155808218349445976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116945 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048270.P8155808218349445976

/-! ## A048270.P754511813531470760

`p?[A059841(n)*A116945(A008619(n))]`
-/

namespace A048270.P754511813531470760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A116945 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048270.P754511813531470760

/-! ## A048270.P2458295276711484584

`∩[A116945(n+1), A172438(n+1)]`
-/

namespace A048270.P2458295276711484584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P2458295276711484584

/-! ## A048270.P15839736879493591665

`∩[A045405(n+1), A116945(n+1)]`
-/

namespace A048270.P15839736879493591665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P15839736879493591665

/-! ## A048270.P16561379890024796229

`∩[A045428(n+1), A116945(n+1)]`
-/

namespace A048270.P16561379890024796229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P16561379890024796229

/-! ## A048270.P12185452753973564028

`∩[A000040(n+1), A116945(n+1)]`
-/

namespace A048270.P12185452753973564028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P12185452753973564028

/-! ## A048270.P14486271039055562483

`∩[A004139(n+1), A116945(n+1)]`
-/

namespace A048270.P14486271039055562483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P14486271039055562483

/-! ## A048270.P11325992317977867536

`∩[A006005(n+1), A116945(n+1)]`
-/

namespace A048270.P11325992317977867536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P11325992317977867536

/-! ## A048270.P9204133422374855882

`∩[A008578(n+1), A116945(n+1)]`
-/

namespace A048270.P9204133422374855882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P9204133422374855882

/-! ## A048270.P7539027293327924905

`∩[A033946(n+1), A116945(n+1)]`
-/

namespace A048270.P7539027293327924905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P7539027293327924905

/-! ## A048270.P12310410541456916054

`∩[A045319(n+1), A116945(n+1)]`
-/

namespace A048270.P12310410541456916054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P12310410541456916054

/-! ## A048270.P3728807049998800578

`∩[A046022(n+1), A116945(n+1)]`
-/

namespace A048270.P3728807049998800578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P3728807049998800578

/-! ## A048270.P11548048603640240668

`∩[A053577(n+1), A116945(n+1)]`
-/

namespace A048270.P11548048603640240668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P11548048603640240668

/-! ## A048270.P15887843128727141912

`∩[A055977(n+1), A116945(n+1)]`
-/

namespace A048270.P15887843128727141912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P15887843128727141912

/-! ## A048270.P1272807524768193023

`∩[A065396(n+1), A116945(n+1)]`
-/

namespace A048270.P1272807524768193023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P1272807524768193023

/-! ## A048270.P17906744571063599160

`∩[A067126(n+1), A116945(n+1)]`
-/

namespace A048270.P17906744571063599160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048270.P17906744571063599160

/-!
# A048271: a(0) = 1, a(n+1) = -3*a(n) mod 11.

The programs for A048271, the canonical program `A048271.P3805264884852165579` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048271 has offset 0).

The definition of A048271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048271.P3805264884852165579

`a(n-1)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=9, a(3)=6, a(4)=4, a(5)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048271

/-- `a(n-1)-a(n-5)+a(n-6)` -/
def P3805264884852165579.Spec : Prop :=
  ∀ n, P3805264884852165579.a n = A048271 n

theorem P3805264884852165579.correct : P3805264884852165579.Spec := by
  intro n
  simp only [A048271]

end A048271

/-!
# A048272: Number of odd divisors of n minus number of even divisors of n.

The programs for A048272, the canonical program `A048272.P6639145440777643207` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048272 has offset 1).

The definition of A048272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048272.P6639145440777643207

`A001227(n+1)-A183063(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048272

/-- `A001227(n+1)-A183063(n+1)` -/
def P6639145440777643207.Spec : Prop :=
  ∀ n, P6639145440777643207.a n = A048272 (n + 1)

theorem P6639145440777643207.correct : P6639145440777643207.Spec := by
  intro n
  simp only [A048272, Nat.add_sub_cancel]

end A048272

/-! ## A048272.P12116110013761640228

`2*A000005(2*(n+1))-3*A000005(n+1)`
-/

namespace A048272.P12116110013761640228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (2 * (n + 1)) - 3 * A000005 (n + 1)

end

end A048272.P12116110013761640228

namespace A048272

/-- `2*A000005(2*(n+1))-3*A000005(n+1)` -/
def P12116110013761640228.Spec : Prop :=
  ∀ n, P12116110013761640228.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P14838350422517159483

`∑{d}[n+1, -(-1)^#]`
-/

namespace A048272.P14838350422517159483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1) ^ d))

end

end A048272.P14838350422517159483

namespace A048272

/-- `∑{d}[n+1, -(-1)^#]` -/
def P14838350422517159483.Spec : Prop :=
  ∀ n, P14838350422517159483.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P86671430091058830

`-∑{d}[n+1, xor(1, #)-#]`
-/

namespace A048272.P86671430091058830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((Nat.xor 1 d : ℤ) - (d : ℤ)))

end

end A048272.P86671430091058830

namespace A048272

/-- `-∑{d}[n+1, xor(1, #)-#]` -/
def P86671430091058830.Spec : Prop :=
  ∀ n, P86671430091058830.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P6615595491075640230

`Δ[A059851(n)]`
-/

namespace A048272.P6615595491075640230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048272.P6615595491075640230

namespace A048272

/-- `Δ[A059851(n)]` -/
def P6615595491075640230.Spec : Prop :=
  ∀ n, P6615595491075640230.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P7704573756292498392

`1-A325939(n+1)`
-/

namespace A048272.P7704573756292498392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325939 (n + 1)

end

end A048272.P7704573756292498392

namespace A048272

/-- `1-A325939(n+1)` -/
def P7704573756292498392.Spec : Prop :=
  ∀ n, P7704573756292498392.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P17304351291706778943

`A325937(n+1)-(n-xor(1, n))`
-/

namespace A048272.P17304351291706778943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - ((n : ℤ) - (Nat.xor 1 n : ℤ))

end

end A048272.P17304351291706778943

namespace A048272

/-- `A325937(n+1)-(n-xor(1, n))` -/
def P17304351291706778943.Spec : Prop :=
  ∀ n, P17304351291706778943.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P5960969764576648784

`A099777((n+1)/and(n+1, -(n+1)))-∏{e}[n+1, #+1]`
-/

namespace A048272.P5960969764576648784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A048272.P5960969764576648784

namespace A048272

/-- `A099777((n+1)/and(n+1, -(n+1)))-∏{e}[n+1, #+1]` -/
def P5960969764576648784.Spec : Prop :=
  ∀ n, P5960969764576648784.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P9772933152870439015

`A325937(n+1)+A033999(n)`
-/

namespace A048272.P9772933152870439015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + A033999 n

end

end A048272.P9772933152870439015

namespace A048272

/-- `A325937(n+1)+A033999(n)` -/
def P9772933152870439015.Spec : Prop :=
  ∀ n, P9772933152870439015.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P10309632033977474864

`A059851(n+1)-A059851(n)`
-/

namespace A048272.P10309632033977474864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - A059851 n

end

end A048272.P10309632033977474864

namespace A048272

/-- `A059851(n+1)-A059851(n)` -/
def P10309632033977474864.Spec : Prop :=
  ∀ n, P10309632033977474864.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P5420471827637588200

`A033999(n)*A112329(n+1)`
-/

namespace A048272.P5420471827637588200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112329 (n + 1)

end

end A048272.P5420471827637588200

namespace A048272

/-- `A033999(n)*A112329(n+1)` -/
def P5420471827637588200.Spec : Prop :=
  ∀ n, P5420471827637588200.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P16535812626931166053

`Δ[A000120(n)]*A001227(n+1)`
-/

namespace A048272.P16535812626931166053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001227 (n + 1)

end

end A048272.P16535812626931166053

namespace A048272

/-- `Δ[A000120(n)]*A001227(n+1)` -/
def P16535812626931166053.Spec : Prop :=
  ∀ n, P16535812626931166053.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P6872932529005360963

`A325940(n+1)+A002129(n+1)`
-/

namespace A048272.P6872932529005360963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) + A002129 (n + 1)

end

end A048272.P6872932529005360963

namespace A048272

/-- `A325940(n+1)+A002129(n+1)` -/
def P6872932529005360963.Spec : Prop :=
  ∀ n, P6872932529005360963.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P16738432956526623180

`A348515(n+1)+A333809(n+1)`
-/

namespace A048272.P16738432956526623180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348515 (n + 1) + A333809 (n + 1)

end

end A048272.P16738432956526623180

namespace A048272

/-- `A348515(n+1)+A333809(n+1)` -/
def P16738432956526623180.Spec : Prop :=
  ∀ n, P16738432956526623180.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P2655635736571707951

`A054844(n+1)-A000005(n+1)`
-/

namespace A048272.P2655635736571707951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A000005 (n + 1)

end

end A048272.P2655635736571707951

namespace A048272

/-- `A054844(n+1)-A000005(n+1)` -/
def P2655635736571707951.Spec : Prop :=
  ∀ n, P2655635736571707951.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P10119955969182265066

`A099777(n+1)-A069735(n+1)`
-/

namespace A048272.P10119955969182265066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A069735 (n + 1)

end

end A048272.P10119955969182265066

namespace A048272

/-- `A099777(n+1)-A069735(n+1)` -/
def P10119955969182265066.Spec : Prop :=
  ∀ n, P10119955969182265066.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P16219896600023105742

`A325937(n+1)+1-A010673(n)`
-/

namespace A048272.P16219896600023105742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + (1 - A010673 n)

end

end A048272.P16219896600023105742

namespace A048272

/-- `A325937(n+1)+1-A010673(n)` -/
def P16219896600023105742.Spec : Prop :=
  ∀ n, P16219896600023105742.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P11491153169173317349

`A335021(n+1)+1-A062157(n)`
-/

namespace A048272.P11491153169173317349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1) + (1 - A062157 n)

end

end A048272.P11491153169173317349

namespace A048272

/-- `A335021(n+1)+1-A062157(n)` -/
def P11491153169173317349.Spec : Prop :=
  ∀ n, P11491153169173317349.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P3433329678051890632

`A302707(n)+1-A114003(n+1)`
-/

namespace A048272.P3433329678051890632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 n + (1 - A114003 (n + 1))

end

end A048272.P3433329678051890632

namespace A048272

/-- `A302707(n)+1-A114003(n+1)` -/
def P3433329678051890632.Spec : Prop :=
  ∀ n, P3433329678051890632.a n = A048272 (n + 1)

end A048272

/-! ## A048272.P8864626044618654141

`A372784(n+1)-A062011(n+1)`
-/

namespace A048272.P8864626044618654141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (n + 1) - A062011 (n + 1)

end

end A048272.P8864626044618654141

namespace A048272

/-- `A372784(n+1)-A062011(n+1)` -/
def P8864626044618654141.Spec : Prop :=
  ∀ n, P8864626044618654141.a n = A048272 (n + 1)

end A048272

/-!
# A048274: Let G be the graph with n vertices, the i-th vertex consisting of all multiples of i <= n, where edges indicate that the vertices intersect; a(n) = |n-(number of edges of G)|.

The programs for A048274, the canonical program `A048274.P10497283210798871903` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048274 has offset 1).

The definition of A048274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048274.P18243130471131930192

`abs(∑[1-A063647(n+1)])`
-/

namespace A048274.P18243130471131930192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P18243130471131930192

namespace A048274

/-- `abs(∑[1-A063647(n+1)])` -/
def P18243130471131930192.Spec : Prop :=
  ∀ n, P18243130471131930192.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P15230170308164018049

`abs(∑[2-A018892(n+1)])`
-/

namespace A048274.P15230170308164018049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P15230170308164018049

namespace A048274

/-- `abs(∑[2-A018892(n+1)])` -/
def P15230170308164018049.Spec : Prop :=
  ∀ n, P15230170308164018049.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P10497283210798871903

`abs(∑[1-A046079(2*(n+1))])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048274

/-- `abs(∑[1-A046079(2*(n+1))])` -/
def P10497283210798871903.Spec : Prop :=
  ∀ n, P10497283210798871903.a n = A048274 (n + 1)

theorem P10497283210798871903.correct : P10497283210798871903.Spec := by
  intro n
  simp only [A048274, Nat.add_sub_cancel]

end A048274

/-! ## A048274.P13858252776231659132

`abs(∑[A023444(A018892(n+1))])`
-/

namespace A048274.P13858252776231659132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A018892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P13858252776231659132

namespace A048274

/-- `abs(∑[A023444(A018892(n+1))])` -/
def P13858252776231659132.Spec : Prop :=
  ∀ n, P13858252776231659132.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P16098346248528387427

`abs(∑[A023443(A063647(n+1))])`
-/

namespace A048274.P16098346248528387427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P16098346248528387427

namespace A048274

/-- `abs(∑[A023443(A063647(n+1))])` -/
def P16098346248528387427.Spec : Prop :=
  ∀ n, P16098346248528387427.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P2102107681482130704

`∑{d}[∑[2-A018892(n+1)], A000010(#)]`
-/

namespace A048274.P2102107681482130704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A018892 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A048274.P2102107681482130704

namespace A048274

/-- `∑{d}[∑[2-A018892(n+1)], A000010(#)]` -/
def P2102107681482130704.Spec : Prop :=
  ∀ n, P2102107681482130704.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P629601823150899750

`abs(∑[(3-A000005((n+1)²))/2])`
-/

namespace A048274.P629601823150899750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A000005 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P629601823150899750

namespace A048274

/-- `abs(∑[(3-A000005((n+1)²))/2])` -/
def P629601823150899750.Spec : Prop :=
  ∀ n, P629601823150899750.a n = (A048274 (n + 1) : ℚ)

end A048274

/-! ## A048274.P5257334894001172512

`abs(∑[2-A008619(A000005((n+1)²))])`
-/

namespace A048274.P5257334894001172512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008619 (A000005 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P5257334894001172512

namespace A048274

/-- `abs(∑[2-A008619(A000005((n+1)²))])` -/
def P5257334894001172512.Spec : Prop :=
  ∀ n, P5257334894001172512.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P10138930361988006084

`abs(∑[1-A056924((n+1)²)])`
-/

namespace A048274.P10138930361988006084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056924 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P10138930361988006084

namespace A048274

/-- `abs(∑[1-A056924((n+1)²)])` -/
def P10138930361988006084.Spec : Prop :=
  ∀ n, P10138930361988006084.a n = A048274 (n + 1)

end A048274

/-! ## A048274.P7069017252892302217

`abs(∑[A023443(A056924((n+1)²))])`
-/

namespace A048274.P7069017252892302217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056924 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P7069017252892302217

namespace A048274

/-- `abs(∑[A023443(A056924((n+1)²))])` -/
def P7069017252892302217.Spec : Prop :=
  ∀ n, P7069017252892302217.a n = A048274 (n + 1)

end A048274

/-!
# A048275: a(n) = maximal value for number of divisors of C(n,k) for k=0..n.

The programs for A048275, there is no canonical definition to state claims against.
-/

/-! ## A048275.P5060112355234158252

`A034974(n+1)+A020740(n+1)`
-/

namespace A048275.P5060112355234158252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (n + 1) + A020740 (n + 1)

end

end A048275.P5060112355234158252

/-! ## A048275.P2949460325855062912

`A020740(n+1)+A048243(n+1)+A039593(n+1)`
-/

namespace A048275.P2949460325855062912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020740 (n + 1) + (A048243 (n + 1) + A039593 (n + 1))

end

end A048275.P2949460325855062912

/-! ## A048275.P3905573988464720351

`A020740(n+1)+A048244(n+1)+2*A048243(n+1)`
-/

namespace A048275.P3905573988464720351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020740 (n + 1) + (A048244 (n + 1) + 2 * A048243 (n + 1))

end

end A048275.P3905573988464720351

/-! ## A048275.P8419395105571953051

`A020740(n+1)+2*A039593(n+1)-A048244(n+1)`
-/

namespace A048275.P8419395105571953051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020740 (n + 1) + (2 * A039593 (n + 1) - A048244 (n + 1))

end

end A048275.P8419395105571953051

/-! ## A048275.P14214421529171121179

`A020740(n+1)+A048243(n+1)+A000079(A034973(n+1))`
-/

namespace A048275.P14214421529171121179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020740 (n + 1) + (A048243 (n + 1) + A000079 (A034973 (n + 1)).toNat)

end

end A048275.P14214421529171121179

/-! ## A048275.P17269255823975302952

`A048570(A048475(n+1)+∑[n+1])`
-/

namespace A048275.P17269255823975302952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A048475 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A048275.P17269255823975302952

/-! ## A048275.P7201548761820357105

`A048570(∑[or(1, n+1)])+A020740(n+1)`
-/

namespace A048275.P7201548761820357105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j) + A020740 (n + 1)

end

end A048275.P7201548761820357105

/-! ## A048275.P17698357718625728709

`A048570(A253145(n)+A048475(n+1))`
-/

namespace A048275.P17698357718625728709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A253145 n + A048475 (n + 1)).toNat

end

end A048275.P17698357718625728709

/-! ## A048275.P1225443416700404740

`A048570(∑[A098181(n)])+A020740(n+1)`
-/

namespace A048275.P1225443416700404740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A020740 (n + 1)

end

end A048275.P1225443416700404740

/-! ## A048275.P14941423117107271344

`A048570(A074148(n+1))+A020740(n+1)`
-/

namespace A048275.P14941423117107271344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A074148 (n + 1)).toNat + A020740 (n + 1)

end

end A048275.P14941423117107271344

/-! ## A048275.P6393146702843060457

`A048570(A074148(n+1)-A048485(n+1))`
-/

namespace A048275.P6393146702843060457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A074148 (n + 1) - A048485 (n + 1)).toNat

end

end A048275.P6393146702843060457

/-!
# A048276: a(n) = number of squarefree numbers among C(n,k), k=0..n.

The programs for A048276, there is no canonical definition to state claims against.
-/

/-! ## A048276.P13557367367015152665

`n+1-A048277(n)`
-/

namespace A048276.P13557367367015152665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A048277 n)

end

end A048276.P13557367367015152665

/-! ## A048276.P9518737034835099826

`A008619(2*(n-A048277(n)))`
-/

namespace A048276.P9518737034835099826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ((n : ℤ) - A048277 n)).toNat

end

end A048276.P9518737034835099826

/-! ## A048276.P3680114512628315977

`A001057(2*A048277(n))+n+1`
-/

namespace A048276.P3680114512628315977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A048277 n).toNat + (n + 1 : ℤ)

end

end A048276.P3680114512628315977

/-! ## A048276.P2160831973865782682

`n-(A048277(n)-Δ[A329116(n)]²)`
-/

namespace A048276.P2160831973865782682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A048277 n - (f1 (n + 1) - f1 n) ^ 2)

end

end A048276.P2160831973865782682

/-! ## A048276.P17006406094252635502

`1-(A048277(n)-A061579(A061579(n)))`
-/

namespace A048276.P17006406094252635502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048277 n - A061579 (A061579 n).toNat)

end

end A048276.P17006406094252635502

/-! ## A048276.P6695129159915235158

`A006047(n)-(A048277(n)-A062296(n))`
-/

namespace A048276.P6695129159915235158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - (A048277 n - A062296 n)

end

end A048276.P6695129159915235158

/-! ## A048276.P6375968203483910854

`n-(A048277(n)-A183096(A007918(n)))`
-/

namespace A048276.P6375968203483910854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A048277 n - A183096 (A007918 n).toNat)

end

end A048276.P6375968203483910854

/-! ## A048276.P3316794251998647785

`n-(A048277(n)-A007318(∑[n]))`
-/

namespace A048276.P3316794251998647785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A048277 n - A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048276.P3316794251998647785

/-! ## A048276.P16265453667570120976

`n-(A048277(n)-A103447(∑[n]))`
-/

namespace A048276.P16265453667570120976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A048277 n - A103447 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048276.P16265453667570120976

/-!
# A048277: Number of (not necessarily distinct) nonsquarefree numbers among C(n,k), k=0..n.

The programs for A048277, there is no canonical definition to state claims against.
-/

/-! ## A048277.P1714865613900570018

`1+n-A048276(n)`
-/

namespace A048277.P1714865613900570018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - A048276 n)

end

end A048277.P1714865613900570018

/-! ## A048277.P2621260690029445853

`(n*A048276(n%(n+1)))%(n+1)`
-/

namespace A048277.P2621260690029445853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A048276 (n % (n + 1))) (n + 1 : ℤ)

end

end A048277.P2621260690029445853

/-! ## A048277.P227587477918554350

`A008619(2*n)-A048276(n)`
-/

namespace A048277.P227587477918554350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A048276 n

end

end A048277.P227587477918554350

/-! ## A048277.P17982393641624543387

`1-(A048276(n)-A014681(A014681(n)))`
-/

namespace A048277.P17982393641624543387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048276 n - A014681 (A014681 n).toNat)

end

end A048277.P17982393641624543387

/-! ## A048277.P16581476385082062388

`1-(A048276(n)-A069889(A069889(n)))`
-/

namespace A048277.P16581476385082062388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048276 n - A069889 (A069889 n).toNat)

end

end A048277.P16581476385082062388

/-! ## A048277.P16318475320763097743

`1-(A048276(n)-A263272(A263272(n)))`
-/

namespace A048277.P16318475320763097743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048276 n - A263272 (A263272 n).toNat)

end

end A048277.P16318475320763097743

/-!
# A048279: Values of n for which no values of C(n,k) except k=0 and k=n are squarefree.

The programs for A048279, there is no canonical definition to state claims against.
-/

/-! ## A048279.P7087498872715744739

`eq[0, A238892(n)]`
-/

namespace A048279.P7087498872715744739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048279.P7087498872715744739

/-! ## A048279.P14955646608742813091

`lt[n, A048277(n)+2]`
-/

namespace A048279.P14955646608742813091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048277 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048279.P14955646608742813091

/-! ## A048279.P9029737754108667525

`record[n/A002412(A238892(n)+1)]`
-/

namespace A048279.P9029737754108667525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A002412 (A238892 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048279.P9029737754108667525

/-! ## A048279.P8795408625014953225

`record[n-A002412(3*A238892(n))]`
-/

namespace A048279.P8795408625014953225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002412 (3 * A238892 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048279.P8795408625014953225

/-! ## A048279.P15399772477675737403

`record[n-A002620(n)*A238892(n)]`
-/

namespace A048279.P15399772477675737403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002620 n * A238892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048279.P15399772477675737403

/-! ## A048279.P2416787000215520545

`eq[1, A238337(n)]`
-/

namespace A048279.P2416787000215520545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048279.P2416787000215520545

/-! ## A048279.P8213745796912916462

`lt[A048276(n), 3]`
-/

namespace A048279.P8213745796912916462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048276 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048279.P8213745796912916462

/-! ## A048279.P9574934254820768669

`eq[1, A008619(A048276(n)-1)]`
-/

namespace A048279.P9574934254820768669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A048276 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048279.P9574934254820768669

/-! ## A048279.P16156699203063241139

`eq[A036453(n+1), A048276(n)]`
-/

namespace A048279.P16156699203063241139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048279.P16156699203063241139

/-! ## A048279.P8613127057080896332

`lt[abs(1-A003726(A238337(n)+1)), 1]`
-/

namespace A048279.P8613127057080896332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A003726 (A238337 n + 1).toNat|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048279.P8613127057080896332

/-! ## A048279.P16448273091720487337

`lt[abs(1-A047275(A238337(n)+1)), 1]`
-/

namespace A048279.P16448273091720487337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A047275 (A238337 n + 1).toNat|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048279.P16448273091720487337

/-! ## A048279.P12201895903616955072

`eq[1, A008619((A048276(n)+n)%(n+1))]`
-/

namespace A048279.P12201895903616955072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A048276 n + (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048279.P12201895903616955072

/-! ## A048279.P3017989272142703183

`eq[A048276(n), A055027(A048276(n)+2)]`
-/

namespace A048279.P3017989272142703183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (A048276 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048279.P3017989272142703183

/-! ## A048279.P761911113134518710

`lt[A238337(n), A000005(A238332(n+1))]`
-/

namespace A048279.P761911113134518710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A238332 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048279.P761911113134518710

/-! ## A048279.P9203805638944258951

`eq[A004526(n), A064460(n)]`
-/

namespace A048279.P9203805638944258951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048279.P9203805638944258951

/-! ## A048279.P8301795520707746683

`lt[A238337(n), A000005(A238362(n+1))]`
-/

namespace A048279.P8301795520707746683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A238362 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048279.P8301795520707746683

/-!
# A048283: For k >= a(n), there are A048284(n) numbers expressible as a sum of exactly k-n k-gonal numbers.

The programs for A048283, there is no canonical definition to state claims against.
-/

/-! ## A048283.P17299701317842446768

`lt[A244477(A345113(n+1)), A053644(2*n)]`
-/

namespace A048283.P17299701317842446768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A345113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048283.P17299701317842446768

/-! ## A048283.P6213241524829285891

`A030124(2*(n+2))-A000035(A063492(n+2))`
-/

namespace A048283.P6213241524829285891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (2 * (n + 2)) - A000035 (A063492 (n + 2)).toNat

end

end A048283.P6213241524829285891

/-!
# A048284: For k >= A048283(n), there are a(n) numbers expressible as a sum of exactly k-n k-gonal numbers.

The programs for A048284, there is no canonical definition to state claims against.
-/

/-! ## A048284.P11131221612588968040

`A089229(n+1)-A358372(A290744(n+1))`
-/

namespace A048284.P11131221612588968040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1) - A358372 (A290744 (n + 1)).toNat

end

end A048284.P11131221612588968040

/-! ## A048284.P16023476965036249024

`A051903(A277703(n+1))+A000037(n+1)`
-/

namespace A048284.P16023476965036249024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A277703 (n + 1)).toNat + A000037 (n + 1)

end

end A048284.P16023476965036249024

/-!
# A048285: Number of Dyck paths of length 2n with nondecreasing peaks.

The programs for A048285, there is no canonical definition to state claims against.
-/

/-! ## A048285.P13062407127610270187

`A036647(n)+A026806(A280756(n))`
-/

namespace A048285.P13062407127610270187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 n + A026806 (A280756 n).toNat

end

end A048285.P13062407127610270187

/-! ## A048285.P14242767090342979384

`A257386(n)+A102683(A000111(n))`
-/

namespace A048285.P14242767090342979384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257386 n + A102683 (A000111 n).toNat

end

end A048285.P14242767090342979384

/-! ## A048285.P15490988839693929909

`A102683(n)+A026806(A280756(n))`
-/

namespace A048285.P15490988839693929909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A026806 (A280756 n).toNat

end

end A048285.P15490988839693929909

/-! ## A048285.P3703154442270525016

`A125591(n)+A026806(A280756(n))`
-/

namespace A048285.P3703154442270525016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125591 n + A026806 (A280756 n).toNat

end

end A048285.P3703154442270525016

/-! ## A048285.P8972001762711240081

`A257386(n)+A185284(A000045(n))`
-/

namespace A048285.P8972001762711240081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257386 n + A185284 (A000045 n).toNat

end

end A048285.P8972001762711240081

/-!
# A048286: Eigensequence of a sequence transformation.

The programs for A048286, there is no canonical definition to state claims against.
-/

/-! ## A048286.P17263754080182509447

`floor(A051518((n+1)^(n+1))/9)`
-/

namespace A048286.P17263754080182509447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051518 ((n + 1) ^ (n + 1)) : ℚ) / 9⌋

end

end A048286.P17263754080182509447

/-!
# A048287: Number of semiorders on n labeled nodes whose incomparability graph is connected.

The programs for A048287, there is no canonical definition to state claims against.
-/

/-! ## A048287.P2816179251157659904

`abs(A120903(∑[n+1]))`
-/

namespace A048287.P2816179251157659904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120903 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A048287.P2816179251157659904

/-! ## A048287.P12840304341110677470

`lcm(A005135(n), A120903(∑[n+1]))`
-/

namespace A048287.P12840304341110677470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005135 n) (A120903 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048287.P12840304341110677470

/-! ## A048287.P3382291297089210759

`gcd(A010893(n), A120903(A000217(n+1)))`
-/

namespace A048287.P3382291297089210759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010893 (n + 13)) (A120903 (A000217 (n + 1)).toNat)

end

end A048287.P3382291297089210759

/-!
# A048288: Number of prime factors counted with multiplicity of the reverse concatenation of numbers from 1 to n.

The programs for A048288, there is no canonical definition to state claims against.
-/

/-! ## A048288.P9356045647331619912

`A003313(A110757(n+1))%A002254(n+1)`
-/

namespace A048288.P9356045647331619912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003313 (A110757 (n + 1)).toNat) (A002254 (n + 1))

end

end A048288.P9356045647331619912

/-! ## A048288.P8140997346525272158

`A056239(A110757(n+1))%A133974(n+1)`
-/

namespace A048288.P8140997346525272158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A110757 (n + 1)).toNat) (A133974 (n + 1))

end

end A048288.P8140997346525272158

/-! ## A048288.P12164679738135293196

`A113177(A110757(n+1))`
-/

namespace A048288.P12164679738135293196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (A110757 (n + 1)).toNat

end

end A048288.P12164679738135293196

/-!
# A048290: Numbers m that divide Sum_{k=1..m} phi(k).

The programs for A048290, there is no canonical definition to state claims against.
-/

/-! ## A048290.P12723176478577126695

`lt[n, gcd(2*n, A049696(n))]`
-/

namespace A048290.P12723176478577126695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A049696 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048290.P12723176478577126695

/-! ## A048290.P11395735145326899689

`eq[n, gcd(A002088(n), A008486(n))]`
-/

namespace A048290.P11395735145326899689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002088 n) (A008486 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048290.P11395735145326899689

/-! ## A048290.P10665025964585015538

`lt[lcm(n, A002088(n)), A049643(n)]`
-/

namespace A048290.P10665025964585015538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A002088 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048290.P10665025964585015538

/-! ## A048290.P16041555602858771885

`lt[A109606(n+1), gcd(n, A140466(n)/4)]`
-/

namespace A048290.P16041555602858771885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((A140466 n : ℚ) / 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048290.P16041555602858771885

/-! ## A048290.P14884045130125218531

`eq[A002088(n)%A028310(n), A000007(n)]`
-/

namespace A048290.P14884045130125218531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002088 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048290.P14884045130125218531

/-!
# A048291: Number of {0,1} n X n matrices with no zero rows or columns.

The programs for A048291, there is no canonical definition to state claims against.
-/

/-! ## A048291.P9809801861903888321

`A183109(C(n+1, abs(1-n)))`
-/

namespace A048291.P9809801861903888321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183109 (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat)

end

end A048291.P9809801861903888321

/-! ## A048291.P9942130367183882287

`A183109(A028310(∑[n]))`
-/

namespace A048291.P9942130367183882287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183109 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A048291.P9942130367183882287

/-! ## A048291.P9890804127502154082

`A183109(A179865(n+1))`
-/

namespace A048291.P9890804127502154082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183109 (A179865 (n + 1)).toNat

end

end A048291.P9890804127502154082

/-! ## A048291.P11773664974073967074

`A183109(gcd(∑[n], A279444(n+1)))`
-/

namespace A048291.P11773664974073967074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183109 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A279444 (n + 1)))

end

end A048291.P11773664974073967074

/-! ## A048291.P6116048971184970030

`A183109(A000217(A000007(n)+n))`
-/

namespace A048291.P6116048971184970030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183109 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A048291.P6116048971184970030

/-!
# A048292: 1-digit terms in the continued fraction for Pi.

The programs for A048292, there is no canonical definition to state claims against.
-/

/-! ## A048292.P10390195533565613558

`A001203(lt[A001203(n), 10])`
-/

namespace A048292.P10390195533565613558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048292.P10390195533565613558

/-! ## A048292.P2272888710547403066

`A001203(eq[1, ceil(A001203(n)/9)])`
-/

namespace A048292.P2272888710547403066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001203 n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048292.P2272888710547403066

/-! ## A048292.P2175721402575662786

`A001203(eq[1, A139337(A001203(n))])`
-/

namespace A048292.P2175721402575662786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048292.P2175721402575662786

/-! ## A048292.P7845658623491574782

`A001203(A048293(n+1))`
-/

namespace A048292.P7845658623491574782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (A048293 (n + 1)).toNat

end

end A048292.P7845658623491574782

/-!
# A048293: Positions of 1-digit terms in the continued fraction for Pi (3 is at position 0).

The programs for A048293, there is no canonical definition to state claims against.
-/

/-! ## A048293.P9609692748869900054

`lt[A001203(n), 10]`
-/

namespace A048293.P9609692748869900054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048293.P9609692748869900054

/-! ## A048293.P8755036362842845610

`eq[0, A001222(ceil(A001203(n)/9))]`
-/

namespace A048293.P8755036362842845610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P8755036362842845610

/-! ## A048293.P3449922075850600708

`eq[0, A004442(ceil(A001203(n)/9))]`
-/

namespace A048293.P3449922075850600708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P3449922075850600708

/-! ## A048293.P16891621103176374992

`eq[1, A000005(ceil(A001203(n)/9))]`
-/

namespace A048293.P16891621103176374992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P16891621103176374992

/-! ## A048293.P240705712232832553

`eq[1, A000041(ceil(A001203(n)/9))]`
-/

namespace A048293.P240705712232832553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P240705712232832553

/-! ## A048293.P16559292708414772458

`eq[1, A000203(ceil(A001203(n)/9))]`
-/

namespace A048293.P16559292708414772458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P16559292708414772458

/-! ## A048293.P15608039046678887283

`eq[2, A000040(ceil(A001203(n)/9))]`
-/

namespace A048293.P15608039046678887283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P15608039046678887283

/-! ## A048293.P18034046017087436310

`eq[2, A005843(ceil(A001203(n)/9))]`
-/

namespace A048293.P18034046017087436310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P18034046017087436310

/-! ## A048293.P1601609174490258463

`eq[0, A000073(ceil(A001203(n)/9))]`
-/

namespace A048293.P1601609174490258463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P1601609174490258463

/-! ## A048293.P15002912901580397327

`eq[1, A000032(ceil(A001203(n)/9))]`
-/

namespace A048293.P15002912901580397327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P15002912901580397327

/-! ## A048293.P6859906536928435848

`eq[1, A006951(ceil(A001203(n)/9))]`
-/

namespace A048293.P6859906536928435848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006951 ⌈(A001203 n : ℚ) / 9⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048293.P6859906536928435848

/-!
# A048294: 2-digit terms in the continued fraction for Pi.

The programs for A048294, there is no canonical definition to state claims against.
-/

/-! ## A048294.P9055776352142479826

`A001203(A048955(n+1))`
-/

namespace A048294.P9055776352142479826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (A048955 (n + 1)).toNat

end

end A048294.P9055776352142479826

/-!
# A048295: Sequence of 3 Pythagorean triangles, each with a leg and hypotenuse prime. The hypotenuse of each triangle is the leg of the next triangle.

The programs for A048295, there is no canonical definition to state claims against.
-/

/-! ## A048295.P15735765093643998029

`∩[A048270(n+1), A188546(n+1)]`
-/

namespace A048295.P15735765093643998029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048295.P15735765093643998029

/-! ## A048295.P5436243846285034276

`∩[A048161(n+1), A188546(n+1)]`
-/

namespace A048295.P5436243846285034276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048295.P5436243846285034276

/-! ## A048295.P12129707121485710736

`p?[A188546(n+1)]`
-/

namespace A048295.P12129707121485710736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048295.P12129707121485710736

/-! ## A048295.P5492520193930827973

`p?[record[A188546(A133310(n))]]`
-/

namespace A048295.P5492520193930827973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188546 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048295.P5492520193930827973

/-! ## A048295.P16662857786787912160

`p?[record[A188546(A291769(n))]]`
-/

namespace A048295.P16662857786787912160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188546 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048295.P16662857786787912160

/-!
# A048297: Coefficients in power series expansion over GF(2)[ X^(-1) ] of continued fraction [ 0, X, X^2, X^4, X^8, X^16, ... ].

The programs for A048297, the canonical program `A048297.P13500270705688942977` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048297 has offset 0).

The definition of A048297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048297.P13500270705688942977

`3*A003714(n)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048297

/-- `3*A003714(n)+1` -/
def P13500270705688942977.Spec : Prop :=
  ∀ n, P13500270705688942977.a n = A048297 n

theorem P13500270705688942977.correct : P13500270705688942977.Spec := by
  intro n
  simp only [A048297]

end A048297

/-! ## A048297.P5645236925033493040

`A277335(n)+1`
-/

namespace A048297.P5645236925033493040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n + 1

end

end A048297.P5645236925033493040

namespace A048297

/-- `A277335(n)+1` -/
def P5645236925033493040.Spec : Prop :=
  ∀ n, P5645236925033493040.a n = A048297 n

end A048297

/-! ## A048297.P7006367887778232244

`3/2*A022340(n)+1`
-/

namespace A048297.P7006367887778232244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022340 n : ℚ) + 1

end

end A048297.P7006367887778232244

namespace A048297

/-- `3/2*A022340(n)+1` -/
def P7006367887778232244.Spec : Prop :=
  ∀ n, P7006367887778232244.a n = (A048297 n : ℚ)

end A048297

/-! ## A048297.P3178617611578370640

`A118113(n)+A003714(n)`
-/

namespace A048297.P3178617611578370640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n + A003714 n

end

end A048297.P3178617611578370640

namespace A048297

/-- `A118113(n)+A003714(n)` -/
def P3178617611578370640.Spec : Prop :=
  ∀ n, P3178617611578370640.a n = A048297 n

end A048297

/-! ## A048297.P16192531764648323516

`A022341(n)-A003714(n)`
-/

namespace A048297.P16192531764648323516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n - A003714 n

end

end A048297.P16192531764648323516

namespace A048297

/-- `A022341(n)-A003714(n)` -/
def P16192531764648323516.Spec : Prop :=
  ∀ n, P16192531764648323516.a n = A048297 n

end A048297

/-! ## A048297.P6045820401683060535

`A003714(n)+A022340(n)+1`
-/

namespace A048297.P6045820401683060535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n + (A022340 n + 1)

end

end A048297.P6045820401683060535

namespace A048297

/-- `A003714(n)+A022340(n)+1` -/
def P6045820401683060535.Spec : Prop :=
  ∀ n, P6045820401683060535.a n = A048297 n

end A048297

/-! ## A048297.P10088102151850664931

`A118113(n)+A022340(n)/2`
-/

namespace A048297.P10088102151850664931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118113 n : ℚ) + (A022340 n : ℚ) / 2

end

end A048297.P10088102151850664931

namespace A048297

/-- `A118113(n)+A022340(n)/2` -/
def P10088102151850664931.Spec : Prop :=
  ∀ n, P10088102151850664931.a n = (A048297 n : ℚ)

end A048297

/-! ## A048297.P10682653285890372796

`(A118113(n)+A022341(n))/2`
-/

namespace A048297.P10682653285890372796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118113 n + A022341 n : ℚ) / 2

end

end A048297.P10682653285890372796

namespace A048297

/-- `(A118113(n)+A022341(n))/2` -/
def P10682653285890372796.Spec : Prop :=
  ∀ n, P10682653285890372796.a n = (A048297 n : ℚ)

end A048297

/-! ## A048297.P2752641835239448611

`A022341(n)-A022340(n)/2`
-/

namespace A048297.P2752641835239448611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022341 n : ℚ) - (A022340 n : ℚ) / 2

end

end A048297.P2752641835239448611

namespace A048297

/-- `A022341(n)-A022340(n)/2` -/
def P2752641835239448611.Spec : Prop :=
  ∀ n, P2752641835239448611.a n = (A048297 n : ℚ)

end A048297

/-! ## A048297.P3100950414177888610

`(A213540(n+1)-A118113(n))/2`
-/

namespace A048297.P3100950414177888610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213540 (n + 1) - A118113 n : ℚ) / 2

end

end A048297.P3100950414177888610

namespace A048297

/-- `(A213540(n+1)-A118113(n))/2` -/
def P3100950414177888610.Spec : Prop :=
  ∀ n, P3100950414177888610.a n = (A048297 n : ℚ)

end A048297

/-! ## A048297.P9270539014975121101

`∪[A290258(n+2), A001196(n)]+1`
-/

namespace A048297.P9270539014975121101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290258 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A048297.P9270539014975121101

namespace A048297

/-- `∪[A290258(n+2), A001196(n)]+1` -/
def P9270539014975121101.Spec : Prop :=
  ∀ n, (P9270539014975121101.a n : ℤ) = A048297 n

end A048297

/-! ## A048297.P17726372317543601196

`∪[A290258(n+2), A016913(n)]+1`
-/

namespace A048297.P17726372317543601196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290258 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A048297.P17726372317543601196

namespace A048297

/-- `∪[A290258(n+2), A016913(n)]+1` -/
def P17726372317543601196.Spec : Prop :=
  ∀ n, (P17726372317543601196.a n : ℤ) = A048297 n

end A048297

/-! ## A048297.P1682324033013231355

`A022340(n)-(A003714(n)-A118113(n))`
-/

namespace A048297.P1682324033013231355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n - (A003714 n - A118113 n)

end

end A048297.P1682324033013231355

namespace A048297

/-- `A022340(n)-(A003714(n)-A118113(n))` -/
def P1682324033013231355.Spec : Prop :=
  ∀ n, P1682324033013231355.a n = A048297 n

end A048297

/-! ## A048297.P4332491561386179966

`A022341(n)-∪[A022341(n), A105425(n)]`
-/

namespace A048297.P4332491561386179966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A048297.P4332491561386179966

namespace A048297

/-- `A022341(n)-∪[A022341(n), A105425(n)]` -/
def P4332491561386179966.Spec : Prop :=
  ∀ n, P4332491561386179966.a n = A048297 n

end A048297

/-! ## A048297.P18360406102844025979

`A295897(A000201(n+1))+1`
-/

namespace A048297.P18360406102844025979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A000201 (n + 1)).toNat + 1

end

end A048297.P18360406102844025979

namespace A048297

/-- `A295897(A000201(n+1))+1` -/
def P18360406102844025979.Spec : Prop :=
  ∀ n, P18360406102844025979.a n = A048297 n

end A048297

/-! ## A048297.P15388593006411631238

`A295897(A066096(n+1))+1`
-/

namespace A048297.P15388593006411631238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A066096 (n + 1)).toNat + 1

end

end A048297.P15388593006411631238

namespace A048297

/-- `A295897(A066096(n+1))+1` -/
def P15388593006411631238.Spec : Prop :=
  ∀ n, P15388593006411631238.a n = A048297 n

end A048297

/-! ## A048297.P5217779369490078060

`record[xor(n, 2*n)+1]`
-/

namespace A048297.P5217779369490078060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048297.P5217779369490078060

namespace A048297

/-- `record[xor(n, 2*n)+1]` -/
def P5217779369490078060.Spec : Prop :=
  ∀ n, (P5217779369490078060.a n : ℤ) = A048297 n

end A048297

/-! ## A048297.P7988080322863963240

`record[1-xor(2*n, -n)]`
-/

namespace A048297.P7988080322863963240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048297.P7988080322863963240

namespace A048297

/-- `record[1-xor(2*n, -n)]` -/
def P7988080322863963240.Spec : Prop :=
  ∀ n, P7988080322863963240.a n = A048297 n

end A048297

/-! ## A048297.P6543440818911356507

`record[abs(xor(2*n, xor(n, -1)))]`
-/

namespace A048297.P6543440818911356507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * n : ℤ) (Int.xor (n : ℤ) (-1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048297.P6543440818911356507

namespace A048297

/-- `record[abs(xor(2*n, xor(n, -1)))]` -/
def P6543440818911356507.Spec : Prop :=
  ∀ n, P6543440818911356507.a n = A048297 n

end A048297

/-! ## A048297.P17551562276559884411

`record[-xor(n, -(n+1+n))]`
-/

namespace A048297.P17551562276559884411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-(n + 1 + n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048297.P17551562276559884411

namespace A048297

/-- `record[-xor(n, -(n+1+n))]` -/
def P17551562276559884411.Spec : Prop :=
  ∀ n, P17551562276559884411.a n = A048297 n

end A048297

/-!
# A048298: a(n) = n if n=2^i for i >= 0, otherwise a(n) = 0.

The programs for A048298, the canonical program `A048298.P9490304024005855538` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048298 has offset 0).

The definition of A048298 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048298.P9490304024005855538

`A209229(n)*n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048298

/-- `A209229(n)*n` -/
def P9490304024005855538.Spec : Prop :=
  ∀ n, P9490304024005855538.a n = A048298 n

theorem P9490304024005855538.correct : P9490304024005855538.Spec := by
  intro n
  simp only [A048298]

end A048298

/-! ## A048298.P12813759370622221189

`n*char[2^n]`
-/

namespace A048298.P12813759370622221189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A048298.P12813759370622221189

namespace A048298

/-- `n*char[2^n]` -/
def P12813759370622221189.Spec : Prop :=
  ∀ n, (P12813759370622221189.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P12773597091388159389

`and(n, -char[2^n])`
-/

namespace A048298.P12773597091388159389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A048298.P12773597091388159389

namespace A048298

/-- `and(n, -char[2^n])` -/
def P12773597091388159389.Spec : Prop :=
  ∀ n, P12773597091388159389.a n = A048298 n

end A048298

/-! ## A048298.P5695575627736609471

`lcm(n, ∏{p}[n, val(#, 2)])`
-/

namespace A048298.P5695575627736609471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2)

end

end A048298.P5695575627736609471

namespace A048298

/-- `lcm(n, ∏{p}[n, val(#, 2)])` -/
def P5695575627736609471.Spec : Prop :=
  ∀ n, (P5695575627736609471.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P1876682370935420940

`Δ[or(n-1, a(n-1))]` with `a(0)=0`
-/

namespace A048298.P1876682370935420940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor ((n : ℤ) - 1) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048298.P1876682370935420940

namespace A048298

/-- `Δ[or(n-1, a(n-1))]` -/
def P1876682370935420940.Spec : Prop :=
  ∀ n, P1876682370935420940.a n = A048298 n

end A048298

/-! ## A048298.P872766038009145091

`C(n, (and(n, n-1)+1)²)`
-/

namespace A048298.P872766038009145091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((Int.land (n : ℤ) ((n : ℤ) - 1) + 1) ^ 2).toNat

end

end A048298.P872766038009145091

namespace A048298

/-- `C(n, (and(n, n-1)+1)²)` -/
def P872766038009145091.Spec : Prop :=
  ∀ n, (P872766038009145091.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P4881596268859359260

`floor(n^(1-and(n, n-1)))`
-/

namespace A048298.P4881596268859359260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (1 - Int.land (n : ℤ) ((n : ℤ) - 1) : ℤ)⌋

end

end A048298.P4881596268859359260

namespace A048298

/-- `floor(n^(1-and(n, n-1)))` -/
def P4881596268859359260.Spec : Prop :=
  ∀ n, P4881596268859359260.a n = A048298 n

end A048298

/-! ## A048298.P15879412382712840033

`round(n^(1-and(n, n-1)))`
-/

namespace A048298.P15879412382712840033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - Int.land (n : ℤ) ((n : ℤ) - 1) : ℤ))

end

end A048298.P15879412382712840033

namespace A048298

/-- `round(n^(1-and(n, n-1)))` -/
def P15879412382712840033.Spec : Prop :=
  ∀ n, P15879412382712840033.a n = A048298 n

end A048298

/-! ## A048298.P13341316731084026165

`floor(n^(3-∑{p}[2*n, #]))`
-/

namespace A048298.P13341316731084026165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (3 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ)⌋

end

end A048298.P13341316731084026165

namespace A048298

/-- `floor(n^(3-∑{p}[2*n, #]))` -/
def P13341316731084026165.Spec : Prop :=
  ∀ n, P13341316731084026165.a n = A048298 n

end A048298

/-! ## A048298.P413641582837615851

`floor(n^(3-∏{p}[2*n, #]))`
-/

namespace A048298.P413641582837615851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (3 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ)⌋

end

end A048298.P413641582837615851

namespace A048298

/-- `floor(n^(3-∏{p}[2*n, #]))` -/
def P413641582837615851.Spec : Prop :=
  ∀ n, P413641582837615851.a n = A048298 n

end A048298

/-! ## A048298.P2493365831960719550

`round(n^(3-∑{p}[2*n, #]))`
-/

namespace A048298.P2493365831960719550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (3 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ))

end

end A048298.P2493365831960719550

namespace A048298

/-- `round(n^(3-∑{p}[2*n, #]))` -/
def P2493365831960719550.Spec : Prop :=
  ∀ n, P2493365831960719550.a n = A048298 n

end A048298

/-! ## A048298.P4056717753000792500

`round(n^(3-∏{p}[2*n, #]))`
-/

namespace A048298.P4056717753000792500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (3 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ))

end

end A048298.P4056717753000792500

namespace A048298

/-- `round(n^(3-∏{p}[2*n, #]))` -/
def P4056717753000792500.Spec : Prop :=
  ∀ n, P4056717753000792500.a n = A048298 n

end A048298

/-! ## A048298.P12006787384493900851

`C(n, or(-(n+1), -n)²)`
-/

namespace A048298.P12006787384493900851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lor (-(n + 1 : ℤ)) (-(n : ℤ)) ^ 2).toNat

end

end A048298.P12006787384493900851

namespace A048298

/-- `C(n, or(-(n+1), -n)²)` -/
def P12006787384493900851.Spec : Prop :=
  ∀ n, (P12006787384493900851.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P18263983430575652003

`C(n, 2*and(n, n-1)+1)`
-/

namespace A048298.P18263983430575652003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

end

end A048298.P18263983430575652003

namespace A048298

/-- `C(n, 2*and(n, n-1)+1)` -/
def P18263983430575652003.Spec : Prop :=
  ∀ n, (P18263983430575652003.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P11931753475330716132

`C(n, C(and(n, n-1)+2, 2))`
-/

namespace A048298.P11931753475330716132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (Int.land (n : ℤ) ((n : ℤ) - 1) + 2).toNat 2)

end

end A048298.P11931753475330716132

namespace A048298

/-- `C(n, C(and(n, n-1)+2, 2))` -/
def P11931753475330716132.Spec : Prop :=
  ∀ n, (P11931753475330716132.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P5403442296285149736

`C(n, 2*n-xor(n, n-1))`
-/

namespace A048298.P5403442296285149736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((2 * n : ℤ) - Int.xor (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A048298.P5403442296285149736

namespace A048298

/-- `C(n, 2*n-xor(n, n-1))` -/
def P5403442296285149736.Spec : Prop :=
  ∀ n, (P5403442296285149736.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P3749660845747761612

`C(n, (1-and(n, n-1)²)²)`
-/

namespace A048298.P3749660845747761612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((1 - Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2) ^ 2).toNat

end

end A048298.P3749660845747761612

namespace A048298

/-- `C(n, (1-and(n, n-1)²)²)` -/
def P3749660845747761612.Spec : Prop :=
  ∀ n, (P3749660845747761612.a n : ℤ) = A048298 n

end A048298

/-! ## A048298.P13891317871525681082

`floor(n/(and(n, n-1)+1)²)`
-/

namespace A048298.P13891317871525681082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((Int.land (n : ℤ) ((n : ℤ) - 1) + 1) ^ 2 : ℚ)⌋

end

end A048298.P13891317871525681082

namespace A048298

/-- `floor(n/(and(n, n-1)+1)²)` -/
def P13891317871525681082.Spec : Prop :=
  ∀ n, P13891317871525681082.a n = A048298 n

end A048298

/-! ## A048298.P18415051438624889300

`(n+1-char[2^n])%(n+1)`
-/

namespace A048298.P18415051438624889300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A048298.P18415051438624889300

namespace A048298

/-- `(n+1-char[2^n])%(n+1)` -/
def P18415051438624889300.Spec : Prop :=
  ∀ n, P18415051438624889300.a n = A048298 n

end A048298

/-! ## A048298.P4311056922716461262

`C(n, xor(n, -n)+2*n+1)`
-/

namespace A048298.P4311056922716461262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.xor (n : ℤ) (-(n : ℤ)) + (2 * n + 1 : ℤ)).toNat

end

end A048298.P4311056922716461262

namespace A048298

/-- `C(n, xor(n, -n)+2*n+1)` -/
def P4311056922716461262.Spec : Prop :=
  ∀ n, (P4311056922716461262.a n : ℤ) = A048298 n

end A048298

/-!
# A048299: Let b(n) = A048273(n) = maximal number of prime factors of C(n,k) for k=0..n; sequence gives smallest value of k achieving b(n).

The programs for A048299, there is no canonical definition to state claims against.
-/

/-! ## A048299.P12504698356112307455

`ceil(n/2-A048484(n+1))`
-/

namespace A048299.P12504698356112307455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A048484 (n + 1) : ℚ)⌉

end

end A048299.P12504698356112307455

/-! ## A048299.P8439059247403174919

`ceil(n/2)-A048484(-xor(n, -1))`
-/

namespace A048299.P8439059247403174919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - A048484 (-Int.xor (n : ℤ) (-1)).toNat

end

end A048299.P8439059247403174919

/-! ## A048299.P6887588348814829854

`A110654(n)-A048484(n+1)`
-/

namespace A048299.P6887588348814829854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A048484 (n + 1)

end

end A048299.P6887588348814829854

/-! ## A048299.P14971392858779354207

`abs(A001057(n))-A048484(n+1)`
-/

namespace A048299.P14971392858779354207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A048484 (n + 1)

end

end A048299.P14971392858779354207

/-! ## A048299.P3375549704251424970

`∑[A000035(n)]-A048484(n+1)`
-/

namespace A048299.P3375549704251424970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048484 (n + 1)

end

end A048299.P3375549704251424970

/-! ## A048299.P17411641887969329207

`Δ[A002620(n)]-A048484(n+1)`
-/

namespace A048299.P17411641887969329207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048484 (n + 1)

end

end A048299.P17411641887969329207

/-! ## A048299.P1233229461431967019

`Δ[A033638(n)]-A048484(n+1)`
-/

namespace A048299.P1233229461431967019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048484 (n + 1)

end

end A048299.P1233229461431967019

/-! ## A048299.P4270008586503760594

`A004526(n+1)-A048484(n+1)`
-/

namespace A048299.P4270008586503760594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A048484 (n + 1)

end

end A048299.P4270008586503760594

/-! ## A048299.P168434304149415303

`A028242(A004442(n))-A048484(n+1)`
-/

namespace A048299.P168434304149415303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004442 n).toNat - A048484 (n + 1)

end

end A048299.P168434304149415303

/-! ## A048299.P16505167395020918882

`A004523(A265428(n))-A048484(n+1)`
-/

namespace A048299.P16505167395020918882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A265428 n).toNat - A048484 (n + 1)

end

end A048299.P16505167395020918882

/-! ## A048299.P2407849510756991523

`A048475(n+1)+A048485(n+1)-A048484(n+1)`
-/

namespace A048299.P2407849510756991523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048475 (n + 1) + (A048485 (n + 1) - A048484 (n + 1))

end

end A048299.P2407849510756991523

/-! ## A048299.P9066261920161499115

`log2(A060546(n))-A048484(n+1)`
-/

namespace A048299.P9066261920161499115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060546 n : ℝ) - (A048484 (n + 1) : ℝ)

end

end A048299.P9066261920161499115

/-! ## A048299.P3968214439866460646

`A152146(A000124(n))-A048484(n+1)`
-/

namespace A048299.P3968214439866460646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A000124 n).toNat - A048484 (n + 1)

end

end A048299.P3968214439866460646

