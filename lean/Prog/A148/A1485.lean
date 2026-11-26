import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A148500: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148500, there is no canonical definition to state claims against.
-/

/-! ## A148500.P17849169609146333035

`A302496(2^(n-2)+2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A148500.P17849169609146333035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A302496 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (2 * a (n - 2) : ℚ))).toNat

end

end A148500.P17849169609146333035

/-! ## A148500.P10043380614340858095

`A321698(ceil((∑[floor((n+4)*2^(n-2))]-n)/(n+1)))`
-/

namespace A148500.P10043380614340858095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A148500.P10043380614340858095

/-! ## A148500.P259505783465633508

`A120841(A148036(n))`
-/

namespace A148500.P259505783465633508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A148036 n).toNat

end

end A148500.P259505783465633508

/-!
# A148501: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148501, there is no canonical definition to state claims against.
-/

/-! ## A148501.P13573582996230583255

`or(A072038(A148257(n)), A148257(n))`
-/

namespace A148501.P13573582996230583255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072038 (A148257 n).toNat) (A148257 n)

end

end A148501.P13573582996230583255

/-! ## A148501.P12467756301987607445

`or(A072038(A148258(n)), A148258(n))`
-/

namespace A148501.P12467756301987607445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072038 (A148258 n).toNat) (A148258 n)

end

end A148501.P12467756301987607445

/-! ## A148501.P2048779729022784631

`or(A148257(n), A214500(A018242(n)))`
-/

namespace A148501.P2048779729022784631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148257 n) (A214500 (A018242 n).toNat)

end

end A148501.P2048779729022784631

/-! ## A148501.P5236515261501463352

`or(A148257(n), A307610(A148245(n)))`
-/

namespace A148501.P5236515261501463352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148257 n) (A307610 (A148245 n).toNat)

end

end A148501.P5236515261501463352

/-!
# A148502: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148502, there is no canonical definition to state claims against.
-/

/-! ## A148502.P13635998867438387972

`A185908(n!*C(floor(n/2)+2, 2))`
-/

namespace A148502.P13635998867438387972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185908 (Nat.factorial n * Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2)

end

end A148502.P13635998867438387972

/-! ## A148502.P16490893212925798291

`A112325(A149105(n))`
-/

namespace A148502.P16490893212925798291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A149105 n).toNat

end

end A148502.P16490893212925798291

/-! ## A148502.P325512584692770434

`A120841(A148022(n))`
-/

namespace A148502.P325512584692770434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A148022 n).toNat

end

end A148502.P325512584692770434

/-!
# A148503: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148503, there is no canonical definition to state claims against.
-/

/-! ## A148503.P5168986995083323379

`or(1, A214701(A148315(n)))`
-/

namespace A148503.P5168986995083323379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214701 (A148315 n).toNat)

end

end A148503.P5168986995083323379

/-! ## A148503.P11403415390560029687

`A233583(A123611(n)+1)-a(n-1)` with `a(0)=1`
-/

namespace A148503.P11403415390560029687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233583 (A123611 n + 1).toNat - a (n - 1)

end

end A148503.P11403415390560029687

/-! ## A148503.P3764648994726187005

`or(A006530(A188509(3*n+1)), A188495(n))`
-/

namespace A148503.P3764648994726187005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A188509 (3 * n + 1)).toNat) (A188495 n)

end

end A148503.P3764648994726187005

/-!
# A148504: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, 0)}.

The programs for A148504, there is no canonical definition to state claims against.
-/

/-! ## A148504.P12699085759172762534

`A004526(A148523(n)+A148498(n))`
-/

namespace A148504.P12699085759172762534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148523 n + A148498 n).toNat

end

end A148504.P12699085759172762534

/-! ## A148504.P2802805314262887608

`A026741(A148523(n)+A148498(n))`
-/

namespace A148504.P2802805314262887608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A148523 n + A148498 n).toNat

end

end A148504.P2802805314262887608

/-! ## A148504.P2211866391384197612

`A029578(A148523(n)+A148498(n))`
-/

namespace A148504.P2211866391384197612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A148523 n + A148498 n).toNat

end

end A148504.P2211866391384197612

/-! ## A148504.P14973611559209567824

`A004277(A148507(n))-A148510(n)`
-/

namespace A148504.P14973611559209567824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148507 n).toNat - A148510 n

end

end A148504.P14973611559209567824

/-! ## A148504.P10353615904209624543

`2*A148507(n)-A004526(A148530(n)+A148498(n))`
-/

namespace A148504.P10353615904209624543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A148507 n - A004526 (A148530 n + A148498 n).toNat

end

end A148504.P10353615904209624543

/-!
# A148505: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148505, there is no canonical definition to state claims against.
-/

/-! ## A148505.P15145776366567781288

`A148506(n)`
-/

namespace A148505.P15145776366567781288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148506 n

end

end A148505.P15145776366567781288

/-!
# A148507: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148507, there is no canonical definition to state claims against.
-/

/-! ## A148507.P6355258281327482311

`A004525(A148510(n)+A148504(n))`
-/

namespace A148507.P6355258281327482311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148510 n + A148504 n).toNat

end

end A148507.P6355258281327482311

/-! ## A148507.P10505765807701731583

`A004526(A148510(n)+A148504(n))`
-/

namespace A148507.P10505765807701731583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148510 n + A148504 n).toNat

end

end A148507.P10505765807701731583

/-! ## A148507.P7840336622831084402

`A026741(A148510(n)+A148504(n))`
-/

namespace A148507.P7840336622831084402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A148510 n + A148504 n).toNat

end

end A148507.P7840336622831084402

/-! ## A148507.P529561533841294835

`A148508(n)`
-/

namespace A148507.P529561533841294835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148508 n

end

end A148507.P529561533841294835

/-!
# A148508: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148508, there is no canonical definition to state claims against.
-/

/-! ## A148508.P10775184779177221632

`A148005(n)+A004526(A148530(n))`
-/

namespace A148508.P10775184779177221632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148005 n + A004526 (A148530 n).toNat

end

end A148508.P10775184779177221632

/-! ## A148508.P9284542661921782148

`A004526(A148525(n)+A148498(n))`
-/

namespace A148508.P9284542661921782148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148525 n + A148498 n).toNat

end

end A148508.P9284542661921782148

/-! ## A148508.P12267100915778924922

`A026741(A148525(n)+A148498(n))`
-/

namespace A148508.P12267100915778924922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A148525 n + A148498 n).toNat

end

end A148508.P12267100915778924922

/-! ## A148508.P2550552000798533413

`A029578(A148525(n)+A148498(n))`
-/

namespace A148508.P2550552000798533413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A148525 n + A148498 n).toNat

end

end A148508.P2550552000798533413

/-! ## A148508.P13928521580355600314

`A289440(A148525(n)+A148498(n))`
-/

namespace A148508.P13928521580355600314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A148525 n + A148498 n).toNat

end

end A148508.P13928521580355600314

/-!
# A148509: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148509, there is no canonical definition to state claims against.
-/

/-! ## A148509.P8364088390531523138

`A148510(n)`
-/

namespace A148509.P8364088390531523138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148510 n

end

end A148509.P8364088390531523138

/-!
# A148510: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148510, there is no canonical definition to state claims against.
-/

/-! ## A148510.P10878857396883835848

`A004526(A148530(n)+A148498(n))`
-/

namespace A148510.P10878857396883835848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148530 n + A148498 n).toNat

end

end A148510.P10878857396883835848

/-! ## A148510.P2688176586911535165

`A026741(A148530(n)+A148498(n))`
-/

namespace A148510.P2688176586911535165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A148530 n + A148498 n).toNat

end

end A148510.P2688176586911535165

/-! ## A148510.P14121967675224655507

`A029578(A148530(n)+A148498(n))`
-/

namespace A148510.P14121967675224655507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A148530 n + A148498 n).toNat

end

end A148510.P14121967675224655507

/-! ## A148510.P17508105802734678372

`A004277(A148507(n))-A148504(n)`
-/

namespace A148510.P17508105802734678372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148507 n).toNat - A148504 n

end

end A148510.P17508105802734678372

/-! ## A148510.P18215599966936797284

`A148530(n)-A004526(A148530(n)-A148498(n))`
-/

namespace A148510.P18215599966936797284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148530 n - A004526 (A148530 n - A148498 n).toNat

end

end A148510.P18215599966936797284

/-!
# A148511: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 0)}.

The programs for A148511, there is no canonical definition to state claims against.
-/

/-! ## A148511.P402997707553003392

`and(A101159(A148514(n)), A148515(n))`
-/

namespace A148511.P402997707553003392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101159 (A148514 n).toNat) (A148515 n)

end

end A148511.P402997707553003392

/-! ## A148511.P14497296862840001318

`and(A101159(A148514(n)), A148517(n))`
-/

namespace A148511.P14497296862840001318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101159 (A148514 n).toNat) (A148517 n)

end

end A148511.P14497296862840001318

/-! ## A148511.P13344041255483212676

`and(A101159(A148514(n)), A148523(n))`
-/

namespace A148511.P13344041255483212676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101159 (A148514 n).toNat) (A148523 n)

end

end A148511.P13344041255483212676

/-! ## A148511.P2178296341429643674

`and(A101159(A148513(n)), A148529(n))`
-/

namespace A148511.P2178296341429643674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101159 (A148513 n).toNat) (A148529 n)

end

end A148511.P2178296341429643674

/-!
# A148513: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148513, there is no canonical definition to state claims against.
-/

/-! ## A148513.P9621575165580723509

`A171181(A148526(n)+A148500(n))`
-/

namespace A148513.P9621575165580723509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A148526 n + A148500 n).toNat

end

end A148513.P9621575165580723509

/-! ## A148513.P8193886844709744302

`A376601(A355747(n))`
-/

namespace A148513.P8193886844709744302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376601 (A355747 n).toNat

end

end A148513.P8193886844709744302

/-!
# A148514: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148514, there is no canonical definition to state claims against.
-/

/-! ## A148514.P15391224261312730215

`A002635(A247105(n+1))`
-/

namespace A148514.P15391224261312730215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A247105 (n + 1)).toNat

end

end A148514.P15391224261312730215

/-! ## A148514.P1967342522194701298

`A364350(A333754(n+1)+2)`
-/

namespace A148514.P1967342522194701298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A333754 (n + 1) + 2).toNat

end

end A148514.P1967342522194701298

/-!
# A148515: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148515, there is no canonical definition to state claims against.
-/

/-! ## A148515.P806087955721801065

`A148516(n)`
-/

namespace A148515.P806087955721801065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148516 n

end

end A148515.P806087955721801065

/-! ## A148515.P3313830416780059456

`A337810(A317722(n))`
-/

namespace A148515.P3313830416780059456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337810 (A317722 n).toNat

end

end A148515.P3313830416780059456

/-!
# A148517: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, -1, -1), (1, 0, 0)}.

The programs for A148517, there is no canonical definition to state claims against.
-/

/-! ## A148517.P7099245480236140252

`A148518(A073788(n))`
-/

namespace A148517.P7099245480236140252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148518 (A073788 n).toNat

end

end A148517.P7099245480236140252

/-!
# A148519: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1)}.

The programs for A148519, there is no canonical definition to state claims against.
-/

/-! ## A148519.P7926053982355321265

`A148520(n)`
-/

namespace A148519.P7926053982355321265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148520 n

end

end A148519.P7926053982355321265

/-! ## A148519.P6988529160511812848

`A353833(A309703(n))`
-/

namespace A148519.P6988529160511812848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (A309703 n).toNat

end

end A148519.P6988529160511812848

/-! ## A148519.P9579977053263423194

`A360628(A364593(n))`
-/

namespace A148519.P9579977053263423194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A364593 n).toNat

end

end A148519.P9579977053263423194

/-!
# A148521: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A148521, there is no canonical definition to state claims against.
-/

/-! ## A148521.P12146865008012560360

`A157271(A148522(n)+A148519(n))`
-/

namespace A148521.P12146865008012560360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148522 n + A148519 n).toNat

end

end A148521.P12146865008012560360

/-! ## A148521.P4334672669261446746

`A350799(A000208(n))`
-/

namespace A148521.P4334672669261446746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A000208 n).toNat

end

end A148521.P4334672669261446746

/-! ## A148521.P7945041732366435741

`A371587(A094555(n+1))`
-/

namespace A148521.P7945041732366435741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A094555 (n + 1)).toNat

end

end A148521.P7945041732366435741

/-!
# A148522: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A148522, there is no canonical definition to state claims against.
-/

/-! ## A148522.P15488388213930330745

`A360628(A165433(n))`
-/

namespace A148522.P15488388213930330745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A165433 n).toNat

end

end A148522.P15488388213930330745

/-! ## A148522.P1784214545697708074

`A383014(A339888(n))`
-/

namespace A148522.P1784214545697708074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383014 (A339888 n).toNat

end

end A148522.P1784214545697708074

/-!
# A148523: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 1, 0)}.

The programs for A148523, there is no canonical definition to state claims against.
-/

/-! ## A148523.P13609113819603790239

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150056(#)]`
-/

