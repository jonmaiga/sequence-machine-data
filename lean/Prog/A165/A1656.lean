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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165600: A maximum absolute value of A165597 in range [A165598(n),A165598(n+1)].

The programs for A165600, there is no canonical definition to state claims against.
-/

/-! ## A165600.P1715293028451556097

`A165597(A165599(n))`
-/

namespace A165600.P1715293028451556097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A165599 n).toNat

end

end A165600.P1715293028451556097

/-!
# A165601: Midpoint height of Jacobi-bridge, computed for 4n+3. a(n) = Sum_{i=0..(2n+1)} J(i,4n+3), where J(i,m) is the Jacobi symbol.

The programs for A165601, there is no canonical definition to state claims against.
-/

/-! ## A165601.P18179681220571878465

`A166407(2*n+1)/A010684(n)`
-/

namespace A165601.P18179681220571878465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (2 * n + 1) : ℚ) / (A010684 n : ℚ)

end

end A165601.P18179681220571878465

/-! ## A165601.P5564531999864623983

`A166407(2*n+1)/Δ[A042948(n)]`
-/

namespace A165601.P5564531999864623983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (2 * n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A165601.P5564531999864623983

/-! ## A165601.P15924034142638324199

`A166407(2*n+1)/A010873(2*n+1)`
-/

namespace A165601.P15924034142638324199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (2 * n + 1) : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A165601.P15924034142638324199

/-! ## A165601.P8799205044957992848

`abs(A166407(A005408(n))/A010684(n))`
-/

namespace A165601.P8799205044957992848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A166407 (A005408 n).toNat : ℚ) / (A010684 n : ℚ)|

end

end A165601.P8799205044957992848

/-! ## A165601.P3227555471802994491

`A166407(2*n+1)/Δ[A042964(n+1)]`
-/

namespace A165601.P3227555471802994491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (2 * n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A165601.P3227555471802994491

/-! ## A165601.P12812874171989290778

`A110248(Δ[n²])`
-/

namespace A165601.P12812874171989290778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165601.P12812874171989290778

/-! ## A165601.P10215724813599638424

`A110248(2*n+1)%(n+2)`
-/

namespace A165601.P10215724813599638424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110248 (2 * n + 1)) (n + 2 : ℤ)

end

end A165601.P10215724813599638424

/-! ## A165601.P1839615350498265381

`A166407(2*n+1)/(2-A087960(2*n))`
-/

namespace A165601.P1839615350498265381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (2 * n + 1) : ℚ) / (2 - A087960 (2 * n) : ℚ)

end

end A165601.P1839615350498265381

/-! ## A165601.P1593595917851583584

`A166407(2*n+1)/(A087960(2*n+1)+2)`
-/

namespace A165601.P1593595917851583584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (2 * n + 1) : ℚ) / (A087960 (2 * n + 1) + 2 : ℚ)

end

end A165601.P1593595917851583584

/-! ## A165601.P13986229517238089611

`A372876(3*(n+1)+n)`
-/

namespace A165601.P13986229517238089611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (3 * (n + 1) + n)

end

end A165601.P13986229517238089611

/-!
# A165602: Positions of zeros in A165601.

The programs for A165602, there is no canonical definition to state claims against.
-/

/-! ## A165602.P13286423421783905568

`floor(A165603(n)/4)`
-/

namespace A165602.P13286423421783905568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165603 n : ℚ) / 4⌋

end

end A165602.P13286423421783905568

/-! ## A165602.P18262189490821533291

`eq[0, A165601(n)]`
-/

namespace A165602.P18262189490821533291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165602.P18262189490821533291

/-! ## A165602.P1778977718046688671

`eq[0, A166406(2*n+1)]`
-/

namespace A165602.P1778977718046688671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165602.P1778977718046688671

/-! ## A165602.P3725467373226000866

`eq[0, A166407(2*n+1)]`
-/

namespace A165602.P3725467373226000866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166407 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165602.P3725467373226000866

/-! ## A165602.P3062705719223402559

`lt[A000040(A166407(2*n+1)+3)², 28]`
-/

namespace A165602.P3062705719223402559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A166407 (2 * n + 1) + 3).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165602.P3062705719223402559

/-! ## A165602.P2315876657383372068

`eq[1, A166407(A005408(n))+1]`
-/

namespace A165602.P2315876657383372068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166407 (A005408 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165602.P2315876657383372068

/-! ## A165602.P8707801908287697464

`eq[0, A110248(2*n+1)]`
-/

namespace A165602.P8707801908287697464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165602.P8707801908287697464

/-! ## A165602.P7018397056734848471

`eq[0, A329648(2*n+1)]`
-/

namespace A165602.P7018397056734848471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329648 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165602.P7018397056734848471

/-! ## A165602.P10014167881359251739

`A002265(A165603(n))`
-/

namespace A165602.P10014167881359251739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165603 n).toNat

end

end A165602.P10014167881359251739

/-!
# A165603: Numbers of the form 4n+3 for which Sum_{i=0..(2n+1)} J(i,4n+3) = 0, where J(i,m) is the Jacobi symbol.

The programs for A165603, there is no canonical definition to state claims against.
-/

/-! ## A165603.P4279178705728402166

`4*A165602(n)+3`
-/

namespace A165603.P4279178705728402166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165602 n + 3

end

end A165603.P4279178705728402166

/-! ## A165603.P4349737347344788539

`A016825(A165602(n))+1`
-/

namespace A165603.P4349737347344788539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A165602 n).toNat + 1

end

end A165603.P4349737347344788539

/-! ## A165603.P2088031965990514861

`A004767(A165602(n))`
-/

namespace A165603.P2088031965990514861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165602 n).toNat

end

end A165603.P2088031965990514861

/-! ## A165603.P5036317700087265722

`A016813(A165602(n)+1)-2`
-/

namespace A165603.P5036317700087265722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A165602 n + 1).toNat - 2

end

end A165603.P5036317700087265722

/-! ## A165603.P10966934354290889326

`A092486(4*A165602(n))`
-/

namespace A165603.P10966934354290889326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (4 * A165602 n).toNat

end

end A165603.P10966934354290889326

/-! ## A165603.P12223959085482826977

`A004273(A004273(A165602(n))+3)`
-/

namespace A165603.P12223959085482826977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004273 (A165602 n).toNat + 3).toNat

end

end A165603.P12223959085482826977

/-! ## A165603.P14220156758986737097

`A163985(A163985(A165602(n))+3)`
-/

namespace A165603.P14220156758986737097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A163985 (A165602 n).toNat + 3).toNat

end

end A165603.P14220156758986737097

/-! ## A165603.P2338332859299945805

`A267872(A165602(n)+A165602(n)+1)`
-/

namespace A165603.P2338332859299945805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A165602 n + (A165602 n + 1)).toNat

end

end A165603.P2338332859299945805

/-! ## A165603.P9269862527322200127

`A141310(2*A267872(A165602(n)))`
-/

namespace A165603.P9269862527322200127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A267872 (A165602 n).toNat).toNat

end

end A165603.P9269862527322200127

/-! ## A165603.P4217365047877539117

`A008619(A017209(A165602(n))-A165602(n))`
-/

namespace A165603.P4217365047877539117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A017209 (A165602 n).toNat - A165602 n).toNat

end

end A165603.P4217365047877539117

/-!
# A165604: Trisection 3n of A165601.

The programs for A165604, there is no canonical definition to state claims against.
-/

/-! ## A165604.P5897873728148962947

`A165601(3*n)`
-/

namespace A165604.P5897873728148962947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (3 * n)

end

end A165604.P5897873728148962947

/-! ## A165604.P12351349876846646918

`A166407(6*n+1)/3^(n%2)`
-/

namespace A165604.P12351349876846646918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (6 * n + 1) : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A165604.P12351349876846646918

/-! ## A165604.P6296627091231195489

`A166407(A016921(n))/A010684(n)`
-/

namespace A165604.P6296627091231195489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 (A016921 n).toNat : ℚ) / (A010684 n : ℚ)

end

end A165604.P6296627091231195489

/-! ## A165604.P2838100777906151391

`A110248(A016921(n))`
-/

namespace A165604.P2838100777906151391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A016921 n).toNat

end

end A165604.P2838100777906151391

/-! ## A165604.P4444724828076751205

`A110248(A101328(n+2)+2)`
-/

namespace A165604.P4444724828076751205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A101328 (n + 2) + 2).toNat

end

end A165604.P4444724828076751205

/-! ## A165604.P13347531955232339137

`A372876(A017557(n))`
-/

namespace A165604.P13347531955232339137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A017557 n).toNat

end

end A165604.P13347531955232339137

/-! ## A165604.P13262528535505150711

`A110248(A144917(n+2))`
-/

namespace A165604.P13262528535505150711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A144917 (n + 2)).toNat

end

end A165604.P13262528535505150711

/-!
# A165605: Trisection 3n+1 of A165601.

The programs for A165605, there is no canonical definition to state claims against.
-/

/-! ## A165605.P3786794155835721552

`A165601(3*n+1)`
-/

namespace A165605.P3786794155835721552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (3 * n + 1)

end

end A165605.P3786794155835721552

/-! ## A165605.P8678403744853233841

`A165460(n)-A166050(n)`
-/

namespace A165605.P8678403744853233841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 n - A166050 n

end

end A165605.P8678403744853233841

/-! ## A165605.P11900056593920673946

`(2-A033999(n))*A165460(n)/2`
-/

namespace A165605.P11900056593920673946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - A033999 n) * A165460 n : ℚ) / 2

end

end A165605.P11900056593920673946

/-! ## A165605.P4044800002465395971

`or(A000007(n), A165601(A016777(n)))`
-/

namespace A165605.P4044800002465395971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A165601 (A016777 n).toNat)

end

end A165605.P4044800002465395971

/-! ## A165605.P864598685356691583

`A005843(abs(A166050(n)))-A166050(n)`
-/

namespace A165605.P864598685356691583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A166050 n|.toNat - A166050 n

end

end A165605.P864598685356691583

/-! ## A165605.P7359980334886255087

`A004526((2-A033999(n))*A165460(n))`
-/

namespace A165605.P7359980334886255087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 - A033999 n) * A165460 n).toNat

end

end A165605.P7359980334886255087

/-! ## A165605.P12867429634637013368

`A165460(n)-A165460(n)/A228826(A005843(n))`
-/

namespace A165605.P12867429634637013368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165460 n : ℚ) - (A165460 n : ℚ) / (A228826 (A005843 n).toNat : ℚ)

end

end A165605.P12867429634637013368

/-! ## A165605.P143600846414850580

`A110248(6*n+3)`
-/

namespace A165605.P143600846414850580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (6 * n + 3)

end

end A165605.P143600846414850580

/-! ## A165605.P1043816099796042235

`A372876(A017605(n))`
-/

namespace A165605.P1043816099796042235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A017605 n).toNat

end

end A165605.P1043816099796042235

/-!
# A165606: Trisection 3n+2 of A165601.

The programs for A165606, there is no canonical definition to state claims against.
-/

/-! ## A165606.P13040197948593507286

`A165601(3*n+2)`
-/

namespace A165606.P13040197948593507286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (3 * n + 2)

end

end A165606.P13040197948593507286

/-! ## A165606.P2389047976984438450

`or(A000007(n), A165601(A016789(n)))`
-/

namespace A165606.P2389047976984438450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A165601 (A016789 n).toNat)

end

end A165606.P2389047976984438450

/-! ## A165606.P13642264275257543732

`A007318(C(2, n))*A165601(A016789(n))`
-/

namespace A165606.P13642264275257543732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A165601 (A016789 n).toNat

end

end A165606.P13642264275257543732

/-! ## A165606.P14605376021772834614

`A110248(A016969(n))`
-/

namespace A165606.P14605376021772834614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A016969 n).toNat

end

end A165606.P14605376021772834614

/-! ## A165606.P3898150569015128332

`A110248(A101328(n+3))`
-/

namespace A165606.P3898150569015128332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A101328 (n + 3)).toNat

end

end A165606.P3898150569015128332

/-! ## A165606.P6991006775591088834

`A110248(A016921(n+1)-2)`
-/

namespace A165606.P6991006775591088834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A016921 (n + 1) - 2).toNat

end

end A165606.P6991006775591088834

/-! ## A165606.P5876345744629178959

`A372876(A017653(n))`
-/

namespace A165606.P5876345744629178959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A017653 n).toNat

end

end A165606.P5876345744629178959

/-!
# A165607: a(n) = (A165608(n)-3)/4.

The programs for A165607, there is no canonical definition to state claims against.
-/

/-! ## A165607.P5667518658806679748

`(A165608(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165607.P5667518658806679748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165608 (n + 1) - 3 : ℚ) / 4

end

end A165607.P5667518658806679748

/-! ## A165607.P16983870338450178205

`floor(A165608(n+1)/4)`
-/

namespace A165607.P16983870338450178205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165608 (n + 1) : ℚ) / 4⌋

end

end A165607.P16983870338450178205

/-! ## A165607.P2330113874268497854

`A002265(A165608(n+1))`
-/

namespace A165607.P2330113874268497854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165608 (n + 1)).toNat

end

end A165607.P2330113874268497854

/-! ## A165607.P8008522656058360206

`A059169(A165608(n+1)+1)`
-/

namespace A165607.P8008522656058360206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A165608 (n + 1) + 1).toNat

end

end A165607.P8008522656058360206

/-! ## A165607.P11488297831128077962

`A101279(A165608(n+1)-1)`
-/

namespace A165607.P11488297831128077962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A165608 (n + 1) - 1).toNat

end

end A165607.P11488297831128077962

/-! ## A165607.P7435165501299721520

`A110659(A165608(n+1)-1)`
-/

namespace A165607.P7435165501299721520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A165608 (n + 1) - 1).toNat

end

end A165607.P7435165501299721520

/-! ## A165607.P3935064469896283070

`A008624(A165608(n+1)-2)`
-/

namespace A165607.P3935064469896283070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A165608 (n + 1) - 2).toNat

end

end A165607.P3935064469896283070

/-! ## A165607.P10462770813460310362

`A025480(A165608(n+1)-2)`
-/

namespace A165607.P10462770813460310362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A165608 (n + 1) - 2).toNat

end

end A165607.P10462770813460310362

/-! ## A165607.P11905946150718626976

`A054576(A165608(n+1)-3)`
-/

namespace A165607.P11905946150718626976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A165608 (n + 1) - 3).toNat

end

end A165607.P11905946150718626976

/-! ## A165607.P2505079702333368056

`A174571(A165608(n+1)-3)`
-/

namespace A165607.P2505079702333368056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A165608 (n + 1) - 3).toNat

end

end A165607.P2505079702333368056

/-!
# A165608: Numbers of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) is never negative for any u in range [1,2n+1], but obtains at least one value zero, where J(i,m) is the Jacobi symbol.

The programs for A165608, there is no canonical definition to state claims against.
-/

/-! ## A165608.P17216308280925600316

`4*A165607(n+1)+3`
-/

namespace A165608.P17216308280925600316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165607 (n + 1) + 3

end

end A165608.P17216308280925600316

/-! ## A165608.P16300647288984733106

`A004767(A165607(n+1))`
-/

namespace A165608.P16300647288984733106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165607 (n + 1)).toNat

end

end A165608.P16300647288984733106

/-! ## A165608.P8125342221593400972

`A131098(A165607(n+1)+2)`
-/

namespace A165608.P8125342221593400972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A165607 (n + 1) + 2).toNat

end

end A165608.P8125342221593400972

/-! ## A165608.P14567139282315969505

`A005818(2*A165607(n+1))`
-/

namespace A165608.P14567139282315969505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (2 * A165607 (n + 1)).toNat

end

end A165608.P14567139282315969505

/-! ## A165608.P4660506767441798006

`A062545(2*A165607(n+1))`
-/

namespace A165608.P4660506767441798006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (2 * A165607 (n + 1)).toNat

end

end A165608.P4660506767441798006

/-! ## A165608.P8590835723525831097

`A166519(2*A165607(n+1))`
-/

namespace A165608.P8590835723525831097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (2 * A165607 (n + 1)).toNat

end

end A165608.P8590835723525831097

/-! ## A165608.P14482648495666379733

`A092486(4*A165607(n+1))`
-/

namespace A165608.P14482648495666379733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (4 * A165607 (n + 1)).toNat

end

end A165608.P14482648495666379733

/-! ## A165608.P11780763726480317246

`A008574(A165607(n+1)+1)-1`
-/

namespace A165608.P11780763726480317246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A165607 (n + 1) + 1).toNat - 1

end

end A165608.P11780763726480317246

/-! ## A165608.P1652775817933277659

`A008586(A165607(n+1)+1)-1`
-/

namespace A165608.P1652775817933277659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A165607 (n + 1) + 1).toNat - 1

end

end A165608.P1652775817933277659

/-! ## A165608.P16122626941460929238

`A008586(A165607(n+1))+A020639(A017629(n))`
-/

namespace A165608.P16122626941460929238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A165607 (n + 1)).toNat + A020639 (A017629 n).toNat

end

end A165608.P16122626941460929238

/-!
# A165610: The number of patterns of non-papaya words.

The programs for A165610, there is no canonical definition to state claims against.
-/

/-! ## A165610.P8755783322384270943

`A000110(n+1)-A165137(n+1)`
-/

namespace A165610.P8755783322384270943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A165137 (n + 1)

end

end A165610.P8755783322384270943

/-! ## A165610.P872309200289135937

`record[A108087(n)]-A165137(n+1)`
-/

namespace A165610.P872309200289135937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A165137 (n + 1)

end

end A165610.P872309200289135937

/-! ## A165610.P4726904601075900193

`record[A123346(n)]-A165137(n+1)`
-/

namespace A165610.P4726904601075900193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A165137 (n + 1)

end

end A165610.P4726904601075900193

/-! ## A165610.P17256222715643240742

`record[A205574(n)]-A165137(n+1)`
-/

namespace A165610.P17256222715643240742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A165137 (n + 1)

end

end A165610.P17256222715643240742

/-! ## A165610.P6263919574794352298

`A188164(2*(n+1))-A165137(n+1)`
-/

namespace A165610.P6263919574794352298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (2 * (n + 1)) - A165137 (n + 1)

end

end A165610.P6263919574794352298

/-!
# A165611: The number of n-digit non-papaya numbers.

The programs for A165611, there is no canonical definition to state claims against.
-/

/-! ## A165611.P15227605735222918671

`A052268(n+1)-A165135(n+1)`
-/

namespace A165611.P15227605735222918671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) - A165135 (n + 1)

end

end A165611.P15227605735222918671

/-! ## A165611.P6931622962028812117

`Δ[A002283(n)]-A165135(n+1)`
-/

namespace A165611.P6931622962028812117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165135 (n + 1)

end

end A165611.P6931622962028812117

/-! ## A165611.P16695093626254524119

`Δ[A011557(n)]-A165135(n+1)`
-/

namespace A165611.P16695093626254524119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165135 (n + 1)

end

end A165611.P16695093626254524119

/-! ## A165611.P7149066627394733025

`Δ[A062397(n)]-A165135(n+1)`
-/

namespace A165611.P7149066627394733025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165135 (n + 1)

end

end A165611.P7149066627394733025

/-! ## A165611.P1984488042924179982

`A011557(n+1)-(A165135(n+1)+A011557(n))`
-/

namespace A165611.P1984488042924179982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - (A165135 (n + 1) + A011557 n)

end

end A165611.P1984488042924179982

/-!
# A165613: Primes of the form 1 + prime(k) + (prime(k+1))^2, any k.

The programs for A165613, there is no canonical definition to state claims against.
-/

/-! ## A165613.P7982406878593872790

`p?[A349660(n+1)+1]`
-/

namespace A165613.P7982406878593872790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165613.P7982406878593872790

/-! ## A165613.P18401369534509449172

`p?[A028815(n)+A000040(n+1)²]`
-/

namespace A165613.P18401369534509449172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165613.P18401369534509449172

/-! ## A165613.P17894497970941351926

`p?[A066872(n+1)+A008578(n+1)]`
-/

namespace A165613.P17894497970941351926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165613.P17894497970941351926

/-! ## A165613.P2327739978940767416

`p?[A008864(n+1)+A001248(n+2)]`
-/

namespace A165613.P2327739978940767416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A001248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165613.P2327739978940767416

/-! ## A165613.P16365894401031235991

`p?[A066872(n+2)+A000040(n+1)]`
-/

namespace A165613.P16365894401031235991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165613.P16365894401031235991

/-!
# A165615: Primes p such that (p^2-1)/16-p is also a prime number.

The programs for A165615, there is no canonical definition to state claims against.
-/

/-! ## A165615.P12195776102916816787

`A089297(or(A024770(n+1), A324517(n+1)))`
-/

namespace A165615.P12195776102916816787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089297 (Int.lor (A024770 (n + 1)) (A324517 (n + 1))).toNat

end

end A165615.P12195776102916816787

/-!
# A165616: Primes of the form (p^2 - 1)/16 - p, where p is also a prime.

The programs for A165616, there is no canonical definition to state claims against.
-/

/-! ## A165616.P15035395452145042724

`A241592(A165615(n+1))-A165615(n+1)`
-/

namespace A165616.P15035395452145042724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241592 (A165615 (n + 1)).toNat - A165615 (n + 1)

end

end A165616.P15035395452145042724

/-!
# A165618: a(n) = binomial(n+8,8) - 1.

The programs for A165618, the canonical program `A165618.P15483055962896292448` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165618 has offset 0).

The definition of A165618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)-1` (program `A165618.P15483055962896292448`, by `A165618.P15483055962896292448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165618.P15483055962896292448

`C(n+8, 8)-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165618

/-- `C(n+8, 8)-1` -/
def P15483055962896292448.Spec : Prop :=
  ∀ n, P15483055962896292448.a n = A165618 n

theorem P15483055962896292448.correct : P15483055962896292448.Spec := by
  intro n
  simp only [A165618]

end A165618

/-! ## A165618.P9072305756681628807

`A000581(n+8)-1`
-/

namespace A165618.P9072305756681628807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) - 1

