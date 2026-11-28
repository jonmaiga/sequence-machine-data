import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C042
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
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

/-!
# A149503: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, -1, 0), (1, 1, 0)}.

The programs for A149503, there is no canonical definition to state claims against.
-/

/-! ## A149503.P5833232029192546951

`A149505(n)-A326292(A293994(n))`
-/

namespace A149503.P5833232029192546951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149505 n - A326292 (A293994 n).toNat

end

end A149503.P5833232029192546951

/-! ## A149503.P7929183700704719257

`A149504(A001096(n))`
-/

namespace A149503.P7929183700704719257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149504 (A001096 n).toNat

end

end A149503.P7929183700704719257

/-!
# A149506: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149506, there is no canonical definition to state claims against.
-/

/-! ## A149506.P3088881192428152447

`A326292(A293994(n))+A149505(n)`
-/

namespace A149506.P3088881192428152447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A293994 n).toNat + A149505 n

end

end A149506.P3088881192428152447

/-!
# A149509: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149509, there is no canonical definition to state claims against.
-/

/-! ## A149509.P10748399936482852769

`A004277(A149534(n))-A149576(n)`
-/

namespace A149509.P10748399936482852769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149534 n).toNat - A149576 n

end

end A149509.P10748399936482852769

/-! ## A149509.P16684969434710723555

`A004277(A149535(n))-A149576(n)`
-/

namespace A149509.P16684969434710723555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149535 n).toNat - A149576 n

end

end A149509.P16684969434710723555

/-!
# A149510: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, -1, -1), (1, 1, 1)}.

The programs for A149510, there is no canonical definition to state claims against.
-/

/-! ## A149510.P10018912755150794190

`A149511(A073789(n))`
-/

namespace A149510.P10018912755150794190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149511 (A073789 n).toNat

end

end A149510.P10018912755150794190

/-!
# A149513: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149513, there is no canonical definition to state claims against.
-/

/-! ## A149513.P48948872029169182

`A299173(A261791(n+1))+A149511(n)`
-/

namespace A149513.P48948872029169182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A261791 (n + 1)).toNat + A149511 n

end

end A149513.P48948872029169182

/-!
# A149514: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149514, there is no canonical definition to state claims against.
-/

/-! ## A149514.P16870287352740540814

`A279553(n+1)-A002262(A128230(n))`
-/

namespace A149514.P16870287352740540814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279553 (n + 1) - A002262 (A128230 n).toNat

end

end A149514.P16870287352740540814

/-! ## A149514.P11282729598477842584

`A259810(n+1)-∑[A259829(A259800(n+1))]`
-/

namespace A149514.P11282729598477842584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (A259800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259810 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149514.P11282729598477842584

/-!
# A149521: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149521, there is no canonical definition to state claims against.
-/

/-! ## A149521.P7942509246763968910

`A324769(A324846(A324846(A306844(n+1))))`
-/

namespace A149521.P7942509246763968910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324769 (A324846 (A324846 (A306844 (n + 1)).toNat).toNat).toNat

end

end A149521.P7942509246763968910

/-!
# A149523: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, -1, -1), (1, 1, 1)}.

The programs for A149523, there is no canonical definition to state claims against.
-/

/-! ## A149523.P6442455706777338280

`A109785(A006172(n)*A024924(n))`
-/

namespace A149523.P6442455706777338280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 (A006172 n * A024924 n).toNat

end

end A149523.P6442455706777338280

/-! ## A149523.P10678220326917439409

`or(A085203(n), A214701(A149524(n)))`
-/

namespace A149523.P10678220326917439409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085203 n) (A214701 (A149524 n).toNat)

end

end A149523.P10678220326917439409

/-! ## A149523.P6872617597189120993

`or(A085203(n), A214701(A149525(n)))`
-/

namespace A149523.P6872617597189120993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085203 n) (A214701 (A149525 n).toNat)

end

end A149523.P6872617597189120993

/-!
# A149525: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149525, there is no canonical definition to state claims against.
-/

/-! ## A149525.P17092407259574330261

`or(A002262(A000142(n)), A149524(n))`
-/

