import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-! ## A148501.P1829062164696935546

`or(A001221(A082425(n+1)), A148257(n))`
-/

namespace A148501.P1829062164696935546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A082425 (n + 1)).toNat) (A148257 n)

end

end A148501.P1829062164696935546

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

/-! ## A148502.P15900444991557785879

`A390309(a(n-1)+a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A148502.P15900444991557785879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A390309 (a (n - 1) + a (n - 2) + 1).toNat

end

end A148502.P15900444991557785879

/-! ## A148502.P16490893212925798291

`A112325(A149105(n))`
-/

namespace A148502.P16490893212925798291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A149105 n).toNat

end

end A148502.P16490893212925798291

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

/-! ## A148505.P12492389040281556239

`A148506(A073789(n))`
-/

namespace A148505.P12492389040281556239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148506 (A073789 n).toNat

end

end A148505.P12492389040281556239

/-! ## A148505.P10855536399159715748

`A115060(A148506(n))`
-/

namespace A148505.P10855536399159715748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A148506 n).toNat

end

end A148505.P10855536399159715748

/-! ## A148505.P12056738511240540945

`A148506(A171644(n))`
-/

namespace A148505.P12056738511240540945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148506 (A171644 n).toNat

end

end A148505.P12056738511240540945

/-! ## A148505.P9518906376614677010

`A148506(A004869(n+1))`
-/

namespace A148505.P9518906376614677010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148506 (A004869 (n + 1)).toNat

end

end A148505.P9518906376614677010

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

/-! ## A148507.P17817797538815234547

`A004525(A148524(n)+A148498(n))`
-/

namespace A148507.P17817797538815234547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148524 n + A148498 n).toNat

end

end A148507.P17817797538815234547

/-! ## A148507.P18242536325779575226

`A004526(A148524(n)+A148498(n))`
-/

namespace A148507.P18242536325779575226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148524 n + A148498 n).toNat

end

end A148507.P18242536325779575226

/-! ## A148507.P7840336622831084402

`A026741(A148510(n)+A148504(n))`
-/

namespace A148507.P7840336622831084402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A148510 n + A148504 n).toNat

end

end A148507.P7840336622831084402

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

/-! ## A148509.P4273738744101963103

`∏{p}[A148510(n)², #]`
-/

namespace A148509.P4273738744101963103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148510 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A148509.P4273738744101963103

/-! ## A148509.P9342765121676667362

`A148510(A073789(n))`
-/

namespace A148509.P9342765121676667362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148510 (A073789 n).toNat

end

end A148509.P9342765121676667362

/-! ## A148509.P1973340322259592205

`A148510(A171644(n))`
-/

namespace A148509.P1973340322259592205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148510 (A171644 n).toNat

end

end A148509.P1973340322259592205

/-! ## A148509.P12284678131762522162

`A148510(A004869(n+1))`
-/

namespace A148509.P12284678131762522162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148510 (A004869 (n + 1)).toNat

end

end A148509.P12284678131762522162

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

/-! ## A148511.P2178296341429643674

`and(A101159(A148513(n)), A148529(n))`
-/

namespace A148511.P2178296341429643674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101159 (A148513 n).toNat) (A148529 n)

end

end A148511.P2178296341429643674

/-! ## A148511.P13344041255483212676

`and(A101159(A148514(n)), A148523(n))`
-/

namespace A148511.P13344041255483212676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101159 (A148514 n).toNat) (A148523 n)

end

end A148511.P13344041255483212676

/-!
# A148513: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148513, there is no canonical definition to state claims against.
-/

/-! ## A148513.P17133434990658555249

`A333764(A339888(n))`
-/

namespace A148513.P17133434990658555249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A339888 n).toNat

end

end A148513.P17133434990658555249

/-! ## A148513.P97448420887172484

`A009205(A367232(n))+A003604(n)`
-/

namespace A148513.P97448420887172484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (A367232 n).toNat + A003604 n

end

end A148513.P97448420887172484

/-! ## A148513.P7532471332430213274

`A366303(A304991(n))+A003415(n)`
-/

namespace A148513.P7532471332430213274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366303 (A304991 n).toNat + A003415 n

end

end A148513.P7532471332430213274

/-!
# A148514: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148514, there is no canonical definition to state claims against.
-/

/-! ## A148514.P9623216948009976590