namespace A148523.P13609113819603790239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150056 k : ℚ)

end

end A148523.P13609113819603790239

/-! ## A148523.P6093265259167799146

`A148054(n)+A004526(A148524(n))`
-/

namespace A148523.P6093265259167799146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148054 n + A004526 (A148524 n).toNat

end

end A148523.P6093265259167799146

/-! ## A148523.P2297224142420691813

`A004277(A148524(n))-A148530(n)`
-/

namespace A148523.P2297224142420691813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148524 n).toNat - A148530 n

end

end A148523.P2297224142420691813

/-! ## A148523.P15942149155443072240

`A004277(A148525(n))-A148533(n)`
-/

namespace A148523.P15942149155443072240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148525 n).toNat - A148533 n

end

end A148523.P15942149155443072240

/-!
# A148524: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 1, 0)}.

The programs for A148524, there is no canonical definition to state claims against.
-/

/-! ## A148524.P11422906580705524620

`A004525(A148530(n)+A148523(n))`
-/

namespace A148524.P11422906580705524620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148530 n + A148523 n).toNat

end

end A148524.P11422906580705524620

/-! ## A148524.P6331932926955693623

`A004526(A148530(n)+A148523(n))`
-/

namespace A148524.P6331932926955693623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148530 n + A148523 n).toNat