namespace A149525.P17092407259574330261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A000142 n).toNat) (A149524 n)

end

end A149525.P17092407259574330261

/-! ## A149525.P15207813493560343709

`or(A002262(A149308(n)), A149306(n))`
-/

namespace A149525.P15207813493560343709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A149308 n).toNat) (A149306 n)

end

end A149525.P15207813493560343709

/-!
# A149526: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149526, there is no canonical definition to state claims against.
-/

/-! ## A149526.P11866035810739986913

`or(A000120(A076886(n)), A149231(n))`
-/

namespace A149526.P11866035810739986913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A076886 n).toNat) (A149231 n)

end

end A149526.P11866035810739986913

/-! ## A149526.P12164680361558941581

`or(A149231(n), A171435(A000165(n)))`
-/

namespace A149526.P12164680361558941581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149231 n) (A171435 (A000165 n).toNat)

end

end A149526.P12164680361558941581

/-!
# A149527: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149527, there is no canonical definition to state claims against.
-/

/-! ## A149527.P13333351363961433742

`or(1, A215244(∑[floor(7^(n-1))]))`
-/

namespace A149527.P13333351363961433742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A149527.P13333351363961433742

/-! ## A149527.P12318074065410406376

`A093893(A148519(n))`
-/

namespace A149527.P12318074065410406376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A148519 n).toNat

end

end A149527.P12318074065410406376

/-!
# A149528: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149528, there is no canonical definition to state claims against.
-/

/-! ## A149528.P8492045765920994306

`∏{p}[floor(∑[2^n/3]), A083020(#)]`
-/

namespace A149528.P8492045765920994306
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A083020 p

end

end A149528.P8492045765920994306

/-! ## A149528.P16800750882424543693

`A354719(A354736(n*A090182(n)))`
-/

namespace A149528.P16800750882424543693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354719 (A354736 ((n : ℤ) * A090182 n).toNat).toNat

end

end A149528.P16800750882424543693

/-!
# A149529: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, -1), (1, 1, 1)}.

The programs for A149529, there is no canonical definition to state claims against.
-/

/-! ## A149529.P7834007206230614311

`A149530(A001096(n))`
-/

namespace A149529.P7834007206230614311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149530 (A001096 n).toNat

end

end A149529.P7834007206230614311

/-! ## A149529.P6971070848778161621

`A276625(A007718(n)+A000073(n))`
-/

namespace A149529.P6971070848778161621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A007718 n + A000073 n).toNat

end

end A149529.P6971070848778161621

/-!
# A149532: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 1, 0)}.

The programs for A149532, there is no canonical definition to state claims against.
-/

/-! ## A149532.P6694007215304850296

`A004277(A149504(n))-A149498(n)`
-/

namespace A149532.P6694007215304850296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149504 n).toNat - A149498 n

end

end A149532.P6694007215304850296

/-! ## A149532.P8519185502863276098

`A004277(A149505(n))-A149498(n)`
-/

namespace A149532.P8519185502863276098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149505 n).toNat - A149498 n

end

end A149532.P8519185502863276098

/-! ## A149532.P2491472576287661398

`A149533(A073788(n))`
-/

namespace A149532.P2491472576287661398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149533 (A073788 n).toNat

end

end A149532.P2491472576287661398

/-!
# A149540: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149540, there is no canonical definition to state claims against.
-/

/-! ## A149540.P11490913801032360811

`A051724(A263053(n+1)+lcm(2, floor(4^n/3)))`
-/

namespace A149540.P11490913801032360811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A263053 (n + 1) + (Int.lcm 2 ⌊(4 ^ n : ℚ) / 3⌋ : ℤ)).toNat

end

end A149540.P11490913801032360811

/-! ## A149540.P12807086113910072443

`A007583(A004526(n))+A002265(A007583(n))`
-/

namespace A149540.P12807086113910072443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A004526 n).toNat + A002265 (A007583 n).toNat

end

end A149540.P12807086113910072443

/-!
# A149541: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149541, there is no canonical definition to state claims against.
-/

/-! ## A149541.P6231058912110233452

`A139421(A149543(n))`
-/

namespace A149541.P6231058912110233452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A149543 n).toNat