end

end A165618.P9072305756681628807

namespace A165618

/-- `A000581(n+8)-1` -/
def P9072305756681628807.Spec : Prop :=
  ∀ n, P9072305756681628807.a n = A165618 n

end A165618

/-! ## A165618.P1202591823524502161

`∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]-1`
-/

namespace A165618.P1202591823524502161
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A165618.P1202591823524502161

namespace A165618

/-- `∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]-1` -/
def P1202591823524502161.Spec : Prop :=
  ∀ n, P1202591823524502161.a n = A165618 n

end A165618

/-! ## A165618.P9959140638492326721

`abs(1-∑[A000580(n+7)])`
-/

namespace A165618.P9959140638492326721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A165618.P9959140638492326721

namespace A165618

/-- `abs(1-∑[A000580(n+7)])` -/
def P9959140638492326721.Spec : Prop :=
  ∀ n, P9959140638492326721.a n = A165618 n

end A165618

/-! ## A165618.P5829497274861424236

`∑[C(n+7, 7)*A057427(n)]`
-/

namespace A165618.P5829497274861424236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165618.P5829497274861424236

namespace A165618

/-- `∑[C(n+7, 7)*A057427(n)]` -/
def P5829497274861424236.Spec : Prop :=
  ∀ n, P5829497274861424236.a n = A165618 n

end A165618

/-! ## A165618.P6495963068736434639

`∑[C(n+7, 7)%A010968(n)]`
-/

namespace A165618.P6495963068736434639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 7) 7 : ℤ) (A010968 (n + 15))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165618.P6495963068736434639

namespace A165618

/-- `∑[C(n+7, 7)%A010968(n)]` -/
def P6495963068736434639.Spec : Prop :=
  ∀ n, P6495963068736434639.a n = A165618 n

end A165618

/-! ## A165618.P5124167914733037518

`∑[xor(C(n+7, 7), A000007(n))]`
-/

namespace A165618.P5124167914733037518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose (n + 7) 7 : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165618.P5124167914733037518

namespace A165618

/-- `∑[xor(C(n+7, 7), A000007(n))]` -/
def P5124167914733037518.Spec : Prop :=
  ∀ n, P5124167914733037518.a n = A165618 n

end A165618

/-! ## A165618.P249507848860640026

`∑[A103131(n+1)²*C(n+7, 7)]`
-/

namespace A165618.P249507848860640026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (n + 1) ^ 2 * (Nat.choose (n + 7) 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165618.P249507848860640026

namespace A165618

/-- `∑[A103131(n+1)²*C(n+7, 7)]` -/
def P249507848860640026.Spec : Prop :=
  ∀ n, P249507848860640026.a n = A165618 n

end A165618

/-! ## A165618.P13015114225324349705

`∑[A000580(n+7)-A000007(n)]`
-/

namespace A165618.P13015114225324349705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165618.P13015114225324349705

namespace A165618

/-- `∑[A000580(n+7)-A000007(n)]` -/
def P13015114225324349705.Spec : Prop :=
  ∀ n, P13015114225324349705.a n = A165618 n

end A165618

/-! ## A165618.P6992870678197509952

`A127228(n+4)%A000581(n+8)`
-/

namespace A165618.P6992870678197509952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A000581 (n + 8))

end

end A165618.P6992870678197509952

namespace A165618

/-- `A127228(n+4)%A000581(n+8)` -/
def P6992870678197509952.Spec : Prop :=
  ∀ n, P6992870678197509952.a n = A165618 n

end A165618

/-! ## A165618.P238210414014470118

`A127229(n+5)%A000581(n+8)`
-/

namespace A165618.P238210414014470118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A000581 (n + 8))

end

end A165618.P238210414014470118

namespace A165618

/-- `A127229(n+5)%A000581(n+8)` -/
def P238210414014470118.Spec : Prop :=
  ∀ n, P238210414014470118.a n = A165618 n

end A165618

/-! ## A165618.P16541313279729799302

`∑[A000580(n+7)%A000581(n+8)]`
-/

namespace A165618.P16541313279729799302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000580 (n + 7)) (A000581 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165618.P16541313279729799302

namespace A165618

/-- `∑[A000580(n+7)%A000581(n+8)]` -/
def P16541313279729799302.Spec : Prop :=
  ∀ n, P16541313279729799302.a n = A165618 n

end A165618

/-! ## A165618.P2932558393494730202

`(A104671(n)-A000292(n+1))/A000292(n+1)`
-/

namespace A165618.P2932558393494730202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104671 n - A000292 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ)

end

end A165618.P2932558393494730202

namespace A165618

/-- `(A104671(n)-A000292(n+1))/A000292(n+1)` -/
def P2932558393494730202.Spec : Prop :=
  ∀ n, P2932558393494730202.a n = (A165618 n : ℚ)

end A165618

/-! ## A165618.P191231806486581208

`(A140325(n)-A000079(n))/A000079(n)`
-/

namespace A165618.P191231806486581208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140325 n - A000079 n : ℚ) / (A000079 n : ℚ)

end

end A165618.P191231806486581208

namespace A165618

/-- `(A140325(n)-A000079(n))/A000079(n)` -/
def P191231806486581208.Spec : Prop :=
  ∀ n, P191231806486581208.a n = (A165618 n : ℚ)

end A165618

/-! ## A165618.P2985942875456737967

`(A054339(n)-A000302(n))/A000302(n)`
-/

namespace A165618.P2985942875456737967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054339 n - A000302 n : ℚ) / (A000302 n : ℚ)

end

end A165618.P2985942875456737967

namespace A165618

/-- `(A054339(n)-A000302(n))/A000302(n)` -/
def P2985942875456737967.Spec : Prop :=
  ∀ n, P2985942875456737967.a n = (A165618 n : ℚ)

end A165618

/-! ## A165618.P10381257630617354997

`A014473(A000217(n+9)-9)`
-/

namespace A165618.P10381257630617354997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000217 (n + 9) - 9).toNat

end

end A165618.P10381257630617354997

namespace A165618

/-- `A014473(A000217(n+9)-9)` -/
def P10381257630617354997.Spec : Prop :=
  ∀ n, P10381257630617354997.a n = A165618 n

end A165618

/-! ## A165618.P10387249374841802463

`(A172501(n)-A000400(n))/A000400(n)`
-/

namespace A165618.P10387249374841802463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172501 n - A000400 n : ℚ) / (A000400 n : ℚ)

end

end A165618.P10387249374841802463

namespace A165618

/-- `(A172501(n)-A000400(n))/A000400(n)` -/
def P10387249374841802463.Spec : Prop :=
  ∀ n, P10387249374841802463.a n = (A165618 n : ℚ)

end A165618

/-!
# A165619: a(n) = number of nonexistent values of cos(2*Pi/k) mod n, taken over k = 1..n-1.

The programs for A165619, there is no canonical definition to state claims against.
-/

/-! ## A165619.P5321820378849371045

`A070091(2*(n+2))%A337412(A014963(n+1))`
-/

namespace A165619.P5321820378849371045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070091 (2 * (n + 2))) (A337412 (A014963 (n + 1)).toNat)

end

end A165619.P5321820378849371045

/-! ## A165619.P16185393225951908825

`Δ[ceil(n²/12)]%A171450(A014973(n+1))`
-/

namespace A165619.P16185393225951908825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A171450 (A014973 (n + 1)).toNat)

end

end A165619.P16185393225951908825

/-! ## A165619.P12562438023464242854

`A008612(n)%A055570(A014973(n+1))`
-/

namespace A165619.P12562438023464242854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008612 n) (A055570 (A014973 (n + 1)).toNat)

end

end A165619.P12562438023464242854

/-! ## A165619.P9265103035143739925

`A195177(A061006(n+1)%A206302(n))`
-/

namespace A165619.P9265103035143739925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (Int.tmod (A061006 (n + 1)) (A206302 n)).toNat

end

end A165619.P9265103035143739925

/-!
# A165620: Riordan array ((1-x)/(1-x^4),x/(1+x^2)).

The programs for A165620, there is no canonical definition to state claims against.
-/

/-! ## A165620.P1884723549968782692

`A097807(n)*A128494(n)`
-/

namespace A165620.P1884723549968782692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A128494 n

end

end A165620.P1884723549968782692

/-! ## A165620.P5763041964642761957

`A033999(A025581(n))*A128494(n)`
-/

namespace A165620.P5763041964642761957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A128494 n

end

end A165620.P5763041964642761957

/-! ## A165620.P17590455552367540384

`A009531(A099375(n))*A128494(n)`
-/

namespace A165620.P17590455552367540384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A128494 n

end

end A165620.P17590455552367540384

/-! ## A165620.P366975182515285300

`A062157(A004736(n+1))*A128494(n)`
-/

namespace A165620.P366975182515285300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A128494 n

end

end A165620.P366975182515285300

/-! ## A165620.P7257703690627279415

`A033999(A063656(n))*A128494(n)`
-/

namespace A165620.P7257703690627279415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A128494 n

end

end A165620.P7257703690627279415

/-! ## A165620.P15603144616854943548

`A033999(A292564(n))*A128494(n)`
-/

namespace A165620.P15603144616854943548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A292564 n).toNat * A128494 n

end

end A165620.P15603144616854943548

/-! ## A165620.P419445554801951844

`A008836(A130321(n))*A128494(n)`
-/

namespace A165620.P419445554801951844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A128494 n

end

end A165620.P419445554801951844

/-! ## A165620.P8041158029252314235

`A106400(A173787(n))*A128494(n)`
-/

namespace A165620.P8041158029252314235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A173787 n).toNat * A128494 n

end

end A165620.P8041158029252314235

/-! ## A165620.P7011475416011657030

`A020985(A130330(n))*A128494(n)`
-/

namespace A165620.P7011475416011657030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A128494 n

end

end A165620.P7011475416011657030

/-!
# A165621: Riordan array (c(x^2)*(1+xc(x^2)), xc(x^2)).

The programs for A165621, the canonical program `A165621.P2440575893113926756` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165621 has offset 0).

The definition of A165621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165621.P15834592636095003874

`A053121(n+1-(2-gcd(2, comp[∑[4*n]]))%10)`
-/

namespace A165621.P15834592636095003874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 ((n + 1 : ℤ) - Int.tmod (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) 10).toNat

end

end A165621.P15834592636095003874

namespace A165621

/-- `A053121(n+1-(2-gcd(2, comp[∑[4*n]]))%10)` -/
def P15834592636095003874.Spec : Prop :=
  ∀ n, P15834592636095003874.a n = A165621 n

end A165621

/-! ## A165621.P16673529192551404211

`gcd(Δ[A053121(n)], A053121(n))`
-/

namespace A165621.P16673529192551404211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A053121 n)

end

end A165621.P16673529192551404211

namespace A165621

/-- `gcd(Δ[A053121(n)], A053121(n))` -/
def P16673529192551404211.Spec : Prop :=
  ∀ n, (P16673529192551404211.a n : ℤ) = A165621 n

end A165621

/-! ## A165621.P13824437133200317703

`A053121(A025581(n)%2+n)`
-/

namespace A165621.P13824437133200317703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (Int.tmod (A025581 n) 2 + (n : ℤ)).toNat

end

end A165621.P13824437133200317703

namespace A165621

/-- `A053121(A025581(n)%2+n)` -/
def P13824437133200317703.Spec : Prop :=
  ∀ n, P13824437133200317703.a n = A165621 n

end A165621

/-! ## A165621.P9228369288311519013

`A053121(char[eq[0, A053121(n)]]+n)`
-/

namespace A165621.P9228369288311519013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A165621.P9228369288311519013

namespace A165621

/-- `A053121(char[eq[0, A053121(n)]]+n)` -/
def P9228369288311519013.Spec : Prop :=
  ∀ n, P9228369288311519013.a n = A165621 n

end A165621

/-! ## A165621.P7968057347803160411

`A053121(floor(γ^A053121(n)+n))`
-/

namespace A165621.P7968057347803160411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 ⌊Real.eulerMascheroniConstant ^ (A053121 n : ℤ) + (n : ℝ)⌋.toNat

end

end A165621.P7968057347803160411

namespace A165621

/-- `A053121(floor(γ^A053121(n)+n))` -/
def P7968057347803160411.Spec : Prop :=
  ∀ n, P7968057347803160411.a n = A165621 n

end A165621

/-! ## A165621.P2440575893113926756

`2*A061554(n)-A335322(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165621

/-- `2*A061554(n)-A335322(n+1)` -/
def P2440575893113926756.Spec : Prop :=
  ∀ n, P2440575893113926756.a n = A165621 n

theorem P2440575893113926756.correct : P2440575893113926756.Spec := by
  intro n
  simp only [A165621]

end A165621

/-! ## A165621.P9300921868050715079

`A050176(A057028(n+1))`
-/

namespace A165621.P9300921868050715079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (A057028 (n + 1)).toNat

end

end A165621.P9300921868050715079

namespace A165621

/-- `A050176(A057028(n+1))` -/
def P9300921868050715079.Spec : Prop :=
  ∀ n, P9300921868050715079.a n = A165621 n

end A165621

/-! ## A165621.P31603178613955875

`A050176(A209293(n+1))`
-/

namespace A165621.P31603178613955875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (A209293 (n + 1)).toNat

end

end A165621.P31603178613955875

namespace A165621

/-- `A050176(A209293(n+1))` -/
def P31603178613955875.Spec : Prop :=
  ∀ n, P31603178613955875.a n = A165621 n

end A165621

/-! ## A165621.P7404107704990103687

`A050176(A385406(n+1))`
-/

namespace A165621.P7404107704990103687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (A385406 (n + 1)).toNat

end

end A165621.P7404107704990103687

namespace A165621

/-- `A050176(A385406(n+1))` -/
def P7404107704990103687.Spec : Prop :=
  ∀ n, P7404107704990103687.a n = A165621 n

end A165621

/-! ## A165621.P15773351622604323552

`A189231(and(1, A025581(n))+n)`
-/

namespace A165621.P15773351622604323552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189231 (Int.land 1 (A025581 n) + (n : ℤ)).toNat

end

end A165621.P15773351622604323552

namespace A165621

/-- `A189231(and(1, A025581(n))+n)` -/
def P15773351622604323552.Spec : Prop :=
  ∀ n, P15773351622604323552.a n = A165621 n

end A165621

/-!
# A165622: a(n)=(-4)*a(n-1)+8 with a(0)=1.

The programs for A165622, the canonical program `A165622.P16013550425090210407` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165622 has offset 0).

The definition of A165622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-1)+8` (program `A165622.P16013550425090210407`, by `A165622.P16013550425090210407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165622.P16013550425090210407

`-4*a(n-1)+8` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165622

/-- `-4*a(n-1)+8` -/
def P16013550425090210407.Spec : Prop :=
  ∀ n, P16013550425090210407.a n = A165622 n

theorem P16013550425090210407.correct : P16013550425090210407.Spec := by
  intro n
  simp only [A165622]

end A165622

/-! ## A165622.P638491720331357744

`(8-3*(-4)^n)/5`
-/

namespace A165622.P638491720331357744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 - 3 * (-4) ^ n : ℚ) / 5

end

end A165622.P638491720331357744

namespace A165622

/-- `(8-3*(-4)^n)/5` -/
def P638491720331357744.Spec : Prop :=
  ∀ n, P638491720331357744.a n = (A165622 n : ℚ)

theorem P638491720331357744.correct : P638491720331357744.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165622, Nat.add_sub_cancel, A165622.P638491720331357744.a, A165622.P16013550425090210407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165622, Nat.add_sub_cancel, A165622.P638491720331357744.a, A165622.P16013550425090210407.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165622

/-! ## A165622.P16326873817413093495

`∑[ogf((1+7x)/(1+4x))]`
-/

namespace A165622.P16326873817413093495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165622.P16326873817413093495

namespace A165622

/-- `∑[ogf((1+7x)/(1+4x))]` -/
def P16326873817413093495.Spec : Prop :=
  ∀ n, P16326873817413093495.a n = A165622 n

end A165622

/-! ## A165622.P14198692003363262611

`ogf((1+7x)/(1+3x-4x^2))`
-/

namespace A165622.P14198692003363262611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 3, -4] n

end

end A165622.P14198692003363262611

namespace A165622

/-- `ogf((1+7x)/(1+3x-4x^2))` -/
def P14198692003363262611.Spec : Prop :=
  ∀ n, P14198692003363262611.a n = A165622 n

end A165622

/-! ## A165622.P605071466151594720

`4*(2-a(n-1))` with `a(0)=1`
-/

namespace A165622.P605071466151594720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 - a (n - 1))

end

end A165622.P605071466151594720

namespace A165622

/-- `4*(2-a(n-1))` -/
def P605071466151594720.Spec : Prop :=
  ∀ n, P605071466151594720.a n = A165622 n

theorem P605071466151594720.correct : P605071466151594720.Spec := by
  intro n
  simp only [A165622, Nat.add_sub_cancel, A165622.P605071466151594720.a, A165622.P16013550425090210407.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165622

/-! ## A165622.P14292618639857092568

`8-a(n-1)-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A165622.P14292618639857092568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1)

end

end A165622.P14292618639857092568

namespace A165622

/-- `8-a(n-1)-a(n-1)-a(n-1)-a(n-1)` -/
def P14292618639857092568.Spec : Prop :=
  ∀ n, P14292618639857092568.a n = A165622 n

theorem P14292618639857092568.correct : P14292618639857092568.Spec := by
  intro n
  simp only [A165622, Nat.add_sub_cancel, A165622.P14292618639857092568.a, A165622.P16013550425090210407.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165622

/-! ## A165622.P10273193717437304654

`3*A166114(n)-2`
-/

namespace A165622.P10273193717437304654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A166114 n - 2

end

end A165622.P10273193717437304654

namespace A165622

/-- `3*A166114(n)-2` -/
def P10273193717437304654.Spec : Prop :=
  ∀ n, P10273193717437304654.a n = A165622 n

end A165622

/-! ## A165622.P12915147224485321454

`A062157(n)*A330795(n)+1`
-/

namespace A165622.P12915147224485321454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A330795 n + 1

end

end A165622.P12915147224485321454

namespace A165622

/-- `A062157(n)*A330795(n)+1` -/
def P12915147224485321454.Spec : Prop :=
  ∀ n, P12915147224485321454.a n = A165622 n

end A165622

/-! ## A165622.P7869954066171051840

`2-A056594(2*n)*A100088(2*n)`
-/

namespace A165622.P7869954066171051840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056594 (2 * n) * A100088 (2 * n)

end

end A165622.P7869954066171051840

namespace A165622

/-- `2-A056594(2*n)*A100088(2*n)` -/
def P7869954066171051840.Spec : Prop :=
  ∀ n, P7869954066171051840.a n = A165622 n

end A165622

/-! ## A165622.P4329616504273996892

`Δ[Δ[A181586(2*n)]]*A228826(2*n+1)`
-/

namespace A165622.P4329616504273996892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A228826 (2 * n + 1)

end

end A165622.P4329616504273996892

namespace A165622

/-- `Δ[Δ[A181586(2*n)]]*A228826(2*n+1)` -/
def P4329616504273996892.Spec : Prop :=
  ∀ n, P4329616504273996892.a n = A165622 n

end A165622

/-! ## A165622.P16710273816396686410

`A137505(A004277(2*n+1))+A137505(4*n)`
-/

namespace A165622.P16710273816396686410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (A004277 (2 * n + 1)).toNat + A137505 (4 * n)

end

end A165622.P16710273816396686410

namespace A165622

/-- `A137505(A004277(2*n+1))+A137505(4*n)` -/
def P16710273816396686410.Spec : Prop :=
  ∀ n, P16710273816396686410.a n = A165622 n

end A165622

/-! ## A165622.P14535738454519769072

`A137505(4*(n+1))+A137505(4*n)`
-/

namespace A165622.P14535738454519769072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (4 * (n + 1)) + A137505 (4 * n)

end

end A165622.P14535738454519769072

namespace A165622

/-- `A137505(4*(n+1))+A137505(4*n)` -/
def P14535738454519769072.Spec : Prop :=
  ∀ n, P14535738454519769072.a n = A165622 n

end A165622

/-!
# A165623: Integers of the form a(n)=2^n/n^2.

The programs for A165623, the canonical program `A165623.P14019246357235239727` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165623 has offset 1).