end

end A148524.P6331932926955693623

/-! ## A148524.P17299343486010353335

`A006370(A148530(n)+A148523(n))`
-/

namespace A148524.P17299343486010353335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A148530 n + A148523 n).toNat

end

end A148524.P17299343486010353335

/-! ## A148524.P11377474544728737133

`A025480(A148530(n)+A148523(n))`
-/

namespace A148524.P11377474544728737133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A148530 n + A148523 n).toNat

end

end A148524.P11377474544728737133

/-!
# A148525: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148525, there is no canonical definition to state claims against.
-/

/-! ## A148525.P34286786911081666

`A004525(A148533(n)+A148523(n))`
-/

namespace A148525.P34286786911081666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148533 n + A148523 n).toNat

end

end A148525.P34286786911081666

/-! ## A148525.P10184041542035050595

`A004526(A148533(n)+A148523(n))`
-/

namespace A148525.P10184041542035050595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148533 n + A148523 n).toNat

end

end A148525.P10184041542035050595

/-! ## A148525.P4054174999830999189

`A006370(A148533(n)+A148523(n))`
-/

namespace A148525.P4054174999830999189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A148533 n + A148523 n).toNat

end

end A148525.P4054174999830999189

/-! ## A148525.P3921417953782255883

`A025480(A148533(n)+A148523(n))`
-/

namespace A148525.P3921417953782255883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A148533 n + A148523 n).toNat

end

end A148525.P3921417953782255883

/-! ## A148525.P4339077331678774900

`A029578(A148533(n)+A148523(n))`
-/

namespace A148525.P4339077331678774900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A148533 n + A148523 n).toNat

end

end A148525.P4339077331678774900

/-!
# A148526: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, -1, -1), (1, 1, 0)}.

The programs for A148526, there is no canonical definition to state claims against.
-/

/-! ## A148526.P18070280759111265457

`A148527(n)`
-/

namespace A148526.P18070280759111265457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148527 n

end

end A148526.P18070280759111265457

/-!
# A148529: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148529, there is no canonical definition to state claims against.
-/

/-! ## A148529.P11906344147459224402

`A004525(A148530(n)+A148525(n))`
-/

namespace A148529.P11906344147459224402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148530 n + A148525 n).toNat

end

end A148529.P11906344147459224402

/-! ## A148529.P2771548104065990858

`A004526(A148530(n)+A148525(n))`
-/

namespace A148529.P2771548104065990858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148530 n + A148525 n).toNat

end

end A148529.P2771548104065990858

/-! ## A148529.P9979534890331960670

`A247971(A148554(n))`
-/

namespace A148529.P9979534890331960670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148554 n).toNat

end

end A148529.P9979534890331960670

/-!
# A148530: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (-1, 1, 1), (1, 0, 0)}.

The programs for A148530, there is no canonical definition to state claims against.
-/

/-! ## A148530.P16152377757138470040

`A004277(A148510(n))-A148498(n)`
-/

namespace A148530.P16152377757138470040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148510 n).toNat - A148498 n

end

end A148530.P16152377757138470040

/-! ## A148530.P2115950923340674951

`A004277(A148524(n))-A148523(n)`
-/

namespace A148530.P2115950923340674951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148524 n).toNat - A148523 n

end

end A148530.P2115950923340674951

/-! ## A148530.P11243143633315515165

`A004277(A148529(n))-A148525(n)`
-/

namespace A148530.P11243143633315515165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148529 n).toNat - A148525 n

end

end A148530.P11243143633315515165

/-! ## A148530.P3524694677793790892

`A004277(A148531(n))-A148533(n)`
-/

namespace A148530.P3524694677793790892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148531 n).toNat - A148533 n

end

end A148530.P3524694677793790892

/-! ## A148530.P4729068544293693797

`A004277(A148532(n))-A148533(n)`
-/

namespace A148530.P4729068544293693797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148532 n).toNat - A148533 n

end

end A148530.P4729068544293693797

/-!
# A148531: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148531, there is no canonical definition to state claims against.
-/

/-! ## A148531.P12045475601768754363

`A148532(n)`
-/

namespace A148531.P12045475601768754363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148532 n

end

end A148531.P12045475601768754363

/-!
# A148533: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148533, there is no canonical definition to state claims against.
-/

/-! ## A148533.P8729189664881637677

`A004277(A148525(n))-A148523(n)`
-/

namespace A148533.P8729189664881637677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148525 n).toNat - A148523 n

end

end A148533.P8729189664881637677

/-! ## A148533.P7678609924119609969

`A004277(A148531(n))-A148530(n)`
-/

namespace A148533.P7678609924119609969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148531 n).toNat - A148530 n

end

end A148533.P7678609924119609969

/-! ## A148533.P4898117688055917423

`A004277(A148532(n))-A148530(n)`
-/