end

end A149541.P6231058912110233452

/-! ## A149541.P6959176622132190662

`A159477(A149391(n))`
-/

namespace A149541.P6959176622132190662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A149391 n).toNat

end

end A149541.P6959176622132190662

/-!
# A149545: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (1, -1, 0), (1, 1, 1)}.

The programs for A149545, there is no canonical definition to state claims against.
-/

/-! ## A149545.P13259368242050119431

`A149548(A073788(n))`
-/

namespace A149545.P13259368242050119431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149548 (A073788 n).toNat

end

end A149545.P13259368242050119431

/-!
# A149549: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149549, there is no canonical definition to state claims against.
-/

/-! ## A149549.P12015815362853685555

`A218851(2^n-n)`
-/

namespace A149549.P12015815362853685555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218851 (2 ^ n - n)

end

end A149549.P12015815362853685555

/-! ## A149549.P7258498462719610243

`A063954(A026003(n))`
-/

namespace A149549.P7258498462719610243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (A026003 n).toNat

end

end A149549.P7258498462719610243

/-!
# A149550: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149550, there is no canonical definition to state claims against.
-/

/-! ## A149550.P1120574775524829321

`and(-3, or(1, A049093(A149283(n))))`
-/

namespace A149550.P1120574775524829321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Int.lor 1 (A049093 (A149283 n).toNat))

end

end A149550.P1120574775524829321

/-! ## A149550.P11338001354013122656

`and(-3, A269172(or(1, A149475(n))))`
-/

namespace A149550.P11338001354013122656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A269172 (Int.lor 1 (A149475 n)).toNat)

end

end A149550.P11338001354013122656

/-! ## A149550.P14359694041369963990

`A149551(n)-A086080(A264509(n+1))`
-/

namespace A149550.P14359694041369963990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149551 n - A086080 (A264509 (n + 1)).toNat

end

end A149550.P14359694041369963990

/-!
# A149551: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149551, there is no canonical definition to state claims against.
-/

/-! ## A149551.P7920211710300463957

`or(1, A049093(A149283(n)))`
-/

namespace A149551.P7920211710300463957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049093 (A149283 n).toNat)

end

end A149551.P7920211710300463957

/-! ## A149551.P10460162480931937538

`A269172(or(1, A149475(n)))`
-/

namespace A149551.P10460162480931937538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (Int.lor 1 (A149475 n)).toNat

end

end A149551.P10460162480931937538

/-! ## A149551.P14479337520222562574

`A149550(n)+A088806(A149550(n))`
-/

namespace A149551.P14479337520222562574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149550 n + A088806 (A149550 n).toNat

end

end A149551.P14479337520222562574

/-!
# A149552: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149552, there is no canonical definition to state claims against.
-/

/-! ## A149552.P10804149863396830043

`A149076(n)+A002265(A150640(n))`
-/

namespace A149552.P10804149863396830043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149076 n + A002265 (A150640 n).toNat

end

end A149552.P10804149863396830043

/-! ## A149552.P14066106055079616629

`or(A149551(n), A348917(A149549(n)))`
-/

namespace A149552.P14066106055079616629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149551 n) (A348917 (A149549 n).toNat)

end

end A149552.P14066106055079616629

/-! ## A149552.P428105662540533139

`A350348(A362650(n))+A002265(A150640(n))`
-/

namespace A149552.P428105662540533139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A362650 n).toNat + A002265 (A150640 n).toNat

end

end A149552.P428105662540533139

/-!
# A149556: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A149556, there is no canonical definition to state claims against.
-/

/-! ## A149556.P1066502370398983080

`or(A054576(A149533(n)), A149555(n))`
-/

namespace A149556.P1066502370398983080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054576 (A149533 n).toNat) (A149555 n)

end

end A149556.P1066502370398983080

/-! ## A149556.P7081549687134463202

`or(A149555(n), A292596(A149554(n)))`
-/

namespace A149556.P7081549687134463202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149555 n) (A292596 (A149554 n).toNat)

end

end A149556.P7081549687134463202

/-! ## A149556.P7349778850558424012

`or(A149555(n), A323410(A149542(n)))`
-/

