import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
# A148801: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148801, there is no canonical definition to state claims against.
-/

/-! ## A148801.P17918019674596647096

`A306485(A004879(n+1))`
-/

namespace A148801.P17918019674596647096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306485 (A004879 (n + 1)).toNat

end

end A148801.P17918019674596647096

/-! ## A148801.P1050745664855461581

`A306485(A004890(n+1))`
-/

namespace A148801.P1050745664855461581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306485 (A004890 (n + 1)).toNat

end

end A148801.P1050745664855461581

/-! ## A148801.P15408850815446544543

`A306485(A004901(n+1))`
-/

namespace A148801.P15408850815446544543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306485 (A004901 (n + 1)).toNat

end

end A148801.P15408850815446544543

/-!
# A148802: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148802, there is no canonical definition to state claims against.
-/

/-! ## A148802.P6922733663303247771

`round((A224214(∑[A001405(n)])-n)/6)`
-/

namespace A148802.P6922733663303247771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A224214 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ) : ℚ) / 6)

end

end A148802.P6922733663303247771

/-! ## A148802.P4762194557492543474

`A303979(A303980(n))+A180718(n)`
-/

namespace A148802.P4762194557492543474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303979 (A303980 n).toNat + A180718 n

end

end A148802.P4762194557492543474

/-! ## A148802.P16772551076517416568

`A373153(A330628(n))+A205775(n)`
-/

namespace A148802.P16772551076517416568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (A330628 n).toNat + A205775 n

end

end A148802.P16772551076517416568

/-!
# A148803: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148803, there is no canonical definition to state claims against.
-/

/-! ## A148803.P2215453391218242169

`A132085(A060898(n))`
-/

namespace A148803.P2215453391218242169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A060898 n).toNat

end

end A148803.P2215453391218242169

/-! ## A148803.P12363809658532726977

`A132085(A180142(n))`
-/

namespace A148803.P12363809658532726977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A180142 n).toNat

end

end A148803.P12363809658532726977

/-! ## A148803.P5438083546269391250

`A390395(A199137(n))`
-/

namespace A148803.P5438083546269391250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A199137 n).toNat

end

end A148803.P5438083546269391250

/-!
# A148804: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148804, there is no canonical definition to state claims against.
-/

/-! ## A148804.P11405819968278374189

`A024417(xor(3, A333080(n)))`
-/

namespace A148804.P11405819968278374189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.xor 3 (A333080 n)).toNat

end

end A148804.P11405819968278374189

/-! ## A148804.P3091779202165560586

`A148805(n)+A047885(A326211(n))`
-/

namespace A148804.P3091779202165560586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148805 n + A047885 (A326211 n).toNat

end

end A148804.P3091779202165560586

/-!
# A148805: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148805, there is no canonical definition to state claims against.
-/

/-! ## A148805.P3123188309124431855

`A081753(7*A126566(n))`
-/

namespace A148805.P3123188309124431855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (7 * A126566 n).toNat

end

end A148805.P3123188309124431855

/-! ## A148805.P10703273112367013017

`Δ[A247911(∑[A006789(n)])]`
-/

namespace A148805.P10703273112367013017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A148805.P10703273112367013017

/-! ## A148805.P14253806329937287004

`A000006(A321704(n)+n)+char[4]`
-/

namespace A148805.P14253806329937287004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A321704 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148805.P14253806329937287004

/-!
# A148806: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148806, there is no canonical definition to state claims against.
-/

/-! ## A148806.P10135430700591883018

`∑[A289497(A014330(n))+(n-2)%(n+1)]`
-/

namespace A148806.P10135430700591883018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A014330 n).toNat + Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148806.P10135430700591883018

/-! ## A148806.P9435342670712465995

`A023193(A150686(n)+∏{e}[n+1, floor(#/2)+1]-1)`
-/

namespace A148806.P9435342670712465995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150686 n + (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) - 1)).toNat

end

end A148806.P9435342670712465995

/-! ## A148806.P8190561206393421161

`A226190(A341071(n)+A258308(n))`
-/

namespace A148806.P8190561206393421161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A341071 n + A258308 n).toNat

end

end A148806.P8190561206393421161

/-!
# A148808: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148808, there is no canonical definition to state claims against.
-/

/-! ## A148808.P14126701663448336713

`A331266(∏[∑[∑[n+1]%(n+2)]])`
-/

namespace A148808.P14126701663448336713
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331266 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A148808.P14126701663448336713

/-! ## A148808.P13408590293643239187

`A376455(A320737(n))`
-/

namespace A148808.P13408590293643239187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376455 (A320737 n).toNat

end

end A148808.P13408590293643239187

/-! ## A148808.P14620832410376844538

`A078796(A382301(∑[n]))`
-/

namespace A148808.P14620832410376844538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (A382301 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148808.P14620832410376844538

/-!
# A148809: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, -1), (1, 0, -1)}.

The programs for A148809, there is no canonical definition to state claims against.
-/

/-! ## A148809.P13179030712671745417

`A108141(A243156(n))`
-/

namespace A148809.P13179030712671745417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A243156 n).toNat

end

end A148809.P13179030712671745417

/-! ## A148809.P1713398058890958429

`A371587(A193653(n))`
-/

namespace A148809.P1713398058890958429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A193653 n).toNat

end

end A148809.P1713398058890958429

/-! ## A148809.P16479147758373176971

`A230772(A150216(n+1))`
-/

namespace A148809.P16479147758373176971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A150216 (n + 1)).toNat

end

end A148809.P16479147758373176971

/-!
# A148810: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148810, there is no canonical definition to state claims against.
-/

/-! ## A148810.P6838905071674705860

`A148210(n)+A002266(A000984(n))`
-/

namespace A148810.P6838905071674705860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148210 n + A002266 (A000984 n).toNat

end

end A148810.P6838905071674705860

/-! ## A148810.P8378972305693185012

`A148811(n)-A217155(A008619(n)!)`
-/

namespace A148810.P8378972305693185012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148811 n - A217155 (Nat.factorial (A008619 n).toNat)

end

end A148810.P8378972305693185012

/-!
# A148811: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148811, there is no canonical definition to state claims against.
-/

/-! ## A148811.P12900230682407472207

`xor(A148814(n), A258205(A295685(n)))`
-/

namespace A148811.P12900230682407472207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148814 n) (A258205 (A295685 n).toNat)

end

end A148811.P12900230682407472207

/-! ## A148811.P1642562308948190538

`A217155(A008619(n)!)+A148810(n)`
-/

namespace A148811.P1642562308948190538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (Nat.factorial (A008619 n).toNat) + A148810 n

end

end A148811.P1642562308948190538

/-! ## A148811.P10574095012116222824

`A148812(A073788(n))`
-/

namespace A148811.P10574095012116222824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148812 (A073788 n).toNat

end

end A148811.P10574095012116222824

/-!
# A148812: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148812, there is no canonical definition to state claims against.
-/

/-! ## A148812.P17110618700689173200

`A008620(A149424(n)+A149176(n))`
-/

namespace A148812.P17110618700689173200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A149424 n + A149176 n).toNat

end

end A148812.P17110618700689173200

/-! ## A148812.P11862159386849083304

`A148813(n)-A014377(A005177(n))`
-/

namespace A148812.P11862159386849083304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148813 n - A014377 (A005177 n).toNat

end

end A148812.P11862159386849083304

/-!
# A148813: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148813, there is no canonical definition to state claims against.
-/

/-! ## A148813.P6745082716398857193

`A148812(n)+A014377(A005177(n))`
-/

namespace A148813.P6745082716398857193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148812 n + A014377 (A005177 n).toNat

end

end A148813.P6745082716398857193

/-! ## A148813.P15152619255445104178

`A371587(A129369(n))`
-/

namespace A148813.P15152619255445104178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A129369 n).toNat

end

end A148813.P15152619255445104178

/-! ## A148813.P13826443631581331186

`A382717(A148712(n))`
-/

namespace A148813.P13826443631581331186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A148712 n).toNat

end

end A148813.P13826443631581331186