namespace A148533.P4898117688055917423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148532 n).toNat - A148530 n

end

end A148533.P4898117688055917423

/-!
# A148534: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1)}.

The programs for A148534, there is no canonical definition to state claims against.
-/

/-! ## A148534.P16150313626693888164

`A148535(n)`
-/

namespace A148534.P16150313626693888164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148535 n

end

end A148534.P16150313626693888164

/-! ## A148534.P14043836216848375738

`A148538(n)`
-/

namespace A148534.P14043836216848375738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148538 n

end

end A148534.P14043836216848375738

/-! ## A148534.P13990887788976798888

`A148537(A073788(n))`
-/

namespace A148534.P13990887788976798888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148537 (A073788 n).toNat

end

end A148534.P13990887788976798888

/-!
# A148536: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A148536, there is no canonical definition to state claims against.
-/

/-! ## A148536.P2179483153934863585

`A148537(n)`
-/

namespace A148536.P2179483153934863585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148537 n

end

end A148536.P2179483153934863585

/-!
# A148538: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 1), (1, -1, -1)}.

The programs for A148538, there is no canonical definition to state claims against.
-/

/-! ## A148538.P14340123805020035270

`A148539(n)`
-/

namespace A148538.P14340123805020035270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148539 n

end

end A148538.P14340123805020035270

/-!
# A148540: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A148540, there is no canonical definition to state claims against.
-/

/-! ## A148540.P9445341106257979760

`A157271(A148543(n)+A148534(n))`
-/

namespace A148540.P9445341106257979760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148543 n + A148534 n).toNat

end

end A148540.P9445341106257979760

/-! ## A148540.P10002053481350481710

`A148541(n)`
-/

namespace A148540.P10002053481350481710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148541 n

end

end A148540.P10002053481350481710

/-!
# A148541: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148541, there is no canonical definition to state claims against.
-/

/-! ## A148541.P10741472908012879223

`A148542(n)`
-/

namespace A148541.P10741472908012879223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148542 n

end

end A148541.P10741472908012879223

/-!
# A148543: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A148543, there is no canonical definition to state claims against.
-/

/-! ## A148543.P12998450744551580750

`A148544(n)`
-/

namespace A148543.P12998450744551580750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148544 n

end

end A148543.P12998450744551580750

/-! ## A148543.P15312819132755065535

`A148545(n)`
-/

namespace A148543.P15312819132755065535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148545 n

end

end A148543.P15312819132755065535

/-! ## A148543.P12054106212867836914

`A140199(A172416(n))`
-/

namespace A148543.P12054106212867836914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A172416 n).toNat

end

end A148543.P12054106212867836914

/-!
# A148544: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148544, there is no canonical definition to state claims against.
-/

/-! ## A148544.P15312819132755065535

`A148545(n)`
-/

namespace A148544.P15312819132755065535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148545 n

end

end A148544.P15312819132755065535

/-!
# A148546: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (0, 0, -1), (1, 0, 1)}.

The programs for A148546, there is no canonical definition to state claims against.
-/

/-! ## A148546.P1255887319657181523

`A360628(A148022(n))`
-/

namespace A148546.P1255887319657181523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A148022 n).toNat

end

end A148546.P1255887319657181523

/-! ## A148546.P12250341183631142139

`A328451(A247171(n))`
-/

namespace A148546.P12250341183631142139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328451 (A247171 n).toNat

end

end A148546.P12250341183631142139

/-! ## A148546.P15687861257541597731

`A114512(A093387(n+1))`
-/

namespace A148546.P15687861257541597731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114512 (A093387 (n + 1)).toNat

end

end A148546.P15687861257541597731

/-!
# A148547: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A148547, there is no canonical definition to state claims against.
-/

/-! ## A148547.P16741941307615527873

`A370647(A148005(n))`
-/

namespace A148547.P16741941307615527873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370647 (A148005 n).toNat

end

end A148547.P16741941307615527873

/-! ## A148547.P204361050124147195

`A114512(A032177(n+1))`
-/

namespace A148547.P204361050124147195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114512 (A032177 (n + 1)).toNat

end

end A148547.P204361050124147195

/-!
# A148548: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (1, 0, 0)}.

The programs for A148548, there is no canonical definition to state claims against.
-/

/-! ## A148548.P15883027620083410830

`A148525(n)+A004525(A148554(n)-A148525(n))`
-/

namespace A148548.P15883027620083410830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148525 n + A004525 (A148554 n - A148525 n).toNat

end

end A148548.P15883027620083410830

/-! ## A148548.P2156240036224087614

`A148525(n)+A004526(A148554(n)-A148525(n))`
-/

namespace A148548.P2156240036224087614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148525 n + A004526 (A148554 n - A148525 n).toNat

end

end A148548.P2156240036224087614

/-! ## A148548.P9271949204073575346

`A148525(n)+A029578(A148554(n)-A148525(n))`
-/

namespace A148548.P9271949204073575346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148525 n + A029578 (A148554 n - A148525 n).toNat

end

end A148548.P9271949204073575346

/-! ## A148548.P12952124215033857924

`A148070(n)+A004526(A148533(n))`
-/

namespace A148548.P12952124215033857924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148070 n + A004526 (A148533 n).toNat

end

end A148548.P12952124215033857924

/-! ## A148548.P14835107019076955401

`A004525(A148554(n)+A148525(n))`
-/

namespace A148548.P14835107019076955401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148554 n + A148525 n).toNat

end

end A148548.P14835107019076955401

/-!
# A148550: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148550, there is no canonical definition to state claims against.
-/

/-! ## A148550.P5283596469236786046

`A148551(A073789(n))`
-/

namespace A148550.P5283596469236786046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148551 (A073789 n).toNat

end

end A148550.P5283596469236786046

/-!
# A148552: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148552, there is no canonical definition to state claims against.
-/

/-! ## A148552.P12923257985767165107

`A148553(A073789(n))`
-/

namespace A148552.P12923257985767165107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148553 (A073789 n).toNat

end

end A148552.P12923257985767165107

/-! ## A148552.P15299459029650420928

`A002229(A049893(n+1))`
-/

namespace A148552.P15299459029650420928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002229 (A049893 (n + 1)).toNat

end

end A148552.P15299459029650420928

/-!
# A148554: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, 0, 1)}.

The programs for A148554, there is no canonical definition to state claims against.
-/

/-! ## A148554.P13486194625039176726

`A004277(A148548(n))-A148525(n)`
-/