namespace A149556.P7349778850558424012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149555 n) (A323410 (A149542 n).toNat)

end

end A149556.P7349778850558424012

/-!
# A149561: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149561, there is no canonical definition to state claims against.
-/

/-! ## A149561.P16538608446038340158

`A149563(n)-A394331(A363363(n+1))`
-/

namespace A149561.P16538608446038340158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149563 n - A394331 (A363363 (n + 1)).toNat

end

end A149561.P16538608446038340158

/-! ## A149561.P10281304296952033161

`A149562(A001096(n))`
-/

namespace A149561.P10281304296952033161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149562 (A001096 n).toNat

end

end A149561.P10281304296952033161

/-!
# A149562: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149562, there is no canonical definition to state claims against.
-/

/-! ## A149562.P5106006423067201369

`A149566(n)-A394331(A363363(n+1))`
-/

namespace A149562.P5106006423067201369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149566 n - A394331 (A363363 (n + 1)).toNat

end

end A149562.P5106006423067201369

/-!
# A149563: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149563, there is no canonical definition to state claims against.
-/

/-! ## A149563.P15805745214852735323

`A139712(A149565(n))`
-/

namespace A149563.P15805745214852735323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139712 (A149565 n).toNat

end

end A149563.P15805745214852735323

/-!
# A149567: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149567, there is no canonical definition to state claims against.
-/

/-! ## A149567.P17655013845537281171

`A149568(A001096(n))`
-/

namespace A149567.P17655013845537281171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149568 (A001096 n).toNat

end

end A149567.P17655013845537281171

/-! ## A149567.P8857997601502835855

`or(1, A097203(A218985(n)))`
-/

namespace A149567.P8857997601502835855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097203 (A218985 n).toNat)

end

end A149567.P8857997601502835855

/-!
# A149575: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149575, there is no canonical definition to state claims against.
-/

/-! ## A149575.P16312299216511761148

`abs(or(n, A320996(2*n+1)))`
-/

namespace A149575.P16312299216511761148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (A320996 (2 * n + 1))|

end

end A149575.P16312299216511761148

/-! ## A149575.P6909614903763490981

`A348963(∏[floor(3/acot(n))-n])`
-/

namespace A149575.P6909614903763490981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348963 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149575.P6909614903763490981

/-!
# A149576: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149576, there is no canonical definition to state claims against.
-/

/-! ## A149576.P10433365304611019590

`A004277(A149534(n))-A149509(n)`
-/

namespace A149576.P10433365304611019590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149534 n).toNat - A149509 n

end

end A149576.P10433365304611019590

/-! ## A149576.P12977424286507336716

`A004277(A149535(n))-A149509(n)`
-/

namespace A149576.P12977424286507336716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149535 n).toNat - A149509 n

end

end A149576.P12977424286507336716

/-! ## A149576.P11861979725109880119

`A005843(A149581(n))-A149585(n)-A045675((n-1)^(n%2))`
-/

namespace A149576.P11861979725109880119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A149581 n).toNat - A149585 n - A045675 (((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A149576.P11861979725109880119

/-!
# A149577: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149577, there is no canonical definition to state claims against.
-/

/-! ## A149577.P14345107145301345990

`A004277(A149581(n))-A149585(n)`
-/

namespace A149577.P14345107145301345990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149581 n).toNat - A149585 n

end

end A149577.P14345107145301345990

/-!
# A149578: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149578, there is no canonical definition to state claims against.
-/

/-! ## A149578.P6073754597886767493

`A004277(A149579(n))-A149580(n)`
-/

namespace A149578.P6073754597886767493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149579 n).toNat - A149580 n

end

end A149578.P6073754597886767493

/-! ## A149578.P1626738037868436776

`A004277(A149583(n))-A149586(n)`
-/

namespace A149578.P1626738037868436776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149583 n).toNat - A149586 n

end

end A149578.P1626738037868436776

/-!
# A149579: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149579, there is no canonical definition to state claims against.
-/

/-! ## A149579.P11510423544664350796

`A000265(A149580(n)+A149578(n))`
-/

namespace A149579.P11510423544664350796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149580 n + A149578 n).toNat