The definition of A165623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165623.P14019246357235239727

`2^2^n/2^(2*(n+1)-2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165623

/-- `2^2^n/2^(2*(n+1)-2)` -/
def P14019246357235239727.Spec : Prop :=
  ∀ n, P14019246357235239727.a n = (A165623 (n + 1) : ℚ)

end A165623

/-! ## A165623.P4116128863569472003

`(a(n-1)/2^(2-n))²` with `a(0)=2`
-/

namespace A165623.P4116128863569472003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)) ^ 2

end

end A165623.P4116128863569472003

namespace A165623

/-- `(a(n-1)/2^(2-n))²` -/
def P4116128863569472003.Spec : Prop :=
  ∀ n, P4116128863569472003.a n = (A165623 (n + 1) : ℚ)

end A165623

/-! ## A165623.P14856187581916523999

`ceil(2^Δ[2^n-lcm(n, n-1)])`
-/

namespace A165623.P14856187581916523999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌉

end

end A165623.P14856187581916523999

namespace A165623

/-- `ceil(2^Δ[2^n-lcm(n, n-1)])` -/
def P14856187581916523999.Spec : Prop :=
  ∀ n, P14856187581916523999.a n = A165623 (n + 1)

end A165623

/-! ## A165623.P13451992349919481844

`abs((-2)^abs(xor(-(2*n), -2^n)))`
-/

namespace A165623.P13451992349919481844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((-2 : ℚ) ^ (|Int.xor (-(2 * n : ℤ)) (-(2 ^ n : ℤ))| : ℤ))|

end

end A165623.P13451992349919481844

namespace A165623

/-- `abs((-2)^abs(xor(-(2*n), -2^n)))` -/
def P13451992349919481844.Spec : Prop :=
  ∀ n, P13451992349919481844.a n = (A165623 (n + 1) : ℚ)

end A165623

/-! ## A165623.P12593746975761825566

`(2*a(n-1)/a(n-2))²*a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A165623.P12593746975761825566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  (2 * (a (n - 1) / a (n - 2))) ^ 2 * a (n - 1)

end

end A165623.P12593746975761825566

namespace A165623

/-- `(2*a(n-1)/a(n-2))²*a(n-1)` -/
def P12593746975761825566.Spec : Prop :=
  ∀ n, P12593746975761825566.a n = (A165623 (n + 1) : ℚ)

end A165623

/-!
# A165624: 

The programs for A165624, there is no canonical definition to state claims against.
-/

/-! ## A165624.P3091756576262810440

`3^(3^n-3*n)`
-/

namespace A165624.P3091756576262810440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((3 ^ n : ℤ) - (3 * n : ℤ) : ℤ)

end

end A165624.P3091756576262810440

/-!
# A165625: a(n)=(5/3)*(1+2*(-5)^(n-1)).

The programs for A165625, the canonical program `A165625.P9919436772887392164` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165625 has offset 0).

The definition of A165625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5/3*(1+2*(-5)^(n-1))` (program `A165625.P13871549735687810546`, by `A165625.P13871549735687810546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165625.P13871549735687810546

`5/3*(1+2*(-5)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165625.P13871549735687810546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (1 + 2 * (-5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165625.P13871549735687810546

namespace A165625

/-- `5/3*(1+2*(-5)^(n-1))` -/
def P13871549735687810546.Spec : Prop :=
  ∀ n, P13871549735687810546.a n = (A165625 n : ℚ)

theorem P13871549735687810546.correct : P13871549735687810546.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165625, Nat.add_sub_cancel, A165625.P13871549735687810546.a, A165625.P9919436772887392164.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165625, Nat.add_sub_cancel, A165625.P13871549735687810546.a, A165625.P9919436772887392164.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A165625

/-! ## A165625.P9919436772887392164

`5*a(n-2)-4*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165625

/-- `5*a(n-2)-4*a(n-1)` -/
def P9919436772887392164.Spec : Prop :=
  ∀ n, P9919436772887392164.a n = A165625 n

theorem P9919436772887392164.correct : P9919436772887392164.Spec := by
  intro n
  simp only [A165625]

end A165625

/-! ## A165625.P2691519764624488489

`∑[ogf((1+9x)/(1+5x))]`
-/

namespace A165625.P2691519764624488489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165625.P2691519764624488489

namespace A165625

/-- `∑[ogf((1+9x)/(1+5x))]` -/
def P2691519764624488489.Spec : Prop :=
  ∀ n, P2691519764624488489.a n = A165625 n

end A165625

/-! ## A165625.P5282793857774791566

`ogf((1+9x)/(1+4x-5x^2))`
-/

namespace A165625.P5282793857774791566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, 4, -5] n

end

end A165625.P5282793857774791566

namespace A165625

/-- `ogf((1+9x)/(1+4x-5x^2))` -/
def P5282793857774791566.Spec : Prop :=
  ∀ n, P5282793857774791566.a n = A165625 n

end A165625

/-! ## A165625.P7686145310327684928

`10-5*a(n-1)` with `a(0)=1`
-/

namespace A165625.P7686145310327684928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 - 5 * a (n - 1)

end

end A165625.P7686145310327684928

namespace A165625

/-- `10-5*a(n-1)` -/
def P7686145310327684928.Spec : Prop :=
  ∀ n, P7686145310327684928.a n = A165625 n

end A165625

/-! ## A165625.P12183540208829601655

`10-a(n-1)/(1-4/5)` with `a(0)=1`
-/

namespace A165625.P12183540208829601655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 - a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A165625.P12183540208829601655

namespace A165625

/-- `10-a(n-1)/(1-4/5)` -/
def P12183540208829601655.Spec : Prop :=
  ∀ n, P12183540208829601655.a n = (A165625 n : ℚ)

end A165625

/-! ## A165625.P6531898207071686721

`3-2*A083085(n)`
-/

namespace A165625.P6531898207071686721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A083085 n

end

end A165625.P6531898207071686721

namespace A165625

/-- `3-2*A083085(n)` -/
def P6531898207071686721.Spec : Prop :=
  ∀ n, P6531898207071686721.a n = A165625 n

end A165625

/-! ## A165625.P2781719271088190227

`4*A166122(n)-3`
-/

namespace A165625.P2781719271088190227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166122 n - 3

end

end A165625.P2781719271088190227

namespace A165625

/-- `4*A166122(n)-3` -/
def P2781719271088190227.Spec : Prop :=
  ∀ n, P2781719271088190227.a n = A165625 n

end A165625

/-! ## A165625.P13557913608837360252

`2-A033999(n)*A083217(n)`
-/

namespace A165625.P13557913608837360252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n * A083217 n

end

end A165625.P13557913608837360252

namespace A165625

/-- `2-A033999(n)*A083217(n)` -/
def P13557913608837360252.Spec : Prop :=
  ∀ n, P13557913608837360252.a n = A165625 n

end A165625

/-!
# A165626: Number of 5-regular graphs (quintic graphs) on 2n vertices.

The programs for A165626, there is no canonical definition to state claims against.
-/

/-! ## A165626.P15565378814062890945

`A165655(n)+A006821(n)`
-/

namespace A165626.P15565378814062890945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n + A006821 n

end

end A165626.P15565378814062890945

/-! ## A165626.P8390961682462888899

`A165655(n)+A068934(A000384(n)+6)`
-/

namespace A165626.P8390961682462888899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n + A068934 (A000384 n + 6).toNat

end

end A165626.P8390961682462888899

/-! ## A165626.P10012158864350210817

`A006821(n)+A185254(n)+A185053(n)`
-/

namespace A165626.P10012158864350210817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 n + (A185254 n + A185053 n)

end

end A165626.P10012158864350210817

/-! ## A165626.P256713782130613766

`A006821(n)+A185053(n)+A001591(A165652(n))`
-/

namespace A165626.P256713782130613766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 n + (A185053 n + A001591 (A165652 n).toNat)

end

end A165626.P256713782130613766

/-! ## A165626.P2938250321216224788

`A006821(n)+A185053(n)+A073357(A185043(n))`
-/

namespace A165626.P2938250321216224788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 n + (A185053 n + A073357 (A185043 n).toNat)

end

end A165626.P2938250321216224788

/-!
# A165627: Number of 6-regular graphs (sextic graphs) on n vertices.

The programs for A165627, there is no canonical definition to state claims against.
-/

/-! ## A165627.P3207335670959903712

`A165656(n)+A006822(n)`
-/

namespace A165627.P3207335670959903712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n + A006822 n

end

end A165627.P3207335670959903712

/-! ## A165627.P15691364130870990194

`A006822(n)+A191928(n)+A185063(n)`
-/

namespace A165627.P15691364130870990194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 n + (A191928 n + A185063 n)

end

end A165627.P15691364130870990194

/-! ## A165627.P4596307157214101165

`A006822(n)-(A184946(n)-A165656(n))`
-/

namespace A165627.P4596307157214101165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 n - (A184946 n - A165656 n)

end

end A165627.P4596307157214101165

/-! ## A165627.P8008426625036011265

`A006822(n)+xor(A025428(A214249(n+1)), A185063(n))`
-/

namespace A165627.P8008426625036011265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 n + Int.xor (A025428 (A214249 (n + 1)).toNat) (A185063 n)

end

end A165627.P8008426625036011265

/-! ## A165627.P15942559148752117261

`A185063(A185037(n)+n)+A006822(n)`
-/

namespace A165627.P15942559148752117261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A185037 n + (n : ℤ)).toNat + A006822 n

end

end A165627.P15942559148752117261

/-!
# A165628: Number of 7-regular graphs (septic graphs) on 2n vertices.

The programs for A165628, there is no canonical definition to state claims against.
-/

/-! ## A165628.P9442306938792560966

`A165877(n)+A014377(n)`
-/

namespace A165628.P9442306938792560966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165877 n + A014377 n

end

end A165628.P9442306938792560966

/-! ## A165628.P5126011388593419877

`A184973(n)+A184965(n)`
-/

namespace A165628.P5126011388593419877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184973 n + A184965 n

end

end A165628.P5126011388593419877

/-! ## A165628.P3953711407849715945

`A263362(n)+A184973(n)`
-/

namespace A165628.P3953711407849715945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263362 n + A184973 n

end

end A165628.P3953711407849715945

/-! ## A165628.P15744278541138904876

`or(A014377(n), A184973(n))`
-/

namespace A165628.P15744278541138904876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014377 n) (A184973 n)

end

end A165628.P15744278541138904876

/-! ## A165628.P4088765240030299980

`or(A107458(n), A184973(n))`
-/

namespace A165628.P4088765240030299980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107458 n) (A184973 n)

end

end A165628.P4088765240030299980

/-!
# A165631: Numbers whose cube is a concatenation of primes, i.e., in A152242.

The programs for A165631, there is no canonical definition to state claims against.
-/

/-! ## A165631.P2809446474509551256

`root(A038840(n+1), 3)`
-/

namespace A165631.P2809446474509551256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038840 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A165631.P2809446474509551256

/-! ## A165631.P12169227341716456058

`A054846(floor(sqrt(A038840(n+1))))`
-/

namespace A165631.P12169227341716456058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.sqrt (A038840 (n + 1))).toNat

end

end A165631.P12169227341716456058

/-! ## A165631.P3403856393470833507

`A054846(ceil(sqrt(A038840(n+1))))`
-/

namespace A165631.P3403856393470833507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 ⌈Real.sqrt (A038840 (n + 1) : ℝ)⌉.toNat

end

end A165631.P3403856393470833507

/-! ## A165631.P12019327170892950396

`A054846(round(sqrt(A038840(n+1))))`
-/

namespace A165631.P12019327170892950396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (SequenceMachineLib.roundAway (Real.sqrt (A038840 (n + 1) : ℝ))).toNat

end

end A165631.P12019327170892950396

/-! ## A165631.P11367468840643617305

`eq[A004016(A319164(2*(n+1))), A005882(n)]`
-/

namespace A165631.P11367468840643617305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A319164 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165631.P11367468840643617305

/-!
# A165632: Sizes of tatami-free rooms.

The programs for A165632, there is no canonical definition to state claims against.
-/

/-! ## A165632.P11243275617528390511

`A103517(lt[0, A165766(n+1)])`
-/

namespace A165632.P11243275617528390511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A165632.P11243275617528390511

/-!
# A165633: Number of tatami-free rooms of given size A165632(n).

The programs for A165633, there is no canonical definition to state claims against.
-/

/-! ## A165633.P3625700225722583033

`gcd(2, A058669(∑{d}[n+1, #]-and(n, -2)))`
-/

namespace A165633.P3625700225722583033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A058669 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - Int.land (n : ℤ) (-2)).toNat)

end

end A165633.P3625700225722583033

/-! ## A165633.P16542828489166452659

`A030556(A325662(n+1))`
-/

namespace A165633.P16542828489166452659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A325662 (n + 1)).toNat

end

end A165633.P16542828489166452659

/-! ## A165633.P15767263954402984886

`A244226(A334354(n+1))`
-/

namespace A165633.P15767263954402984886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A334354 (n + 1)).toNat

end

end A165633.P15767263954402984886

/-! ## A165633.P15774939229542339461

`gcd(A306446(n+1), A352817(n))`
-/

namespace A165633.P15774939229542339461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306446 (n + 1)) (A352817 n)

end

end A165633.P15774939229542339461

/-! ## A165633.P12547651673493434846

`gcd(A013947(A261959(n)), A207409(n+2))`
-/

namespace A165633.P12547651673493434846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013947 (A261959 n).toNat) (A207409 (n + 2))

end

end A165633.P12547651673493434846

/-!
# A165634: Start with x=1 and repeat: if x is a prime number then (append i and then x, with x=prime(i)) else (only append x), continue with x:=x+1.

The programs for A165634, the canonical program `A165634.P2944057035927304657` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165634 has offset 1).

The definition of A165634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165634.P2944057035927304657

`A000720(p?[A082500(n+1)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A165634

/-- `A000720(p?[A082500(n+1)])` -/
def P2944057035927304657.Spec : Prop :=
  ∀ n, P2944057035927304657.a n = A165634 (n + 1)

theorem P2944057035927304657.correct : P2944057035927304657.Spec := by
  intro n
  simp only [A165634, Nat.add_sub_cancel]

end A165634

/-! ## A165634.P15286172536788997862

`A003963(p?[A082500(n+1)])`
-/

namespace A165634.P15286172536788997862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P15286172536788997862

namespace A165634

/-- `A003963(p?[A082500(n+1)])` -/
def P15286172536788997862.Spec : Prop :=
  ∀ n, P15286172536788997862.a n = A165634 (n + 1)

end A165634

/-! ## A165634.P4837780474566851724

`A049084(p?[A082500(n+1)])`
-/

namespace A165634.P4837780474566851724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P4837780474566851724

namespace A165634

/-- `A049084(p?[A082500(n+1)])` -/
def P4837780474566851724.Spec : Prop :=
  ∀ n, P4837780474566851724.a n = A165634 (n + 1)

end A165634

/-! ## A165634.P245546335449676659

`A056239(p?[A082500(n+1)])`
-/

namespace A165634.P245546335449676659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P245546335449676659

namespace A165634

/-- `A056239(p?[A082500(n+1)])` -/
def P245546335449676659.Spec : Prop :=
  ∀ n, P245546335449676659.a n = A165634 (n + 1)

end A165634

/-! ## A165634.P4517100078378901024

`A062778(p?[A082500(n+1)])`
-/

namespace A165634.P4517100078378901024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062778 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P4517100078378901024

namespace A165634

/-- `A062778(p?[A082500(n+1)])` -/
def P4517100078378901024.Spec : Prop :=
  ∀ n, P4517100078378901024.a n = A165634 (n + 1)

end A165634

/-! ## A165634.P14024031795018714391

`A067004(p?[A082500(n+1)])`
-/

namespace A165634.P14024031795018714391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P14024031795018714391

namespace A165634

/-- `A067004(p?[A082500(n+1)])` -/
def P14024031795018714391.Spec : Prop :=
  ∀ n, P14024031795018714391.a n = A165634 (n + 1)

end A165634

/-! ## A165634.P16499823837403342156

`A230980(p?[A082500(n+1)])`
-/

namespace A165634.P16499823837403342156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165634.P16499823837403342156

namespace A165634

/-- `A230980(p?[A082500(n+1)])` -/
def P16499823837403342156.Spec : Prop :=
  ∀ n, P16499823837403342156.a n = A165634 (n + 1)

end A165634

/-!
# A165635: Primes of the form (p^2 - 3)/2 where p is also prime.

The programs for A165635, there is no canonical definition to state claims against.
-/

/-! ## A165635.P297928559271044148

`(A110589(n+1)²-3)/2`
-/

namespace A165635.P297928559271044148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110589 (n + 1) ^ 2 - 3 : ℚ) / 2

end

end A165635.P297928559271044148

/-! ## A165635.P13672455387776872863

`(A110588(n+1)-3)/2`
-/

namespace A165635.P13672455387776872863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110588 (n + 1) - 3 : ℚ) / 2

end

end A165635.P13672455387776872863

/-! ## A165635.P17813879121141670605

`(p?[A109358(n+1)]²-3)/2`
-/

namespace A165635.P17813879121141670605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 3 : ℚ) / 2

end

end A165635.P17813879121141670605

/-! ## A165635.P10063736592926500583

`∩[A098828(n+1), A243887(n+1)]`
-/

namespace A165635.P10063736592926500583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165635.P10063736592926500583

/-! ## A165635.P4949960724498557413

`record[A098828(n+1)/A001222(A109358(n+1))]`
-/

namespace A165635.P4949960724498557413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098828 (n + 1) : ℚ) / (A001222 (A109358 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165635.P4949960724498557413

/-! ## A165635.P1258084121550366547

`A047838(A110589(n+1))`
-/

namespace A165635.P1258084121550366547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A110589 (n + 1)).toNat

end

end A165635.P1258084121550366547

/-! ## A165635.P9680675247893327368

`A047838(p?[A109358(n+1)])`
-/

namespace A165635.P9680675247893327368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165635.P9680675247893327368

/-! ## A165635.P8155325418483901349

`p?[A243887(n+1)]`
-/

namespace A165635.P8155325418483901349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165635.P8155325418483901349

/-! ## A165635.P11506274002587933313

`p?[∑[A247396(n+2)]]`
-/

namespace A165635.P11506274002587933313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247396 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165635.P11506274002587933313

/-!
# A165636: a(n) = A091137(n)/2^n.

The programs for A165636, the canonical program `A165636.P9527528292599602845` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165636 has offset 0).

The definition of A165636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165636.P9527528292599602845

`A091137(n)/2^n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A165636

/-- `A091137(n)/2^n` -/
def P9527528292599602845.Spec : Prop :=
  ∀ n, P9527528292599602845.a n = (A165636 n : ℚ)

end A165636

/-! ## A165636.P5726522464685766233

`∏[A141459(n)]`
-/

namespace A165636.P5726522464685766233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165636.P5726522464685766233

namespace A165636

/-- `∏[A141459(n)]` -/
def P5726522464685766233.Spec : Prop :=
  ∀ n, P5726522464685766233.a n = A165636 n

end A165636

/-! ## A165636.P504365685468055118

`∏[ceil(A141056(n)/2)]`
-/

namespace A165636.P504365685468055118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141056 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165636.P504365685468055118

namespace A165636

/-- `∏[ceil(A141056(n)/2)]` -/
def P504365685468055118.Spec : Prop :=
  ∀ n, P504365685468055118.a n = A165636 n

end A165636

/-! ## A165636.P10588400526766576469

`∏[floor((A027642(n)+1)/2)]`
-/

namespace A165636.P10588400526766576469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027642 n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165636.P10588400526766576469

namespace A165636

/-- `∏[floor((A027642(n)+1)/2)]` -/
def P10588400526766576469.Spec : Prop :=
  ∀ n, P10588400526766576469.a n = A165636 n

end A165636

/-! ## A165636.P5029862308129296896

`a(n-1)*A306821(n)` with `a(0)=1, a(1)=1`
-/