namespace A148554.P13486194625039176726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148548 n).toNat - A148525 n

end

end A148554.P13486194625039176726

/-! ## A148554.P14358343851120618769

`or(1, A156549(A279571(n+1)))`
-/

namespace A148554.P14358343851120618769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A156549 (A279571 (n + 1)).toNat)

end

end A148554.P14358343851120618769

/-! ## A148554.P1620658145435214460

`A198954(C(n*A005142(n), 2))`
-/

namespace A148554.P1620658145435214460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (Nat.choose ((n : ℤ) * A005142 n).toNat 2)

end

end A148554.P1620658145435214460

/-!
# A148555: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148555, there is no canonical definition to state claims against.
-/

/-! ## A148555.P3377980272744504834

`A151262(n)`
-/

namespace A148555.P3377980272744504834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151262 n

end

end A148555.P3377980272744504834

/-! ## A148555.P8889456409298016009

`A324965(A110224(n))`
-/

namespace A148555.P8889456409298016009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A110224 n).toNat

end

end A148555.P8889456409298016009

/-! ## A148555.P46787688106097000

`A234852(A227806(n+4))`
-/

namespace A148555.P46787688106097000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234852 (A227806 (n + 4)).toNat

end

end A148555.P46787688106097000

/-!
# A148556: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148556, there is no canonical definition to state claims against.
-/

/-! ## A148556.P11277294038309459312

`A148557(n)-A185255(A311883(n))`
-/

namespace A148556.P11277294038309459312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148557 n - A185255 (A311883 n).toNat

end

end A148556.P11277294038309459312

/-! ## A148556.P7713374670173067085

`A148557(n)-A185255(A263996(n+1))`
-/

namespace A148556.P7713374670173067085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148557 n - A185255 (A263996 (n + 1)).toNat

end

end A148556.P7713374670173067085

/-! ## A148556.P6298004251629099110

`A268132(or(A098703(n), A257639(n+1)))`
-/

namespace A148556.P6298004251629099110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (Int.lor (A098703 n) (A257639 (n + 1))).toNat

end

end A148556.P6298004251629099110

/-! ## A148556.P12172817025949737896

`A276952(A362549(n+1))-A185255(A311883(n))`
-/

namespace A148556.P12172817025949737896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A362549 (n + 1)).toNat - A185255 (A311883 n).toNat

end

end A148556.P12172817025949737896

/-!
# A148557: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148557, there is no canonical definition to state claims against.
-/

/-! ## A148557.P16118270707238004577

`A276952(A362549(n+1))`
-/

namespace A148557.P16118270707238004577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A362549 (n + 1)).toNat

end

end A148557.P16118270707238004577

/-! ## A148557.P361047680350281779

`A185255(A311883(n))+A148556(n)`
-/

namespace A148557.P361047680350281779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A311883 n).toNat + A148556 n

end

end A148557.P361047680350281779

/-! ## A148557.P12078997738277213247

`or(A122204(A056971(n)), A148556(n))`
-/

namespace A148557.P12078997738277213247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122204 (A056971 n).toNat) (A148556 n)

end

end A148557.P12078997738277213247

/-! ## A148557.P10011974580445497800

`A185255(A263996(n+1))+A148556(n)`
-/

namespace A148557.P10011974580445497800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A263996 (n + 1)).toNat + A148556 n

end

end A148557.P10011974580445497800

/-!
# A148558: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148558, there is no canonical definition to state claims against.
-/

/-! ## A148558.P11074457625150131527

`A148559(n)`
-/

namespace A148558.P11074457625150131527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148559 n

end

end A148558.P11074457625150131527

/-!
# A148559: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 0, 0)}.

The programs for A148559, there is no canonical definition to state claims against.
-/

/-! ## A148559.P10465498500394044344

`A268129(A148584(n))`
-/

namespace A148559.P10465498500394044344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268129 (A148584 n).toNat

end

end A148559.P10465498500394044344

/-! ## A148559.P9946900257590436903

`or(A002529(n), A304094(A024167(n+1)))`
-/

namespace A148559.P9946900257590436903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002529 n) (A304094 (A024167 (n + 1)).toNat)

end

end A148559.P9946900257590436903

/-!
# A148560: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148560, there is no canonical definition to state claims against.
-/

/-! ## A148560.P8368947384389201017

`2*A151970(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A148560.P8368947384389201017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * A151970 (a (n - 1)).toNat

end

end A148560.P8368947384389201017

/-! ## A148560.P904350440755508589

`A023190(A149185(n))`
-/

namespace A148560.P904350440755508589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149185 n).toNat

end

end A148560.P904350440755508589

/-! ## A148560.P1982694723957250857

`A124455(A200544(n))`
-/

namespace A148560.P1982694723957250857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (A200544 n).toNat

end

end A148560.P1982694723957250857

/-!
# A148561: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148561, there is no canonical definition to state claims against.
-/

/-! ## A148561.P8897443653479315249

`A038567(A333896(n))-A089282(n)`
-/

namespace A148561.P8897443653479315249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A333896 n).toNat - A089282 n

end

end A148561.P8897443653479315249

/-! ## A148561.P12715126985435969260

`A130446(A148560(n))`
-/

namespace A148561.P12715126985435969260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A148560 n).toNat

end

end A148561.P12715126985435969260

/-! ## A148561.P17338677311014472428

`A005041(Δ[Δ[A007097(n)]])`
-/

namespace A148561.P17338677311014472428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A148561.P17338677311014472428

/-!
# A148562: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148562, there is no canonical definition to state claims against.
-/

/-! ## A148562.P399814816153119783

`floor(sqrt(A214977((n+1)!+1)))`
-/

namespace A148562.P399814816153119783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214977 (Nat.factorial (n + 1) + 1))

end

end A148562.P399814816153119783

/-! ## A148562.P13513866297192252048

`A156689(A148888(n))`
-/

namespace A148562.P13513866297192252048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148888 n).toNat

end

end A148562.P13513866297192252048

/-! ## A148562.P6752715474699427416

`A051889(A294764(n+1))`
-/

namespace A148562.P6752715474699427416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A294764 (n + 1)).toNat

end

end A148562.P6752715474699427416

/-!
# A148563: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148563, there is no canonical definition to state claims against.
-/

/-! ## A148563.P5284468851956433670

`A023190(A149193(n))`
-/

namespace A148563.P5284468851956433670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149193 n).toNat

end

end A148563.P5284468851956433670

/-! ## A148563.P15080319001391681646

`A231149(A122031(n+1))`
-/

namespace A148563.P15080319001391681646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A122031 (n + 1)).toNat

end

end A148563.P15080319001391681646

/-! ## A148563.P18083119108891508375

`A081386(A363165(n+1))`
-/

namespace A148563.P18083119108891508375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A363165 (n + 1)).toNat

end

end A148563.P18083119108891508375

/-!
# A148564: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148564, there is no canonical definition to state claims against.
-/

/-! ## A148564.P3549795322459214146

`A026819((a(n-1)+4)²)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A148564.P3549795322459214146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  A026819 ((a (n - 1) + 4) ^ 2).toNat