`A333764(A026733(n))`
-/

namespace A148514.P9623216948009976590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A026733 n).toNat

end

end A148514.P9623216948009976590

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

/-! ## A148515.P10750771438932639574

`A033862(A148516(n))`
-/

namespace A148515.P10750771438932639574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148516 n).toNat

end

end A148515.P10750771438932639574

/-! ## A148515.P9131648568739941929

`A148516(A073788(n))`
-/

namespace A148515.P9131648568739941929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148516 (A073788 n).toNat

end

end A148515.P9131648568739941929

/-! ## A148515.P12630285776957450450

`A148516(A171596(n))`
-/

namespace A148515.P12630285776957450450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148516 (A171596 n).toNat

end

end A148515.P12630285776957450450

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

/-! ## A148517.P9217604642856091434

`A148518(A171596(n))`
-/

namespace A148517.P9217604642856091434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148518 (A171596 n).toNat

end

end A148517.P9217604642856091434

/-! ## A148517.P13627783017867171334

`A148518(A329580(n))`
-/

namespace A148517.P13627783017867171334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148518 (A329580 n).toNat

end

end A148517.P13627783017867171334

/-!
# A148519: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1)}.

The programs for A148519, there is no canonical definition to state claims against.
-/

/-! ## A148519.P9859233921347809702

`A148520(A073789(n))`
-/

namespace A148519.P9859233921347809702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148520 (A073789 n).toNat

end

end A148519.P9859233921347809702

/-! ## A148519.P1351167603317191604

`A135874(A148520(n))`
-/

namespace A148519.P1351167603317191604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135874 (A148520 n).toNat

end

end A148519.P1351167603317191604

/-! ## A148519.P239815893602465629

`A148520(A171644(n))`
-/

namespace A148519.P239815893602465629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148520 (A171644 n).toNat

end

end A148519.P239815893602465629

/-! ## A148519.P4737464797757506158

`A148520(A004869(n+1))`
-/

namespace A148519.P4737464797757506158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148520 (A004869 (n + 1)).toNat

end

end A148519.P4737464797757506158

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

/-! ## A148521.P5571292437936498843

`A157271(A148522(n)+A148520(n))`
-/

namespace A148521.P5571292437936498843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148522 n + A148520 n).toNat

end

end A148521.P5571292437936498843

/-! ## A148521.P10656877177118492888

`A157271(A148519(n)-(1-A148522(n)))`
-/

namespace A148521.P10656877177118492888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148519 n - (1 - A148522 n)).toNat

end

end A148521.P10656877177118492888

/-! ## A148521.P2391101051340346833

`A157271(A148520(n)-(1-A148522(n)))`
-/

namespace A148521.P2391101051340346833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148520 n - (1 - A148522 n)).toNat

end

end A148521.P2391101051340346833

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

/-! ## A148522.P4166118682855571996

`A360628(A113182(n+1))`
-/

namespace A148522.P4166118682855571996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A113182 (n + 1)).toNat

end

end A148522.P4166118682855571996

/-!
# A148523: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 1, 0)}.

The programs for A148523, there is no canonical definition to state claims against.
-/

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

/-! ## A148523.P11063376689324800589

`A005843(A148524(n))-A148530(n)-A025564(n²)+1`
-/

namespace A148523.P11063376689324800589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A148524 n).toNat - A148530 n - A025564 (n ^ 2) + 1

end

end A148523.P11063376689324800589

/-! ## A148523.P12867399285337810639

`(A005843(A148524(n))-A148530(n))/A007913((n+1)²)`
-/

namespace A148523.P12867399285337810639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A148524 n).toNat - A148530 n : ℚ) / (A007913 ((n + 1) ^ 2) : ℚ)

end

end A148523.P12867399285337810639

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

/-! ## A148524.P84486005983989759

`A004526(A149074(n)+A148053(n))`
-/

namespace A148524.P84486005983989759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149074 n + A148053 n).toNat

end

end A148524.P84486005983989759

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

/-! ## A148526.P3032970298080803352

`A148527(A002998(n))`
-/

namespace A148526.P3032970298080803352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148527 (A002998 n).toNat

end

end A148526.P3032970298080803352

/-! ## A148526.P16982344120812003612

`A004151(A148527(n))`
-/

namespace A148526.P16982344120812003612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148527 n).toNat