namespace A165636.P5029862308129296896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A306821 n

end

end A165636.P5029862308129296896

namespace A165636

/-- `a(n-1)*A306821(n)` -/
def P5029862308129296896.Spec : Prop :=
  ∀ n, P5029862308129296896.a n = A165636 n

end A165636

/-! ## A165636.P5931724568508591643

`a(n-2)*A172087(n)` with `a(0)=1, a(1)=1`
-/

namespace A165636.P5931724568508591643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A172087 n

end

end A165636.P5931724568508591643

namespace A165636

/-- `a(n-2)*A172087(n)` -/
def P5931724568508591643.Spec : Prop :=
  ∀ n, P5931724568508591643.a n = A165636 n

end A165636

/-! ## A165636.P6973575089019806290

`A195338(n+1)/A091137(n+1)*A195338(n)`
-/

namespace A165636.P6973575089019806290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195338 (n + 1) : ℚ) / (A091137 (n + 1) : ℚ) * (A195338 n : ℚ)

end

end A165636.P6973575089019806290

namespace A165636

/-- `A195338(n+1)/A091137(n+1)*A195338(n)` -/
def P6973575089019806290.Spec : Prop :=
  ∀ n, P6973575089019806290.a n = (A165636 n : ℚ)

end A165636

/-!
# A165637: Primes p such that (p^2-3)/2 is not a prime number.

The programs for A165637, there is no canonical definition to state claims against.
-/

/-! ## A165637.P11128209088437889559

`p?[A172471(A020484(A028552(n)))]`
-/

namespace A165637.P11128209088437889559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A020484 (A028552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165637.P11128209088437889559

/-! ## A165637.P11921722899268890402

`p?[A172471(A151800(A139570(n)))]`
-/

namespace A165637.P11921722899268890402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A151800 (A139570 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165637.P11921722899268890402

/-! ## A165637.P14375179377704258472

`eq[A007920(n), A283361(A002620(n))]`
-/

namespace A165637.P14375179377704258472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 (A002620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165637.P14375179377704258472

/-! ## A165637.P3870617997882267538

`eq[A051699(n), A283361(A002620(n))]`
-/

namespace A165637.P3870617997882267538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 (A002620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165637.P3870617997882267538

/-! ## A165637.P13226164306344361578

`p?[eq[0, A061358(A000982(n))]]`
-/

namespace A165637.P13226164306344361578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A000982 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165637.P13226164306344361578

/-!
# A165638: a(n)=(6/7)*(2+5*(-6)^(n-1)).

The programs for A165638, the canonical program `A165638.P17062665906674614308` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165638 has offset 0).

The definition of A165638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6/7*(2+5*(-6)^(n-1))` (program `A165638.P11463519766514349968`, by `A165638.P11463519766514349968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165638.P11463519766514349968

`6/7*(2+5*(-6)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165638.P11463519766514349968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) / 7 * (2 + 5 * (-6 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165638.P11463519766514349968

namespace A165638

/-- `6/7*(2+5*(-6)^(n-1))` -/
def P11463519766514349968.Spec : Prop :=
  ∀ n, P11463519766514349968.a n = (A165638 n : ℚ)

theorem P11463519766514349968.correct : P11463519766514349968.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165638, Nat.add_sub_cancel, A165638.P11463519766514349968.a, A165638.P17062665906674614308.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165638, Nat.add_sub_cancel, A165638.P11463519766514349968.a, A165638.P17062665906674614308.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A165638

/-! ## A165638.P17062665906674614308

`6*a(n-2)-5*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165638

/-- `6*a(n-2)-5*a(n-1)` -/
def P17062665906674614308.Spec : Prop :=
  ∀ n, P17062665906674614308.a n = A165638 n

theorem P17062665906674614308.correct : P17062665906674614308.Spec := by
  intro n
  simp only [A165638]

end A165638

/-! ## A165638.P16493744065642582986

`∑[ogf((1+11x)/(1+6x))]`
-/

namespace A165638.P16493744065642582986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11] [1, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165638.P16493744065642582986

namespace A165638

/-- `∑[ogf((1+11x)/(1+6x))]` -/
def P16493744065642582986.Spec : Prop :=
  ∀ n, P16493744065642582986.a n = A165638 n

end A165638

/-! ## A165638.P2751046564349984650

`ogf((1+11x)/(1+5x-6x^2))`
-/

namespace A165638.P2751046564349984650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11] [1, 5, -6] n

end

end A165638.P2751046564349984650

namespace A165638

/-- `ogf((1+11x)/(1+5x-6x^2))` -/
def P2751046564349984650.Spec : Prop :=
  ∀ n, P2751046564349984650.a n = A165638 n

end A165638

/-! ## A165638.P10765410088184439187

`∑[ceil(2^(n-1))*A084244(n)]`
-/

namespace A165638.P10765410088184439187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A084244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165638.P10765410088184439187

namespace A165638

/-- `∑[ceil(2^(n-1))*A084244(n)]` -/
def P10765410088184439187.Spec : Prop :=
  ∀ n, P10765410088184439187.a n = A165638 n

end A165638

/-! ## A165638.P5761854823071240342

`∑[A052934(n)*A165326(n)]`
-/

namespace A165638.P5761854823071240342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165638.P5761854823071240342

namespace A165638

/-- `∑[A052934(n)*A165326(n)]` -/
def P5761854823071240342.Spec : Prop :=
  ∀ n, P5761854823071240342.a n = A165638 n

end A165638

/-! ## A165638.P10673504096115692274

`24*(2-a(n-1))/4` with `a(0)=1`
-/

namespace A165638.P10673504096115692274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  24 * (2 - a (n - 1)) / 4

end

end A165638.P10673504096115692274

namespace A165638

/-- `24*(2-a(n-1))/4` -/
def P10673504096115692274.Spec : Prop :=
  ∀ n, P10673504096115692274.a n = (A165638 n : ℚ)

end A165638

/-! ## A165638.P11639250112727585259

`(3-a(n-1))²+3-a(n-1)²` with `a(0)=1`
-/

namespace A165638.P11639250112727585259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 - a (n - 1)) ^ 2 + (3 - a (n - 1) ^ 2)

end

end A165638.P11639250112727585259

namespace A165638

/-- `(3-a(n-1))²+3-a(n-1)²` -/
def P11639250112727585259.Spec : Prop :=
  ∀ n, P11639250112727585259.a n = A165638 n

end A165638

/-! ## A165638.P17219854586492555216

`(3-a(n-1))²-(a(n-1)²-3)` with `a(0)=1`
-/

namespace A165638.P17219854586492555216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 - a (n - 1)) ^ 2 - (a (n - 1) ^ 2 - 3)

end

end A165638.P17219854586492555216

namespace A165638

/-- `(3-a(n-1))²-(a(n-1)²-3)` -/
def P17219854586492555216.Spec : Prop :=
  ∀ n, P17219854586492555216.a n = A165638 n

end A165638

/-!
# A165639: a(n)=(7/4)*(1+3*(-7)^(n-1)).

The programs for A165639, the canonical program `A165639.P15948332592807660943` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165639 has offset 0).

The definition of A165639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7/4*(1+3*(-7)^(n-1))` (program `A165639.P9705959557821032005`, by `A165639.P9705959557821032005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165639.P9705959557821032005

`7/4*(1+3*(-7)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165639.P9705959557821032005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 4 * (1 + 3 * (-7 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165639.P9705959557821032005

namespace A165639

/-- `7/4*(1+3*(-7)^(n-1))` -/
def P9705959557821032005.Spec : Prop :=
  ∀ n, P9705959557821032005.a n = (A165639 n : ℚ)

theorem P9705959557821032005.correct : P9705959557821032005.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165639, Nat.add_sub_cancel, A165639.P9705959557821032005.a, A165639.P15948332592807660943.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165639, Nat.add_sub_cancel, A165639.P9705959557821032005.a, A165639.P15948332592807660943.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A165639

/-! ## A165639.P15948332592807660943

`7*a(n-2)-6*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165639

/-- `7*a(n-2)-6*a(n-1)` -/
def P15948332592807660943.Spec : Prop :=
  ∀ n, P15948332592807660943.a n = A165639 n

theorem P15948332592807660943.correct : P15948332592807660943.Spec := by
  intro n
  simp only [A165639]

end A165639

/-! ## A165639.P16140836636470300508

`∑[ogf((1+13x)/(1+7x))]`
-/

namespace A165639.P16140836636470300508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13] [1, 7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165639.P16140836636470300508

namespace A165639

/-- `∑[ogf((1+13x)/(1+7x))]` -/
def P16140836636470300508.Spec : Prop :=
  ∀ n, P16140836636470300508.a n = A165639 n

end A165639

/-! ## A165639.P9414290107881757330

`ogf((1+13x)/(1+6x-7x^2))`
-/

namespace A165639.P9414290107881757330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13] [1, 6, -7] n

end

end A165639.P9414290107881757330

namespace A165639

/-- `ogf((1+13x)/(1+6x-7x^2))` -/
def P9414290107881757330.Spec : Prop :=
  ∀ n, P9414290107881757330.a n = A165639 n

end A165639

/-! ## A165639.P17416226076618612635

`∑[-(7*a(n-1))]` with `a(0)=1, a(1)=6`
-/

namespace A165639.P17416226076618612635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  -(7 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165639.P17416226076618612635

namespace A165639

/-- `∑[-(7*a(n-1))]` -/
def P17416226076618612635.Spec : Prop :=
  ∀ n, P17416226076618612635.a n = A165639 n

end A165639

/-! ## A165639.P5157620193240596254

`14*(2-a(n-1))/2` with `a(0)=1`
-/

namespace A165639.P5157620193240596254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  14 * (2 - a (n - 1)) / 2

end

end A165639.P5157620193240596254

namespace A165639

/-- `14*(2-a(n-1))/2` -/
def P5157620193240596254.Spec : Prop :=
  ∀ n, P5157620193240596254.a n = (A165639 n : ℚ)

end A165639

/-! ## A165639.P2949175218539222849

`∑[a(n-1)-8*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A165639.P2949175218539222849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) - 8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165639.P2949175218539222849

namespace A165639

/-- `∑[a(n-1)-8*a(n-1)]` -/
def P2949175218539222849.Spec : Prop :=
  ∀ n, P2949175218539222849.a n = A165639 n

end A165639

/-! ## A165639.P11960346132707752494

`14-7*a(A023443(n))` with `a(0)=1`
-/

namespace A165639.P11960346132707752494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  14 - 7 * a (A023443 n).toNat

end

end A165639.P11960346132707752494

namespace A165639

/-- `14-7*a(A023443(n))` -/
def P11960346132707752494.Spec : Prop :=
  ∀ n, P11960346132707752494.a n = A165639 n

end A165639

/-! ## A165639.P6887070414798774400

`2-(-1)^n*A083232(n)`
-/

namespace A165639.P6887070414798774400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (-1) ^ n * A083232 n

end

end A165639.P6887070414798774400

namespace A165639

/-- `2-(-1)^n*A083232(n)` -/
def P6887070414798774400.Spec : Prop :=
  ∀ n, P6887070414798774400.a n = A165639 n

end A165639

/-! ## A165639.P5514334897776907198

`∑[A055272(n)*A165326(n)]`
-/

namespace A165639.P5514334897776907198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165639.P5514334897776907198

namespace A165639

/-- `∑[A055272(n)*A165326(n)]` -/
def P5514334897776907198.Spec : Prop :=
  ∀ n, P5514334897776907198.a n = A165639 n

end A165639

/-!
# A165640: Number of distinct multisets of n integers, each of which is -2, +1, or +3, such that the sum of the members of each multiset is 3.

The programs for A165640, the canonical program `A165640.P70725202286789573` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165640 has offset 1).

The definition of A165640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165640.P70725202286789573

`ceil((n+2)/3-ceil(n/5))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165640

/-- `ceil((n+2)/3-ceil(n/5))` -/
def P70725202286789573.Spec : Prop :=
  ∀ n, P70725202286789573.a n = A165640 (n + 1)

theorem P70725202286789573.correct : P70725202286789573.Spec := by
  intro n
  simp only [A165640, Nat.add_sub_cancel]

end A165640

/-! ## A165640.P3743969583006338352

`A090223(n)+1-A004396(n)`
-/

namespace A165640.P3743969583006338352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + (1 - A004396 n)

end

end A165640.P3743969583006338352

namespace A165640

/-- `A090223(n)+1-A004396(n)` -/
def P3743969583006338352.Spec : Prop :=
  ∀ n, P3743969583006338352.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P9297096533599073987

`A047282(n+1)-A364668(n)`
-/

namespace A165640.P9297096533599073987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047282 (n + 1) - A364668 n

end

end A165640.P9297096533599073987

namespace A165640

/-- `A047282(n+1)-A364668(n)` -/
def P9297096533599073987.Spec : Prop :=
  ∀ n, P9297096533599073987.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P7570284825407218521

`A008672(n+1)+A008680(n)-A025767(n)`
-/

namespace A165640.P7570284825407218521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) + (A008680 n - A025767 n)

end

end A165640.P7570284825407218521

namespace A165640

/-- `A008672(n+1)+A008680(n)-A025767(n)` -/
def P7570284825407218521.Spec : Prop :=
  ∀ n, P7570284825407218521.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P7232162378790101682

`A008676(n+1)+A008676(n)`
-/

namespace A165640.P7232162378790101682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n + 1) + A008676 n

end

end A165640.P7232162378790101682

namespace A165640

/-- `A008676(n+1)+A008676(n)` -/
def P7232162378790101682.Spec : Prop :=
  ∀ n, P7232162378790101682.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P4010206708364236614

`A008679(A047562(n+2))`
-/

namespace A165640.P4010206708364236614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A047562 (n + 2)).toNat

end

end A165640.P4010206708364236614

namespace A165640

/-- `A008679(A047562(n+2))` -/
def P4010206708364236614.Spec : Prop :=
  ∀ n, P4010206708364236614.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P12125814148756301376

`A008679(A047567(n+2))`
-/

namespace A165640.P12125814148756301376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A047567 (n + 2)).toNat

end

end A165640.P12125814148756301376

namespace A165640

/-- `A008679(A047567(n+2))` -/
def P12125814148756301376.Spec : Prop :=
  ∀ n, P12125814148756301376.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P8832642959952290557

`A008672(n+1)-A008680(2*n+1)`
-/

namespace A165640.P8832642959952290557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) - A008680 (2 * n + 1)

end

end A165640.P8832642959952290557

namespace A165640

/-- `A008672(n+1)-A008680(2*n+1)` -/
def P8832642959952290557.Spec : Prop :=
  ∀ n, P8832642959952290557.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P2731129858034792181

`A008672(n+1)-A025799(2*n+1)`
-/

namespace A165640.P2731129858034792181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) - A025799 (2 * n + 1)

end

end A165640.P2731129858034792181

namespace A165640

/-- `A008672(n+1)-A025799(2*n+1)` -/
def P2731129858034792181.Spec : Prop :=
  ∀ n, P2731129858034792181.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P4297871130178007940

`A173276(2*n)-A002264(2*n+1)`
-/

namespace A165640.P4297871130178007940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (2 * n) - A002264 (2 * n + 1)

end

end A165640.P4297871130178007940

namespace A165640

/-- `A173276(2*n)-A002264(2*n+1)` -/
def P4297871130178007940.Spec : Prop :=
  ∀ n, P4297871130178007940.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P7412485719120276954

`A033182(A000027(2*(n+1)))+A033182(2*n)`
-/

namespace A165640.P7412485719120276954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A000027 (2 * (n + 1))).toNat + A033182 (2 * n)

end

end A165640.P7412485719120276954

namespace A165640

/-- `A033182(A000027(2*(n+1)))+A033182(2*n)` -/
def P7412485719120276954.Spec : Prop :=
  ∀ n, P7412485719120276954.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P5520518854336833161

`Δ[A025770(Δ[n²])]`
-/

namespace A165640.P5520518854336833161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165640.P5520518854336833161

namespace A165640

/-- `Δ[A025770(Δ[n²])]` -/
def P5520518854336833161.Spec : Prop :=
  ∀ n, P5520518854336833161.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P13131646781270435960

`Δ[A025799(2*n+1)+A025799(2*n)]`
-/

namespace A165640.P13131646781270435960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (2 * n + 1) + A025799 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165640.P13131646781270435960

namespace A165640

/-- `Δ[A025799(2*n+1)+A025799(2*n)]` -/
def P13131646781270435960.Spec : Prop :=
  ∀ n, P13131646781270435960.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P11926256864115422240

`A008620(n+1)-A008616(A005408(n+1))`
-/

namespace A165640.P11926256864115422240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) - A008616 (A005408 (n + 1)).toNat

end

end A165640.P11926256864115422240

namespace A165640

/-- `A008620(n+1)-A008616(A005408(n+1))` -/
def P11926256864115422240.Spec : Prop :=
  ∀ n, P11926256864115422240.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P15898846004692697296

`A008651(2*n)+A008651(A005843(n+1))`
-/

namespace A165640.P15898846004692697296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (2 * n) + A008651 (A005843 (n + 1)).toNat

end

end A165640.P15898846004692697296

namespace A165640

/-- `A008651(2*n)+A008651(A005843(n+1))` -/
def P15898846004692697296.Spec : Prop :=
  ∀ n, P15898846004692697296.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P11977864795601527727

`A008676(2*n+5)`
-/

namespace A165640.P11977864795601527727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (2 * n + 5)

end

end A165640.P11977864795601527727

namespace A165640

/-- `A008676(2*n+5)` -/
def P11977864795601527727.Spec : Prop :=
  ∀ n, P11977864795601527727.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P4799985440226800140

`Δ[A025795(2*n+3)]`
-/

namespace A165640.P4799985440226800140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165640.P4799985440226800140

namespace A165640

/-- `Δ[A025795(2*n+3)]` -/
def P4799985440226800140.Spec : Prop :=
  ∀ n, P4799985440226800140.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P14360257012073844201

`A008680(A062545(n+1))-A008680(2*n+1)`
-/

namespace A165640.P14360257012073844201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A062545 (n + 1)).toNat - A008680 (2 * n + 1)

end

end A165640.P14360257012073844201

namespace A165640

/-- `A008680(A062545(n+1))-A008680(2*n+1)` -/
def P14360257012073844201.Spec : Prop :=
  ∀ n, P14360257012073844201.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P9122730600316230747

`A008680(A144396(n+2))-A008680(2*n+1)`
-/

namespace A165640.P9122730600316230747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A144396 (n + 2)).toNat - A008680 (2 * n + 1)

end

end A165640.P9122730600316230747

namespace A165640

/-- `A008680(A144396(n+2))-A008680(2*n+1)` -/
def P9122730600316230747.Spec : Prop :=
  ∀ n, P9122730600316230747.a n = A165640 (n + 1)

end A165640

/-! ## A165640.P16577314696218679707

`A002264(A072154(n+1))-A002264(2*n+1)`
-/

namespace A165640.P16577314696218679707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A072154 (n + 1)).toNat - A002264 (2 * n + 1)

end

end A165640.P16577314696218679707

namespace A165640

/-- `A002264(A072154(n+1))-A002264(2*n+1)` -/
def P16577314696218679707.Spec : Prop :=
  ∀ n, P16577314696218679707.a n = A165640 (n + 1)

end A165640

/-!
# A165641: A091137(n) / A001316(n) .

The programs for A165641, the canonical program `A165641.P11964317276887171460` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165641 has offset 0).

The definition of A165641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165641.P11964317276887171460