end

end A148564.P3549795322459214146

/-! ## A148564.P15466778643458992760

`A001462(A185868(n!))`
-/

namespace A148564.P15466778643458992760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A185868 (Nat.factorial n)).toNat

end

end A148564.P15466778643458992760

/-! ## A148564.P10833526940074101783

`A106432(A126133(n+1))`
-/

namespace A148564.P10833526940074101783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A126133 (n + 1)).toNat

end

end A148564.P10833526940074101783

/-!
# A148565: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148565, there is no canonical definition to state claims against.
-/

/-! ## A148565.P15767587844750073300

`A292987(A148197(n))`
-/

namespace A148565.P15767587844750073300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (A148197 n).toNat

end

end A148565.P15767587844750073300

/-! ## A148565.P241091150591692936

`A279792(A005493(n))+A000108(n)`
-/

namespace A148565.P241091150591692936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279792 (A005493 n).toNat + A000108 n

end

end A148565.P241091150591692936

/-! ## A148565.P10212153718855562833

`A297237(A007840(n))+A000932(n)`
-/

namespace A148565.P10212153718855562833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A007840 n).toNat + A000932 n

end

end A148565.P10212153718855562833

/-!
# A148566: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A148566, there is no canonical definition to state claims against.
-/

/-! ## A148566.P14175539586445421462

`A148567(A073789(n))-A185236(2*(n+1))`
-/

namespace A148566.P14175539586445421462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148567 (A073789 n).toNat - A185236 (2 * (n + 1))

end

end A148566.P14175539586445421462

/-! ## A148566.P4213768158859961719

`A148567(n)-A171644(A185236(2*(n+1)))`
-/

namespace A148566.P4213768158859961719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148567 n - A171644 (A185236 (2 * (n + 1))).toNat

end

end A148566.P4213768158859961719

/-! ## A148566.P15232621985496354658

`A148568(n)-A171644(A185236(2*(n+1)))`
-/

namespace A148566.P15232621985496354658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 n - A171644 (A185236 (2 * (n + 1))).toNat

end

end A148566.P15232621985496354658

/-! ## A148566.P15544160693854910842

`A148568(A018799(n!))-A185236(2*(n+1))`
-/

namespace A148566.P15544160693854910842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 (A018799 (Nat.factorial n)).toNat - A185236 (2 * (n + 1))

end

end A148566.P15544160693854910842

/-!
# A148567: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A148567, there is no canonical definition to state claims against.
-/

/-! ## A148567.P549147587065849825

`A148568(n)`
-/

namespace A148567.P549147587065849825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 n

end

end A148567.P549147587065849825

/-! ## A148567.P16545311888739332092

`A104739(A026786(n))`
-/

namespace A148567.P16545311888739332092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (A026786 n).toNat

end

end A148567.P16545311888739332092

/-! ## A148567.P6272749252683915764

`A359754(A007455(n))`
-/

namespace A148567.P6272749252683915764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359754 (A007455 n).toNat

end

end A148567.P6272749252683915764

/-!
# A148568: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A148568, there is no canonical definition to state claims against.
-/

/-! ## A148568.P9094432422349211679

`or(A148567(n), A185225(A185335(n)))`
-/

namespace A148568.P9094432422349211679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148567 n) (A185225 (A185335 n).toNat)

end

end A148568.P9094432422349211679

/-!
# A148569: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 1, -1), (1, 0, 0)}.

The programs for A148569, there is no canonical definition to state claims against.
-/

/-! ## A148569.P10502909945716764111

`A112234(3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A148569.P10502909945716764111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A112234 (3 * a (n - 2)).toNat

end

end A148569.P10502909945716764111

/-! ## A148569.P16282411486089800719

`A087805(A205490(n))`
-/

namespace A148569.P16282411486089800719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A205490 n).toNat

end

end A148569.P16282411486089800719

/-! ## A148569.P11334897669001543327

`∑{d}[A008646(n), A342516(#)]`
-/

namespace A148569.P11334897669001543327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A342516 d

end

end A148569.P11334897669001543327

/-!
# A148570: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148570, there is no canonical definition to state claims against.
-/

/-! ## A148570.P8769822235216922551

`A053873(A077285(n))`
-/

namespace A148570.P8769822235216922551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A077285 n).toNat

end

end A148570.P8769822235216922551

/-! ## A148570.P5960030748056438482

`A194806(A203266(n))`
-/

namespace A148570.P5960030748056438482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (A203266 n).toNat

end

end A148570.P5960030748056438482

/-! ## A148570.P15534690018225665891

`A277192(A148465(n))`
-/

namespace A148570.P15534690018225665891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A148465 n).toNat

end

end A148570.P15534690018225665891

/-!
# A148571: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 0)}.

The programs for A148571, there is no canonical definition to state claims against.
-/

/-! ## A148571.P16053809974198907330

`A156689(A148915(n))`
-/

namespace A148571.P16053809974198907330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148915 n).toNat

end

end A148571.P16053809974198907330

/-! ## A148571.P5192063172467093903

`A350943(A148030(n))`
-/

namespace A148571.P5192063172467093903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (A148030 n).toNat

end

end A148571.P5192063172467093903

/-! ## A148571.P8712625445061426413

`A328451(A227806(n+4))`
-/

namespace A148571.P8712625445061426413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328451 (A227806 (n + 4)).toNat

end

end A148571.P8712625445061426413

/-!
# A148572: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148572, there is no canonical definition to state claims against.
-/

/-! ## A148572.P18222926776123080107

`A024417(A149601(n))`
-/

namespace A148572.P18222926776123080107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149601 n).toNat

end

end A148572.P18222926776123080107

/-! ## A148572.P2014277341104490720

`A178210(A148564(n))`
-/

namespace A148572.P2014277341104490720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A148564 n).toNat

end

end A148572.P2014277341104490720