/-!
# A148814: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, -1), (1, 1, -1)}.

The programs for A148814, there is no canonical definition to state claims against.
-/

/-! ## A148814.P1394582289432014966

`xor(A148811(n), A258205(A295685(n)))`
-/

namespace A148814.P1394582289432014966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148811 n) (A258205 (A295685 n).toNat)

end

end A148814.P1394582289432014966

/-!
# A148815: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148815, there is no canonical definition to state claims against.
-/

/-! ## A148815.P18019579051582758721

`A138311(A121650(n))`
-/

namespace A148815.P18019579051582758721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A121650 n).toNat

end

end A148815.P18019579051582758721

/-! ## A148815.P4461852256979249108

`A277193(A148789(n))`
-/

namespace A148815.P4461852256979249108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A148789 n).toNat

end

end A148815.P4461852256979249108

/-! ## A148815.P15039298223741423218

`A008618(A056236(n+1))`
-/

namespace A148815.P15039298223741423218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A056236 (n + 1)).toNat

end

end A148815.P15039298223741423218

/-!
# A148816: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148816, there is no canonical definition to state claims against.
-/

/-! ## A148816.P12567705777438571291

`A071029(n)+A002265(A104934(n))`
-/

namespace A148816.P12567705777438571291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071029 n + A002265 (A104934 n).toNat

end

end A148816.P12567705777438571291

/-! ## A148816.P17457008300340189092

`A008621(A104934(n)-A001949(n))`
-/

namespace A148816.P17457008300340189092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A104934 n - A001949 n).toNat

end

end A148816.P17457008300340189092

/-! ## A148816.P17274339225146238947

`A008621(A104934(n)-A002266(n))`
-/

namespace A148816.P17274339225146238947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A104934 n - A002266 n).toNat

end

end A148816.P17274339225146238947

/-! ## A148816.P7796476591229614086

`A008621(A104934(n)-A027868(n))`
-/

namespace A148816.P7796476591229614086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A104934 n - A027868 n).toNat

end

end A148816.P7796476591229614086

/-!
# A148817: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148817, there is no canonical definition to state claims against.
-/

/-! ## A148817.P1760730446799956442

`or(A028897(A148816(n)), A148816(n))`
-/

namespace A148817.P1760730446799956442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028897 (A148816 n).toNat) (A148816 n)

end

end A148817.P1760730446799956442

/-! ## A148817.P9299056025197424700

`or(A148815(A004880(n+1)), A148816(n))`
-/

namespace A148817.P9299056025197424700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148815 (A004880 (n + 1)).toNat) (A148816 n)

end

end A148817.P9299056025197424700

/-!
# A148818: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, -1)}.

The programs for A148818, there is no canonical definition to state claims against.
-/

/-! ## A148818.P2104652284758528489

`A131824(n)+A131810(A000009(3*n))`
-/

namespace A148818.P2104652284758528489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131824 n + A131810 (A000009 (3 * n)).toNat

end

end A148818.P2104652284758528489

/-! ## A148818.P18293810351686190034

`A238831(A004902(n+1)+1)+A151458(n)`
-/

namespace A148818.P18293810351686190034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238831 (A004902 (n + 1) + 1).toNat + A151458 n

end

end A148818.P18293810351686190034

/-! ## A148818.P10529997710397611629

`A226190(A149923(n))`
-/

namespace A148818.P10529997710397611629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149923 n).toNat

end

end A148818.P10529997710397611629

/-!
# A148819: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148819, there is no canonical definition to state claims against.
-/

/-! ## A148819.P6898464801255733238