end

end A149579.P11510423544664350796

/-! ## A149579.P1055820896439696797

`A014682(A149580(n)+A149578(n))`
-/

namespace A149579.P1055820896439696797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A149580 n + A149578 n).toNat

end

end A149579.P1055820896439696797

/-! ## A149579.P18346983394509159095

`A273943(A149580(n)+A149578(n))`
-/

namespace A149579.P18346983394509159095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A149580 n + A149578 n).toNat

end

end A149579.P18346983394509159095

/-! ## A149579.P14999924129201445448

`A004525(A149580(n)+A149578(n))`
-/

namespace A149579.P14999924129201445448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149580 n + A149578 n).toNat

end

end A149579.P14999924129201445448

/-!
# A149580: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149580, there is no canonical definition to state claims against.
-/

/-! ## A149580.P5802710889646987412

`A004277(A149579(n))-A149578(n)`
-/

namespace A149580.P5802710889646987412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149579 n).toNat - A149578 n

end

end A149580.P5802710889646987412

/-!
# A149581: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149581, there is no canonical definition to state claims against.
-/

/-! ## A149581.P14284028301182527253

`A004526(A149585(n)+A149577(n))`
-/

namespace A149581.P14284028301182527253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149585 n + A149577 n).toNat

end

end A149581.P14284028301182527253

/-! ## A149581.P8778010408432579494

`A065033(A149585(n)+A149577(n))`
-/

namespace A149581.P8778010408432579494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149585 n + A149577 n).toNat

end

end A149581.P8778010408432579494

/-! ## A149581.P17149384412422072551

`A110654(A149585(n)+A149577(n))`
-/

namespace A149581.P17149384412422072551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149585 n + A149577 n).toNat

end

end A149581.P17149384412422072551

/-! ## A149581.P4498268177483108902

`A204455(A149585(n)+A149577(n))`
-/

namespace A149581.P4498268177483108902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A149585 n + A149577 n).toNat

end

end A149581.P4498268177483108902

/-!
# A149582: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149582, there is no canonical definition to state claims against.
-/

/-! ## A149582.P16520535241239598605

`A004277(A149585(n))-A149589(n)`
-/

namespace A149582.P16520535241239598605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149585 n).toNat - A149589 n

end

end A149582.P16520535241239598605

/-!
# A149583: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149583, there is no canonical definition to state claims against.
-/

/-! ## A149583.P13163217601984543251

`A004525(A149586(n)+A149578(n))`
-/

namespace A149583.P13163217601984543251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149586 n + A149578 n).toNat

end

end A149583.P13163217601984543251

/-! ## A149583.P17906367539170890777

`A004526(A149586(n)+A149578(n))`
-/

namespace A149583.P17906367539170890777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149586 n + A149578 n).toNat

end

end A149583.P17906367539170890777

/-! ## A149583.P5169026515007418593

`A060819(A149586(n)+A149578(n))`
-/

namespace A149583.P5169026515007418593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A149586 n + A149578 n).toNat

end

end A149583.P5169026515007418593

/-! ## A149583.P12286132825180609563

`A065033(A149586(n)+A149578(n))`
-/

namespace A149583.P12286132825180609563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149586 n + A149578 n).toNat

end

end A149583.P12286132825180609563

/-!
# A149584: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149584, there is no canonical definition to state claims against.
-/

/-! ## A149584.P10797393158118849898

`A394331(A363363(n+1))+A149583(n)`
-/

namespace A149584.P10797393158118849898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394331 (A363363 (n + 1)).toNat + A149583 n

end

end A149584.P10797393158118849898

/-!
# A149585: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149585, there is no canonical definition to state claims against.
-/

/-! ## A149585.P4589502144526739702

`A004525(A149589(n)+A149582(n))`
-/

namespace A149585.P4589502144526739702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149589 n + A149582 n).toNat

end

end A149585.P4589502144526739702

/-! ## A149585.P3449347360730875544

`A004526(A149589(n)+A149582(n))`
-/

namespace A149585.P3449347360730875544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149589 n + A149582 n).toNat

end

end A149585.P3449347360730875544