`A091137(n)/A001316(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A165641

/-- `A091137(n)/A001316(n)` -/
def P11964317276887171460.Spec : Prop :=
  ∀ n, P11964317276887171460.a n = (A165641 n : ℚ)

end A165641

/-! ## A165641.P14063931101421097133

`lcm(n!, A165636(n))`
-/

namespace A165641.P14063931101421097133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A165636 n)

end

end A165641.P14063931101421097133

namespace A165641

/-- `lcm(n!, A165636(n))` -/
def P14063931101421097133.Spec : Prop :=
  ∀ n, (P14063931101421097133.a n : ℤ) = A165641 n

end A165641

/-! ## A165641.P3442680555829543225

`a(n-1)*A165886(n-1)` with `a(0)=1`
-/

namespace A165641.P3442680555829543225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A165886 (n - 1)

end

end A165641.P3442680555829543225

namespace A165641

/-- `a(n-1)*A165886(n-1)` -/
def P3442680555829543225.Spec : Prop :=
  ∀ n, P3442680555829543225.a n = A165641 n

end A165641

/-! ## A165641.P16084759039722191365

`∏[A165886(A014681(n))]`
-/

namespace A165641.P16084759039722191365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165641.P16084759039722191365

namespace A165641

/-- `∏[A165886(A014681(n))]` -/
def P16084759039722191365.Spec : Prop :=
  ∀ n, P16084759039722191365.a n = A165641 n

end A165641

/-! ## A165641.P15201631074775142143

`∏[A141056(n)]/A001316(n)`
-/

namespace A165641.P15201631074775142143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001316 n : ℚ)

end

end A165641.P15201631074775142143

namespace A165641

/-- `∏[A141056(n)]/A001316(n)` -/
def P15201631074775142143.Spec : Prop :=
  ∀ n, P15201631074775142143.a n = (A165641 n : ℚ)

end A165641

/-!
# A165644: Number of ways to assemble an n-simplex from n+1 labeled (n-1)-simplices with labeled vertices, where left-handed and right-handed counterparts are considered distinct.

The programs for A165644, the canonical program `A165644.P3217401029081457422` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165644 has offset 1).

The definition of A165644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165644.P3217401029081457422

`2*(n+1)!^(n+2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165644

/-- `2*(n+1)!^(n+2)` -/
def P3217401029081457422.Spec : Prop :=
  ∀ n, (P3217401029081457422.a n : ℤ) = A165644 (n + 1)

theorem P3217401029081457422.correct : P3217401029081457422.Spec := by
  intro n
  simp only [A165644, Nat.add_sub_cancel]

end A165644

/-! ## A165644.P6657964003916601118

`2*∏[n+1]^(n+2)`
-/

namespace A165644.P6657964003916601118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 2)

end

end A165644.P6657964003916601118

namespace A165644

/-- `2*∏[n+1]^(n+2)` -/
def P6657964003916601118.Spec : Prop :=
  ∀ n, (P6657964003916601118.a n : ℤ) = A165644 (n + 1)

theorem P6657964003916601118.correct : P6657964003916601118.Spec := by
  intro n
  simp only [A165644, Nat.add_sub_cancel, A165644.P6657964003916601118.f1, A165644.P6657964003916601118.a, A165644.P3217401029081457422.a, SequenceMachineLib.memo_apply]
  try simp

end A165644

/-!
# A165646: The revolver sequence.

The programs for A165646, there is no canonical definition to state claims against.
-/

/-! ## A165646.P12538916660979894156

`A215345(xor(A075603(n), A215330(n)))`
-/

namespace A165646.P12538916660979894156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215345 (Int.xor (A075603 (n + 11)) (A215330 n)).toNat

end

end A165646.P12538916660979894156

/-! ## A165646.P8695725831808335728

`∑[(A004023(n+1)%A004021(n))%A004043(n+8)]`
-/

namespace A165646.P8695725831808335728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004023 (n + 1)) (A004021 n)) (A004043 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165646.P8695725831808335728

/-!
# A165647: Number of simple graphs on n vertices with each component regular.

The programs for A165647, there is no canonical definition to state claims against.
-/

/-! ## A165647.P18297344684513386420

`A005177(n+1)+A165648(n+1)`
-/

namespace A165647.P18297344684513386420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 (n + 1) + A165648 (n + 1)

end

end A165647.P18297344684513386420

/-!
# A165648: Number of disconnected simple graphs on n vertices with each component regular.

The programs for A165648, there is no canonical definition to state claims against.
-/

/-! ## A165648.P12872330276188255546

`A165647(n+1)-A005177(n+1)`
-/

namespace A165648.P12872330276188255546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165647 (n + 1) - A005177 (n + 1)

end

end A165648.P12872330276188255546

/-! ## A165648.P13480539923415736152

`A165647(n+1)-A275420(A000124(n))`
-/

namespace A165648.P13480539923415736152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165647 (n + 1) - A275420 (A000124 n).toNat

end

end A165648.P13480539923415736152

/-! ## A165648.P10249721404736903050

`A165647(n+1)-A275420(∑[A028310(n)])`
-/

namespace A165648.P10249721404736903050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165647 (n + 1) - A275420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165648.P10249721404736903050

/-! ## A165648.P11589841693290385515

`∑[round(A057575(n)/4)]`
-/

namespace A165648.P11589841693290385515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057575 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165648.P11589841693290385515

/-! ## A165648.P6373110424550528413

`A073188(A103439(n)-A001971(n))`
-/

namespace A165648.P6373110424550528413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A103439 n - A001971 n).toNat

end

end A165648.P6373110424550528413

/-!
# A165652: Number of disconnected 2-regular graphs on n vertices.

The programs for A165652, there is no canonical definition to state claims against.
-/

/-! ## A165652.P664190164177525001

`A008483(n)-A179184(n)`
-/

namespace A165652.P664190164177525001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A179184 n

end

end A165652.P664190164177525001

/-! ## A165652.P7549592039632841745

`A008483(n*A185114(n))-1`
-/

namespace A165652.P7549592039632841745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 ((n : ℤ) * A185114 n).toNat - 1

end

end A165652.P7549592039632841745

/-! ## A165652.P9138199599094522902

`A008483(n*A185115(n))-1`
-/

namespace A165652.P9138199599094522902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 ((n : ℤ) * A185115 n).toNat - 1

end

end A165652.P9138199599094522902

/-! ## A165652.P13173117987504372639

`A008483(n*A185116(n))-1`
-/

namespace A165652.P13173117987504372639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 ((n : ℤ) * A185116 n).toNat - 1

end

end A165652.P13173117987504372639

/-! ## A165652.P12922711245018774691

`A008483(n)-A008483(floor(3/(n+1)))`
-/

namespace A165652.P12922711245018774691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A008483 ⌊3 / (n + 1 : ℚ)⌋.toNat

end

end A165652.P12922711245018774691

/-! ## A165652.P6857283356810308160

`(A008483(n)-1)%A001522(n)`
-/

namespace A165652.P6857283356810308160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008483 n - 1) (A001522 n)

end

end A165652.P6857283356810308160

/-! ## A165652.P8999553302428903119

`floor(A008483(n)-A008483(n)/A000041(n))`
-/

namespace A165652.P8999553302428903119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008483 n : ℚ) - (A008483 n : ℚ) / (A000041 n : ℚ)⌋

end

end A165652.P8999553302428903119

/-! ## A165652.P4174318038737897683

`A008483(n)-ceil(A008483(n)/A019320(n))`
-/

namespace A165652.P4174318038737897683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - ⌈(A008483 n : ℚ) / (A019320 n : ℚ)⌉

end

end A165652.P4174318038737897683

/-! ## A165652.P6388322050654613992

`A008483(n)-A185115(n²)`
-/

namespace A165652.P6388322050654613992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A185115 (n ^ 2)

end

end A165652.P6388322050654613992

/-! ## A165652.P9855903264508563963

`A008483(n)-A185116(n²)`
-/

namespace A165652.P9855903264508563963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A185116 (n ^ 2)

end

end A165652.P9855903264508563963

/-! ## A165652.P17249122916700377848

`A008483(n)-A185118(n²)`
-/

namespace A165652.P17249122916700377848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A185118 (n ^ 2)

end

end A165652.P17249122916700377848

/-! ## A165652.P7649740698239443891

`A008483(n)-A185119(n²)`
-/

namespace A165652.P7649740698239443891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A185119 (n ^ 2)

end

end A165652.P7649740698239443891

/-!
# A165653: Number of disconnected 3-regular (cubic) graphs on 2n vertices.

The programs for A165653, there is no canonical definition to state claims against.
-/

/-! ## A165653.P11130805911404823038

`A005638(n)-A002851(n)`
-/

namespace A165653.P11130805911404823038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - A002851 n

end

end A165653.P11130805911404823038

/-! ## A165653.P1814618229430268919

`A005638(n)-A321304(n²)`
-/

namespace A165653.P1814618229430268919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - A321304 (n ^ 2)

end

end A165653.P1814618229430268919

/-! ## A165653.P12190217274256547061

`A361361(n²)-A002851(n)`
-/

namespace A165653.P12190217274256547061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (n ^ 2) - A002851 n

end

end A165653.P12190217274256547061

/-! ## A165653.P16596751537385824990

`A005638(n)%A002851(A233583(n+1))`
-/

namespace A165653.P16596751537385824990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005638 n) (A002851 (A233583 (n + 1)).toNat)

end

end A165653.P16596751537385824990

/-! ## A165653.P10461015411989501402

`A185234(n)+A185033(n)`
-/

namespace A165653.P10461015411989501402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n + A185033 n

end

end A165653.P10461015411989501402

/-!
# A165655: Number of disconnected 5-regular (quintic) graphs on 2n vertices.

The programs for A165655, there is no canonical definition to state claims against.
-/

/-! ## A165655.P8854409282681975272

`A165626(n)-A006821(n)`
-/

namespace A165655.P8854409282681975272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165626 n - A006821 n

end

end A165655.P8854409282681975272

/-! ## A165655.P9447415387268179268

`A185254(n)+A185053(n)`
-/

namespace A165655.P9447415387268179268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 n + A185053 n

end

end A165655.P9447415387268179268

/-! ## A165655.P12205192029473768274

`A185053(n)+A002718(A065648(n))`
-/

namespace A165655.P12205192029473768274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185053 n + A002718 (A065648 n).toNat

end

end A165655.P12205192029473768274

/-! ## A165655.P18393757513357335191

`A185053(n)+A073357(A033483(n))`
-/

namespace A165655.P18393757513357335191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185053 n + A073357 (A033483 n).toNat

end

end A165655.P18393757513357335191

/-! ## A165655.P1602091568519077155

`A185053(n)+A001591(A165652(n))`
-/

namespace A165655.P1602091568519077155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185053 n + A001591 (A165652 n).toNat

end

end A165655.P1602091568519077155

/-!
# A165656: Number of disconnected 6-regular (sextic) graphs on n vertices.

The programs for A165656, there is no canonical definition to state claims against.
-/

/-! ## A165656.P15980603393295124029

`A185063(n)+char[24]`
-/

namespace A165656.P15980603393295124029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A165656.P15980603393295124029

/-! ## A165656.P10412333281474798754

`A185237(n)+A185063(n)`
-/

namespace A165656.P10412333281474798754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A185063 n

end

end A165656.P10412333281474798754

/-! ## A165656.P4812552976358115169

`A185264(n)+A185063(n)`
-/

namespace A165656.P4812552976358115169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n + A185063 n

end

end A165656.P4812552976358115169

/-! ## A165656.P16750361526125488475

`A191928(n)+A185063(n)`
-/

namespace A165656.P16750361526125488475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191928 n + A185063 n

end

end A165656.P16750361526125488475

/-! ## A165656.P3823998355002236857

`A165627(n)-A006822(n)`
-/

namespace A165656.P3823998355002236857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - A006822 n

end

end A165656.P3823998355002236857

/-!
# A165657: Numerators of A002110 divided by A102647, starting from the second term of both.

The programs for A165657, there is no canonical definition to state claims against.
-/

/-! ## A165657.P8055803666272445205

`A000040(n+1)*A000265(A301600(n))`
-/

namespace A165657.P8055803666272445205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000265 (A301600 n).toNat

end

end A165657.P8055803666272445205

/-! ## A165657.P9039957101192144822

`A003961(a(n-1)*A237591(n))` with `a(0)=2`
-/

namespace A165657.P9039957101192144822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003961 (a (n - 1) * A237591 n).toNat

end

end A165657.P9039957101192144822

/-! ## A165657.P4092636865801300856

`A285639(a(n-1)*A089026(n))` with `a(0)=2`
-/

namespace A165657.P4092636865801300856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A285639 (a (n - 1) * A089026 n).toNat

end

end A165657.P4092636865801300856

/-!
# A165658: Denominators of A002110 divided by A102647, starting from the second term of both.

The programs for A165658, there is no canonical definition to state claims against.
-/

/-! ## A165658.P4799642131498746823

`A165657(n+1)/A002110(n+1)*A102647(n+2)`
-/

namespace A165658.P4799642131498746823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165657 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ) * (A102647 (n + 2) : ℚ)

end

end A165658.P4799642131498746823

/-!
# A165659: Numerators of A007504 divided by A033955, starting from the second term of A033955.

The programs for A165659, there is no canonical definition to state claims against.
-/

/-! ## A165659.P15183081989195413094

`A007504(n+1)*A165660(n+1)/A033955(n+2)`
-/

namespace A165659.P15183081989195413094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) * A165660 (n + 1) : ℚ) / (A033955 (n + 2) : ℚ)

end

end A165659.P15183081989195413094

/-! ## A165659.P2588583517363490914

`A301273(n+1)/A000034(A228167(3*(n+1)))`
-/

namespace A165659.P2588583517363490914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301273 (n + 1) : ℚ) / (A000034 (A228167 (3 * (n + 1))).toNat : ℚ)

end

end A165659.P2588583517363490914

/-! ## A165659.P16175788366272921217

`∑[A000040(n+1)]/A119569(2*n+5)`
-/

namespace A165659.P16175788366272921217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A119569 (2 * n + 5) : ℚ)

end

end A165659.P16175788366272921217

/-! ## A165659.P5112671084298872657

`A007504(n+1)/A322584(A343162(n+1))`
-/

namespace A165659.P5112671084298872657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A322584 (A343162 (n + 1)).toNat : ℚ)

end

end A165659.P5112671084298872657

/-! ## A165659.P14958190213935137170

`∑[A000040(n+1)]/A008479(A136394(2*n+3))`
-/

namespace A165659.P14958190213935137170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008479 (A136394 (2 * n + 3)).toNat : ℚ)

end

end A165659.P14958190213935137170

/-!
# A165660: Denominators of A007504 divided by A033955, starting from the second term of A033955.

The programs for A165660, there is no canonical definition to state claims against.
-/

/-! ## A165660.P340903547913649751

`A165659(n+1)/A007504(n+1)*A033955(n+2)`
-/

namespace A165660.P340903547913649751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165659 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ) * (A033955 (n + 2) : ℚ)

end

end A165660.P340903547913649751

/-!
# A165661: Triangle read by rows: denominator of n/binomial(n,m).

The programs for A165661, the canonical program `A165661.P4978762148930897520` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165661 has offset 0).

The definition of A165661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165661.P4978762148930897520

`C(row(n), col(n))/gcd(row(n), C(row(n), col(n)))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165661

/-- `C(row(n), col(n))/gcd(row(n), C(row(n), col(n)))` -/
def P4978762148930897520.Spec : Prop :=
  ∀ n, P4978762148930897520.a n = (A165661 n : ℚ)

end A165661

/-! ## A165661.P9050566763567409818

`A178252(n+1-∑[char[∑[n]]])`
-/

namespace A165661.P9050566763567409818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165661.P9050566763567409818

namespace A165661

/-- `A178252(n+1-∑[char[∑[n]]])` -/
def P9050566763567409818.Spec : Prop :=
  ∀ n, P9050566763567409818.a n = A165661 n

end A165661

/-! ## A165661.P15077241178304353351

`A007318(n)/gcd(A003056(n), A007318(n))`
-/

namespace A165661.P15077241178304353351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A003056 n) (A007318 n) : ℚ)

end

end A165661.P15077241178304353351

namespace A165661

/-- `A007318(n)/gcd(A003056(n), A007318(n))` -/
def P15077241178304353351.Spec : Prop :=
  ∀ n, P15077241178304353351.a n = (A165661 n : ℚ)

end A165661

/-! ## A165661.P7095644422746802591

`A029635(n)/gcd(A029635(n), A051162(n))`
-/

namespace A165661.P7095644422746802591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029635 n : ℚ) / (Int.gcd (A029635 n) (A051162 n) : ℚ)

end

end A165661.P7095644422746802591

namespace A165661

/-- `A029635(n)/gcd(A029635(n), A051162(n))` -/
def P7095644422746802591.Spec : Prop :=
  ∀ n, P7095644422746802591.a n = (A165661 n : ℚ)

end A165661

/-! ## A165661.P11490825530365619640

`lcm(A007318(n), A003056(n+1))/A003056(n+1)`
-/

namespace A165661.P11490825530365619640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A003056 (n + 1)) : ℚ) / (A003056 (n + 1) : ℚ)

end

end A165661.P11490825530365619640

namespace A165661

/-- `lcm(A007318(n), A003056(n+1))/A003056(n+1)` -/
def P11490825530365619640.Spec : Prop :=
  ∀ n, P11490825530365619640.a n = (A165661 n : ℚ)

end A165661

/-!
# A165662: Period 5: repeat 4,4,8,6,8.

The programs for A165662, the canonical program `A165662.P10359592366609648077` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165662 has offset 0).

The definition of A165662 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A165662.anchor (n : ℕ) : A165662 n = (([4, 4, 8, 6, 8].getD (n % 5) 0 : ℕ) : ℤ)` in `Proof.A165.A165662`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165662.P10359592366609648077

`a(n-5)` with `a(0)=4, a(1)=4, a(2)=8, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165662

/-- `a(n-5)` -/
def P10359592366609648077.Spec : Prop :=
  ∀ n, (P10359592366609648077.a n : ℤ) = A165662 n

theorem P10359592366609648077.correct : P10359592366609648077.Spec := by
  intro n
  simp only [A165662]

end A165662

/-!
# A165663: Decimal expansion of 3 + sqrt(3).

The programs for A165663, there is no canonical definition to state claims against.
-/

/-! ## A165663.P6199443115088677432

`A019973(n)+A000007(n)`
-/

namespace A165663.P6199443115088677432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + A000007 n

end

end A165663.P6199443115088677432

/-! ## A165663.P7893185574390167006

`A176102(n)+A152623(n)`
-/

namespace A165663.P7893185574390167006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176102 (n + 1) + A152623 (n + 1)

end

end A165663.P7893185574390167006

/-! ## A165663.P4990787331219050372

`(A000007(n)+1)*A090388(n)`
-/

namespace A165663.P4990787331219050372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A090388 (n + 1)

end

end A165663.P4990787331219050372

/-! ## A165663.P10180275462074585008

`A019973(n)+A000038(n)/2`
-/

namespace A165663.P10180275462074585008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019973 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A165663.P10180275462074585008

/-! ## A165663.P16328760393281447705

`(A000007(n)+1)²*A002194(n)`
-/

namespace A165663.P16328760393281447705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) ^ 2 * A002194 (n + 1)

end

end A165663.P16328760393281447705

/-! ## A165663.P16284522758703159471

`A096268(A046523(n+1))+A019973(n)`
-/

namespace A165663.P16284522758703159471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A046523 (n + 1)).toNat + A019973 (n + 1)

end

end A165663.P16284522758703159471

/-! ## A165663.P14630862292695943297

`A000007(n)+A002194(A000038(n)+n)`
-/

namespace A165663.P14630862292695943297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A002194 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A165663.P14630862292695943297

/-! ## A165663.P1833457361463468922

`A019973(n)+A296184(n)-A104457(n)`
-/

namespace A165663.P1833457361463468922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + (A296184 (n + 1) - A104457 (n + 1))

end

end A165663.P1833457361463468922

/-! ## A165663.P3682604753299285146

`A000038(n)²-(A000007(n)-A002194(n))`
-/

namespace A165663.P3682604753299285146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2 - (A000007 n - A002194 (n + 1))

end

end A165663.P3682604753299285146

/-! ## A165663.P15612275032335124520

`A007318(A007318(a(n-1)))*A002194(n)` with `a(0)=4`
-/

namespace A165663.P15612275032335124520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A007318 (A007318 (a (n - 1)).toNat).toNat * A002194 (n + 1)

end

end A165663.P15612275032335124520

/-! ## A165663.P7566830338770888582

`A019973(n)+C(A048673(n+1), A048673(n+1)²)`
-/

namespace A165663.P7566830338770888582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + (Nat.choose (A048673 (n + 1)).toNat (A048673 (n + 1) ^ 2).toNat : ℤ)

end

end A165663.P7566830338770888582

/-! ## A165663.P17318111633026224625

`A019973(n)+C(A191110(n+1), A191110(n+1)²)`
-/

namespace A165663.P17318111633026224625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + (Nat.choose (A191110 (n + 1)).toNat (A191110 (n + 1) ^ 2).toNat : ℤ)

end

end A165663.P17318111633026224625

/-! ## A165663.P16308928601847754227

`A002194(n)+A152623(n)*A176214(n+1)`
-/

namespace A165663.P16308928601847754227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + A152623 (n + 1) * A176214 (n + 1 + 1)

end

end A165663.P16308928601847754227

/-!
# A165664: First digit of the decimal expansion of (n^2-2)/7 after the decimal point.

The programs for A165664, the canonical program `A165664.P481636520777790465` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165664 has offset 2).

The definition of A165664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165664.P481636520777790465

`floor(10*((n+2)²-2)/7)%10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165664

/-- `floor(10*((n+2)²-2)/7)%10` -/
def P481636520777790465.Spec : Prop :=
  ∀ n, P481636520777790465.a n = A165664 (n + 2)

theorem P481636520777790465.correct : P481636520777790465.Spec := by
  intro n
  simp only [A165664, Nat.add_sub_cancel]