`A344161(floor(a(n-1)/2)+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A148819.P6898464801255733238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A344161 (⌊(a (n - 1) : ℚ) / 2⌋ + 1).toNat

end

end A148819.P6898464801255733238

/-! ## A148819.P3091266530795173853

`A081293(n)-record[A096852(n)]`
-/

namespace A148819.P3091266530795173853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A148819.P3091266530795173853

/-! ## A148819.P13938886821563217331

`or(A108731(A047864(n)), A189177(n))`
-/

namespace A148819.P13938886821563217331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108731 (A047864 n).toNat) (A189177 n)

end

end A148819.P13938886821563217331

/-!
# A148820: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148820, there is no canonical definition to state claims against.
-/

/-! ## A148820.P11681755575200050144

`A187185(A149959(n+1))`
-/

namespace A148820.P11681755575200050144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A149959 (n + 1)).toNat

end

end A148820.P11681755575200050144

/-! ## A148820.P5313564342657889861

`A187183(A081567(n)+1+n)`
-/

namespace A148820.P5313564342657889861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A081567 n + 1 + (n : ℤ)).toNat

end

end A148820.P5313564342657889861

/-! ## A148820.P6075407393098326283

`A002266(A081567(n)+n+5)`
-/

namespace A148820.P6075407393098326283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A081567 n + (n + 5 : ℤ)).toNat

end

end A148820.P6075407393098326283

/-! ## A148820.P16938835263030571529

`A187183(A124808(n)+A081567(n))`
-/

namespace A148820.P16938835263030571529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A124808 n + A081567 n).toNat

end

end A148820.P16938835263030571529

/-!
# A148821: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148821, there is no canonical definition to state claims against.
-/

/-! ## A148821.P10383245021083720889

`xor(A006925(A006925(n)), A148820(n))`
-/

namespace A148821.P10383245021083720889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006925 (A006925 n).toNat) (A148820 n)

end

end A148821.P10383245021083720889

/-!
# A148822: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148822, there is no canonical definition to state claims against.
-/

/-! ## A148822.P18258195387520804978

`A236362(A005829(n+1)²-2)`
-/

namespace A148822.P18258195387520804978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (A005829 (n + 1) ^ 2 - 2).toNat

end

end A148822.P18258195387520804978

/-! ## A148822.P11289711413714433253

`A134063(n)+A134022(A133939(n))`
-/

namespace A148822.P11289711413714433253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n + A134022 (A133939 n).toNat

end

end A148822.P11289711413714433253

/-!
# A148823: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148823, there is no canonical definition to state claims against.
-/

/-! ## A148823.P3411612583121789467

`A205503(n)-A185284(n²+1)`
-/

namespace A148823.P3411612583121789467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205503 n - A185284 (n ^ 2 + 1)

end

end A148823.P3411612583121789467

/-! ## A148823.P17750176367658351262

`A148733(n)+A102632(A025566(n))`
-/

namespace A148823.P17750176367658351262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148733 n + A102632 (A025566 n).toNat

end

end A148823.P17750176367658351262

/-! ## A148823.P10177744363999515047

`A248805(A000272(n))+A205503(n)`
-/

namespace A148823.P10177744363999515047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A000272 n).toNat + A205503 n

end

end A148823.P10177744363999515047

/-!
# A148824: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148824, there is no canonical definition to state claims against.
-/

/-! ## A148824.P11177055204530290274

`A194690(n)+A098804(A000032(n))`
-/

namespace A148824.P11177055204530290274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194690 n + A098804 (A000032 n).toNat

end

end A148824.P11177055204530290274

/-! ## A148824.P2630475187613544305

`A007716(n)-A133457(A055420(n))`
-/

namespace A148824.P2630475187613544305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A133457 (A055420 n).toNat

end

end A148824.P2630475187613544305

/-! ## A148824.P17271285761693619596

`A240577(A055500(n))+A140199(A049942(n+1))`
-/

namespace A148824.P17271285761693619596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240577 (A055500 n).toNat + A140199 (A049942 (n + 1)).toNat

end

end A148824.P17271285761693619596

/-!
# A148825: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148825, there is no canonical definition to state claims against.
-/

/-! ## A148825.P9678554098187319827

`A148827(n)^C(n, 6)!`
-/

namespace A148825.P9678554098187319827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148827 n ^ Nat.factorial (Nat.choose n 6)

end

end A148825.P9678554098187319827

/-! ## A148825.P17399536133714544291

`and(p?[2^n-1], A148826(n))`
-/

namespace A148825.P17399536133714544291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A148826 n)

end

end A148825.P17399536133714544291

/-! ## A148825.P648608981846857701

`A148826(A073788(n))`
-/

namespace A148825.P648608981846857701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148826 (A073788 n).toNat

end

end A148825.P648608981846857701

/-!
# A148826: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148826, there is no canonical definition to state claims against.
-/

/-! ## A148826.P1739294916244936250

`A148827(A073789(n))`
-/

namespace A148826.P1739294916244936250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148827 (A073789 n).toNat

end

end A148826.P1739294916244936250

/-! ## A148826.P5468789822751297309

`A129607(A148827(n))`
-/

namespace A148826.P5468789822751297309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A148827 n).toNat

end

end A148826.P5468789822751297309

/-! ## A148826.P10237563588423962283

`A148827(A171644(n))`
-/

namespace A148826.P10237563588423962283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148827 (A171644 n).toNat

end

end A148826.P10237563588423962283

/-! ## A148826.P2097272450413298167

`A148827(A002034(n!))`
-/

namespace A148826.P2097272450413298167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148827 (A002034 (Nat.factorial n)).toNat

end

end A148826.P2097272450413298167

/-!
# A148828: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148828, there is no canonical definition to state claims against.
-/

/-! ## A148828.P3101994858203527344

`round((A032741(∏[n+1])+3)²/12)`
-/

namespace A148828.P3101994858203527344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A032741 (∏ j ∈ Finset.range (n + 1), f1 j) + 3) ^ 2 : ℚ) / 12)

end

end A148828.P3101994858203527344

/-! ## A148828.P11538549188903800048

`A001399(A032741((n+1)!))`
-/

namespace A148828.P11538549188903800048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A032741 (Nat.factorial (n + 1))).toNat

end

end A148828.P11538549188903800048

/-! ## A148828.P4337438127842920003

`A001399(A032741(∏[n+1]))`
-/

namespace A148828.P4337438127842920003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A032741 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148828.P4337438127842920003

/-!
# A148829: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148829, there is no canonical definition to state claims against.
-/

/-! ## A148829.P286151193175718234

`A291380(n+1)+A111772(n+1)`
-/

namespace A148829.P286151193175718234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291380 (n + 1) + A111772 (n + 1)

end

end A148829.P286151193175718234

/-! ## A148829.P9261110284744683237

`A216617(n)+A054404(A149045(n))`
-/

namespace A148829.P9261110284744683237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216617 n + A054404 (A149045 n).toNat

end

end A148829.P9261110284744683237

/-!
# A148830: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A148830, there is no canonical definition to state claims against.
-/

/-! ## A148830.P1507309606038872496

`A371587(A118397(n))`
-/

namespace A148830.P1507309606038872496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A118397 n).toNat

end

end A148830.P1507309606038872496

/-! ## A148830.P6248565119802850970

`A001462(A030928(n+1))-n`
-/

namespace A148830.P6248565119802850970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A030928 (n + 1)).toNat - (n : ℤ)

end

end A148830.P6248565119802850970

/-! ## A148830.P2825395364565011190

`A038567(A121674(n)-A001333(n))`
-/

namespace A148830.P2825395364565011190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A121674 n - A001333 n).toNat

end

end A148830.P2825395364565011190

/-!
# A148831: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148831, there is no canonical definition to state claims against.
-/

/-! ## A148831.P5149186619740731447

`A210714(A211963(n+1))+A148827(n)`
-/

namespace A148831.P5149186619740731447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210714 (A211963 (n + 1)).toNat + A148827 n

end

end A148831.P5149186619740731447

/-! ## A148831.P17794101363489294527

`floor((A225953(n+1)+A091218(n+1))/2)`
-/

namespace A148831.P17794101363489294527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225953 (n + 1) + A091218 (n + 1) : ℚ) / 2⌋

end

end A148831.P17794101363489294527

/-!
# A148832: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, -1), (1, 0, -1)}.

The programs for A148832, there is no canonical definition to state claims against.
-/

/-! ## A148832.P11725979648241254399

`A194417(A316980(n))`
-/

namespace A148832.P11725979648241254399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (A316980 n).toNat

end

end A148832.P11725979648241254399

/-! ## A148832.P6414309210439008539

`A148736(n)+A056924(A000699(n))`
-/

namespace A148832.P6414309210439008539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148736 n + A056924 (A000699 n).toNat

end

end A148832.P6414309210439008539

/-! ## A148832.P9485745692001315067

`A148737(n)+A056924(A000699(n))`
-/

namespace A148832.P9485745692001315067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148737 n + A056924 (A000699 n).toNat

end

end A148832.P9485745692001315067

/-!
# A148833: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 1, 0)}.

The programs for A148833, there is no canonical definition to state claims against.
-/

/-! ## A148833.P10357320878358665715

`A108954(A353016(n)+A150837(n))`
-/

namespace A148833.P10357320878358665715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A353016 n + A150837 n).toNat

end

end A148833.P10357320878358665715

/-! ## A148833.P12030293950655142540

`A247971(or(A148977(n), A216222(n)))`
-/

namespace A148833.P12030293950655142540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (Int.lor (A148977 n) (A216222 n)).toNat

end

end A148833.P12030293950655142540

/-! ## A148833.P13482272332042875031

`A001462(A124552(n))-A208249(n+1)`
-/

namespace A148833.P13482272332042875031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A124552 n).toNat - A208249 (n + 1)

end

end A148833.P13482272332042875031

/-!
# A148834: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148834, there is no canonical definition to state claims against.
-/

/-! ## A148834.P9362646969857052035

`A108141(A081696(n))`
-/

namespace A148834.P9362646969857052035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A081696 n).toNat

end

end A148834.P9362646969857052035

/-! ## A148834.P3511601733751624893

`A148835(A073788(n))`
-/

namespace A148834.P3511601733751624893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148835 (A073788 n).toNat

end

end A148834.P3511601733751624893

/-! ## A148834.P3181468616303590316

`A148835(A171596(n))`
-/

namespace A148834.P3181468616303590316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148835 (A171596 n).toNat

end

end A148834.P3181468616303590316

/-!
# A148835: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148835, there is no canonical definition to state claims against.
-/

/-! ## A148835.P8916828912892587328

`A148836(n)-A015536(A014376(2*(n+1)))`
-/

namespace A148835.P8916828912892587328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148836 n - A015536 (A014376 (2 * (n + 1))).toNat

end

end A148835.P8916828912892587328

/-! ## A148835.P16751430195371270824

`A148836(A073789(n))`
-/

namespace A148835.P16751430195371270824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148836 (A073789 n).toNat

end

end A148835.P16751430195371270824

/-! ## A148835.P9126774408257522541

`A154470(A148836(n))`
-/

namespace A148835.P9126774408257522541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A148836 n).toNat

end

end A148835.P9126774408257522541

/-! ## A148835.P4498260086274290292

`A148836(A171644(n))`
-/

namespace A148835.P4498260086274290292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148836 (A171644 n).toNat

end

end A148835.P4498260086274290292

/-!
# A148837: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148837, there is no canonical definition to state claims against.
-/

/-! ## A148837.P1409986559434999121

`and(p?[2^n-1], A148838(n))`
-/

namespace A148837.P1409986559434999121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A148838 n)

end

end A148837.P1409986559434999121

/-! ## A148837.P10264796871979764161

`and(p?[2^n-1], A148839(n))`
-/

namespace A148837.P10264796871979764161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A148839 n)

end

end A148837.P10264796871979764161

/-! ## A148837.P14444939422172543588

`A148838(A073788(n))`
-/

namespace A148837.P14444939422172543588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148838 (A073788 n).toNat

end

end A148837.P14444939422172543588

/-!
# A148838: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148838, there is no canonical definition to state claims against.
-/

/-! ## A148838.P16503218379708667550

`A148839(A073789(n))`
-/

namespace A148838.P16503218379708667550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148839 (A073789 n).toNat

end

end A148838.P16503218379708667550

/-! ## A148838.P15699374679151858372

`A154470(A148839(n))`
-/

namespace A148838.P15699374679151858372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A148839 n).toNat

end

end A148838.P15699374679151858372

/-! ## A148838.P12582131889698302036

`A148839(A171644(n))`
-/

namespace A148838.P12582131889698302036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148839 (A171644 n).toNat

end

end A148838.P12582131889698302036

/-! ## A148838.P17324927931134253753

`A148839(A004869(n+1))`
-/

namespace A148838.P17324927931134253753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148839 (A004869 (n + 1)).toNat

end

end A148838.P17324927931134253753

/-!
# A148840: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148840, there is no canonical definition to state claims against.
-/

/-! ## A148840.P7016222060618600488

`or(A112367(A000123(n)), A323795(n))`
-/

namespace A148840.P7016222060618600488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112367 (A000123 n).toNat) (A323795 n)

end

end A148840.P7016222060618600488

/-! ## A148840.P6142730978046589968

`or(A302984(A001523(n)), A323795(n))`
-/

namespace A148840.P6142730978046589968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302984 (A001523 n).toNat) (A323795 n)

end

end A148840.P6142730978046589968

/-! ## A148840.P479979502533132994

`or(A098825(A000040(n+2)), A323795(n))`
-/

namespace A148840.P479979502533132994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098825 (A000040 (n + 2)).toNat) (A323795 n)

end

end A148840.P479979502533132994

/-!
# A148841: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148841, there is no canonical definition to state claims against.
-/

/-! ## A148841.P4344206312919680671

`A023193(A150733(n))`
-/

namespace A148841.P4344206312919680671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150733 n).toNat

end

end A148841.P4344206312919680671

/-! ## A148841.P985175313165656915

`A023193(A150734(n))`
-/

namespace A148841.P985175313165656915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150734 n).toNat

end

end A148841.P985175313165656915

/-! ## A148841.P17588297324785155916

`A023193(A054662(n+1))`
-/

namespace A148841.P17588297324785155916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A054662 (n + 1)).toNat

end

end A148841.P17588297324785155916

/-!
# A148842: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148842, there is no canonical definition to state claims against.
-/

/-! ## A148842.P9917568152696763133

`A004525(A007853(n+1)+A006478(n))`
-/

namespace A148842.P9917568152696763133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007853 (n + 1) + A006478 n).toNat

end

end A148842.P9917568152696763133

/-! ## A148842.P17057910858342618992

`A320536(A284159(n+1))`
-/

namespace A148842.P17057910858342618992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A284159 (n + 1)).toNat

end

end A148842.P17057910858342618992

/-! ## A148842.P8273406338766535366

`A001462(A276929(n)+(n+1)!-A120588(n+2))`
-/

namespace A148842.P8273406338766535366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A276929 n + ((Nat.factorial (n + 1) : ℤ) - A120588 (n + 2))).toNat

end

end A148842.P8273406338766535366

/-!
# A148843: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148843, there is no canonical definition to state claims against.
-/

/-! ## A148843.P17748283153804375475

`A003991(A005651(n)+A000295(n))`
-/

namespace A148843.P17748283153804375475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A005651 n + A000295 n).toNat

end

end A148843.P17748283153804375475

/-! ## A148843.P14462077561825832466

`A059897(A005651(n)+A000295(n))`
-/

namespace A148843.P14462077561825832466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A005651 n + A000295 n).toNat

end

end A148843.P14462077561825832466

/-!
# A148844: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148844, there is no canonical definition to state claims against.
-/

/-! ## A148844.P12965276510926390769

`A157271(A149964(n))`
-/

namespace A148844.P12965276510926390769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149964 n).toNat

end

end A148844.P12965276510926390769

/-! ## A148844.P13761511543898251306

`A247357(A374553(n))`
-/

namespace A148844.P13761511543898251306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247357 (A374553 n).toNat

end

end A148844.P13761511543898251306

/-! ## A148844.P7240534095234804438

`A187186(A150048(n+1))`
-/

namespace A148844.P7240534095234804438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A150048 (n + 1)).toNat

end

end A148844.P7240534095234804438

/-!
# A148845: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148845, there is no canonical definition to state claims against.
-/

/-! ## A148845.P3300460344569611778

`A068696(A115968(n))`
-/

namespace A148845.P3300460344569611778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068696 (A115968 n).toNat

end

end A148845.P3300460344569611778

/-! ## A148845.P12849092921611751139

`A188542(A151163(n))`
-/

namespace A148845.P12849092921611751139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188542 (A151163 n).toNat

end

end A148845.P12849092921611751139

/-! ## A148845.P10121447362715725967

`A373067(∑[∑[A106028(3*n+5)]])`
-/

namespace A148845.P10121447362715725967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106028 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373067 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148845.P10121447362715725967

/-!
# A148846: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148846, there is no canonical definition to state claims against.
-/

/-! ## A148846.P17210578719589215117

`A352130(∑[A244970(n+1)]+2)`
-/

namespace A148846.P17210578719589215117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A148846.P17210578719589215117

/-! ## A148846.P11433657077424142232

`A352130(∑[comp[A112995(3*n+2)]])`
-/

namespace A148846.P11433657077424142232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148846.P11433657077424142232

/-! ## A148846.P5814002912679537906

`A236308(A000984(n))+A000085(n)`
-/

namespace A148846.P5814002912679537906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236308 (A000984 n).toNat + A000085 n

end

end A148846.P5814002912679537906

/-!
# A148847: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148847, there is no canonical definition to state claims against.
-/

/-! ## A148847.P1212031788529043022

`A099741(A150823(n))-A368409(n+1)`
-/

namespace A148847.P1212031788529043022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A150823 n).toNat - A368409 (n + 1)

end

end A148847.P1212031788529043022

/-!
# A148848: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A148848, there is no canonical definition to state claims against.
-/

/-! ## A148848.P8560814531978132121

`A033270(A150586(n)+2)`
-/

namespace A148848.P8560814531978132121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A150586 n + 2).toNat

end

end A148848.P8560814531978132121

/-! ## A148848.P2829879104912167332

`A246445(2*A026742(n))`
-/

namespace A148848.P2829879104912167332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246445 (2 * A026742 n).toNat

end

end A148848.P2829879104912167332

/-! ## A148848.P8235589210987067841

`A033270(or(3, A150586(n)))`
-/

namespace A148848.P8235589210987067841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.lor 3 (A150586 n)).toNat

end

end A148848.P8235589210987067841

/-!
# A148849: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148849, there is no canonical definition to state claims against.
-/

/-! ## A148849.P18002755819095394083

`A246445(A291219(n)+1)`
-/

namespace A148849.P18002755819095394083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246445 (A291219 n + 1).toNat

end

end A148849.P18002755819095394083

/-! ## A148849.P6504938594738097688

`A187187(A303844(n+4)-n)`
-/

namespace A148849.P6504938594738097688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A303844 (n + 4) - (n : ℤ)).toNat

end

end A148849.P6504938594738097688

/-! ## A148849.P47529944606486503

`A187188(∑[(A000219(n)+1)²]+2)`
-/

namespace A148849.P47529944606486503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000219 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A148849.P47529944606486503

/-!
# A148850: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148850, there is no canonical definition to state claims against.
-/

/-! ## A148850.P7325172029693314146

`A148852(n)%p?[2^n-1]`
-/

namespace A148850.P7325172029693314146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148852 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148850.P7325172029693314146

/-! ## A148850.P7710115134021761066

`A148851(n)%p?[2^(∑[n+1]%(n+2))-1]`
-/

namespace A148850.P7710115134021761066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148851 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148850.P7710115134021761066

/-! ## A148850.P12081580599696697721

`A148851(A024641(n))`
-/

namespace A148850.P12081580599696697721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148851 (A024641 n).toNat

end

end A148850.P12081580599696697721

/-!
# A148851: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148851, there is no canonical definition to state claims against.
-/

/-! ## A148851.P3150269422301098682

`A148852(A073789(n))`
-/

namespace A148851.P3150269422301098682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148852 (A073789 n).toNat

end

end A148851.P3150269422301098682

/-! ## A148851.P18283571867960845759

`A154470(A148852(n))`
-/

namespace A148851.P18283571867960845759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A148852 n).toNat

end

end A148851.P18283571867960845759

/-! ## A148851.P13372575138585248166

`A148852(A171644(n))`
-/

namespace A148851.P13372575138585248166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148852 (A171644 n).toNat

end

end A148851.P13372575138585248166

/-! ## A148851.P14419900304960932371

`A148852(A004869(n+1))`
-/

namespace A148851.P14419900304960932371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148852 (A004869 (n + 1)).toNat

end

end A148851.P14419900304960932371

/-!
# A148853: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148853, there is no canonical definition to state claims against.
-/

/-! ## A148853.P18444000677090407884

`A084469(A148869(n))`
-/

namespace A148853.P18444000677090407884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A148869 n).toNat

end

end A148853.P18444000677090407884

/-! ## A148853.P9474715904079548185

`A087842((n+1)!-∑{e}[n, #])-A076142(3*n+5)`
-/

namespace A148853.P9474715904079548185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087842 (Nat.factorial (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - A076142 (3 * n + 5)

end

end A148853.P9474715904079548185

/-! ## A148853.P2805380414462963188

`A167707(A135588(n))+A113504(n)`
-/

namespace A148853.P2805380414462963188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (A135588 n).toNat + A113504 n

end

end A148853.P2805380414462963188

/-!
# A148854: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148854, there is no canonical definition to state claims against.
-/

/-! ## A148854.P12305406185454261827

`A087842((n+1)!-∑{e}[n, #])`
-/

namespace A148854.P12305406185454261827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087842 (Nat.factorial (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A148854.P12305406185454261827

/-! ## A148854.P5338811682121502238

`A008617(10*A149194(n))`
-/

namespace A148854.P5338811682121502238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (10 * A149194 n).toNat

end

end A148854.P5338811682121502238

/-! ## A148854.P16037440605356930399

`A097805(n)+A037203(A116415(n))`
-/

namespace A148854.P16037440605356930399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A037203 (A116415 n).toNat

end

end A148854.P16037440605356930399

/-!
# A148855: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148855, there is no canonical definition to state claims against.
-/

/-! ## A148855.P13040407365523071316

`A110656(7*A148963(n))`
-/

namespace A148855.P13040407365523071316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (7 * A148963 n).toNat

end

end A148855.P13040407365523071316

/-! ## A148855.P12238184146424980039

`A110656(lcm(7, A148963(n)))`
-/

namespace A148855.P12238184146424980039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lcm 7 (A148963 n))

end

end A148855.P12238184146424980039

/-! ## A148855.P14737525485814102979

`A196369(A150639(n))-n`
-/

namespace A148855.P14737525485814102979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196369 (A150639 n).toNat - (n : ℤ)

end

end A148855.P14737525485814102979

/-!
# A148856: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148856, there is no canonical definition to state claims against.
-/

/-! ## A148856.P15977888373225433885

`A289496(A083324(n)+1)`
-/

namespace A148856.P15977888373225433885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A083324 n + 1).toNat

end

end A148856.P15977888373225433885

/-! ## A148856.P17440907535845589435

`A054404(2*A149249(n))`
-/

namespace A148856.P17440907535845589435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * A149249 n).toNat

end

end A148856.P17440907535845589435

/-!
# A148857: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148857, there is no canonical definition to state claims against.
-/

/-! ## A148857.P12061953835714074735

`A025787(∑[∑[A094858(2*n+1)]])`
-/

namespace A148857.P12061953835714074735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094858 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025787 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148857.P12061953835714074735

/-! ## A148857.P17782735526936342499

`A238803(n)-A068932(A220699(n))`
-/

namespace A148857.P17782735526936342499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n - A068932 (A220699 n).toNat

end

end A148857.P17782735526936342499

/-! ## A148857.P7819215488554638731

`A362645(n)-A346698(A008934(n))`
-/

namespace A148857.P7819215488554638731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362645 n - A346698 (A008934 n).toNat

end

end A148857.P7819215488554638731

/-!
# A148858: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148858, there is no canonical definition to state claims against.
-/

/-! ## A148858.P524292583499133147

`A148860(n)%p?[∑[2^n]]`
-/

namespace A148858.P524292583499133147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148860 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A148858.P524292583499133147

/-! ## A148858.P5338217908236719260

`A148859(A073788(n))`
-/

namespace A148858.P5338217908236719260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148859 (A073788 n).toNat

end

end A148858.P5338217908236719260

/-! ## A148858.P10327367081478635313

`A148859(A171596(n))`
-/

namespace A148858.P10327367081478635313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148859 (A171596 n).toNat

end

end A148858.P10327367081478635313

/-!
# A148859: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148859, there is no canonical definition to state claims against.
-/

/-! ## A148859.P4882570299632456180

`A148860(A073789(n))`
-/

namespace A148859.P4882570299632456180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148860 (A073789 n).toNat

end

end A148859.P4882570299632456180

/-! ## A148859.P17355660690820228192

`A154470(A148860(n))`
-/

namespace A148859.P17355660690820228192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A148860 n).toNat

end

end A148859.P17355660690820228192

/-! ## A148859.P18425848714530687204

`A148860(A171644(n))`
-/

namespace A148859.P18425848714530687204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148860 (A171644 n).toNat

end

end A148859.P18425848714530687204

/-! ## A148859.P5165366872175879178

`A148860(A004869(n+1))`
-/

namespace A148859.P5165366872175879178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148860 (A004869 (n + 1)).toNat

end

end A148859.P5165366872175879178

/-!
# A148861: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148861, there is no canonical definition to state claims against.
-/

/-! ## A148861.P8517734544007557364

`A148862(A073788(n))`
-/

namespace A148861.P8517734544007557364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148862 (A073788 n).toNat

end

end A148861.P8517734544007557364

/-! ## A148861.P6437908391539649449

`A148862(A171596(n))`
-/

namespace A148861.P6437908391539649449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148862 (A171596 n).toNat

end

end A148861.P6437908391539649449

/-! ## A148861.P18283066252601751368

`A108141(A007453(n+1))`
-/

namespace A148861.P18283066252601751368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A007453 (n + 1)).toNat

end

end A148861.P18283066252601751368

/-!
# A148862: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148862, there is no canonical definition to state claims against.
-/

/-! ## A148862.P17712380429708216733

`A148863(A073789(n))`
-/

namespace A148862.P17712380429708216733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148863 (A073789 n).toNat

end

end A148862.P17712380429708216733

/-! ## A148862.P15146257806645874740

`A154470(A148863(n))`
-/

namespace A148862.P15146257806645874740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A148863 n).toNat