/-! ## A149585.P15214623477816810978

`A025480(A149589(n)+A149582(n))`
-/

namespace A149585.P15214623477816810978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149589 n + A149582 n).toNat

end

end A149585.P15214623477816810978

/-! ## A149585.P14286389967172535393

`A026741(A149589(n)+A149582(n))`
-/

namespace A149585.P14286389967172535393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149589 n + A149582 n).toNat

end

end A149585.P14286389967172535393

/-!
# A149586: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149586, there is no canonical definition to state claims against.
-/

/-! ## A149586.P15318639058947130030

`A004277(A149583(n))-A149578(n)`
-/

namespace A149586.P15318639058947130030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149583 n).toNat - A149578 n

end

end A149586.P15318639058947130030

/-! ## A149586.P3197248726741068728

`or(A008611(A124463(n)), A152271(n))`
-/

namespace A149586.P3197248726741068728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (A124463 n).toNat) (A152271 n)

end

end A149586.P3197248726741068728

/-! ## A149586.P7208752826046509977

`or(A001300(n), A033270(A006026(n+1)))`
-/

namespace A149586.P7208752826046509977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001300 n) (A033270 (A006026 (n + 1)).toNat)

end

end A149586.P7208752826046509977

/-!
# A149587: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149587, there is no canonical definition to state claims against.
-/

/-! ## A149587.P17720662754883826621

`A008611(2*A150210(n))`
-/

namespace A149587.P17720662754883826621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A150210 n).toNat

end

end A149587.P17720662754883826621

/-! ## A149587.P8682143023953682758

`A008612(4*A150210(n))`
-/

namespace A149587.P8682143023953682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (4 * A150210 n).toNat

end

end A149587.P8682143023953682758

/-! ## A149587.P14551046849935338437

`or(A227736(A023872(n)), A302171(n))`
-/

namespace A149587.P14551046849935338437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A227736 (A023872 n).toNat) (A302171 n)

end

end A149587.P14551046849935338437

/-!
# A149588: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149588, there is no canonical definition to state claims against.
-/

/-! ## A149588.P11562868353920833259

`or(A149467(n), A255270(A150828(n)))`
-/

namespace A149588.P11562868353920833259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149467 n) (A255270 (A150828 n).toNat)

end

end A149588.P11562868353920833259

/-! ## A149588.P490617176194220346

`or(A137687(A274373(n)), A154403(n))`
-/

namespace A149588.P490617176194220346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137687 (A274373 n).toNat) (A154403 n)

end

end A149588.P490617176194220346

/-! ## A149588.P18280714787383270429

`or(A137687(A274373(n)), A182891(n))`
-/

namespace A149588.P18280714787383270429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137687 (A274373 n).toNat) (A182891 n)

end

end A149588.P18280714787383270429

/-!
# A149589: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149589, there is no canonical definition to state claims against.
-/

/-! ## A149589.P18190539981352946304

`A004277(A149585(n))-A149582(n)`
-/

namespace A149589.P18190539981352946304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149585 n).toNat - A149582 n

end

end A149589.P18190539981352946304

/-! ## A149589.P2000585734208389752

`A008612(8*A149276(n))`
-/

namespace A149589.P2000585734208389752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (8 * A149276 n).toNat

end

end A149589.P2000585734208389752

/-!
# A149590: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149590, there is no canonical definition to state claims against.
-/

/-! ## A149590.P11773721517772063124

`A067434(abs(A083085(n)))`
-/

namespace A149590.P11773721517772063124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 |A083085 n|.toNat

end

end A149590.P11773721517772063124

/-! ## A149590.P15931988070954453079

`A057475(or(1, A163862(n)))`
-/

namespace A149590.P15931988070954453079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (Int.lor 1 (A163862 n)).toNat

end

end A149590.P15931988070954453079

/-!
# A149591: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149591, there is no canonical definition to state claims against.
-/

/-! ## A149591.P8373961726415625316

`or(1, A276218(A219262(n)))`
-/

namespace A149591.P8373961726415625316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276218 (A219262 n).toNat)

end

end A149591.P8373961726415625316

/-! ## A149591.P15272645881225174711