end A165664

/-!
# A165665: a(n) = (3*2^n - 2) * 2^n.

The programs for A165665, the canonical program `A165665.P4989862259801627612` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165665 has offset 0).

The definition of A165665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*2^n-2)*2^n` (program `A165665.P4989862259801627612`, by `A165665.P4989862259801627612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165665.P4989862259801627612

`(3*2^n-2)*2^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165665

/-- `(3*2^n-2)*2^n` -/
def P4989862259801627612.Spec : Prop :=
  ∀ n, P4989862259801627612.a n = A165665 n

theorem P4989862259801627612.correct : P4989862259801627612.Spec := by
  intro n
  simp only [A165665]

end A165665

/-! ## A165665.P11329310183141091979

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A165665.P11329310183141091979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A165665.P11329310183141091979

namespace A165665

/-- `6*a(n-1)-8*a(n-2)` -/
def P11329310183141091979.Spec : Prop :=
  ∀ n, P11329310183141091979.a n = A165665 n

theorem P11329310183141091979.correct : P11329310183141091979.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165665, Nat.add_sub_cancel, A165665.P11329310183141091979.a, A165665.P4989862259801627612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165665, Nat.add_sub_cancel, A165665.P11329310183141091979.a, A165665.P4989862259801627612.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165665

/-! ## A165665.P11575285903445844568

`ogf((1+2x)/(1-6x+8x^2))`
-/

namespace A165665.P11575285903445844568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, 8] n

end

end A165665.P11575285903445844568

namespace A165665

/-- `ogf((1+2x)/(1-6x+8x^2))` -/
def P11575285903445844568.Spec : Prop :=
  ∀ n, P11575285903445844568.a n = A165665 n

end A165665

/-! ## A165665.P16224106718835068971

`Δ[A000225(n)²]`
-/

namespace A165665.P16224106718835068971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P16224106718835068971

namespace A165665

/-- `Δ[A000225(n)²]` -/
def P16224106718835068971.Spec : Prop :=
  ∀ n, P16224106718835068971.a n = A165665 n

theorem P16224106718835068971.correct : P16224106718835068971.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P16224106718835068971.f1, A165665.P16224106718835068971.a, A165665.P4989862259801627612.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P2677871268828008765

`A135094(Δ[n²])`
-/

namespace A165665.P2677871268828008765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165665.P2677871268828008765

namespace A165665

/-- `A135094(Δ[n²])` -/
def P2677871268828008765.Spec : Prop :=
  ∀ n, P2677871268828008765.a n = A165665 n

end A165665

/-! ## A165665.P3947418904855810721

`Δ[A225883(n)²]`
-/

namespace A165665.P3947418904855810721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P3947418904855810721

namespace A165665

/-- `Δ[A225883(n)²]` -/
def P3947418904855810721.Spec : Prop :=
  ∀ n, P3947418904855810721.a n = A165665 n

end A165665

/-! ## A165665.P6685019878665477771

`Δ[A274230(2*n)]`
-/

namespace A165665.P6685019878665477771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P6685019878665477771

namespace A165665

/-- `Δ[A274230(2*n)]` -/
def P6685019878665477771.Spec : Prop :=
  ∀ n, P6685019878665477771.a n = A165665 n

end A165665

/-! ## A165665.P16879144877619442530

`Δ[(A000918(n)+1)²]`
-/

namespace A165665.P16879144877619442530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P16879144877619442530

namespace A165665

/-- `Δ[(A000918(n)+1)²]` -/
def P16879144877619442530.Spec : Prop :=
  ∀ n, P16879144877619442530.a n = A165665 n

theorem P16879144877619442530.correct : P16879144877619442530.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P16879144877619442530.f1, A165665.P16879144877619442530.a, A165665.P4989862259801627612.a, A000918, A000918.P14329454465793069288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P16303630719179210770

`Δ[(1-A000079(n))²]`
-/

namespace A165665.P16303630719179210770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000079 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P16303630719179210770

namespace A165665

/-- `Δ[(1-A000079(n))²]` -/
def P16303630719179210770.Spec : Prop :=
  ∀ n, P16303630719179210770.a n = A165665 n

theorem P16303630719179210770.correct : P16303630719179210770.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P16303630719179210770.f1, A165665.P16303630719179210770.a, A165665.P4989862259801627612.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P960120135669459491

`Δ[(A036563(n)+2)²]`
-/

namespace A165665.P960120135669459491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036563 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P960120135669459491

namespace A165665

/-- `Δ[(A036563(n)+2)²]` -/
def P960120135669459491.Spec : Prop :=
  ∀ n, P960120135669459491.a n = A165665 n

theorem P960120135669459491.correct : P960120135669459491.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P960120135669459491.f1, A165665.P960120135669459491.a, A165665.P4989862259801627612.a, A036563, A036563.P16747850807333830855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P15513434161281191566

`Δ[(1-A186949(n))²]`
-/

namespace A165665.P15513434161281191566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A186949 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P15513434161281191566

namespace A165665

/-- `Δ[(1-A186949(n))²]` -/
def P15513434161281191566.Spec : Prop :=
  ∀ n, P15513434161281191566.a n = A165665 n

end A165665

/-! ## A165665.P4478877085499424025

`Δ[(2-A000051(n))²]`
-/

namespace A165665.P4478877085499424025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000051 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P4478877085499424025

namespace A165665

/-- `Δ[(2-A000051(n))²]` -/
def P4478877085499424025.Spec : Prop :=
  ∀ n, P4478877085499424025.a n = A165665 n

theorem P4478877085499424025.correct : P4478877085499424025.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P4478877085499424025.f1, A165665.P4478877085499424025.a, A165665.P4989862259801627612.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P16231384366958010919

`Δ[(3-A052548(n))²]`
-/

namespace A165665.P16231384366958010919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A052548 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P16231384366958010919

namespace A165665

/-- `Δ[(3-A052548(n))²]` -/
def P16231384366958010919.Spec : Prop :=
  ∀ n, P16231384366958010919.a n = A165665 n

theorem P16231384366958010919.correct : P16231384366958010919.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P16231384366958010919.f1, A165665.P16231384366958010919.a, A165665.P4989862259801627612.a, A052548, A052548.P18180923888402085992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P1916908530045655540

`Δ[A387325(2*n)²]`
-/

namespace A165665.P1916908530045655540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P1916908530045655540

namespace A165665

/-- `Δ[A387325(2*n)²]` -/
def P1916908530045655540.Spec : Prop :=
  ∀ n, P1916908530045655540.a n = A165665 n

end A165665

/-! ## A165665.P13034378684918099719

`Δ[(A000295(n)+n)²]`
-/

namespace A165665.P13034378684918099719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000295 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P13034378684918099719

namespace A165665

/-- `Δ[(A000295(n)+n)²]` -/
def P13034378684918099719.Spec : Prop :=
  ∀ n, P13034378684918099719.a n = A165665 n

theorem P13034378684918099719.correct : P13034378684918099719.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P13034378684918099719.f1, A165665.P13034378684918099719.a, A165665.P4989862259801627612.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P8451330591412638913

`Δ[(n-A052944(n))²]`
-/

namespace A165665.P8451330591412638913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A052944 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P8451330591412638913

namespace A165665

/-- `Δ[(n-A052944(n))²]` -/
def P8451330591412638913.Spec : Prop :=
  ∀ n, P8451330591412638913.a n = A165665 n

theorem P8451330591412638913.correct : P8451330591412638913.Spec := by
  intro n
  simp only [A165665, Nat.add_sub_cancel, A165665.P8451330591412638913.f1, A165665.P8451330591412638913.a, A165665.P4989862259801627612.a, A052944, A052944.P8155758912192775135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165665

/-! ## A165665.P7384361072621708301

`A164346(n)-2^(n+1)`
-/

namespace A165665.P7384361072621708301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n - (2 ^ (n + 1) : ℤ)

end

end A165665.P7384361072621708301

namespace A165665

/-- `A164346(n)-2^(n+1)` -/
def P7384361072621708301.Spec : Prop :=
  ∀ n, P7384361072621708301.a n = A165665 n

end A165665

/-! ## A165665.P9798111886655662423

`Δ[(A154589(n+1)+1)²]`
-/

namespace A165665.P9798111886655662423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154589 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P9798111886655662423

namespace A165665

/-- `Δ[(A154589(n+1)+1)²]` -/
def P9798111886655662423.Spec : Prop :=
  ∀ n, P9798111886655662423.a n = A165665 n

end A165665

/-! ## A165665.P6839660698976127893

`Δ[(A157823(n+1)+1)²]`
-/

namespace A165665.P6839660698976127893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157823 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P6839660698976127893

namespace A165665

/-- `Δ[(A157823(n+1)+1)²]` -/
def P6839660698976127893.Spec : Prop :=
  ∀ n, P6839660698976127893.a n = A165665 n

end A165665

/-! ## A165665.P10929311065534856479

`Δ[(1-A011782(n+1))²]`
-/

namespace A165665.P10929311065534856479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A011782 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165665.P10929311065534856479

namespace A165665

/-- `Δ[(1-A011782(n+1))²]` -/
def P10929311065534856479.Spec : Prop :=
  ∀ n, P10929311065534856479.a n = A165665 n

end A165665

/-!
# A165666: Primes p such that (p^2-2)/7 is not prime.

The programs for A165666, there is no canonical definition to state claims against.
-/

/-! ## A165666.P17098042540010962603

`p?[record[A217581(A256414(n+1))]]`
-/

namespace A165666.P17098042540010962603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A256414 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165666.P17098042540010962603

/-! ## A165666.P9472956759500168025

`A000040(∑[(A322255(3*n+4)%A194070(n+1))!])`
-/

namespace A165666.P9472956759500168025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A322255 (3 * n + 4)) (A194070 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165666.P9472956759500168025

/-! ## A165666.P9177445141186093523

`eq[A242902(n+1), A321452(n)]`
-/

namespace A165666.P9177445141186093523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165666.P9177445141186093523

/-!
# A165667: Primes p such that (p^2-2)/7 is also prime.

The programs for A165667, there is no canonical definition to state claims against.
-/

/-! ## A165667.P9744381027355212712

`ceil(sqrt(7*A165668(n+1)))`
-/

namespace A165667.P9744381027355212712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (7 * A165668 (n + 1) : ℝ)⌉

end

end A165667.P9744381027355212712

/-! ## A165667.P3001878879552370912

`round(sqrt(7*A165668(n+1)))%A054824(n+1)`
-/

namespace A165667.P3001878879552370912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (7 * A165668 (n + 1) : ℝ))) (A054824 (n + 1))

end

end A165667.P3001878879552370912

/-! ## A165667.P4930756123349204650

`A000027(round(sqrt(7*A165668(n+1))))`
-/

namespace A165667.P4930756123349204650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (7 * A165668 (n + 1) : ℝ))).toNat

end

end A165667.P4930756123349204650

/-! ## A165667.P13319888312515712026

`∩[A045421(n+1), A242260(n+1)]`
-/

namespace A165667.P13319888312515712026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P13319888312515712026

/-! ## A165667.P16202160985539115401

`∩[A045432(n+1), A242260(n+1)]`
-/

namespace A165667.P16202160985539115401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P16202160985539115401

/-! ## A165667.P2401413306391665352

`∩[A063237(n+1), A242260(n+1)]`
-/

namespace A165667.P2401413306391665352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P2401413306391665352

/-! ## A165667.P7399828354427579301

`∩[A113803(n+1), A242260(n+1)]`
-/

namespace A165667.P7399828354427579301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P7399828354427579301

/-! ## A165667.P6550683090775224184

`∩[A063205(n+1), A242260(n+1)]`
-/

namespace A165667.P6550683090775224184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P6550683090775224184

/-! ## A165667.P6241394057761026820

`∩[A047341(n+1), A242260(n+1)]`
-/

namespace A165667.P6241394057761026820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P6241394057761026820

/-! ## A165667.P2429100267121145867

`∩[A047342(n+1), A242260(n+1)]`
-/

namespace A165667.P2429100267121145867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P2429100267121145867

/-! ## A165667.P699899343563201161

`∩[A082206(n+1), A242260(n+1)]`
-/

namespace A165667.P699899343563201161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165667.P699899343563201161

/-! ## A165667.P16676402515526187541

`A034694(floor(sqrt(7*A165668(n+1))))`
-/

namespace A165667.P16676402515526187541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.sqrt (7 * A165668 (n + 1))).toNat

end

end A165667.P16676402515526187541

/-! ## A165667.P6675480187774033261

`A014963(round(sqrt(7*A165668(n+1))))`
-/

namespace A165667.P6675480187774033261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (7 * A165668 (n + 1) : ℝ))).toNat

end

end A165667.P6675480187774033261

/-!
# A165668: Primes of the form (p^2-2)/7, where p is also a prime number.

The programs for A165668, there is no canonical definition to state claims against.
-/

/-! ## A165668.P5237880468847043751

`(A165667(n+1)²-2)/7`
-/

namespace A165668.P5237880468847043751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165667 (n + 1) ^ 2 - 2 : ℚ) / 7

end

end A165668.P5237880468847043751

/-! ## A165668.P3905951087262496442

`floor(A165667(n+1)²/7)`
-/

namespace A165668.P3905951087262496442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165667 (n + 1) ^ 2 : ℚ) / 7⌋

end

end A165668.P3905951087262496442

/-! ## A165668.P8220914160243176256

`or(round(A165667(n+1)²/7), A267208(n))`
-/

namespace A165668.P8220914160243176256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A165667 (n + 1) ^ 2 : ℚ) / 7)) (A267208 n)

end

end A165668.P8220914160243176256

/-! ## A165668.P14992887316812890072

`or(A010892(n)², round(A165667(n+1)²/7))`
-/

namespace A165668.P14992887316812890072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010892 n ^ 2) (SequenceMachineLib.roundAway ((A165667 (n + 1) ^ 2 : ℚ) / 7))

end

end A165668.P14992887316812890072

/-! ## A165668.P16494061094634616519

`ceil(A008683(A045326(n+1))+A165667(n+1)²/7)`
-/

namespace A165668.P16494061094634616519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A045326 (n + 1)).toNat : ℚ) + (A165667 (n + 1) ^ 2 : ℚ) / 7⌉

end

end A165668.P16494061094634616519

/-! ## A165668.P3379999010955422023

`round(A165667(n+1)²/7)%A033431(A008486(n+1))`
-/

namespace A165668.P3379999010955422023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A165667 (n + 1) ^ 2 : ℚ) / 7)) (A033431 (A008486 (n + 1)).toNat)

end

end A165668.P3379999010955422023

/-! ## A165668.P3088648074054648447

`A056833(A165667(n+1))`
-/

namespace A165668.P3088648074054648447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056833 (A165667 (n + 1)).toNat

end

end A165668.P3088648074054648447

/-!
# A165669: First digit of the decimal expansion of (n^2+2)/7 after the decimal point.

The programs for A165669, the canonical program `A165669.P2088225954928963392` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165669 has offset 0).

The definition of A165669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165669.P2088225954928963392

`floor(10*(n²+2)/7)%10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165669

/-- `floor(10*(n²+2)/7)%10` -/
def P2088225954928963392.Spec : Prop :=
  ∀ n, P2088225954928963392.a n = A165669 n

theorem P2088225954928963392.correct : P2088225954928963392.Spec := by
  intro n
  simp only [A165669]

end A165669

/-!
# A165671: Primes p such that (p^2+2)/33 is not prime.

The programs for A165671, there is no canonical definition to state claims against.
-/

/-! ## A165671.P18198966020095594467

`A000040(lt[A227964(n), A195833(2*(n+1))])`
-/

namespace A165671.P18198966020095594467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195833 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165671.P18198966020095594467

/-! ## A165671.P6119416400557819434

`record[A051698(A260311(n+1)+A130919(n+2))]`
-/

namespace A165671.P6119416400557819434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A260311 (n + 1) + A130919 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165671.P6119416400557819434

/-! ## A165671.P8492194225033965663

`A182986(lt[A177459(n+2), A320892(n+1)])`
-/

namespace A165671.P8492194225033965663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177459 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165671.P8492194225033965663

/-! ## A165671.P1391742763574468775

`A000040(lt[A352512(3*(n+1)), A352525(3*n)])`
-/

namespace A165671.P1391742763574468775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352525 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165671.P1391742763574468775

/-! ## A165671.P679557646022475365

`A000040(lt[A164822(3*n+1), A088296(3*(n+1))])`
-/

namespace A165671.P679557646022475365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164822 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088296 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165671.P679557646022475365

/-!
# A165672: Primes p such that (p^2+2)/33 is prime.

The programs for A165672, there is no canonical definition to state claims against.
-/

/-! ## A165672.P6527920529955454702

`floor(sqrt(33*A165673(n+1)))`
-/

namespace A165672.P6527920529955454702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (33 * A165673 (n + 1))

end

end A165672.P6527920529955454702

/-! ## A165672.P6604205228983206024

`round(sqrt(A002262(n)+33*A165673(n+1)))`
-/

namespace A165672.P6604205228983206024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A002262 n + 33 * A165673 (n + 1) : ℝ))

end

end A165672.P6604205228983206024

/-! ## A165672.P9243216240643816055

`round(sqrt(33*A165673(n+1)))%A104475(n)`
-/

namespace A165672.P9243216240643816055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (33 * A165673 (n + 1) : ℝ))) (A104475 n)

end

end A165672.P9243216240643816055

/-! ## A165672.P10689432958192690006

`round(sqrt(A243502(n+1)+33*A165673(n+1)))`
-/

namespace A165672.P10689432958192690006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A243502 (n + 1) + 33 * A165673 (n + 1) : ℝ))

end

end A165672.P10689432958192690006

/-! ## A165672.P10741810940496861519

`A020639(round(sqrt(33*A165673(n+1))))`
-/

namespace A165672.P10741810940496861519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (33 * A165673 (n + 1) : ℝ))).toNat

end

end A165672.P10741810940496861519

/-! ## A165672.P3932967753303360890

`round(sqrt(A275325(n+2)+33*A165673(n+1)))`
-/

namespace A165672.P3932967753303360890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A275325 (n + 2) + 33 * A165673 (n + 1) : ℝ))

end

end A165672.P3932967753303360890

/-! ## A165672.P5577260694058882960

`A014963(round(sqrt(33*A165673(n+1))))`
-/

namespace A165672.P5577260694058882960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (33 * A165673 (n + 1) : ℝ))).toNat

end

end A165672.P5577260694058882960

/-!
# A165673: Primes of the form (p^2+2)/33 (with p prime).

The programs for A165673, there is no canonical definition to state claims against.
-/

/-! ## A165673.P3500989424179857880

`ceil(A165672(n+1)²/33)`
-/

namespace A165673.P3500989424179857880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165672 (n + 1) ^ 2 : ℚ) / 33⌉

end

end A165673.P3500989424179857880

/-! ## A165673.P9979864348471731204

`floor(A165672(n+1)²/33)+A033999(n)²`
-/

namespace A165673.P9979864348471731204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165672 (n + 1) ^ 2 : ℚ) / 33⌋ + A033999 n ^ 2

end

end A165673.P9979864348471731204

/-! ## A165673.P11043354127758367372

`floor(A158388(n+1)+A165672(n+1)²/33)`
-/

namespace A165673.P11043354127758367372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158388 (n + 1) : ℚ) + (A165672 (n + 1) ^ 2 : ℚ) / 33⌋

end

end A165673.P11043354127758367372

/-! ## A165673.P4273674664992736743

`round(A165672(n+1)²/33*A059841(2*n))`
-/

namespace A165673.P4273674664992736743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A165672 (n + 1) ^ 2 : ℚ) / 33 * (A059841 (2 * n) : ℚ))

end

end A165673.P4273674664992736743

/-! ## A165673.P17916646582012666105

`round(A165672(n+1)²/33)%A030516(n+1)`
-/

namespace A165673.P17916646582012666105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A165672 (n + 1) ^ 2 : ℚ) / 33)) (A030516 (n + 1))

end

end A165673.P17916646582012666105

/-! ## A165673.P2346497888955014777

`floor(A057427(A322820(n+1))+A165672(n+1)²/33)`
-/

namespace A165673.P2346497888955014777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (A322820 (n + 1)).toNat : ℚ) + (A165672 (n + 1) ^ 2 : ℚ) / 33⌋

end

end A165673.P2346497888955014777

/-! ## A165673.P16036556376404323951

`floor(A165672(n+1)²/33-A008683(A001359(n+1)))`
-/

namespace A165673.P16036556376404323951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165672 (n + 1) ^ 2 : ℚ) / 33 - (A008683 (A001359 (n + 1)).toNat : ℚ)⌋

end

end A165673.P16036556376404323951

/-! ## A165673.P965194265150654375