end

end A148526.P16982344120812003612

/-! ## A148526.P8840845423201190712

`A148527(A039723(n))`
-/

namespace A148526.P8840845423201190712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148527 (A039723 n).toNat

end

end A148526.P8840845423201190712

/-! ## A148526.P14646977703484495723

`A148527(A046469(n))`
-/

namespace A148526.P14646977703484495723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148527 (A046469 n).toNat

end

end A148526.P14646977703484495723

/-! ## A148526.P2936011233697489371

`A148527(A051022(n))`
-/

namespace A148526.P2936011233697489371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148527 (A051022 n).toNat

end

end A148526.P2936011233697489371

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

/-! ## A148529.P4559920404287263045

`A004525(A148531(n)+A148524(n))`
-/

namespace A148529.P4559920404287263045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148531 n + A148524 n).toNat

end

end A148529.P4559920404287263045

/-! ## A148529.P5463630095037392280

`A004526(A148531(n)+A148524(n))`
-/

namespace A148529.P5463630095037392280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148531 n + A148524 n).toNat

end

end A148529.P5463630095037392280

/-! ## A148529.P12353330736779343170

`A004525(A148532(n)+A148524(n))`
-/

namespace A148529.P12353330736779343170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148532 n + A148524 n).toNat

end

end A148529.P12353330736779343170

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

/-! ## A148531.P16287661470559866516

`A148532(n²/∏{digits}[n, gcd(#, #!²)])`
-/

namespace A148531.P16287661470559866516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148532 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℚ))).toNat

end

end A148531.P16287661470559866516

/-! ## A148531.P10393496251614127922

`A148532(n*((11*n/10-n)*dr(n-dr(n))+1))`
-/

namespace A148531.P10393496251614127922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148532 (SequenceMachineLib.roundAway ((n : ℚ) * ((11 * ((n : ℚ) / 10) - (n : ℚ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℚ) + 1))).toNat

end

end A148531.P10393496251614127922

/-! ## A148531.P5581044738610317150

`A148532(A002998(n))`
-/

namespace A148531.P5581044738610317150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148532 (A002998 n).toNat

end

end A148531.P5581044738610317150

/-! ## A148531.P3327634930113664002

`A004151(A148532(n))`
-/

namespace A148531.P3327634930113664002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148532 n).toNat

end

end A148531.P3327634930113664002

/-! ## A148531.P14227212682759027094

`A148532(A039723(n))`
-/

namespace A148531.P14227212682759027094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148532 (A039723 n).toNat

end

end A148531.P14227212682759027094

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

/-! ## A148534.P5848948572178985593

`A060653(A148535(n))`
-/

namespace A148534.P5848948572178985593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A148535 n).toNat

end

end A148534.P5848948572178985593

/-! ## A148534.P18428960238183257796

`A148535(A073789(n))`
-/

namespace A148534.P18428960238183257796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148535 (A073789 n).toNat

end

end A148534.P18428960238183257796

/-! ## A148534.P8542899139106592932

`A148535(A171644(n))`
-/

namespace A148534.P8542899139106592932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148535 (A171644 n).toNat

end

end A148534.P8542899139106592932

/-! ## A148534.P14212537617628848669

`A148535(A002034(n!))`
-/

namespace A148534.P14212537617628848669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148535 (A002034 (Nat.factorial n)).toNat

end

end A148534.P14212537617628848669

/-!
# A148536: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A148536, there is no canonical definition to state claims against.
-/

/-! ## A148536.P9133181236295247109

`A148537(A002998(n))`
-/

namespace A148536.P9133181236295247109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148537 (A002998 n).toNat

end

end A148536.P9133181236295247109

/-! ## A148536.P1264657991461585840

`A004151(A148537(n))`
-/

namespace A148536.P1264657991461585840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148537 n).toNat

end

end A148536.P1264657991461585840

/-! ## A148536.P1672996419867085949

`A148537(A039723(n))`
-/

namespace A148536.P1672996419867085949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148537 (A039723 n).toNat

end

end A148536.P1672996419867085949

/-! ## A148536.P13076751311719085754

`A148537(A046469(n))`
-/

namespace A148536.P13076751311719085754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148537 (A046469 n).toNat

end

end A148536.P13076751311719085754

/-! ## A148536.P13590170565756014830