`A063272(A083324(n)+A000384(n))`
-/

namespace A149591.P15272645881225174711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A083324 n + A000384 n).toNat

end

end A149591.P15272645881225174711

/-! ## A149591.P17269975316929943316

`A302171(n)+A001221(A218679(n))`
-/

namespace A149591.P17269975316929943316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302171 n + A001221 (A218679 n).toNat

end

end A149591.P17269975316929943316

/-!
# A149592: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149592, there is no canonical definition to state claims against.
-/

/-! ## A149592.P11710552890235526068

`A008611(∑[2*A149612(n)])`
-/

namespace A149592.P11710552890235526068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A149612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149592.P11710552890235526068

/-!
# A149593: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149593, there is no canonical definition to state claims against.
-/

/-! ## A149593.P12778076121397434145

`A091218(n+1)+∑[A186768(n)]`
-/

namespace A149593.P12778076121397434145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091218 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149593.P12778076121397434145

/-! ## A149593.P2690705867509845653

`or(A001791(n), A004135(A109786(n)))`
-/

namespace A149593.P2690705867509845653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001791 n) (A004135 (A109786 n).toNat)

end

end A149593.P2690705867509845653

/-! ## A149593.P967601540226930705

`A008611(∑[A149658(n)+A149626(n)])`
-/

namespace A149593.P967601540226930705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149658 n + A149626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149593.P967601540226930705

/-!
# A149596: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149596, there is no canonical definition to state claims against.
-/

/-! ## A149596.P13340888143152631087

`A149402(n)+A025682(A332256(n))`
-/

namespace A149596.P13340888143152631087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149402 n + A025682 (A332256 n).toNat

end

end A149596.P13340888143152631087

/-! ## A149596.P5270608525572344674

`A008611(∑[A149641(n)+A149614(n)])`
-/

namespace A149596.P5270608525572344674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149641 n + A149614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149596.P5270608525572344674

/-! ## A149596.P4311843611965011308

`A394331(A363363(n+1))+A149594(n)`
-/

namespace A149596.P4311843611965011308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394331 (A363363 (n + 1)).toNat + A149594 n

end

end A149596.P4311843611965011308

/-!
# A149597: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149597, there is no canonical definition to state claims against.
-/

/-! ## A149597.P6682087050733723051

`or(A003056(A032109(n)), A045906(n))`
-/

namespace A149597.P6682087050733723051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A032109 n).toNat) (A045906 n)

end

end A149597.P6682087050733723051

/-! ## A149597.P18257162796155453492

`or(A000196(A276895(n)), A045906(n))`
-/

namespace A149597.P18257162796155453492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A276895 n).toNat) (A045906 n)

end

end A149597.P18257162796155453492

/-! ## A149597.P13580121982607731944

`A008611(∑[A149658(n)+A149652(n)])`
-/

namespace A149597.P13580121982607731944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149658 n + A149652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149597.P13580121982607731944

/-!
# A149598: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149598, there is no canonical definition to state claims against.
-/

/-! ## A149598.P8675354310325535262

`A247914(A149387(n))`
-/

namespace A149598.P8675354310325535262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A149387 n).toNat

end

end A149598.P8675354310325535262

/-! ## A149598.P10004612170532671892

`A191347(or(1, 2^n-1))+A149565(n)`
-/

namespace A149598.P10004612170532671892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191347 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat + A149565 n

end

end A149598.P10004612170532671892

/-!
# A149599: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149599, there is no canonical definition to state claims against.
-/

/-! ## A149599.P17936721818991108237

`A063195(A140322(n)+3)`
-/

namespace A149599.P17936721818991108237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A140322 n + 3).toNat

end

end A149599.P17936721818991108237

/-! ## A149599.P2869860513402778412

`or(1, A192419(A149592(n)))`
-/

namespace A149599.P2869860513402778412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A192419 (A149592 n).toNat)

end

end A149599.P2869860513402778412

/-! ## A149599.P14022018183801430098

`or(1, A060384(A334329(n+1)))`
-/

namespace A149599.P14022018183801430098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060384 (A334329 (n + 1)).toNat)

end

end A149599.P14022018183801430098