/-! ## A148572.P14421682064116126948

`A353716(A045629(n))`
-/

namespace A148572.P14421682064116126948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353716 (A045629 n).toNat

end

end A148572.P14421682064116126948

/-!
# A148573: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A148573, there is no canonical definition to state claims against.
-/

/-! ## A148573.P9283130936769889338

`A148574(n)`
-/

namespace A148573.P9283130936769889338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148574 n

end

end A148573.P9283130936769889338

/-!
# A148575: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148575, there is no canonical definition to state claims against.
-/

/-! ## A148575.P987589087568932369

`A109680(A148576(n))`
-/

namespace A148575.P987589087568932369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148576 n).toNat

end

end A148575.P987589087568932369

/-! ## A148575.P17590893206040665601

`A210528(A151019(n))`
-/

namespace A148575.P17590893206040665601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210528 (A151019 n).toNat

end

end A148575.P17590893206040665601

/-! ## A148575.P3017632655049985569

`A331043(A147879(n+1))`
-/

namespace A148575.P3017632655049985569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331043 (A147879 (n + 1)).toNat

end

end A148575.P3017632655049985569

/-!
# A148576: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 0, 0)}.

The programs for A148576, there is no canonical definition to state claims against.
-/

/-! ## A148576.P875919420798588538

`A276581(A276912(n+1))`
-/

namespace A148576.P875919420798588538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A276912 (n + 1)).toNat

end

end A148576.P875919420798588538

/-! ## A148576.P8590803024628988992

`A100196(∏[A281965(2*(n+1))])`
-/

namespace A148576.P8590803024628988992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281965 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148576.P8590803024628988992

/-!
# A148577: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (1, -1, 1), (1, 0, 0)}.

The programs for A148577, there is no canonical definition to state claims against.
-/

/-! ## A148577.P10814163744379923382

`A024417(A149573(n))`
-/

namespace A148577.P10814163744379923382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149573 n).toNat

end

end A148577.P10814163744379923382

/-! ## A148577.P15866683322170213730

`A215590(A071725(n))+A005558(n)`
-/

namespace A148577.P15866683322170213730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215590 (A071725 n).toNat + A005558 n

end

end A148577.P15866683322170213730

/-!
# A148578: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148578, there is no canonical definition to state claims against.
-/

/-! ## A148578.P16433224764673083795

`A211964(A339006(n))`
-/

namespace A148578.P16433224764673083795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A339006 n).toNat

end

end A148578.P16433224764673083795

/-! ## A148578.P2644132286765540860

`A330029(A006951(n))+1`
-/

namespace A148578.P2644132286765540860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330029 (A006951 n).toNat + 1

end

end A148578.P2644132286765540860

/-!
# A148579: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148579, there is no canonical definition to state claims against.
-/

/-! ## A148579.P11455258956742844775

`A182299(n+2)+A079208(A001648(n+1))`
-/

namespace A148579.P11455258956742844775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182299 (n + 2) + A079208 (A001648 (n + 1)).toNat

end

end A148579.P11455258956742844775

/-! ## A148579.P10788394294845904251

`A106432(C(2*n, ∑[∑{p}[n+1, gcd(n, #)]]))`
-/

namespace A148579.P10788394294845904251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (Nat.choose (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A148579.P10788394294845904251

/-! ## A148579.P462870056736984159

`A104739(A382683(n))`
-/

namespace A148579.P462870056736984159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (A382683 n).toNat

end

end A148579.P462870056736984159

/-!
# A148580: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0)}.

The programs for A148580, there is no canonical definition to state claims against.
-/

/-! ## A148580.P334133868353949090

`A151263(n)`
-/

namespace A148580.P334133868353949090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151263 n

end

end A148580.P334133868353949090

/-! ## A148580.P1037458566116525710

`A277192(A148635(n))`
-/

namespace A148580.P1037458566116525710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A148635 n).toNat

end

end A148580.P1037458566116525710

/-!
# A148581: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148581, there is no canonical definition to state claims against.
-/

/-! ## A148581.P14354284906540246653

`A148582(n)`
-/

namespace A148581.P14354284906540246653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148582 n

end

end A148581.P14354284906540246653

/-!
# A148583: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A148583, there is no canonical definition to state claims against.
-/

/-! ## A148583.P16452369401373304345

`A281965(A183188(n))`
-/

namespace A148583.P16452369401373304345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281965 (A183188 n).toNat

end

end A148583.P16452369401373304345

/-! ## A148583.P11863413196262777482

`A066650(A356720(a(n-1)+3))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A148583.P11863413196262777482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  A066650 (A356720 (a (n - 1) + 3).toNat).toNat

end

end A148583.P11863413196262777482

/-! ## A148583.P633619900197060527

`∑[A060810(2*(n+1))]-3*n-char[A060810(3*n+4)]`
-/

namespace A148583.P633619900197060527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A148583.P633619900197060527

/-!
# A148584: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148584, there is no canonical definition to state claims against.
-/

/-! ## A148584.P8441107204968263158

`A085859(n^5+1)+1`
-/

namespace A148584.P8441107204968263158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (n ^ 5 + 1) + 1

end

end A148584.P8441107204968263158

/-! ## A148584.P12641645116716756064

`A089859(A152981(n)-floor(n/2))`
-/

namespace A148584.P12641645116716756064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A152981 n - ⌊(n : ℚ) / 2⌋).toNat

end

end A148584.P12641645116716756064

/-! ## A148584.P3873386497003857119

`A121184(n+1)+A000005(A050351(n))`
-/

namespace A148584.P3873386497003857119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121184 (n + 1) + A000005 (A050351 n).toNat

end

end A148584.P3873386497003857119

/-!
# A148585: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0)}.

The programs for A148585, there is no canonical definition to state claims against.
-/

/-! ## A148585.P9575917008623503712

`∑{d}[A154722(A004211(n)), #]`
-/

namespace A148585.P9575917008623503712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154722 (A004211 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A148585.P9575917008623503712

/-! ## A148585.P5793831592504531585

`A007595(n+1)-A236998(A270662(n))`
-/

namespace A148585.P5793831592504531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007595 (n + 1) - A236998 (A270662 n).toNat

end

end A148585.P5793831592504531585

/-! ## A148585.P12582007280687067550

`A083382(A094803(n+2)+A009004(n+1))`
-/

namespace A148585.P12582007280687067550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A094803 (n + 2) + A009004 (n + 1)).toNat

end

end A148585.P12582007280687067550

/-!
# A148586: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148586, there is no canonical definition to state claims against.
-/

/-! ## A148586.P16480768264297836948

`A108581(A096752(n))-A002266(n+1)`
-/

namespace A148586.P16480768264297836948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108581 (A096752 n).toNat - A002266 (n + 1)

end

end A148586.P16480768264297836948

/-! ## A148586.P1095125514853534779

`A023190(A149216(n))`
-/

namespace A148586.P1095125514853534779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149216 n).toNat

end

end A148586.P1095125514853534779

/-! ## A148586.P850890672294741299

`A130446(A148584(n))`
-/

namespace A148586.P850890672294741299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A148584 n).toNat