`A148537(A051022(n))`
-/

namespace A148536.P13590170565756014830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148537 (A051022 n).toNat

end

end A148536.P13590170565756014830

/-!
# A148538: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 1), (1, -1, -1)}.

The programs for A148538, there is no canonical definition to state claims against.
-/

/-! ## A148538.P13912292676671045310

`A148539(A002998(n))`
-/

namespace A148538.P13912292676671045310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148539 (A002998 n).toNat

end

end A148538.P13912292676671045310

/-! ## A148538.P2646841551091503416

`A004151(A148539(n))`
-/

namespace A148538.P2646841551091503416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148539 n).toNat

end

end A148538.P2646841551091503416

/-! ## A148538.P5684901377994583949

`A148539(A039723(n))`
-/

namespace A148538.P5684901377994583949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148539 (A039723 n).toNat

end

end A148538.P5684901377994583949

/-! ## A148538.P8150031090949376750

`A148539(A046469(n))`
-/

namespace A148538.P8150031090949376750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148539 (A046469 n).toNat

end

end A148538.P8150031090949376750

/-! ## A148538.P8273317107726665992

`A148539(A051022(n))`
-/

namespace A148538.P8273317107726665992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148539 (A051022 n).toNat

end

end A148538.P8273317107726665992

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

/-! ## A148540.P788068948196036739

`A157271(A148543(n)+A148535(n))`
-/

namespace A148540.P788068948196036739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148543 n + A148535 n).toNat

end

end A148540.P788068948196036739

/-! ## A148540.P13755221119947831225

`A157271(A148534(n)-(1-A148543(n)))`
-/

namespace A148540.P13755221119947831225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148534 n - (1 - A148543 n)).toNat

end

end A148540.P13755221119947831225

/-! ## A148540.P1513374925490267446

`A157271(A148535(n)-(1-A148543(n)))`
-/

namespace A148540.P1513374925490267446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148535 n - (1 - A148543 n)).toNat

end

end A148540.P1513374925490267446

/-!
# A148541: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148541, there is no canonical definition to state claims against.
-/

/-! ## A148541.P18305056907039021363

`A060653(A148542(n))`
-/

namespace A148541.P18305056907039021363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A148542 n).toNat

end

end A148541.P18305056907039021363

/-! ## A148541.P12459026913135921557

`A148542(A073789(n))`
-/

namespace A148541.P12459026913135921557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148542 (A073789 n).toNat

end

end A148541.P12459026913135921557

/-! ## A148541.P16213090745817604504

`A148542(A171644(n))`
-/

namespace A148541.P16213090745817604504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148542 (A171644 n).toNat

end

end A148541.P16213090745817604504

/-! ## A148541.P5342999287825860886

`A148542(A004869(n+1))`
-/

namespace A148541.P5342999287825860886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148542 (A004869 (n + 1)).toNat

end

end A148541.P5342999287825860886

/-!
# A148543: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A148543, there is no canonical definition to state claims against.
-/

/-! ## A148543.P11483407591678153466

`A148544(A073788(n))`
-/

namespace A148543.P11483407591678153466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148544 (A073788 n).toNat

end

end A148543.P11483407591678153466

/-! ## A148543.P7578952110648920523

`A115060(A148544(n))`
-/

namespace A148543.P7578952110648920523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A148544 n).toNat

end

end A148543.P7578952110648920523

/-! ## A148543.P17879284493761981232

`A115060(A148545(n))`
-/

namespace A148543.P17879284493761981232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A148545 n).toNat

end

end A148543.P17879284493761981232

/-!
# A148544: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148544, there is no canonical definition to state claims against.
-/

/-! ## A148544.P9745557330168088189

`A060653(A148545(n))`
-/

namespace A148544.P9745557330168088189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A148545 n).toNat

end

end A148544.P9745557330168088189

/-! ## A148544.P11080690015712732018

`A148545(A073789(n))`
-/

namespace A148544.P11080690015712732018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148545 (A073789 n).toNat

end

end A148544.P11080690015712732018

/-! ## A148544.P2778855423953554870

`A148545(A171644(n))`
-/

namespace A148544.P2778855423953554870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148545 (A171644 n).toNat

end

end A148544.P2778855423953554870

/-! ## A148544.P5433131263062523325