`floor(A001263(∑[n+1])+A165672(n+1)²/33)`
-/

namespace A165673.P965194265150654375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001263 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A165672 (n + 1) ^ 2 : ℚ) / 33⌋

end

end A165673.P965194265150654375

/-! ## A165673.P18319993102929730766

`A379351(A165672(n+1))`
-/

namespace A165673.P18319993102929730766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 (A165672 (n + 1)).toNat

end

end A165673.P18319993102929730766

/-!
# A165674: Triangle generated by the asymptotic expansions of the E(x,m=2,n).

The programs for A165674, there is no canonical definition to state claims against.
-/

/-! ## A165674.P10145113641589483664

`(row(n)+1)*T(n-1,k)+row(n)!/col(n)!` with `a(0)=1`
-/

namespace A165674.P10145113641589483664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n + 1 : ℚ) * SequenceMachineLib.triUp a n + (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A165674.P10145113641589483664

/-! ## A165674.P8319341395873395563

`A165675(comp[∑[n]])`
-/

namespace A165674.P8319341395873395563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165675 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A165674.P8319341395873395563

/-! ## A165674.P10474114795153817510

`A067176(comp[∑[n-1]])`
-/

namespace A165674.P10474114795153817510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165674.P10474114795153817510

/-! ## A165674.P6524802054792225868

`A093905(∑[char[∑[n]]]²-n)`
-/

namespace A165674.P6524802054792225868
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A165674.P6524802054792225868

/-! ## A165674.P4930474591113616985

`A292717((n-comp[∑[n]])²-n)`
-/

namespace A165674.P4930474591113616985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A165674.P4930474591113616985

/-!
# A165675: Triangle read by rows. T(n, k) = (n - k + 1)! * H(k, n - k), where H are the hyperharmonic numbers. For 0 <= k <= n.

The programs for A165675, there is no canonical definition to state claims against.
-/

/-! ## A165675.P16232428716693024548

`A105954(∑[2*n]%comp[∑[n]])`
-/

namespace A165675.P16232428716693024548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A165675.P16232428716693024548

/-! ## A165675.P9461597897595020113

`A105954(∑[char[∑[n]]]²-(n+1))`
-/

namespace A165675.P9461597897595020113
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A165675.P9461597897595020113

/-! ## A165675.P10638185090400869976

`A292717(2*(C(comp[∑[n]]-n, 2)-n)+n)`
-/

namespace A165675.P10638185090400869976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A165675.P10638185090400869976

/-! ## A165675.P4343514321185960132

`A292717(A380649(n+1)+1)`
-/

namespace A165675.P4343514321185960132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A380649 (n + 1) + 1).toNat

end

end A165675.P4343514321185960132

/-! ## A165675.P7608195501279383925

`A292717(A099375(n)+1+n)`
-/

namespace A165675.P7608195501279383925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A099375 n + 1 + (n : ℤ)).toNat

end

end A165675.P7608195501279383925

/-! ## A165675.P11244378444732777845

`A292717(A212012(n+1)+n)`
-/

namespace A165675.P11244378444732777845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A165675.P11244378444732777845

/-! ## A165675.P18003191839533897342

`A292717(A061579(comp[∑[n]])+1)`
-/

namespace A165675.P18003191839533897342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A165675.P18003191839533897342

/-! ## A165675.P607253767842076804

`A292717(2*A127739(n+1)-n)`
-/

namespace A165675.P607253767842076804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A165675.P607253767842076804

/-! ## A165675.P5620999519559317915

`A292717(A038722(n+1)+A003056(n)+1)`
-/

namespace A165675.P5620999519559317915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A038722 (n + 1) + (A003056 n + 1)).toNat

end

end A165675.P5620999519559317915

/-! ## A165675.P9202940837944176092

`A292717(A002024(n+1)+A061579(n)+1)`
-/

namespace A165675.P9202940837944176092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A002024 (n + 1) + (A061579 n + 1)).toNat

end

end A165675.P9202940837944176092

/-!
# A165676: Fourth right hand column of triangle A165674.

The programs for A165676, the canonical program `A165676.P14530426602953511829` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165676 has offset 1).

The definition of A165676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165676.P14530426602953511829

`6+22*(n+1)+18*(n+1)²+4*(n+1)^3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165676

/-- `6+22*(n+1)+18*(n+1)²+4*(n+1)^3` -/
def P14530426602953511829.Spec : Prop :=
  ∀ n, (P14530426602953511829.a n : ℤ) = A165676 (n + 1)

theorem P14530426602953511829.correct : P14530426602953511829.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel]

end A165676

/-! ## A165676.P5292591780586399874

`2*Δ[C((n+2)²-1, 2)]`
-/

namespace A165676.P5292591780586399874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 2) ^ 2 : ℤ) - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A165676.P5292591780586399874

namespace A165676

/-- `2*Δ[C((n+2)²-1, 2)]` -/
def P5292591780586399874.Spec : Prop :=
  ∀ n, P5292591780586399874.a n = A165676 (n + 1)

end A165676

/-! ## A165676.P13690987925991014060

`lcm(2, Δ[C((n+2)²-1, 2)])`
-/

namespace A165676.P13690987925991014060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 2) ^ 2 : ℤ) - 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A165676.P13690987925991014060

namespace A165676

/-- `lcm(2, Δ[C((n+2)²-1, 2)])` -/
def P13690987925991014060.Spec : Prop :=
  ∀ n, (P13690987925991014060.a n : ℤ) = A165676 (n + 1)

end A165676

/-! ## A165676.P2129933803160778033

`Δ[(A268581(n)/2)²]`
-/

namespace A165676.P2129933803160778033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A268581 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165676.P2129933803160778033

namespace A165676

/-- `Δ[(A268581(n)/2)²]` -/
def P2129933803160778033.Spec : Prop :=
  ∀ n, P2129933803160778033.a n = (A165676 (n + 1) : ℚ)

theorem P2129933803160778033.correct : P2129933803160778033.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel, A165676.P2129933803160778033.f1, A165676.P2129933803160778033.a, A165676.P14530426602953511829.a, A268581, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165676

/-! ## A165676.P13128347639193774779

`Δ[2*C(∑[2*n+3], 2)]`
-/

namespace A165676.P13128347639193774779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A165676.P13128347639193774779

namespace A165676

/-- `Δ[2*C(∑[2*n+3], 2)]` -/
def P13128347639193774779.Spec : Prop :=
  ∀ n, P13128347639193774779.a n = A165676 (n + 1)

end A165676

/-! ## A165676.P448068135984588170

`(2*n+5)*A090288(n+1)`
-/

namespace A165676.P448068135984588170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A090288 (n + 1)

end

end A165676.P448068135984588170

namespace A165676

/-- `(2*n+5)*A090288(n+1)` -/
def P448068135984588170.Spec : Prop :=
  ∀ n, P448068135984588170.a n = A165676 (n + 1)

theorem P448068135984588170.correct : P448068135984588170.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel, A165676.P448068135984588170.a, A165676.P14530426602953511829.a, A090288, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165676

/-! ## A165676.P11952088802119569496

`(4*n+5+A001844(n+1))*A144396(n+2)`
-/

namespace A165676.P11952088802119569496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 5 : ℤ) + A001844 (n + 1)) * A144396 (n + 2)

end

end A165676.P11952088802119569496

namespace A165676

/-- `(4*n+5+A001844(n+1))*A144396(n+2)` -/
def P11952088802119569496.Spec : Prop :=
  ∀ n, P11952088802119569496.a n = A165676 (n + 1)

theorem P11952088802119569496.correct : P11952088802119569496.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel, A165676.P11952088802119569496.a, A165676.P14530426602953511829.a, A001844, A001844.P5037395199076350534.a, A144396, A144396.P18396969748453668116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165676

/-! ## A165676.P12891625491293717609

`(A271625(n+2)-A271625(n+1))*A028387(n+1)`
-/

namespace A165676.P12891625491293717609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271625 (n + 2) - A271625 (n + 1)) * A028387 (n + 1)

end

end A165676.P12891625491293717609

namespace A165676

/-- `(A271625(n+2)-A271625(n+1))*A028387(n+1)` -/
def P12891625491293717609.Spec : Prop :=
  ∀ n, P12891625491293717609.a n = A165676 (n + 1)

theorem P12891625491293717609.correct : P12891625491293717609.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel, A165676.P12891625491293717609.a, A165676.P14530426602953511829.a, A028387, A028387.P5954590561330899546.a, A271625, A271625.P5598533269613636058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165676

/-! ## A165676.P1587410999444026193

`2*((2*(n+1)+1)*A005563(n+2)+1+n)`
-/

namespace A165676.P1587410999444026193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (n + 1) + 1 : ℤ) * A005563 (n + 2) + 1 + (n : ℤ))

end

end A165676.P1587410999444026193

namespace A165676

/-- `2*((2*(n+1)+1)*A005563(n+2)+1+n)` -/
def P1587410999444026193.Spec : Prop :=
  ∀ n, P1587410999444026193.a n = A165676 (n + 1)

theorem P1587410999444026193.correct : P1587410999444026193.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel, A165676.P1587410999444026193.a, A165676.P14530426602953511829.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165676

/-! ## A165676.P3960810263828401739

`Δ[A057722(n+2)]`
-/

namespace A165676.P3960810263828401739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165676.P3960810263828401739

namespace A165676

/-- `Δ[A057722(n+2)]` -/
def P3960810263828401739.Spec : Prop :=
  ∀ n, P3960810263828401739.a n = A165676 (n + 1)

theorem P3960810263828401739.correct : P3960810263828401739.Spec := by
  intro n
  simp only [A165676, Nat.add_sub_cancel, A165676.P3960810263828401739.f1, A165676.P3960810263828401739.a, A165676.P14530426602953511829.a, A057722, A057722.P17503710663781687125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165676

/-! ## A165676.P12215579858558325219

`Δ[sqrt(A208116(2*n+1))]`
-/

namespace A165676.P12215579858558325219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208116 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165676.P12215579858558325219

namespace A165676

/-- `Δ[sqrt(A208116(2*n+1))]` -/
def P12215579858558325219.Spec : Prop :=
  ∀ n, P12215579858558325219.a n = (A165676 (n + 1) : ℝ)

end A165676

/-!
# A165677: Fifth right hand column of triangle A165674.

The programs for A165677, the canonical program `A165677.P8412649058888625233` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165677 has offset 1).

The definition of A165677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165677.P8412649058888625233

`24+100*(n+1)+105*(n+1)²+40*(n+1)^3+5*(n+1)^4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165677

/-- `24+100*(n+1)+105*(n+1)²+40*(n+1)^3+5*(n+1)^4` -/
def P8412649058888625233.Spec : Prop :=
  ∀ n, (P8412649058888625233.a n : ℤ) = A165677 (n + 1)

theorem P8412649058888625233.correct : P8412649058888625233.Spec := by
  intro n
  simp only [A165677, Nat.add_sub_cancel]

end A165677

/-! ## A165677.P1213443380043649674

`A067176(A056119(n)+15)`
-/

namespace A165677.P1213443380043649674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A056119 n + 15).toNat

end

end A165677.P1213443380043649674

namespace A165677

/-- `A067176(A056119(n)+15)` -/
def P1213443380043649674.Spec : Prop :=
  ∀ n, P1213443380043649674.a n = A165677 (n + 1)

end A165677

/-! ## A165677.P1878741316618458438

`A067176(eq[5, A025581(n)])`
-/

namespace A165677.P1878741316618458438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165677.P1878741316618458438

namespace A165677

/-- `A067176(eq[5, A025581(n)])` -/
def P1878741316618458438.Spec : Prop :=
  ∀ n, P1878741316618458438.a n = A165677 (n + 1)

end A165677

/-! ## A165677.P10395277777425063110

`A067176(eq[11, A099375(n)])`
-/

namespace A165677.P10395277777425063110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165677.P10395277777425063110

namespace A165677

/-- `A067176(eq[11, A099375(n)])` -/
def P10395277777425063110.Spec : Prop :=
  ∀ n, P10395277777425063110.a n = A165677 (n + 1)

end A165677

/-! ## A165677.P15277073438723715888

`A067176(eq[4, A071417(n+2)])`
-/

namespace A165677.P15277073438723715888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071417 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165677.P15277073438723715888

namespace A165677

/-- `A067176(eq[4, A071417(n+2)])` -/
def P15277073438723715888.Spec : Prop :=
  ∀ n, P15277073438723715888.a n = A165677 (n + 1)

end A165677

/-!
# A165678: Sixth right hand column of triangle A165674.

The programs for A165678, the canonical program `A165678.P7935670583701452585` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165678 has offset 1).

The definition of A165678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165678.P7935670583701452585