end

end A148862.P15146257806645874740

/-! ## A148862.P1974365567126661468

`A148863(A171644(n))`
-/

namespace A148862.P1974365567126661468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148863 (A171644 n).toNat

end

end A148862.P1974365567126661468

/-! ## A148862.P5411947531636613370

`A148863(A004869(n+1))`
-/

namespace A148862.P5411947531636613370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148863 (A004869 (n + 1)).toNat

end

end A148862.P5411947531636613370

/-!
# A148864: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148864, there is no canonical definition to state claims against.
-/

/-! ## A148864.P14534805079319593841

`A241183(A292463(n+1))`
-/

namespace A148864.P14534805079319593841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A292463 (n + 1)).toNat

end

end A148864.P14534805079319593841

/-! ## A148864.P14996695391491825085

`A008617(10*A149203(n))`
-/

namespace A148864.P14996695391491825085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (10 * A149203 n).toNat

end

end A148864.P14996695391491825085

/-! ## A148864.P15291233567887652335

`A332086(Δ[Δ[A148497(n)]])`
-/

namespace A148864.P15291233567887652335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (f1 (n + 1) - f1 n).toNat

end

end A148864.P15291233567887652335

/-!
# A148865: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148865, there is no canonical definition to state claims against.
-/

/-! ## A148865.P15658595834647513438