`A148545(A002034(n!))`
-/

namespace A148544.P5433131263062523325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148545 (A002034 (Nat.factorial n)).toNat

end

end A148544.P5433131263062523325

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

/-! ## A148546.P1697175529035143179

`A360628(A148023(n))`
-/

namespace A148546.P1697175529035143179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A148023 n).toNat

end

end A148546.P1697175529035143179

/-! ## A148546.P15923704815975404726

`A360628(A148024(n))`
-/

namespace A148546.P15923704815975404726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A148024 n).toNat

end

end A148546.P15923704815975404726

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

/-! ## A148547.P3909967038064533335

`A370647(A148006(n))`
-/

namespace A148547.P3909967038064533335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370647 (A148006 n).toNat

end

end A148547.P3909967038064533335

/-! ## A148547.P3177134759385932146

`A370647(A148007(n))`
-/

namespace A148547.P3177134759385932146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370647 (A148007 n).toNat

end

end A148547.P3177134759385932146

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

/-! ## A148550.P9798148700606498042

`A148551(A171644(n))`
-/

namespace A148550.P9798148700606498042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148551 (A171644 n).toNat

end

end A148550.P9798148700606498042

/-! ## A148550.P189701058464183999

`A148551(A002034(n!))`
-/

namespace A148550.P189701058464183999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148551 (A002034 (Nat.factorial n)).toNat

end

end A148550.P189701058464183999

/-! ## A148550.P12800935402291446489

`A148551(A004869(n+1))`
-/

namespace A148550.P12800935402291446489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148551 (A004869 (n + 1)).toNat

end

end A148550.P12800935402291446489

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

/-! ## A148552.P9365510131833051435

`A148553(A171644(n))`
-/

namespace A148552.P9365510131833051435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148553 (A171644 n).toNat

end

end A148552.P9365510131833051435

/-! ## A148552.P15356562690953405715

`A148553(A004869(n+1))`
-/

namespace A148552.P15356562690953405715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148553 (A004869 (n + 1)).toNat

end

end A148552.P15356562690953405715

/-! ## A148552.P10528922447505413764

`A148553(A004880(n+1))`
-/

namespace A148552.P10528922447505413764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148553 (A004880 (n + 1)).toNat

end

end A148552.P10528922447505413764

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

/-! ## A148555.P8889456409298016009

`A324965(A110224(n))`
-/

namespace A148555.P8889456409298016009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A110224 n).toNat

end

end A148555.P8889456409298016009

/-! ## A148555.P166783330535225000

`A056926(A151262(n)²)`
-/

namespace A148555.P166783330535225000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A151262 n ^ 2).toNat

end

end A148555.P166783330535225000

/-! ## A148555.P11785583181734701871

`A151262(A004879(n+1))`
-/

namespace A148555.P11785583181734701871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151262 (A004879 (n + 1)).toNat

end

end A148555.P11785583181734701871

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

/-! ## A148557.P10011974580445497800

`A185255(A263996(n+1))+A148556(n)`
-/

namespace A148557.P10011974580445497800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A263996 (n + 1)).toNat + A148556 n

end

end A148557.P10011974580445497800

/-! ## A148557.P453184327658519966

`or(A148556(n), A328958(A162171(n+1)))`
-/

namespace A148557.P453184327658519966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148556 n) (A328958 (A162171 (n + 1)).toNat)

end

end A148557.P453184327658519966

/-!
# A148558: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148558, there is no canonical definition to state claims against.
-/

/-! ## A148558.P10384973452413511974

`A148559(A073788(n))`
-/

namespace A148558.P10384973452413511974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148559 (A073788 n).toNat

end

end A148558.P10384973452413511974

/-! ## A148558.P11174965642044611213

`A109680(A148559(n))`
-/

namespace A148558.P11174965642044611213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148559 n).toNat

end

end A148558.P11174965642044611213

/-! ## A148558.P11373354182049594999

`A148559(A171596(n))`
-/

namespace A148558.P11373354182049594999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148559 (A171596 n).toNat

end

end A148558.P11373354182049594999

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

/-! ## A148560.P904350440755508589

`A023190(A149185(n))`
-/

namespace A148560.P904350440755508589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149185 n).toNat

end

end A148560.P904350440755508589

/-! ## A148560.P11669230397680558840

`A023190(A149186(n))`
-/