`120+548*(n+1)+675*(n+1)²+340*(n+1)^3+75*(n+1)^4+6*(n+1)^5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165678

/-- `120+548*(n+1)+675*(n+1)²+340*(n+1)^3+75*(n+1)^4+6*(n+1)^5` -/
def P7935670583701452585.Spec : Prop :=
  ∀ n, (P7935670583701452585.a n : ℤ) = A165678 (n + 1)

theorem P7935670583701452585.correct : P7935670583701452585.Spec := by
  intro n
  simp only [A165678, Nat.add_sub_cancel]

end A165678

/-! ## A165678.P15688014601036999246

`A067176(eq[6, A025581(n)])`
-/

namespace A165678.P15688014601036999246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165678.P15688014601036999246

namespace A165678

/-- `A067176(eq[6, A025581(n)])` -/
def P15688014601036999246.Spec : Prop :=
  ∀ n, P15688014601036999246.a n = A165678 (n + 1)

end A165678

/-! ## A165678.P6765348279606199998

`A067176(eq[13, A099375(n)])`
-/

namespace A165678.P6765348279606199998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165678.P6765348279606199998

namespace A165678

/-- `A067176(eq[13, A099375(n)])` -/
def P6765348279606199998.Spec : Prop :=
  ∀ n, P6765348279606199998.a n = A165678 (n + 1)

end A165678

/-! ## A165678.P8413660744025162465

`A093905(eq[7, A131818(n+1)])`
-/

namespace A165678.P8413660744025162465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165678.P8413660744025162465

namespace A165678

/-- `A093905(eq[7, A131818(n+1)])` -/
def P8413660744025162465.Spec : Prop :=
  ∀ n, P8413660744025162465.a n = A165678 (n + 1)

end A165678

/-! ## A165678.P8285680007627770478

`A093905(Δ[A023545(n+1)]+10)`
-/

namespace A165678.P8285680007627770478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (f1 (n + 1) - f1 n + 10).toNat

end

end A165678.P8285680007627770478

namespace A165678

/-- `A093905(Δ[A023545(n+1)]+10)` -/
def P8285680007627770478.Spec : Prop :=
  ∀ n, P8285680007627770478.a n = A165678 (n + 1)

end A165678

/-!
# A165679: Seventh right hand column of triangle A165674.

The programs for A165679, there is no canonical definition to state claims against.
-/

/-! ## A165679.P7729459203282986942

`A067176(eq[7, A025581(n)])`
-/

namespace A165679.P7729459203282986942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165679.P7729459203282986942

/-! ## A165679.P8236013873070487223

`A067176(eq[15, A099375(n)])`
-/

namespace A165679.P8236013873070487223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165679.P8236013873070487223

/-! ## A165679.P7738284837466776573

`A067176(eq[8, A004736(n+1)])`
-/

namespace A165679.P7738284837466776573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165679.P7738284837466776573

/-! ## A165679.P2236371288500755370

`A093905(eq[11, A066657(n)])`
-/

namespace A165679.P2236371288500755370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165679.P2236371288500755370

/-! ## A165679.P7691460154315880403

`A093905(eq[8, A131818(n+1)])`
-/

namespace A165679.P7691460154315880403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165679.P7691460154315880403

/-!
# A165680: Triangle of the divisors of the coefficients of triangles A138771 and A165675.

The programs for A165680, the canonical program `A165680.P5117045185547673148` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165680 has offset 1).

The definition of A165680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165680.P4138196678470476030

`A138771(n+1)/A165675(n)`
-/

namespace A165680.P4138196678470476030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138771 (n + 1) : ℚ) / (A165675 n : ℚ)

end

end A165680.P4138196678470476030

namespace A165680

/-- `A138771(n+1)/A165675(n)` -/
def P4138196678470476030.Spec : Prop :=
  ∀ n, P4138196678470476030.a n = (A165680 (n + 1) : ℚ)

end A165680

/-! ## A165680.P5892248526919384895

`log2(A232089(n))!`
-/

namespace A165680.P5892248526919384895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A232089 n : ℝ))).toNat

end

end A165680.P5892248526919384895

namespace A165680

/-- `log2(A232089(n))!` -/
def P5892248526919384895.Spec : Prop :=
  ∀ n, (P5892248526919384895.a n : ℤ) = A165680 (n + 1)

end A165680

/-! ## A165680.P5117045185547673148

`val(A135293(n), 3)!`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165680

/-- `val(A135293(n), 3)!` -/
def P5117045185547673148.Spec : Prop :=
  ∀ n, (P5117045185547673148.a n : ℤ) = A165680 (n + 1)

theorem P5117045185547673148.correct : P5117045185547673148.Spec := by
  intro n
  simp only [A165680, Nat.add_sub_cancel]

end A165680

/-! ## A165680.P11711157566144261776

`abs(1-A002262(n))!`
-/

namespace A165680.P11711157566144261776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - A002262 n|.toNat

end

end A165680.P11711157566144261776

namespace A165680

/-- `abs(1-A002262(n))!` -/
def P11711157566144261776.Spec : Prop :=
  ∀ n, (P11711157566144261776.a n : ℤ) = A165680 (n + 1)

end A165680

/-! ## A165680.P3829619946577627910

`A114219(abs(1-n))!`
-/

namespace A165680.P3829619946577627910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A114219 |1 - (n : ℤ)|.toNat).toNat

end

end A165680.P3829619946577627910

namespace A165680

/-- `A114219(abs(1-n))!` -/
def P3829619946577627910.Spec : Prop :=
  ∀ n, (P3829619946577627910.a n : ℤ) = A165680 (n + 1)

end A165680

/-! ## A165680.P2437922362223887836

`(A144328(n+1)-1)!`
-/

namespace A165680.P2437922362223887836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A144328 (n + 1) - 1).toNat

end

end A165680.P2437922362223887836

namespace A165680

/-- `(A144328(n+1)-1)!` -/
def P2437922362223887836.Spec : Prop :=
  ∀ n, (P2437922362223887836.a n : ℤ) = A165680 (n + 1)

end A165680

/-! ## A165680.P13305218439712357828

`abs(2-A002260(n+1))!`
-/

namespace A165680.P13305218439712357828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |2 - A002260 (n + 1)|.toNat

end

end A165680.P13305218439712357828

namespace A165680

/-- `abs(2-A002260(n+1))!` -/
def P13305218439712357828.Spec : Prop :=
  ∀ n, (P13305218439712357828.a n : ℤ) = A165680 (n + 1)

end A165680

/-! ## A165680.P17959804727909848246

`A098361(C(A002262(n), 2))`
-/

namespace A165680.P17959804727909848246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (Nat.choose (A002262 n).toNat 2)

end

end A165680.P17959804727909848246

namespace A165680

/-- `A098361(C(A002262(n), 2))` -/
def P17959804727909848246.Spec : Prop :=
  ∀ n, P17959804727909848246.a n = A165680 (n + 1)

end A165680

/-! ## A165680.P3913720517069434091

`A098361(A367964(n)-n)`
-/

namespace A165680.P3913720517069434091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A367964 n - (n : ℤ)).toNat

end

end A165680.P3913720517069434091

namespace A165680

/-- `A098361(A367964(n)-n)` -/
def P3913720517069434091.Spec : Prop :=
  ∀ n, P3913720517069434091.a n = A165680 (n + 1)

end A165680

/-! ## A165680.P3559284695744665988

`A000142(A144328(n+1)-1)`
-/

namespace A165680.P3559284695744665988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A144328 (n + 1) - 1).toNat

end

end A165680.P3559284695744665988

namespace A165680

/-- `A000142(A144328(n+1)-1)` -/
def P3559284695744665988.Spec : Prop :=
  ∀ n, P3559284695744665988.a n = A165680 (n + 1)

end A165680

/-! ## A165680.P17676033226595442788

`A214078((2-A002260(n+1))²)`
-/

namespace A165680.P17676033226595442788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 ((2 - A002260 (n + 1)) ^ 2).toNat

end

end A165680.P17676033226595442788

namespace A165680

/-- `A214078((2-A002260(n+1))²)` -/
def P17676033226595442788.Spec : Prop :=
  ∀ n, P17676033226595442788.a n = A165680 (n + 1)

end A165680

/-! ## A165680.P8239126080796659412

`A098361(A112367(n)+1)`
-/

namespace A165680.P8239126080796659412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A112367 n + 1).toNat

end

end A165680.P8239126080796659412

namespace A165680

/-- `A098361(A112367(n)+1)` -/
def P8239126080796659412.Spec : Prop :=
  ∀ n, P8239126080796659412.a n = A165680 (n + 1)

end A165680

/-! ## A165680.P471318424307788191

`A119502(A112367(n)+1)`
-/

namespace A165680.P471318424307788191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A112367 n + 1).toNat

end

end A165680.P471318424307788191

namespace A165680

/-- `A119502(A112367(n)+1)` -/
def P471318424307788191.Spec : Prop :=
  ∀ n, P471318424307788191.a n = A165680 (n + 1)

end A165680

/-! ## A165680.P5002775354941793051

`A137948(n)/A144329(n+1)`
-/

namespace A165680.P5002775354941793051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137948 n : ℚ) / (A144329 (n + 1) : ℚ)

end

end A165680.P5002775354941793051

namespace A165680

/-- `A137948(n)/A144329(n+1)` -/
def P5002775354941793051.Spec : Prop :=
  ∀ n, P5002775354941793051.a n = (A165680 (n + 1) : ℚ)

end A165680

/-! ## A165680.P13510655285862062836

`A233543(n)/A144328(n+1)`
-/

namespace A165680.P13510655285862062836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233543 n : ℚ) / (A144328 (n + 1) : ℚ)

end

end A165680.P13510655285862062836

namespace A165680

/-- `A233543(n)/A144328(n+1)` -/
def P13510655285862062836.Spec : Prop :=
  ∀ n, P13510655285862062836.a n = (A165680 (n + 1) : ℚ)

end A165680

/-! ## A165680.P16937029557528746847

`A008279(n)/A134399(n)`
-/

namespace A165680.P16937029557528746847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A134399 n : ℚ)

end

end A165680.P16937029557528746847

namespace A165680

/-- `A008279(n)/A134399(n)` -/
def P16937029557528746847.Spec : Prop :=
  ∀ n, P16937029557528746847.a n = (A165680 (n + 1) : ℚ)

end A165680

/-! ## A165680.P6838846286766594636

`gcd(A008279(n), A177264(n+1))`
-/

namespace A165680.P6838846286766594636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008279 n) (A177264 (n + 1))

end

end A165680.P6838846286766594636

namespace A165680

/-- `gcd(A008279(n), A177264(n+1))` -/
def P6838846286766594636.Spec : Prop :=
  ∀ n, (P6838846286766594636.a n : ℤ) = A165680 (n + 1)

end A165680

/-! ## A165680.P18040023013198915001

`A143216(A367964(n)-n)`
-/

namespace A165680.P18040023013198915001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143216 (A367964 n - (n : ℤ)).toNat

end

end A165680.P18040023013198915001

namespace A165680

/-- `A143216(A367964(n)-n)` -/
def P18040023013198915001.Spec : Prop :=
  ∀ n, P18040023013198915001.a n = A165680 (n + 1)

end A165680

/-!
# A165681: Primes p such that 3*p*(p-1)+1 is not prime.

The programs for A165681, the canonical program `A165681.P2568694064747415589` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165681 has offset 1).

The definition of A165681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165681.P16742682458041960729

`p?[comp[A002504(n+1)]]`
-/

namespace A165681.P16742682458041960729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165681.P16742682458041960729

namespace A165681

/-- `p?[comp[A002504(n+1)]]` -/
def P16742682458041960729.Spec : Prop :=
  ∀ n, (P16742682458041960729.a n : ℤ) = A165681 (n + 1)

end A165681

/-! ## A165681.P2568694064747415589

`p?[A257772(n+1)+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A165681

/-- `p?[A257772(n+1)+1]` -/
def P2568694064747415589.Spec : Prop :=
  ∀ n, P2568694064747415589.a n = A165681 (n + 1)

theorem P2568694064747415589.correct : P2568694064747415589.Spec := by
  intro n
  simp only [A165681, Nat.add_sub_cancel]

end A165681

/-! ## A165681.P6357072232811428637

`p?[A004442(A257772(n+1))]`
-/

namespace A165681.P6357072232811428637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A257772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P6357072232811428637

namespace A165681

/-- `p?[A004442(A257772(n+1))]` -/
def P6357072232811428637.Spec : Prop :=
  ∀ n, P6357072232811428637.a n = A165681 (n + 1)

end A165681

/-! ## A165681.P12441804989292152263

`p?[A139693(A257772(n+2))]`
-/

namespace A165681.P12441804989292152263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (A257772 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P12441804989292152263

namespace A165681

/-- `p?[A139693(A257772(n+2))]` -/
def P12441804989292152263.Spec : Prop :=
  ∀ n, P12441804989292152263.a n = A165681 (n + 1)

end A165681

/-! ## A165681.P975600112040690623

`p?[A263449(A257772(n+3))]`
-/

namespace A165681.P975600112040690623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (A257772 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P975600112040690623

namespace A165681

/-- `p?[A263449(A257772(n+3))]` -/
def P975600112040690623.Spec : Prop :=
  ∀ n, P975600112040690623.a n = A165681 (n + 1)

end A165681

/-! ## A165681.P10422925181619771874

`p?[xor(n+1, A002448(A350090(n)))]`
-/

namespace A165681.P10422925181619771874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A002448 (A350090 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P10422925181619771874

namespace A165681

/-- `p?[xor(n+1, A002448(A350090(n)))]` -/
def P10422925181619771874.Spec : Prop :=
  ∀ n, P10422925181619771874.a n = A165681 (n + 1)

end A165681

/-!
# A165682: Primes p such that 3*p*(p-1)+1 is also prime.

The programs for A165682, there is no canonical definition to state claims against.
-/

/-! ## A165682.P9476677659039830541

`A171447(n+1)+1`
-/

namespace A165682.P9476677659039830541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171447 (n + 1) + 1

end

end A165682.P9476677659039830541

/-! ## A165682.P17627746530745872813

`p?[A002504(n+1)]`
-/

namespace A165682.P17627746530745872813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165682.P17627746530745872813

/-! ## A165682.P12113581855919969748

`p?[A111251(n+1)+1]`
-/

namespace A165682.P12113581855919969748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165682.P12113581855919969748

/-! ## A165682.P1724984576162409220

`filter[A002504(n+1), A010051(#)]`
-/

namespace A165682.P1724984576162409220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A165682.P1724984576162409220

/-! ## A165682.P9514078811901233866

`∩[A002504(n+1), A042988(n)]`
-/

namespace A165682.P9514078811901233866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P9514078811901233866

/-! ## A165682.P9366064614851087053

`record[A020639(A111251(n+1)+1)]`
-/

namespace A165682.P9366064614851087053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111251 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165682.P9366064614851087053

/-! ## A165682.P8852326356511174544

`∩[A000040(n+1), A002504(n+1)]`
-/

namespace A165682.P8852326356511174544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P8852326356511174544

/-! ## A165682.P13108408917546383695

`∩[A002504(n+1), A008578(n+1)]`
-/

namespace A165682.P13108408917546383695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P13108408917546383695

/-! ## A165682.P15273363515608725493

`∩[A002504(n+1), A033946(n+1)]`
-/

namespace A165682.P15273363515608725493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P15273363515608725493

/-! ## A165682.P1202777643559686844

`∩[A002504(n+1), A116974(n+1)]`
-/

namespace A165682.P1202777643559686844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P1202777643559686844

/-! ## A165682.P6042913614076515243

`∩[A002504(n+1), A158611(n+1)]`
-/

namespace A165682.P6042913614076515243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P6042913614076515243

/-! ## A165682.P2753571591071771212

`∩[A002504(n+1), A182986(n+1)]`
-/

namespace A165682.P2753571591071771212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P2753571591071771212

/-! ## A165682.P12458616335649585602

`∩[A326715(n+1), A002504(n+1)]`
-/

namespace A165682.P12458616335649585602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P12458616335649585602

/-! ## A165682.P9770538918177578082

`∩[A000040(n+1), A111251(n+1)+1]`
-/

namespace A165682.P9770538918177578082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P9770538918177578082

/-! ## A165682.P9790712343776062356

`∩[A006093(n+1), A111251(n+1)]+1`
-/

namespace A165682.P9790712343776062356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A165682.P9790712343776062356

/-! ## A165682.P10675392575808785036

`∩[A111251(n+1)+1, A182986(n+1)]`
-/

namespace A165682.P10675392575808785036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165682.P10675392575808785036

/-! ## A165682.P7073895223933142387

`p?[(n+1)*A350090(n)]`
-/

namespace A165682.P7073895223933142387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165682.P7073895223933142387

/-! ## A165682.P6960936461650802196

`A020725(A171447(n+1))`
-/

namespace A165682.P6960936461650802196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A171447 (n + 1)).toNat

end

end A165682.P6960936461650802196

/-! ## A165682.P4458087415262264437

`filter[A002504(n+1), A080339(#)]`
-/

namespace A165682.P4458087415262264437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A165682.P4458087415262264437

/-! ## A165682.P8870243224619851878

`record[A014963(A111251(n+1)+1)]`
-/

namespace A165682.P8870243224619851878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A111251 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165682.P8870243224619851878

/-!
# A165683: Primes of form 3*p*(p-1)+1 with p also a prime.

The programs for A165683, there is no canonical definition to state claims against.
-/

/-! ## A165683.P9762700990932942211

`A003215(A171447(n+1))`
-/

namespace A165683.P9762700990932942211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A171447 (n + 1)).toNat

end

end A165683.P9762700990932942211

/-! ## A165683.P17688947086517274459

`A372881(A165682(n+1))`
-/

namespace A165683.P17688947086517274459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372881 (A165682 (n + 1)).toNat

end

end A165683.P17688947086517274459

/-! ## A165683.P4882467658259882957

`A003215(A165682(n+1)-1)`
-/

namespace A165683.P4882467658259882957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A165682 (n + 1) - 1).toNat

end

end A165683.P4882467658259882957

/-! ## A165683.P13494419444486788242

`A064400(p?[A002504(n+1)])+1`
-/

namespace A165683.P13494419444486788242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064400 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A165683.P13494419444486788242

/-! ## A165683.P2678694608751043658

`A003215(p?[A002504(n+1)]-1)`
-/

namespace A165683.P2678694608751043658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A165683.P2678694608751043658

/-! ## A165683.P6745826024969545244

`A000578(A165682(n+1))-A000578(A171447(n+1))`
-/

namespace A165683.P6745826024969545244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A165682 (n + 1)).toNat - A000578 (A171447 (n + 1)).toNat

end

end A165683.P6745826024969545244

/-! ## A165683.P8059133190169009541

`A077043(2*A171447(n+1)+1)`
-/

namespace A165683.P8059133190169009541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * A171447 (n + 1) + 1).toNat

end

end A165683.P8059133190169009541

/-! ## A165683.P7440912292060344531

`A077043(2*A165682(n+1)-1)`
-/

namespace A165683.P7440912292060344531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * A165682 (n + 1) - 1).toNat

end

end A165683.P7440912292060344531

/-! ## A165683.P9165870340156131644

`A077043(A171447(n+1)+A165682(n+1))`
-/

namespace A165683.P9165870340156131644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A171447 (n + 1) + A165682 (n + 1)).toNat

end

end A165683.P9165870340156131644

/-! ## A165683.P13507713720129921884

`A077043(A171447(n+1)+p?[A002504(n+1)])`
-/

namespace A165683.P13507713720129921884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A171447 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165683.P13507713720129921884

/-! ## A165683.P14092917856608471581

`A077043(A171447(n+1)+A171447(n+1)+1)`
-/

namespace A165683.P14092917856608471581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A171447 (n + 1) + (A171447 (n + 1) + 1)).toNat

end

end A165683.P14092917856608471581

/-! ## A165683.P4260670908864601087

`A077043(A165682(n+1)+A165682(n+1)-1)`
-/

namespace A165683.P4260670908864601087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A165682 (n + 1) + (A165682 (n + 1) - 1)).toNat

end

end A165683.P4260670908864601087

/-!
# A165684: Dimension of the space of Siegel cusp forms of genus 2 and dimension 2n (associated with full modular group Gamma_2).

The programs for A165684, the canonical program `A165684.P15035907269724094192` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165684 has offset 1).

The definition of A165684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165684.P13088521600978798167

`A165685(2*(n+1))`
-/

namespace A165684.P13088521600978798167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165685 (2 * (n + 1))

end

end A165684.P13088521600978798167

namespace A165684

/-- `A165685(2*(n+1))` -/
def P13088521600978798167.Spec : Prop :=
  ∀ n, P13088521600978798167.a n = A165684 (n + 1)

end A165684

/-! ## A165684.P15035907269724094192

`A029143(n+1)-A103221(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165684

/-- `A029143(n+1)-A103221(n+1)` -/
def P15035907269724094192.Spec : Prop :=
  ∀ n, P15035907269724094192.a n = A165684 (n + 1)

theorem P15035907269724094192.correct : P15035907269724094192.Spec := by
  intro n
  simp only [A165684, Nat.add_sub_cancel]

end A165684

/-! ## A165684.P9192065425583884997

`A029143(n+1)+A001399(n)-A001399(n+1)`
-/

namespace A165684.P9192065425583884997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + 1) + (A001399 n - A001399 (n + 1))

end

end A165684.P9192065425583884997

namespace A165684

/-- `A029143(n+1)+A001399(n)-A001399(n+1)` -/
def P9192065425583884997.Spec : Prop :=
  ∀ n, P9192065425583884997.a n = A165684 (n + 1)

end A165684

/-! ## A165684.P11519855439778747726

`A029143(n+1)+A008615(n)-A008611(n+1)`
-/

namespace A165684.P11519855439778747726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + 1) + (A008615 n - A008611 (n + 1))

end

end A165684.P11519855439778747726

namespace A165684

/-- `A029143(n+1)+A008615(n)-A008611(n+1)` -/
def P11519855439778747726.Spec : Prop :=
  ∀ n, P11519855439778747726.a n = A165684 (n + 1)

end A165684

/-! ## A165684.P8970458397637320153

`A029143(n+1)+A002264(n)-A004526(n+1)`
-/

namespace A165684.P8970458397637320153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + 1) + (A002264 n - A004526 (n + 1))

end

end A165684.P8970458397637320153

namespace A165684

/-- `A029143(n+1)+A002264(n)-A004526(n+1)` -/
def P8970458397637320153.Spec : Prop :=
  ∀ n, P8970458397637320153.a n = A165684 (n + 1)

end A165684

/-! ## A165684.P10291708287730632421

`A029143(n+1)-A008615(n+3)`
-/

namespace A165684.P10291708287730632421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + 1) - A008615 (n + 3)

end

end A165684.P10291708287730632421

namespace A165684

/-- `A029143(n+1)-A008615(n+3)` -/
def P10291708287730632421.Spec : Prop :=
  ∀ n, P10291708287730632421.a n = A165684 (n + 1)

end A165684

/-! ## A165684.P5900324128466797845

`A027640(2*(n+1))-A103221(n+1)`
-/

namespace A165684.P5900324128466797845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (2 * (n + 1)) - A103221 (n + 1)

end

end A165684.P5900324128466797845

namespace A165684

/-- `A027640(2*(n+1))-A103221(n+1)` -/
def P5900324128466797845.Spec : Prop :=
  ∀ n, P5900324128466797845.a n = A165684 (n + 1)

end A165684

/-! ## A165684.P11195092231770034785

`A027640(2*(n+1))-A008615(n+3)`
-/

namespace A165684.P11195092231770034785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (2 * (n + 1)) - A008615 (n + 3)

end

end A165684.P11195092231770034785

namespace A165684

/-- `A027640(2*(n+1))-A008615(n+3)` -/
def P11195092231770034785.Spec : Prop :=
  ∀ n, P11195092231770034785.a n = A165684 (n + 1)

end A165684

/-!
# A165685: Dimension of the space of Siegel cusp forms of genus 2 and weight n.

The programs for A165685, there is no canonical definition to state claims against.
-/

/-! ## A165685.P8690030684132221218

`A165684(A152271(n)%A141214(n+1))`
-/

namespace A165685.P8690030684132221218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165684 (Int.tmod (A152271 n) (A141214 (n + 1))).toNat

end

end A165685.P8690030684132221218

/-! ## A165685.P15601342522754891151

`A097796(A084684(n)^A097796(3*(n+1)))`
-/

namespace A165685.P15601342522754891151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097796 (SequenceMachineLib.roundAway ((A084684 n : ℚ) ^ (A097796 (3 * (n + 1)) : ℤ))).toNat

end

end A165685.P15601342522754891151

/-! ## A165685.P17867200115388569844

`A110654(A035688(n+1)%A087644(2*n+3))`
-/

namespace A165685.P17867200115388569844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A035688 (n + 1)) (A087644 (2 * n + 3))).toNat

end

end A165685.P17867200115388569844

/-! ## A165685.P6101050341925507024

`A124769(A000035(n)*A024794(n+1))`
-/

namespace A165685.P6101050341925507024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A000035 n * A024794 (n + 1)).toNat

end

end A165685.P6101050341925507024

/-! ## A165685.P464077734372613618

`A248639(A334626(n+1))`
-/

namespace A165685.P464077734372613618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A334626 (n + 1)).toNat

end

end A165685.P464077734372613618

/-!
# A165686: Dimension of the space of Siegel cusp forms of genus 2 and weight 2k which are not Saito-Kurokawa lifts of forms of genus 1.

The programs for A165686, the canonical program `A165686.P1058354228064450562` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165686 has offset 1).

The definition of A165686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165686.P11186679991970938401

`A165684(n+1)-A152467(A004273(n))`
-/

namespace A165686.P11186679991970938401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165684 (n + 1) - A152467 (A004273 n).toNat

end

end A165686.P11186679991970938401

namespace A165686

/-- `A165684(n+1)-A152467(A004273(n))` -/
def P11186679991970938401.Spec : Prop :=
  ∀ n, P11186679991970938401.a n = A165686 (n + 1)

end A165686

/-! ## A165686.P1058354228064450562

`A165684(n+1)-A152467(A004275(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165686

/-- `A165684(n+1)-A152467(A004275(n))` -/
def P1058354228064450562.Spec : Prop :=
  ∀ n, P1058354228064450562.a n = A165686 (n + 1)

theorem P1058354228064450562.correct : P1058354228064450562.Spec := by
  intro n
  simp only [A165686, Nat.add_sub_cancel]

end A165686

/-! ## A165686.P14581265913984595500

`A165685(2*(n+1))-A152467(A004273(n))`
-/

namespace A165686.P14581265913984595500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165685 (2 * (n + 1)) - A152467 (A004273 n).toNat

end

end A165686.P14581265913984595500

namespace A165686

/-- `A165685(2*(n+1))-A152467(A004273(n))` -/
def P14581265913984595500.Spec : Prop :=
  ∀ n, P14581265913984595500.a n = A165686 (n + 1)

end A165686

/-! ## A165686.P13356122001705853810

`A027640(2*(n+1))-A008615(n+3)-A152467(A004273(n))`
-/

namespace A165686.P13356122001705853810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (2 * (n + 1)) - A008615 (n + 3) - A152467 (A004273 n).toNat

end

end A165686.P13356122001705853810

namespace A165686

/-- `A027640(2*(n+1))-A008615(n+3)-A152467(A004273(n))` -/
def P13356122001705853810.Spec : Prop :=
  ∀ n, P13356122001705853810.a n = A165686 (n + 1)

end A165686

/-! ## A165686.P6513979680539047554

`A165684(n+1)-A271484(A008574(n))`
-/

namespace A165686.P6513979680539047554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165684 (n + 1) - A271484 (A008574 n).toNat

end

end A165686.P6513979680539047554

namespace A165686

/-- `A165684(n+1)-A271484(A008574(n))` -/
def P6513979680539047554.Spec : Prop :=
  ∀ n, P6513979680539047554.a n = A165686 (n + 1)

end A165686

/-!
# A165689: Numbers n such that pi(n) = (1/10)*n.

The programs for A165689, there is no canonical definition to state claims against.
-/

/-! ## A165689.P8996554132197657492

`A058011(n+38)`
-/

namespace A165689.P8996554132197657492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058011 (n + 38)

end

end A165689.P8996554132197657492

/-! ## A165689.P15223934216037371268

`A057809(n+39)`
-/

namespace A165689.P15223934216037371268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 39)

end

end A165689.P15223934216037371268

/-!
# A165691: Primes p such that pi(p) is the product of the first digit of p and the rest of the number.

The programs for A165691, there is no canonical definition to state claims against.
-/

/-! ## A165691.P5409079664719140241

`A112013(record[abs(A111963(n))])`
-/

namespace A165691.P5409079664719140241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111963 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112013 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165691.P5409079664719140241