`A289494(A084480(n)+1)`
-/

namespace A148865.P15658595834647513438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A084480 n + 1).toNat

end

end A148865.P15658595834647513438

/-! ## A148865.P17532230533442828570

`A289494(or(1, A084480(n)))`
-/

namespace A148865.P17532230533442828570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (Int.lor 1 (A084480 n)).toNat

end

end A148865.P17532230533442828570

/-! ## A148865.P12633519423374998185

`A185284(n²)+A148859(n)`
-/

namespace A148865.P12633519423374998185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A148859 n

end

end A148865.P12633519423374998185

/-!
# A148866: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148866, there is no canonical definition to state claims against.
-/

/-! ## A148866.P16947637410369512611

`A080352(A073525(n))+A004148(n+1)`
-/

namespace A148866.P16947637410369512611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 (A073525 n).toNat + A004148 (n + 1)

end

end A148866.P16947637410369512611

/-! ## A148866.P9884684952384186099

`A194806(A196192(n))`
-/

namespace A148866.P9884684952384186099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (A196192 n).toNat

end

end A148866.P9884684952384186099

/-! ## A148866.P482985277168226205

`A248227(A149265(n))`
-/

namespace A148866.P482985277168226205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A149265 n).toNat

end

end A148866.P482985277168226205

/-!
# A148867: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148867, there is no canonical definition to state claims against.
-/