namespace A148560.P11669230397680558840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149186 n).toNat

end

end A148560.P11669230397680558840

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

/-! ## A148563.P16977149243947535532

`A023190(A149194(n))`
-/

namespace A148563.P16977149243947535532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149194 n).toNat

end

end A148563.P16977149243947535532

/-! ## A148563.P15080319001391681646

`A231149(A122031(n+1))`
-/

namespace A148563.P15080319001391681646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A122031 (n + 1)).toNat

end

end A148563.P15080319001391681646

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

/-! ## A148567.P16035856506842351219

`A148568(A073789(n))`
-/

namespace A148567.P16035856506842351219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 (A073789 n).toNat

end

end A148567.P16035856506842351219

/-! ## A148567.P14019401772183059966

`A148568(A171644(n))`
-/

namespace A148567.P14019401772183059966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 (A171644 n).toNat

end

end A148567.P14019401772183059966

/-! ## A148567.P7139557884550809450

`A148568(A018799(n!))`
-/

namespace A148567.P7139557884550809450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 (A018799 (Nat.factorial n)).toNat

end

end A148567.P7139557884550809450

/-! ## A148567.P17414424710868025407

`A148568(A304036(n!))`
-/

namespace A148567.P17414424710868025407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148568 (A304036 (Nat.factorial n)).toNat

end

end A148567.P17414424710868025407

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

/-! ## A148569.P7999805884301503094

`A054404(A208355(n+3)+A001590(2*n+1))`
-/

namespace A148569.P7999805884301503094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A208355 (n + 3) + A001590 (2 * n + 1)).toNat

end

end A148569.P7999805884301503094

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

/-! ## A148571.P9272029414546094615

`A350943(A148031(n))`
-/

namespace A148571.P9272029414546094615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (A148031 n).toNat

end

end A148571.P9272029414546094615

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

/-! ## A148573.P9851017133482615793

`A148574(A073790(n))`
-/

namespace A148573.P9851017133482615793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148574 (A073790 n).toNat

end

end A148573.P9851017133482615793

/-! ## A148573.P9648047116636198827

`A127287(A148574(n))`
-/

namespace A148573.P9648047116636198827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A148574 n).toNat

end

end A148573.P9648047116636198827

/-! ## A148573.P13956235336226277822

`A148574(A171717(n))`
-/

namespace A148573.P13956235336226277822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148574 (A171717 n).toNat

end

end A148573.P13956235336226277822

/-! ## A148573.P16678819998422939127

`A148574(A004870(n+1))`
-/

namespace A148573.P16678819998422939127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148574 (A004870 (n + 1)).toNat

end

end A148573.P16678819998422939127

/-! ## A148573.P3227120282555783136

`A148574(A004881(n+1))`
-/

namespace A148573.P3227120282555783136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148574 (A004881 (n + 1)).toNat

end

end A148573.P3227120282555783136

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

/-! ## A148576.P10694699063961582428

`A086520(A293588(n))+A005558(n)`
-/

namespace A148576.P10694699063961582428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A293588 n).toNat + A005558 n

end

end A148576.P10694699063961582428

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

/-! ## A148577.P6301381273667846282

`A024417(A149574(n))`
-/

namespace A148577.P6301381273667846282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149574 n).toNat

end

end A148577.P6301381273667846282

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

/-! ## A148578.P16385703551539202061

`A211964(A280271(∑[n]))`
-/

namespace A148578.P16385703551539202061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A280271 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148578.P16385703551539202061

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

/-! ## A148580.P2245243764035936908

`A109680(A151263(n))`
-/

namespace A148580.P2245243764035936908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A151263 n).toNat

end

end A148580.P2245243764035936908

/-! ## A148580.P1037458566116525710

`A277192(A148635(n))`
-/

namespace A148580.P1037458566116525710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A148635 n).toNat

end

end A148580.P1037458566116525710

/-! ## A148580.P8474728107697032387

`A277192(A148636(n))`
-/

namespace A148580.P8474728107697032387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A148636 n).toNat

end

end A148580.P8474728107697032387

/-!
# A148581: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148581, there is no canonical definition to state claims against.
-/

/-! ## A148581.P6511471513868103097

`A148582(gcd(n, ∏{e}[4^n, #!]))`
-/