end

end A148586.P850890672294741299

/-!
# A148587: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148587, there is no canonical definition to state claims against.
-/

/-! ## A148587.P7543871874207202074

`A261104(A193649(n)²)`
-/

namespace A148587.P7543871874207202074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A193649 n ^ 2).toNat

end

end A148587.P7543871874207202074

/-! ## A148587.P6452572334932594244

`A318759(A293818(n+3))`
-/

namespace A148587.P6452572334932594244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318759 (A293818 (n + 3)).toNat

end

end A148587.P6452572334932594244

/-! ## A148587.P6457396713001290385

`A028899(A258206(2*n+3))`
-/

namespace A148587.P6457396713001290385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A258206 (2 * n + 3)).toNat

end

end A148587.P6457396713001290385

/-!
# A148588: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0)}.

The programs for A148588, there is no canonical definition to state claims against.
-/

/-! ## A148588.P442980938859856161

`A105149(A149380(n+1))`
-/

namespace A148588.P442980938859856161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (A149380 (n + 1)).toNat

end

end A148588.P442980938859856161

/-! ## A148588.P1089202906535501586

`A066339(A150648(n))+A028495(n)`
-/

namespace A148588.P1089202906535501586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A150648 n).toNat + A028495 n

end

end A148588.P1089202906535501586

/-! ## A148588.P10225319434319652604

`A103866(A210344(n))+A049820(n+1)`
-/

namespace A148588.P10225319434319652604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103866 (A210344 n).toNat + A049820 (n + 1)

end

end A148588.P10225319434319652604

/-!
# A148589: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148589, there is no canonical definition to state claims against.
-/

/-! ## A148589.P7781735080761370433

`A173304(A008052(n))`
-/

namespace A148589.P7781735080761370433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A008052 n).toNat

end

end A148589.P7781735080761370433

/-! ## A148589.P13310877790677709411

`A268443(xor(1, A020706(n)))`
-/

namespace A148589.P13310877790677709411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268443 (Int.xor 1 (A020706 n)).toNat

end

end A148589.P13310877790677709411

/-! ## A148589.P17495167272078586667

`or(1, n)*A230313(A124419(n))`
-/

namespace A148589.P17495167272078586667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A230313 (A124419 n).toNat

end

end A148589.P17495167272078586667

/-!
# A148590: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148590, there is no canonical definition to state claims against.
-/

/-! ## A148590.P1899834447074736320

`A401118(A148729(n))`
-/

namespace A148590.P1899834447074736320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401118 (A148729 n).toNat

end

end A148590.P1899834447074736320

/-! ## A148590.P3088688041801500987

`or(3*C(n, 3)+n, A305632(A007678(n+1)))`
-/

namespace A148590.P3088688041801500987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * Nat.choose n 3 + n : ℤ) (A305632 (A007678 (n + 1)).toNat)

end

end A148590.P3088688041801500987

/-! ## A148590.P17687084909771415347

`A007306(A001858(n))+A004526(n)`
-/

namespace A148590.P17687084909771415347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A001858 n).toNat + A004526 n

end

end A148590.P17687084909771415347

/-!
# A148591: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148591, there is no canonical definition to state claims against.
-/

/-! ## A148591.P13653653501749108724

`A148592(n)`
-/

namespace A148591.P13653653501749108724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148592 n

end

end A148591.P13653653501749108724

/-!
# A148593: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0)}.

The programs for A148593, there is no canonical definition to state claims against.
-/

/-! ## A148593.P15674378767350989264

`A033101(A001834(n))+1`
-/

namespace A148593.P15674378767350989264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033101 (A001834 n).toNat + 1

end

end A148593.P15674378767350989264

/-! ## A148593.P4397233075661343559

`A222048(n)+A165477(A243953(n))`
-/

namespace A148593.P4397233075661343559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n + A165477 (A243953 n).toNat

end

end A148593.P4397233075661343559

/-! ## A148593.P14146976336291330322

`A358992(A051049(n))+A326243(n)`
-/

namespace A148593.P14146976336291330322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (A051049 n).toNat + A326243 n

end

end A148593.P14146976336291330322

/-!
# A148594: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148594, there is no canonical definition to state claims against.
-/

/-! ## A148594.P199472735828578783

`A116619(A121314(3*n)+(4^n+2)/3)`
-/

namespace A148594.P199472735828578783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (SequenceMachineLib.roundAway ((A121314 (3 * n) : ℚ) + (4 ^ n + 2 : ℚ) / 3)).toNat

end

end A148594.P199472735828578783

/-! ## A148594.P13668961654013202584

`and(A148595(n), A154453(A148590(n)))`
-/

namespace A148594.P13668961654013202584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148595 n) (A154453 (A148590 n).toNat)

end

end A148594.P13668961654013202584

/-! ## A148594.P8259315844522565515

`A148595(A073788(n))`
-/

namespace A148594.P8259315844522565515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148595 (A073788 n).toNat

end

end A148594.P8259315844522565515

/-!
# A148596: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148596, there is no canonical definition to state claims against.
-/

/-! ## A148596.P15491417524974670599

`A148597(n)`
-/

namespace A148596.P15491417524974670599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148597 n

end

end A148596.P15491417524974670599

/-! ## A148596.P2857811421227218497

`A023190(A149341(n))`
-/

namespace A148596.P2857811421227218497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149341 n).toNat

end

end A148596.P2857811421227218497

/-! ## A148596.P4056254751348517984

`A226190(A117758(n))`
-/

namespace A148596.P4056254751348517984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A117758 n).toNat

end

end A148596.P4056254751348517984

/-!
# A148598: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148598, there is no canonical definition to state claims against.
-/

/-! ## A148598.P13280037547643925862

`A148599(n)`
-/

namespace A148598.P13280037547643925862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148599 n

end

end A148598.P13280037547643925862