/-! ## A148867.P13588967201289959076

`A138311(A148850(n))`
-/

namespace A148867.P13588967201289959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A148850 n).toNat

end

end A148867.P13588967201289959076

/-! ## A148867.P17104299060325089268

`A138311(A148851(n))`
-/

namespace A148867.P17104299060325089268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A148851 n).toNat

end

end A148867.P17104299060325089268

/-! ## A148867.P436744094357096524

`A138311(A148852(n))`
-/

namespace A148867.P436744094357096524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A148852 n).toNat

end

end A148867.P436744094357096524

/-!
# A148868: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148868, there is no canonical definition to state claims against.
-/

/-! ## A148868.P14844098503439954669

`A226190(∑[A149141(n)])`
-/

namespace A148868.P14844098503439954669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148868.P14844098503439954669

/-! ## A148868.P10151266792192234682

`A289496(A304629(n+1))`
-/

namespace A148868.P10151266792192234682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A304629 (n + 1)).toNat

end

end A148868.P10151266792192234682

/-! ## A148868.P182141695838081627

`ceil(A005843(A092765(n+2)/2)/(n+11))`
-/

namespace A148868.P182141695838081627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 (SequenceMachineLib.roundAway ((A092765 (n + 2) : ℚ) / 2)).toNat : ℚ) / (n + 11 : ℚ)⌉

end

end A148868.P182141695838081627

/-!
# A148869: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, -1), (1, 0, -1)}.

The programs for A148869, there is no canonical definition to state claims against.
-/

/-! ## A148869.P9587297589803265769

`A084470(A148853(n))`
-/

namespace A148869.P9587297589803265769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A148853 n).toNat

end

end A148869.P9587297589803265769

/-! ## A148869.P18075753270447671524

`A187188(A343553(n+2))`
-/

namespace A148869.P18075753270447671524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A343553 (n + 2)).toNat

end

end A148869.P18075753270447671524

/-! ## A148869.P14865984265254826813

`A294508(A245115(n))+A148855(n)`
-/

namespace A148869.P14865984265254826813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294508 (A245115 n).toNat + A148855 n

end

end A148869.P14865984265254826813

/-!
# A148870: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148870, there is no canonical definition to state claims against.
-/

/-! ## A148870.P9077660749893344869

`A084152(n)+A003056(A144085(n))`
-/

namespace A148870.P9077660749893344869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n + A003056 (A144085 n).toNat

end

end A148870.P9077660749893344869

/-! ## A148870.P7941790680258599579

`A148856(n)+A124763(A045632(n))`
-/

namespace A148870.P7941790680258599579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148856 n + A124763 (A045632 n).toNat

end

end A148870.P7941790680258599579

/-! ## A148870.P17770977343981738560

`A162226(A149960(n)+A007090(n))`
-/

namespace A148870.P17770977343981738560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A149960 n + A007090 n).toNat

end

end A148870.P17770977343981738560

/-!
# A148871: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148871, there is no canonical definition to state claims against.
-/

/-! ## A148871.P2233615692543131749

`A257641(n)-A353859(A000111(n))`
-/

namespace A148871.P2233615692543131749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257641 n - A353859 (A000111 n).toNat

end

end A148871.P2233615692543131749

/-! ## A148871.P6269820848909266997

`A273162(n+1)+A010060(A025486(n))`
-/

namespace A148871.P6269820848909266997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273162 (n + 1) + A010060 (A025486 n).toNat

end

end A148871.P6269820848909266997

/-! ## A148871.P1460576600041350793

`A273162(n+1)+A011747(A030019(n))`
-/

namespace A148871.P1460576600041350793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273162 (n + 1) + A011747 (A030019 n).toNat

end

end A148871.P1460576600041350793

/-!
# A148872: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148872, there is no canonical definition to state claims against.
-/

/-! ## A148872.P5460039693908424856

`A137442(A149378(n))`
-/

namespace A148872.P5460039693908424856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (A149378 n).toNat

end

end A148872.P5460039693908424856

/-! ## A148872.P4181673798565925979

`A132085(A149468(n+1))`
-/

namespace A148872.P4181673798565925979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A149468 (n + 1)).toNat

end

end A148872.P4181673798565925979

/-! ## A148872.P14854410554791760071

`A132085(A149469(n+1))`
-/

namespace A148872.P14854410554791760071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A149469 (n + 1)).toNat

end

end A148872.P14854410554791760071

/-!
# A148873: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148873, there is no canonical definition to state claims against.
-/

/-! ## A148873.P5667860534268984556

`A130044(A148874(n))`
-/

namespace A148873.P5667860534268984556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A148874 n).toNat

end

end A148873.P5667860534268984556

/-! ## A148873.P6393614082536726327

`A211515(∑[A078008(n)²])`
-/

namespace A148873.P6393614082536726327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148873.P6393614082536726327

/-! ## A148873.P9812435300258999582

`A211515(∑[A151575(n)²])`
-/

namespace A148873.P9812435300258999582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148873.P9812435300258999582

/-!
# A148874: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148874, there is no canonical definition to state claims against.
-/

/-! ## A148874.P16073065456861888152

`A050296(A149902(n))`
-/

namespace A148874.P16073065456861888152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A149902 n).toNat

end

end A148874.P16073065456861888152

/-! ## A148874.P11929089195447453811

`A211515(A149283(n))`
-/

namespace A148874.P11929089195447453811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A149283 n).toNat

end

end A148874.P11929089195447453811

/-! ## A148874.P7592820410439907388

`A211515(A149291(n))`
-/

namespace A148874.P7592820410439907388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A149291 n).toNat

end

end A148874.P7592820410439907388

/-!
# A148875: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 0), (1, 0, 0)}.

The programs for A148875, there is no canonical definition to state claims against.
-/

/-! ## A148875.P12544902031440557543

`A226190(∑[A149043(n)])`
-/

namespace A148875.P12544902031440557543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148875.P12544902031440557543

/-! ## A148875.P17180626658381685486

`A128734(n)+A005041(A137958(n))`
-/

namespace A148875.P17180626658381685486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n + A005041 (A137958 n).toNat

end

end A148875.P17180626658381685486

/-!
# A148876: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148876, there is no canonical definition to state claims against.
-/

/-! ## A148876.P1007458349125219014

`A008620(A150237(n)+A001591(n))`
-/

namespace A148876.P1007458349125219014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150237 n + A001591 n).toNat

end

end A148876.P1007458349125219014

/-! ## A148876.P10953746851247556621

`A008620(A240063(n)+A150237(n))`
-/

namespace A148876.P10953746851247556621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A240063 n + A150237 n).toNat

end

end A148876.P10953746851247556621

/-! ## A148876.P973621868628705505

`A008620(A008620(n)+A150237(n)-1)`
-/