namespace A148581.P6511471513868103097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148582 (Nat.gcd n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)))

end

end A148581.P6511471513868103097

/-! ## A148581.P2470994905659729569

`A148582(n^(∑[char[10*n]]%10))`
-/

namespace A148581.P2470994905659729569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148582 (n ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 10))

end

end A148581.P2470994905659729569

/-! ## A148581.P11064140414950493060

`A148582(n*(1-∑{digits}[n, #]+n))`
-/

namespace A148581.P11064140414950493060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148582 ((n : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A148581.P11064140414950493060

/-! ## A148581.P1207264688376912012

`A148582(n^(1-∑{digits}[n, #]+n))`
-/

namespace A148581.P1207264688376912012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148582 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A148581.P1207264688376912012

/-! ## A148581.P685123644261494962

`A148582(A002998(n))`
-/

namespace A148581.P685123644261494962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148582 (A002998 n).toNat

end

end A148581.P685123644261494962

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

/-! ## A148585.P12582007280687067550

`A083382(A094803(n+2)+A009004(n+1))`
-/

namespace A148585.P12582007280687067550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A094803 (n + 2) + A009004 (n + 1)).toNat

end

end A148585.P12582007280687067550

/-! ## A148585.P6824432065049311370

`A280026(A076328(n+1)*A300121(n+1))`
-/

namespace A148585.P6824432065049311370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (A076328 (n + 1) * A300121 (n + 1)).toNat

end

end A148585.P6824432065049311370

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

/-! ## A148588.P16979391749819933301

`A329559(A001006(n))+A049820(n+1)`
-/

namespace A148588.P16979391749819933301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (A001006 n).toNat + A049820 (n + 1)

end

end A148588.P16979391749819933301

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

/-! ## A148590.P11448426469981124687

`A148589(n)+A010894(A016957(n))`
-/

namespace A148590.P11448426469981124687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148589 n + A010894 ((A016957 n).toNat + 21)

end

end A148590.P11448426469981124687

/-!
# A148591: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148591, there is no canonical definition to state claims against.
-/

/-! ## A148591.P6310769802178797785

`A148592(n)%p?[∑[2^n]]`
-/

namespace A148591.P6310769802178797785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148592 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A148591.P6310769802178797785

/-! ## A148591.P236873308352501638

`A148592(A073788(n))`
-/

namespace A148591.P236873308352501638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148592 (A073788 n).toNat

end

end A148591.P236873308352501638

/-! ## A148591.P17050114588017362837

`A148592(A171596(n))`
-/

namespace A148591.P17050114588017362837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148592 (A171596 n).toNat

end

end A148591.P17050114588017362837

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

/-! ## A148596.P3648108834837755405

`A148597(A073789(n))`
-/

namespace A148596.P3648108834837755405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148597 (A073789 n).toNat

end

end A148596.P3648108834837755405

/-! ## A148596.P763872137317189790

`A127287(A148597(n))`
-/

namespace A148596.P763872137317189790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A148597 n).toNat

end

end A148596.P763872137317189790

/-! ## A148596.P69568561277676780

`A148597(A171644(n))`
-/

namespace A148596.P69568561277676780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148597 (A171644 n).toNat

end

end A148596.P69568561277676780

/-! ## A148596.P11204563812547151511

`A148597(A004869(n+1))`
-/

namespace A148596.P11204563812547151511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148597 (A004869 (n + 1)).toNat

end

end A148596.P11204563812547151511

/-!
# A148598: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148598, there is no canonical definition to state claims against.
-/

/-! ## A148598.P11479221581899349635

`A148599(A073789(n))`
-/

namespace A148598.P11479221581899349635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148599 (A073789 n).toNat

end

end A148598.P11479221581899349635

/-! ## A148598.P6721520246054701759

`A127287(A148599(n))`
-/

namespace A148598.P6721520246054701759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A148599 n).toNat

end

end A148598.P6721520246054701759

/-! ## A148598.P18216551417487619735

`A148599(A171644(n))`
-/

namespace A148598.P18216551417487619735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148599 (A171644 n).toNat

end

end A148598.P18216551417487619735

/-! ## A148598.P18251641904981533515

`A148599(A004869(n+1))`
-/

namespace A148598.P18251641904981533515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148599 (A004869 (n + 1)).toNat

end

end A148598.P18251641904981533515