namespace A148876.P973621868628705505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 n + (A150237 n - 1)).toNat

end

end A148876.P973621868628705505

/-! ## A148876.P3038124971139017537

`A008620(A008620(n)-(1-A150237(n)))`
-/

namespace A148876.P3038124971139017537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 n - (1 - A150237 n)).toNat

end

end A148876.P3038124971139017537

/-!
# A148877: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148877, there is no canonical definition to state claims against.
-/

/-! ## A148877.P4014985452527200951

`A008616(7*A149272(n))`
-/

namespace A148877.P4014985452527200951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * A149272 n).toNat

end

end A148877.P4014985452527200951

/-! ## A148877.P15990976852936502799

`A148869(n)+A095111(A273688(n))`
-/

namespace A148877.P15990976852936502799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148869 n + A095111 (A273688 n).toNat

end

end A148877.P15990976852936502799

/-! ## A148877.P17659253234554245039

`A320536(A284159(n+1))+A006478(A000010(n+1))`
-/

namespace A148877.P17659253234554245039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A284159 (n + 1)).toNat + A006478 (A000010 (n + 1)).toNat

end

end A148877.P17659253234554245039

/-!
# A148878: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148878, there is no canonical definition to state claims against.
-/

/-! ## A148878.P14219381664100690807

`A101437(∑[record[A072811(n)]])`
-/

namespace A148878.P14219381664100690807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148878.P14219381664100690807

/-! ## A148878.P17385108686091114575

`A101437(∑[record[A319193(n)]])`
-/

namespace A148878.P17385108686091114575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148878.P17385108686091114575

/-! ## A148878.P8550102868947275573

`A101437(∑[record[A008480(n+1)]])`
-/

namespace A148878.P8550102868947275573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148878.P8550102868947275573

/-!
# A148879: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, -1), (1, 0, -1)}.

The programs for A148879, there is no canonical definition to state claims against.
-/

/-! ## A148879.P4087806807046623112

`A082583(A148556(n))`
-/

namespace A148879.P4087806807046623112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082583 (A148556 n).toNat

end

end A148879.P4087806807046623112

/-! ## A148879.P2842353524902433237

`A082583(A148557(n))`
-/

namespace A148879.P2842353524902433237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082583 (A148557 n).toNat

end

end A148879.P2842353524902433237

/-! ## A148879.P17118643584935290997

`A022290(A244131(n)+A001586(n))`
-/

namespace A148879.P17118643584935290997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A244131 n + A001586 n).toNat

end

end A148879.P17118643584935290997

/-!
# A148880: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148880, there is no canonical definition to state claims against.
-/

/-! ## A148880.P8478321251949761785

`A340500(A070825(n))+A000110(n)`
-/

namespace A148880.P8478321251949761785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (A070825 n).toNat + A000110 n

end

end A148880.P8478321251949761785

/-! ## A148880.P13301172663506325524

`A008615(A317078(n+2)+A242525(n+1))`
-/

namespace A148880.P13301172663506325524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A317078 (n + 2) + A242525 (n + 1)).toNat

end

end A148880.P13301172663506325524

/-! ## A148880.P5153134750228676326

`A066508(A149846(n))-A352399(A176485(n+1))`
-/

namespace A148880.P5153134750228676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A149846 n).toNat - A352399 (A176485 (n + 1)).toNat

end

end A148880.P5153134750228676326

/-!
# A148881: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148881, there is no canonical definition to state claims against.
-/

/-! ## A148881.P4631597526934296502

`∑[A007867(n+1)-A350972(n)]`
-/

namespace A148881.P4631597526934296502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007867 (n + 1) - A350972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148881.P4631597526934296502

/-! ## A148881.P13544286868505870219

`A255408(and(A148885(n), A148886(n)))`
-/

namespace A148881.P13544286868505870219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (Int.land (A148885 n) (A148886 n)).toNat

end

end A148881.P13544286868505870219

/-! ## A148881.P7972304632840525736

`A255408(and(A148885(n), A148888(n)))`
-/

namespace A148881.P7972304632840525736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (Int.land (A148885 n) (A148888 n)).toNat

end

end A148881.P7972304632840525736

/-!
# A148882: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148882, there is no canonical definition to state claims against.
-/

/-! ## A148882.P17891901182787755055

`A270362(∑[A002293(n)])`
-/

namespace A148882.P17891901182787755055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148882.P17891901182787755055

/-! ## A148882.P11491275723274118974

`A270362(∑[A193116(n)])`
-/

namespace A148882.P11491275723274118974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148882.P11491275723274118974

/-! ## A148882.P2168862695134369458

`A270362(∑[A201952(n+1)])`
-/

namespace A148882.P2168862695134369458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148882.P2168862695134369458

/-!
# A148883: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148883, there is no canonical definition to state claims against.
-/

/-! ## A148883.P8345241615744519830

`A289494(A001207(n+1))`
-/

namespace A148883.P8345241615744519830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A001207 (n + 1)).toNat

end

end A148883.P8345241615744519830

/-! ## A148883.P18053778255651733195

`A289494(A319156(n+1))`
-/

namespace A148883.P18053778255651733195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A319156 (n + 1)).toNat

end

end A148883.P18053778255651733195

/-! ## A148883.P936190824710950393

`A340764(A083881(n)+A081037(n))`
-/

namespace A148883.P936190824710950393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A083881 n + A081037 n).toNat

end

end A148883.P936190824710950393

/-!
# A148884: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148884, there is no canonical definition to state claims against.
-/

/-! ## A148884.P17240119184891872563

`A390395(A149001(n))`
-/

namespace A148884.P17240119184891872563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A149001 n).toNat

end

end A148884.P17240119184891872563

/-! ## A148884.P2748195113968328723

`A294442(or(A000217(n), A052773(n)))`
-/

namespace A148884.P2748195113968328723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (Int.lor (A000217 n) (A052773 n)).toNat

end

end A148884.P2748195113968328723

/-! ## A148884.P219154793438387883

`A294442(or(A052773(n), A151917(n)))`
-/

namespace A148884.P219154793438387883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (Int.lor (A052773 n) (A151917 n)).toNat

end

end A148884.P219154793438387883

/-!
# A148885: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148885, there is no canonical definition to state claims against.
-/

/-! ## A148885.P4320859927441609878

`A110266(A367415(n+1))`
-/

namespace A148885.P4320859927441609878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A367415 (n + 1)).toNat

end

end A148885.P4320859927441609878

/-! ## A148885.P18291802054129605699

`A138311(A148899(n)-A002663(n))`
-/

namespace A148885.P18291802054129605699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A148899 n - A002663 n).toNat

end

end A148885.P18291802054129605699

/-! ## A148885.P6087346573990566961

`A148886(n)-A212618(A212961(n))`
-/

namespace A148885.P6087346573990566961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148886 n - A212618 (A212961 n).toNat

end

end A148885.P6087346573990566961

/-!
# A148886: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148886, there is no canonical definition to state claims against.
-/

/-! ## A148886.P2150431101498155769

`A317132(n)+A033183(A052346(n))`
-/

namespace A148886.P2150431101498155769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317132 n + A033183 (A052346 n).toNat

end

end A148886.P2150431101498155769

/-! ## A148886.P3936445025142478403

`A212618(A212961(n))+A148885(n)`
-/

namespace A148886.P3936445025142478403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212618 (A212961 n).toNat + A148885 n

end

end A148886.P3936445025142478403

/-! ## A148886.P6248439657978618449

`A148893(n)-A031346(A158467(n))`
-/

namespace A148886.P6248439657978618449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148893 n - A031346 (A158467 n).toNat

end

end A148886.P6248439657978618449

/-!
# A148887: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 1, -1)}.

The programs for A148887, there is no canonical definition to state claims against.
-/

/-! ## A148887.P7833229521878457203

`A014085(A005493(n))-A132110(n)`
-/

namespace A148887.P7833229521878457203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A005493 n).toNat - A132110 n

end

end A148887.P7833229521878457203

/-! ## A148887.P3848984374159232253

`A148896(n)-A088950(A084174(n))`
-/

namespace A148887.P3848984374159232253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148896 n - A088950 (A084174 n).toNat

end

end A148887.P3848984374159232253

/-! ## A148887.P14354473303796487509

`A148896(n)-A214411(A091285(n+1))`
-/

namespace A148887.P14354473303796487509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148896 n - A214411 (A091285 (n + 1)).toNat

end

end A148887.P14354473303796487509

/-!
# A148888: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148888, there is no canonical definition to state claims against.
-/

/-! ## A148888.P6146146232902323415

`A050296(A149287(n)+A002620(n))`
-/

namespace A148888.P6146146232902323415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A149287 n + A002620 n).toNat

end

end A148888.P6146146232902323415

/-! ## A148888.P2620796756189222293

`A151440(n)-A025442(A151485(n))`
-/

namespace A148888.P2620796756189222293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151440 n - A025442 (A151485 n).toNat

end

end A148888.P2620796756189222293

/-! ## A148888.P2793811012732453464

`A151440(n)-A185063(A166444(n))`
-/

namespace A148888.P2793811012732453464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151440 n - A185063 (A166444 n).toNat

end

end A148888.P2793811012732453464

/-!
# A148889: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148889, there is no canonical definition to state claims against.
-/

/-! ## A148889.P2612143593377321610

`A148435(n)+A156689(A148435(n))-1`
-/

namespace A148889.P2612143593377321610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148435 n + (A156689 (A148435 n).toNat - 1)

end

end A148889.P2612143593377321610

/-!
# A148890: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148890, there is no canonical definition to state claims against.
-/

/-! ## A148890.P15342840866583429489

`A352695(A000219(n))-A115859(n+1)`
-/

namespace A148890.P15342840866583429489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (A000219 n).toNat - A115859 (n + 1)

end

end A148890.P15342840866583429489

/-!
# A148891: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148891, there is no canonical definition to state claims against.
-/

/-! ## A148891.P2351045168773429822

`A352695(A000219(n))+A115859(n+1)`
-/

namespace A148891.P2351045168773429822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (A000219 n).toNat + A115859 (n + 1)

end

end A148891.P2351045168773429822

/-!
# A148892: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148892, there is no canonical definition to state claims against.
-/

/-! ## A148892.P14915548579722395768

`A148883(n)+A302478(A148883(n))-A149025(n)`
-/

namespace A148892.P14915548579722395768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148883 n + (A302478 (A148883 n).toNat - A149025 n)

end

end A148892.P14915548579722395768

/-!
# A148893: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A148893, there is no canonical definition to state claims against.
-/

/-! ## A148893.P5671868601574561273

`A105519(24*A148869(n))`
-/

namespace A148893.P5671868601574561273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (24 * A148869 n).toNat

end

end A148893.P5671868601574561273

/-! ## A148893.P11353929008267427740

`Δ[A194640(Δ[A076864(n)])]`
-/

namespace A148893.P11353929008267427740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A148893.P11353929008267427740

/-! ## A148893.P1037015992948426024

`A194985(A063834(n))+2^(n-2)*floor(2^n/3)`
-/

namespace A148893.P1037015992948426024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194985 (A063834 n).toNat : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (⌊(2 ^ n : ℚ) / 3⌋ : ℚ)

end

end A148893.P1037015992948426024

/-!
# A148894: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148894, there is no canonical definition to state claims against.
-/

/-! ## A148894.P2955577044541700812

`A194403(A148793(n))`
-/

namespace A148894.P2955577044541700812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (A148793 n).toNat

end

end A148894.P2955577044541700812

/-! ## A148894.P7755352241451041849

`A352130(A077800(2*n+1)+∑{p}[n+1, gcd(n, #)])`
-/

namespace A148894.P7755352241451041849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A077800 (2 * n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A148894.P7755352241451041849

/-! ## A148894.P9086908665583552055

`A148971(n)-A062977(A216583(n))`
-/

namespace A148894.P9086908665583552055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148971 n - A062977 (A216583 n).toNat

end

end A148894.P9086908665583552055

/-!
# A148895: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A148895, there is no canonical definition to state claims against.
-/

/-! ## A148895.P7178857144290393354

`A112990(A149175(n))`
-/

namespace A148895.P7178857144290393354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (A149175 n).toNat

end

end A148895.P7178857144290393354

/-! ## A148895.P7658889678699283587

`A211515(A149376(n))`
-/

namespace A148895.P7658889678699283587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A149376 n).toNat

end

end A148895.P7658889678699283587

/-! ## A148895.P12752900416562286224

`A211515(A149374(n)+1)`
-/

namespace A148895.P12752900416562286224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A149374 n + 1).toNat

end

end A148895.P12752900416562286224

/-!
# A148896: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148896, there is no canonical definition to state claims against.
-/

/-! ## A148896.P69433863220033727

`A008616(A095939(n)+A007057(n))`
-/

namespace A148896.P69433863220033727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A095939 n + A007057 n).toNat

end

end A148896.P69433863220033727

/-! ## A148896.P6424707539713636581

`A148887(n)+A088950(A084174(n))`
-/

namespace A148896.P6424707539713636581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148887 n + A088950 (A084174 n).toNat

end

end A148896.P6424707539713636581

/-! ## A148896.P8685876763583107712

`or(A007814(A374518(2*(n+2))), A148887(n))`
-/

namespace A148896.P8685876763583107712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A374518 (2 * (n + 2))).toNat) (A148887 n)

end

end A148896.P8685876763583107712

/-!
# A148897: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148897, there is no canonical definition to state claims against.
-/

/-! ## A148897.P13167455897141840514

`A248227(A005190(n))`
-/

namespace A148897.P13167455897141840514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A005190 n).toNat

end

end A148897.P13167455897141840514

/-! ## A148897.P10148831630546158667

`A003188(C(A294823(n), ∏{e}[n+1, #]))`
-/

namespace A148897.P10148831630546158667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.choose (A294823 n).toNat (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A148897.P10148831630546158667

/-! ## A148897.P3815842104920300688

`A003188(C(A294823(n), (n+1)/∏{p}[n+1, #]))`
-/

namespace A148897.P3815842104920300688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.choose (A294823 n).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A148897.P3815842104920300688

/-!
# A148898: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148898, there is no canonical definition to state claims against.
-/

/-! ## A148898.P14535683918611039541

`A138311(A148899(n))`
-/

namespace A148898.P14535683918611039541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A148899 n).toNat

end

end A148898.P14535683918611039541

/-! ## A148898.P3285377948290149831

`A369231(n)+A066328(A005439(n))`
-/

namespace A148898.P3285377948290149831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369231 n + A066328 (A005439 n).toNat

end

end A148898.P3285377948290149831

/-! ## A148898.P2192460628439744447

`A148974(n)-A025441(A054921(n))`
-/

namespace A148898.P2192460628439744447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148974 n - A025441 (A054921 n).toNat

end

end A148898.P2192460628439744447

/-!
# A148899: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148899, there is no canonical definition to state claims against.
-/

/-! ## A148899.P8533536523113474609

`or(A069283(A228408(n)), A148898(n))`
-/

namespace A148899.P8533536523113474609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069283 (A228408 n).toNat) (A148898 n)

end

end A148899.P8533536523113474609

/-! ## A148899.P10833101212279309728

`A316868(A148931(n+1))+A148898(n)`
-/

namespace A148899.P10833101212279309728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A148931 (n + 1)).toNat + A148898 n

end

end A148899.P10833101212279309728

/-! ## A148899.P14102119207041662499

`or(A069283(2*A148898(n)), A148898(n))`
-/

namespace A148899.P14102119207041662499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069283 (2 * A148898 n).toNat) (A148898 n)

end

end A148899.P14102119207041662499

/-! ## A148899.P4979872909231468545

`or(A148898(n), A294519(A294498(3*n+1)))`
-/

namespace A148899.P4979872909231468545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148898 n) (A294519 (A294498 (3 * n + 1)).toNat)

end

end A148899.P4979872909231468545

