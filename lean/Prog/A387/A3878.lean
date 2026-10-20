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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B014.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A387802: Number of fundamentally different graceful labelings of the n-ladder graph.

The programs for A387802, there is no canonical definition to state claims against.
-/

/-! ## A387802.P10168169463131669638

`A085971(A153852(n+1))-A191670(n+1)`
-/

namespace A387802.P10168169463131669638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (A153852 (n + 1)).toNat - A191670 (n + 1)

end

end A387802.P10168169463131669638

/-!
# A387804: Number of fundamentally different graceful labelings of the n-pan graph.

The programs for A387804, there is no canonical definition to state claims against.
-/

/-! ## A387804.P13897386797760907848

`A333729(n+3)/4`
-/

namespace A387804.P13897386797760907848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333729 (n + 3) : ℚ) / 4

end

end A387804.P13897386797760907848

/-!
# A387805: Number of fundamentally different graceful labelings of the n-path graph.

The programs for A387805, there is no canonical definition to state claims against.
-/

/-! ## A387805.P12176777927635044902

`A006967(n+1)/A338986(n+1)*A338988(n+1)`
-/

namespace A387805.P12176777927635044902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006967 (n + 1) : ℚ) / (A338986 (n + 1) : ℚ) * (A338988 (n + 1) : ℚ)

end

end A387805.P12176777927635044902

/-! ## A387805.P10693934131468743866

`A030065(A006967(n+1))`
-/

namespace A387805.P10693934131468743866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A006967 (n + 1)).toNat

end

end A387805.P10693934131468743866

/-!
# A387807: Number of fundamentally different graceful labelings of the n-sun graph.

The programs for A387807, there is no canonical definition to state claims against.
-/

/-! ## A387807.P17506927315112153971

`A337792(n+3)/(4*(n+3))`
-/

namespace A387807.P17506927315112153971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337792 (n + 3) : ℚ) / (4 * (n + 3) : ℚ)

end

end A387807.P17506927315112153971

/-!
# A387808: Number of fundamentally different graceful labelings of the n-sunlet graph.

The programs for A387808, there is no canonical definition to state claims against.
-/

/-! ## A387808.P6212242391343687386

`A333757(n+3)/(4*(n+3))`
-/

namespace A387808.P6212242391343687386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333757 (n + 3) : ℚ) / (4 * (n + 3) : ℚ)

end

end A387808.P6212242391343687386

/-!
# A387809: Expansion of e.g.f. exp(cosh(x)*x^2/2).

The programs for A387809, there is no canonical definition to state claims against.
-/

/-! ## A387809.P2650047869711891237

`A011373(A324763(n+1)*A366194(n))`
-/

namespace A387809.P2650047869711891237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A324763 (n + 1) * A366194 n).toNat

end

end A387809.P2650047869711891237

/-!
# A387810: Lexicographically earliest infinite sequence of distinct positive numbers such that, for n > 3, a(n) is the largest number less than a(n-1) that shares a factor with a(n-1) and is coprime to a(n-2), or if no such number exists then a(n) is the smallest number greater than a(n-1) that shares a factor with a(n-1) and is coprime to a(n-2).

The programs for A387810, there is no canonical definition to state claims against.
-/

/-! ## A387810.P11350028274420814355

`A340779(A043317(n+1))`
-/

namespace A387810.P11350028274420814355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340779 (A043317 (n + 1)).toNat

end

end A387810.P11350028274420814355

/-! ## A387810.P4807039876942462700

`A340779(A044914(n+1))`
-/

namespace A387810.P4807039876942462700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340779 (A044914 (n + 1)).toNat

end

end A387810.P4807039876942462700

/-! ## A387810.P7601404706541549412

`A340779(A055648(n+1))`
-/

namespace A387810.P7601404706541549412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340779 (A055648 (n + 1)).toNat

end

end A387810.P7601404706541549412

/-! ## A387810.P4959542339178423942

`A340779(A132378(n+1))`
-/

namespace A387810.P4959542339178423942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340779 (A132378 (n + 1)).toNat

end

end A387810.P4959542339178423942

/-! ## A387810.P5391466332949046634

`A340779(A004863(n+2))`
-/

namespace A387810.P5391466332949046634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340779 (A004863 (n + 2)).toNat

end

end A387810.P5391466332949046634

/-!
# A387812: a(n) = Sum_{k=0..n} binomial(5*n+3,5*k+1).

The programs for A387812, there is no canonical definition to state claims against.
-/

/-! ## A387812.P17282490438108710883

`A052964(A016873(n))`
-/

namespace A387812.P17282490438108710883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (A016873 n).toNat

end

end A387812.P17282490438108710883

/-! ## A387812.P3424296051131639710

`A133476(A016885(n))`
-/

namespace A387812.P3424296051131639710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016885 n).toNat

end

end A387812.P3424296051131639710

/-! ## A387812.P4510998391090844762

`A133476(A016873(n)+1)`
-/

namespace A387812.P4510998391090844762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016873 n + 1).toNat

end

end A387812.P4510998391090844762

/-! ## A387812.P11468513432595326058

`A133476(A016861(n)+2)`
-/

namespace A387812.P11468513432595326058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016861 n + 2).toNat

end

end A387812.P11468513432595326058

/-! ## A387812.P16892016457246909340

`A139714(A004767(n)+n)`
-/

namespace A387812.P16892016457246909340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (A004767 n + (n : ℤ)).toNat

end

end A387812.P16892016457246909340

/-! ## A387812.P17583139139019868506

`A133476(A016825(n)+n+1)`
-/

namespace A387812.P17583139139019868506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016825 n + (n + 1 : ℤ)).toNat

end

end A387812.P17583139139019868506

/-! ## A387812.P7865780154526917356

`A139714(A005408(3*n+1)-n)`
-/

namespace A387812.P7865780154526917356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (A005408 (3 * n + 1) - (n : ℤ)).toNat

end

end A387812.P7865780154526917356

/-! ## A387812.P12556874464853191203

`A387813(n)-A139748(5*n+3)`
-/

namespace A387812.P12556874464853191203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387813 n - A139748 (5 * n + 3)

end

end A387812.P12556874464853191203

/-! ## A387812.P15478119373824361781

`A133476(A005843(3*n+2)-(n+1))`
-/

namespace A387812.P15478119373824361781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A005843 (3 * n + 2) - (n + 1 : ℤ)).toNat

end

end A387812.P15478119373824361781

/-!
# A387813: a(n) = Sum_{k=0..n} binomial(5*n+4,5*k+1).

The programs for A387813, there is no canonical definition to state claims against.
-/

/-! ## A387813.P12123132940300751337

`A139748(5*n+4)`
-/

namespace A387813.P12123132940300751337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 (5 * n + 4)

end

end A387813.P12123132940300751337

/-! ## A387813.P12555327923802624557

`A133476(A016897(n))`
-/

namespace A387813.P12555327923802624557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016897 n).toNat

end

end A387813.P12555327923802624557

/-! ## A387813.P13576817400017861066

`abs(A084179(A016885(n)))`
-/

namespace A387813.P13576817400017861066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 (A016885 n).toNat|

end

end A387813.P13576817400017861066

/-! ## A387813.P9372644404885166321

`A133476(A016885(n)+1)`
-/

namespace A387813.P9372644404885166321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016885 n + 1).toNat

end

end A387813.P9372644404885166321

/-! ## A387813.P14157669061279122274

`A133476(A016873(n)+2)`
-/

namespace A387813.P14157669061279122274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016873 n + 2).toNat

end

end A387813.P14157669061279122274

/-! ## A387813.P18247544080604936346

`A133476(A016861(n)+3)`
-/

namespace A387813.P18247544080604936346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (A016861 n + 3).toNat

end

end A387813.P18247544080604936346

/-!
# A387814: a(n) = Sum_{k=0..n} binomial(6*n+1,6*k).

The programs for A387814, the canonical program `A387814.P13071900105693731522` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387814 has offset 0).

The definition of A387814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387814.P13071900105693731522

`(1+2*64^n+3*(-27)^n)/6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387814

/-- `(1+2*64^n+3*(-27)^n)/6` -/
def P13071900105693731522.Spec : Prop :=
  ∀ n, P13071900105693731522.a n = (A387814 n : ℚ)

end A387814

/-! ## A387814.P13039920539155993937

`A387875(2*n)`
-/

namespace A387814.P13039920539155993937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387875 (2 * n)

end

end A387814.P13039920539155993937

namespace A387814

/-- `A387875(2*n)` -/
def P13039920539155993937.Spec : Prop :=
  ∀ n, P13039920539155993937.a n = A387814 n

end A387814

/-! ## A387814.P10915269402540587774

`A387874(3*n)`
-/

namespace A387814.P10915269402540587774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387874 (3 * n)

end

end A387814.P10915269402540587774

namespace A387814

/-- `A387874(3*n)` -/
def P10915269402540587774.Spec : Prop :=
  ∀ n, P10915269402540587774.a n = A387814 n

end A387814

/-! ## A387814.P9090787918065187863

`A119336(6*n)`
-/

namespace A387814.P9090787918065187863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 (6 * n)

end

end A387814.P9090787918065187863

namespace A387814

/-- `A119336(6*n)` -/
def P9090787918065187863.Spec : Prop :=
  ∀ n, P9090787918065187863.a n = A387814 n

end A387814

/-! ## A387814.P7085810645100662016

`A306847(A016921(n))`
-/

namespace A387814.P7085810645100662016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (A016921 n).toNat

end

end A387814.P7085810645100662016

namespace A387814

/-- `A306847(A016921(n))` -/
def P7085810645100662016.Spec : Prop :=
  ∀ n, P7085810645100662016.a n = A387814 n

end A387814

/-! ## A387814.P13077999648567983552

`A306847(A271114(n))`
-/

namespace A387814.P13077999648567983552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (A271114 n).toNat

end

end A387814.P13077999648567983552

namespace A387814

/-- `A306847(A271114(n))` -/
def P13077999648567983552.Spec : Prop :=
  ∀ n, P13077999648567983552.a n = A387814 n

end A387814

/-! ## A387814.P14594473766786870001

`A306847(A144917(n+2))`
-/

namespace A387814.P14594473766786870001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (A144917 (n + 2)).toNat

end

end A387814.P14594473766786870001

namespace A387814

/-- `A306847(A144917(n+2))` -/
def P14594473766786870001.Spec : Prop :=
  ∀ n, P14594473766786870001.a n = A387814 n

end A387814

/-!
# A387815: a(n) = (1/3) * Sum_{k=0..n} binomial(6*n+3,6*k+1).

The programs for A387815, the canonical program `A387815.P1995157731751778851` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387815 has offset 0).

The definition of A387815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387815.P1995157731751778851

`(1+8*64^n+9*(-27)^n)/18`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387815

/-- `(1+8*64^n+9*(-27)^n)/18` -/
def P1995157731751778851.Spec : Prop :=
  ∀ n, P1995157731751778851.a n = (A387815 n : ℚ)

end A387815

/-!
# A387816: a(n) = Sum_{k=0..n} binomial(7*n+1,7*k).

The programs for A387816, there is no canonical definition to state claims against.
-/

/-! ## A387816.P15572644999058378544

`A094052(A016993(n))`
-/

namespace A387816.P15572644999058378544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 (A016993 n).toNat

end

end A387816.P15572644999058378544

/-! ## A387816.P15749460066659867809

`A377573(A017005(n))`
-/

namespace A387816.P15749460066659867809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A017005 n).toNat

end

end A387816.P15749460066659867809

/-! ## A387816.P2376007065975096144

`A377573(A016993(n)+1)`
-/

namespace A387816.P2376007065975096144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A016993 n + 1).toNat

end

end A387816.P2376007065975096144

/-! ## A387816.P14100361701003466759

`A377573(A017017(n)-1)`
-/

namespace A387816.P14100361701003466759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A017017 n - 1).toNat

end

end A387816.P14100361701003466759

/-! ## A387816.P15897390900843094370

`A306852(A017017(n)-2)`
-/

namespace A387816.P15897390900843094370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (A017017 n - 2).toNat

end

end A387816.P15897390900843094370

/-!
# A387817: a(n) = Sum_{k=0..n} binomial(7*n+3,7*k+1).

The programs for A387817, there is no canonical definition to state claims against.
-/

/-! ## A387817.P14538993583037587616

`A094052(A017017(n))`
-/

namespace A387817.P14538993583037587616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 (A017017 n).toNat

end

end A387817.P14538993583037587616

/-! ## A387817.P1214020113833964732

`A377573(A017029(n))`
-/

namespace A387817.P1214020113833964732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A017029 n).toNat

end

end A387817.P1214020113833964732

/-! ## A387817.P5543078672369827144

`A377573(A017017(n)+1)`
-/

namespace A387817.P5543078672369827144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A017017 n + 1).toNat

end

end A387817.P5543078672369827144

/-! ## A387817.P15784315955074707337

`A377573(A017041(n)-1)`
-/

namespace A387817.P15784315955074707337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A017041 n - 1).toNat

end

end A387817.P15784315955074707337

/-! ## A387817.P15046319503664886280

`A377573(A016993(n)+3)`
-/

namespace A387817.P15046319503664886280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (A016993 n + 3).toNat

end

end A387817.P15046319503664886280

/-!
# A387820: Numbers that are divisible by the sum of their exponentially odd divisors.

The programs for A387820, there is no canonical definition to state claims against.
-/

/-! ## A387820.P15734189277088646945

`A315630(A127100(n+1)-A008277(n+1))`
-/

namespace A387820.P15734189277088646945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315630 (A127100 (n + 1) - A008277 (n + 1)).toNat

end

end A387820.P15734189277088646945

/-!
# A387826: a(n) = A387820(n) / A033634(A387820(n)).

The programs for A387826, there is no canonical definition to state claims against.
-/

/-! ## A387826.P4114381083785792568

`A090569(A225489(A145812(A006257(n+1))))`
-/

namespace A387826.P4114381083785792568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (A225489 (A145812 (A006257 (n + 1)).toNat).toNat).toNat

end

end A387826.P4114381083785792568

/-!
# A387827: Number of fundamentally different graceful labelings of the complement of the n-path graph.

The programs for A387827, there is no canonical definition to state claims against.
-/

/-! ## A387827.P12901989177723972519

`A336428(n+1)/A113311(n)`
-/

namespace A387827.P12901989177723972519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336428 (n + 1) : ℚ) / (A113311 n : ℚ)

end

end A387827.P12901989177723972519

/-!
# A387830: Least number of vertical or horizontal cuts required to divide a square into n equal parts.

The programs for A387830, there is no canonical definition to state claims against.
-/

/-! ## A387830.P18223721858913212199

`A063655(n+1)-2`
-/

namespace A387830.P18223721858913212199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - 2

end

end A387830.P18223721858913212199

/-! ## A387830.P17323319809318279117

`n-A385454(n+1)`
-/

namespace A387830.P17323319809318279117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A385454 (n + 1)

end

end A387830.P17323319809318279117

/-! ## A387830.P15049874304928393445

`A262767(n+1)/2-2`
-/

namespace A387830.P15049874304928393445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262767 (n + 1) : ℚ) / 2 - 2

end

end A387830.P15049874304928393445

/-! ## A387830.P3666526735915220183

`n-(A220114(n+1)+1)`
-/

namespace A387830.P3666526735915220183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A220114 (n + 1) + 1)

end

end A387830.P3666526735915220183

/-! ## A387830.P14604608684300376046

`A163520(n+1)-(n+4)`
-/

namespace A387830.P14604608684300376046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163520 (n + 1) - (n + 4 : ℤ)

end

end A387830.P14604608684300376046

/-! ## A387830.P4901269270415442346

`A023444(A063655(n+1))`
-/

namespace A387830.P4901269270415442346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A063655 (n + 1)).toNat

end

end A387830.P4901269270415442346

/-! ## A387830.P8344596386340295764

`A029578(A376915(n+1))`
-/

namespace A387830.P8344596386340295764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A376915 (n + 1)).toNat

end

end A387830.P8344596386340295764

/-! ## A387830.P360142520854387176

`A023443(n)-A220114(n+1)`
-/

namespace A387830.P360142520854387176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A220114 (n + 1)

end

end A387830.P360142520854387176

/-! ## A387830.P935265201290552302

`A163520(n+1)%A020705(n)`
-/

namespace A387830.P935265201290552302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163520 (n + 1)) (A020705 n)

end

end A387830.P935265201290552302

/-! ## A387830.P14073394379406242299

`A063277(A262767(n+1))`
-/

namespace A387830.P14073394379406242299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (A262767 (n + 1)).toNat

end

end A387830.P14073394379406242299

/-! ## A387830.P9687123722527485166

`A254078(n+2)%A063655(n+1)`
-/

namespace A387830.P9687123722527485166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A063655 (n + 1))

end

end A387830.P9687123722527485166

/-! ## A387830.P15877949482303916889

`val(A034751(n+1), 3)`
-/

namespace A387830.P15877949482303916889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034751 (n + 1)).toNat 3

end

end A387830.P15877949482303916889

/-!
# A387840: Expansion of (1/x) * Series_Reversion( x*(1-x)^5/(1-x+x^2) ).

The programs for A387840, there is no canonical definition to state claims against.
-/

/-! ## A387840.P18117512959612348314

`A138993(A000108(n+1))-A322337(n+2)`
-/

namespace A387840.P18117512959612348314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138993 (A000108 (n + 1)).toNat - A322337 (n + 2)

end

end A387840.P18117512959612348314

/-!
# A387843: a(n) = Sum_{k=0..n} binomial(2*n,3*k).

The programs for A387843, the canonical program `A387843.P11767765782459454973` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387843 has offset 0).

The definition of A387843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387843.P17117435728289055226

`(4^n+2*cos(2*π*n/3))/3`
-/

namespace A387843.P17117435728289055226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℝ) + 2 * Real.cos (2 * Real.pi * (n : ℝ) / 3)) / 3

end

end A387843.P17117435728289055226

namespace A387843

/-- `(4^n+2*cos(2*π*n/3))/3` -/
def P17117435728289055226.Spec : Prop :=
  ∀ n, P17117435728289055226.a n = (A387843 n : ℝ)

end A387843

/-! ## A387843.P11767765782459454973

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387843

/-- `3*a(n-1)+3*a(n-2)+4*a(n-3)` -/
def P11767765782459454973.Spec : Prop :=
  ∀ n, (P11767765782459454973.a n : ℤ) = A387843 n

theorem P11767765782459454973.correct : P11767765782459454973.Spec := by
  intro n
  simp only [A387843]

end A387843

/-! ## A387843.P13312629509946111452

`ogf((-1+2x+x^2)/(-1+3x+3x^2+4x^3))`
-/

namespace A387843.P13312629509946111452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -3, -3, -4] n

end

end A387843.P13312629509946111452

namespace A387843

/-- `ogf((-1+2x+x^2)/(-1+3x+3x^2+4x^3))` -/
def P13312629509946111452.Spec : Prop :=
  ∀ n, P13312629509946111452.a n = A387843 n

end A387843

/-! ## A387843.P5873501233232343131

`A024493(2*n)`
-/

namespace A387843.P5873501233232343131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (2 * n)

end

end A387843.P5873501233232343131

namespace A387843

/-- `A024493(2*n)` -/
def P5873501233232343131.Spec : Prop :=
  ∀ n, P5873501233232343131.a n = A387843 n

end A387843

/-! ## A387843.P12816689393187962325

`Δ[record[A135258(n)]]`
-/

namespace A387843.P12816689393187962325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135258 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387843.P12816689393187962325

namespace A387843

/-- `Δ[record[A135258(n)]]` -/
def P12816689393187962325.Spec : Prop :=
  ∀ n, P12816689393187962325.a n = A387843 n

end A387843

/-! ## A387843.P2122109119340591193

`Δ[A131666(2*n)]`
-/

namespace A387843.P2122109119340591193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387843.P2122109119340591193

namespace A387843

/-- `Δ[A131666(2*n)]` -/
def P2122109119340591193.Spec : Prop :=
  ∀ n, P2122109119340591193.a n = A387843 n

end A387843

/-! ## A387843.P14213545531259347389

`A111927(2*n)+1`
-/

namespace A387843.P14213545531259347389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 (2 * n) + 1

end

end A387843.P14213545531259347389

namespace A387843

/-- `A111927(2*n)+1` -/
def P14213545531259347389.Spec : Prop :=
  ∀ n, P14213545531259347389.a n = A387843 n

end A387843

/-! ## A387843.P5233337895159506390

`A130707(Δ[n²])/2`
-/

namespace A387843.P5233337895159506390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A387843.P5233337895159506390

namespace A387843

/-- `A130707(Δ[n²])/2` -/
def P5233337895159506390.Spec : Prop :=
  ∀ n, P5233337895159506390.a n = (A387843 n : ℚ)

end A387843

/-! ## A387843.P6044867441922725171

`Δ[Δ[A139797(2*n)]]`
-/

namespace A387843.P6044867441922725171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387843.P6044867441922725171

namespace A387843

/-- `Δ[Δ[A139797(2*n)]]` -/
def P6044867441922725171.Spec : Prop :=
  ∀ n, P6044867441922725171.a n = A387843 n

end A387843

/-! ## A387843.P14471578968751883574

`Δ[Δ[A348405(2*n)]]`
-/

namespace A387843.P14471578968751883574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387843.P14471578968751883574

namespace A387843

/-- `Δ[Δ[A348405(2*n)]]` -/
def P14471578968751883574.Spec : Prop :=
  ∀ n, P14471578968751883574.a n = A387843 n

end A387843

/-! ## A387843.P2935937163657510814

`A130781(A004273(n))`
-/

namespace A387843.P2935937163657510814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (A004273 n).toNat

end

end A387843.P2935937163657510814

namespace A387843

/-- `A130781(A004273(n))` -/
def P2935937163657510814.Spec : Prop :=
  ∀ n, P2935937163657510814.a n = A387843 n

end A387843

/-! ## A387843.P7686876986066917020

`A138635(A016933(n))`
-/

namespace A387843.P7686876986066917020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (A016933 n).toNat

end

end A387843.P7686876986066917020

namespace A387843

/-- `A138635(A016933(n))` -/
def P7686876986066917020.Spec : Prop :=
  ∀ n, P7686876986066917020.a n = A387843 n

end A387843

/-! ## A387843.P10314808514595185505

`A136324(A047236(n+1))`
-/

namespace A387843.P10314808514595185505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 (A047236 (n + 1)).toNat

end

end A387843.P10314808514595185505

namespace A387843

/-- `A136324(A047236(n+1))` -/
def P10314808514595185505.Spec : Prop :=
  ∀ n, P10314808514595185505.a n = A387843 n

end A387843

/-! ## A387843.P16544883130762411420

`A079978(n)+A002450(n)`
-/

namespace A387843.P16544883130762411420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A002450 n

end

end A387843.P16544883130762411420

namespace A387843

/-- `A079978(n)+A002450(n)` -/
def P16544883130762411420.Spec : Prop :=
  ∀ n, P16544883130762411420.a n = A387843 n

end A387843

/-! ## A387843.P16678273310529220144

`A191597(n)+A057078(n)`
-/

namespace A387843.P16678273310529220144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191597 n + A057078 n

end

end A387843.P16678273310529220144

namespace A387843

/-- `A191597(n)+A057078(n)` -/
def P16678273310529220144.Spec : Prop :=
  ∀ n, P16678273310529220144.a n = A387843 n

end A387843

/-! ## A387843.P15025822049329704570

`A047849(n)-A011655(n)`
-/

namespace A387843.P15025822049329704570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n - A011655 n

end

end A387843.P15025822049329704570

namespace A387843

/-- `A047849(n)-A011655(n)` -/
def P15025822049329704570.Spec : Prop :=
  ∀ n, P15025822049329704570.a n = A387843 n

end A387843

/-! ## A387843.P8157452941881651491

`A163834(n)-A130196(n)`
-/

namespace A387843.P8157452941881651491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n - A130196 n

end

end A387843.P8157452941881651491

namespace A387843

/-- `A163834(n)-A130196(n)` -/
def P8157452941881651491.Spec : Prop :=
  ∀ n, P8157452941881651491.a n = A387843 n

end A387843

/-! ## A387843.P6349856049869395521

`A387868(n)-A191597(n)`
-/

namespace A387843.P6349856049869395521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387868 n - A191597 n

end

end A387843.P6349856049869395521

namespace A387843

/-- `A387868(n)-A191597(n)` -/
def P6349856049869395521.Spec : Prop :=
  ∀ n, P6349856049869395521.a n = A387843 n

end A387843

/-! ## A387843.P14586202795192016903

`A191597(n)-A049347(n+1)`
-/

namespace A387843.P14586202795192016903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191597 n - A049347 (n + 1)

end

end A387843.P14586202795192016903

namespace A387843

/-- `A191597(n)-A049347(n+1)` -/
def P14586202795192016903.Spec : Prop :=
  ∀ n, P14586202795192016903.a n = A387843 n

end A387843

/-! ## A387843.P11484360614027384977

`A079978(n)+A001045(2*n)`
-/

namespace A387843.P11484360614027384977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A001045 (2 * n)

end

end A387843.P11484360614027384977

namespace A387843

/-- `A079978(n)+A001045(2*n)` -/
def P11484360614027384977.Spec : Prop :=
  ∀ n, P11484360614027384977.a n = A387843 n

end A387843

/-!
# A387844: a(n) = Sum_{k=0..n} binomial(2*n,5*k).

The programs for A387844, the canonical program `A387844.P39258131773140473` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387844 has offset 0).

The definition of A387844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387844.P39258131773140473

`A139398(2*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387844

/-- `A139398(2*n)` -/
def P39258131773140473.Spec : Prop :=
  ∀ n, P39258131773140473.a n = A387844 n

theorem P39258131773140473.correct : P39258131773140473.Spec := by
  intro n
  simp only [A387844]

end A387844

/-! ## A387844.P2244131238630777710

`A133476(2*n+1)-A133476(2*n)`
-/

namespace A387844.P2244131238630777710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (2 * n + 1) - A133476 (2 * n)

end

end A387844.P2244131238630777710

namespace A387844

/-- `A133476(2*n+1)-A133476(2*n)` -/
def P2244131238630777710.Spec : Prop :=
  ∀ n, P2244131238630777710.a n = A387844 n

end A387844

/-! ## A387844.P10375090956080141907

`A139398(A004277(n))%A001576(n)`
-/

namespace A387844.P10375090956080141907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139398 (A004277 n).toNat) (A001576 n)

end

end A387844.P10375090956080141907

namespace A387844

/-- `A139398(A004277(n))%A001576(n)` -/
def P10375090956080141907.Spec : Prop :=
  ∀ n, P10375090956080141907.a n = A387844 n

end A387844

/-! ## A387844.P15264877311753265951

`A139398(A005843(n))^A178334(n)`
-/

namespace A387844.P15264877311753265951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139398 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A387844.P15264877311753265951

namespace A387844

/-- `A139398(A005843(n))^A178334(n)` -/
def P15264877311753265951.Spec : Prop :=
  ∀ n, P15264877311753265951.a n = (A387844 n : ℚ)

end A387844

/-! ## A387844.P13024277929858662108

`A139398(A005843(n))%A047729(n+3)`
-/

namespace A387844.P13024277929858662108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139398 (A005843 n).toNat) (A047729 (n + 3))

end

end A387844.P13024277929858662108

namespace A387844

/-- `A139398(A005843(n))%A047729(n+3)` -/
def P13024277929858662108.Spec : Prop :=
  ∀ n, P13024277929858662108.a n = A387844 n

end A387844

/-! ## A387844.P2877633871013422001

`A139398(A005843(n))%A387813(n)`
-/

namespace A387844.P2877633871013422001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139398 (A005843 n).toNat) (A387813 n)

end

end A387844.P2877633871013422001

namespace A387844

/-- `A139398(A005843(n))%A387813(n)` -/
def P2877633871013422001.Spec : Prop :=
  ∀ n, P2877633871013422001.a n = A387844 n

end A387844

/-!
# A387845: a(n) = Sum_{k=0..n} binomial(2*n,7*k).

The programs for A387845, there is no canonical definition to state claims against.
-/

/-! ## A387845.P924153776660385612

`A306852(2*n)`
-/

namespace A387845.P924153776660385612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (2 * n)

end

end A387845.P924153776660385612

/-! ## A387845.P3089588655326485018

`A105084(A222170(n))`
-/

namespace A387845.P3089588655326485018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105084 (A222170 n).toNat

end

end A387845.P3089588655326485018

/-! ## A387845.P13284268929643043224

`A373912(A083129(n+1))`
-/

namespace A387845.P13284268929643043224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373912 (A083129 (n + 1)).toNat

end

end A387845.P13284268929643043224

/-!
# A387846: a(n) = Sum_{k=0..n} binomial(3*n,4*k).

The programs for A387846, the canonical program `A387846.P6512522628485313688` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387846 has offset 0).

The definition of A387846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387846.P6512522628485313688

`4*a(n-1)+24*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=1, a(2)=16, a(3)=136`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387846

/-- `4*a(n-1)+24*a(n-2)+64*a(n-3)` -/
def P6512522628485313688.Spec : Prop :=
  ∀ n, (P6512522628485313688.a n : ℤ) = A387846 n

theorem P6512522628485313688.correct : P6512522628485313688.Spec := by
  intro n
  simp only [A387846]

end A387846

/-! ## A387846.P3707738060224777991

`A038503(3*n)`
-/

namespace A387846.P3707738060224777991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (3 * n)

end

end A387846.P3707738060224777991

namespace A387846

/-- `A038503(3*n)` -/
def P3707738060224777991.Spec : Prop :=
  ∀ n, P3707738060224777991.a n = A387846 n

end A387846

/-! ## A387846.P541120133710341122

`A137171(A017557(n))`
-/

namespace A387846.P541120133710341122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A017557 n).toNat

end

end A387846.P541120133710341122

namespace A387846

/-- `A137171(A017557(n))` -/
def P541120133710341122.Spec : Prop :=
  ∀ n, P541120133710341122.a n = A387846 n

end A387846

/-! ## A387846.P8920797340516067498

`A137171(A316320(n+1))`
-/

namespace A387846.P8920797340516067498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A316320 (n + 1)).toNat

end

end A387846.P8920797340516067498

namespace A387846

/-- `A137171(A316320(n+1))` -/
def P8920797340516067498.Spec : Prop :=
  ∀ n, P8920797340516067498.a n = A387846 n

end A387846

/-! ## A387846.P3325745676548638956

`A137171(A017605(n)-4)`
-/

namespace A387846.P3325745676548638956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A017605 n - 4).toNat

end

end A387846.P3325745676548638956

namespace A387846

/-- `A137171(A017605(n)-4)` -/
def P3325745676548638956.Spec : Prop :=
  ∀ n, P3325745676548638956.a n = A387846 n

end A387846

/-!
# A387847: a(n) = Sum_{k=0..n} binomial(3*n,5*k).

The programs for A387847, the canonical program `A387847.P7653341057243768813` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387847 has offset 0).

The definition of A387847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387847.P7653341057243768813

`A139398(3*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387847

/-- `A139398(3*n)` -/
def P7653341057243768813.Spec : Prop :=
  ∀ n, P7653341057243768813.a n = A387847 n

theorem P7653341057243768813.correct : P7653341057243768813.Spec := by
  intro n
  simp only [A387847]

end A387847

/-!
# A387848: a(n) = Sum_{k=0..n} binomial(4*n,5*k).

The programs for A387848, there is no canonical definition to state claims against.
-/

/-! ## A387848.P6379925533959263604

`A387844(2*n)`
-/

namespace A387848.P6379925533959263604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387844 (2 * n)

end

end A387848.P6379925533959263604

/-! ## A387848.P4280463061475450705

`A139398(4*n)`
-/

namespace A387848.P4280463061475450705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (4 * n)

end

end A387848.P4280463061475450705

/-! ## A387848.P10703507789873692551

`A387844(A005843(n))^A173778(n)`
-/

namespace A387848.P10703507789873692551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387844 (A005843 n).toNat : ℚ) ^ (A173778 n : ℤ)

end

end A387848.P10703507789873692551

/-!
# A387849: a(n) = Sum_{k=0..n} binomial(4*n,6*k).

The programs for A387849, there is no canonical definition to state claims against.
-/

/-! ## A387849.P17627307591199841327

`A377627(2*n)`
-/

namespace A387849.P17627307591199841327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377627 (2 * n)

end

end A387849.P17627307591199841327

/-! ## A387849.P10983899465891712843

`A094715(4*n)`
-/

namespace A387849.P10983899465891712843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094715 (4 * n)

end

end A387849.P10983899465891712843

/-! ## A387849.P4990525274443340999

`A306847(4*n)`
-/

namespace A387849.P4990525274443340999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (4 * n)

end

end A387849.P4990525274443340999

/-!
# A387850: a(n) = Sum_{k=0..n} binomial(5*n,6*k).

The programs for A387850, there is no canonical definition to state claims against.
-/

/-! ## A387850.P13354976628317632615

`A306847(5*n)`
-/

namespace A387850.P13354976628317632615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (5 * n)

end

end A387850.P13354976628317632615

/-!
# A387851: Largest Littlewood-Richardson coefficient of symmetric group S_n of degree n.

The programs for A387851, there is no canonical definition to state claims against.
-/

/-! ## A387851.P2543121869280779873

`round(root(A081164(n), 3))`
-/

namespace A387851.P2543121869280779873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081164 n : ℝ) ^ (1 / (3 : ℝ)))

end

end A387851.P2543121869280779873

/-!
# A387855: Minimum number of filled Cayley table cells for unique identification of a group of order n.

The programs for A387855, there is no canonical definition to state claims against.
-/

/-! ## A387855.P7913179753295430633

`∑{e}[A072994(n+1), #+1]`
-/

namespace A387855.P7913179753295430633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A387855.P7913179753295430633

/-! ## A387855.P15362730425235061458

`A080256(A072994(n+1))`
-/

namespace A387855.P15362730425235061458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (A072994 (n + 1)).toNat

end

end A387855.P15362730425235061458

/-! ## A387855.P4799375580238649145

`A056239(or(1, A072994(n+1)))`
-/

namespace A387855.P4799375580238649145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A072994 (n + 1))).toNat

end

end A387855.P4799375580238649145

/-! ## A387855.P2737236154835699236

`A137813(or(1, A072994(n+1)))`
-/

namespace A387855.P2737236154835699236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137813 (Int.lor 1 (A072994 (n + 1))).toNat

end

end A387855.P2737236154835699236

/-! ## A387855.P1708064280209027854

`A319856(or(1, A072994(n+1)))`
-/

namespace A387855.P1708064280209027854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (Int.lor 1 (A072994 (n + 1))).toNat

end

end A387855.P1708064280209027854

/-!
# A387858: Sum of squares of the multiplicities of pairwise distances among the vertices of a regular n-gon.

The programs for A387858, the canonical program `A387858.P204577345225276622` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387858 has offset 3).

The definition of A387858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387858.P204577345225276622

`A008670(A042948(3*n+4)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A387858

/-- `A008670(A042948(3*n+4)+1)` -/
def P204577345225276622.Spec : Prop :=
  ∀ n, P204577345225276622.a n = A387858 (n + 3)

theorem P204577345225276622.correct : P204577345225276622.Spec := by
  intro n
  simp only [A387858, Nat.add_sub_cancel]

end A387858

/-!
# A387859: Number of fundamentally different graceful labelings of the n-Lucas cube graph.

The programs for A387859, there is no canonical definition to state claims against.
-/

/-! ## A387859.P7767031735267956743

`A326245(A000217(n))+A144210(n)`
-/

namespace A387859.P7767031735267956743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326245 (A000217 n).toNat + A144210 n

end

end A387859.P7767031735267956743

/-!
# A387861: Number of black-white-balanced permutations of [n].

The programs for A387861, there is no canonical definition to state claims against.
-/

/-! ## A387861.P6937642675637470187

`A145894(A074148(n+1))`
-/

namespace A387861.P6937642675637470187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A074148 (n + 1)).toNat

end

end A387861.P6937642675637470187

/-! ## A387861.P8811625776020956121

`A145893(A080476(n+2))`
-/

namespace A387861.P8811625776020956121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A080476 (n + 2)).toNat

end

end A387861.P8811625776020956121

/-! ## A387861.P7938026019138609991

`A043096(A110710(n))*A353815(n+1)`
-/

namespace A387861.P7938026019138609991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A110710 n).toNat * A353815 (n + 1)

end

end A387861.P7938026019138609991

/-!
# A387863: Primes p for which there are at least two integers p < n < q, all of whose prime factors are less than q - p, where q is the next prime following p.

The programs for A387863, there is no canonical definition to state claims against.
-/

/-! ## A387863.P568513812249144037

`A000040(A387864(n+1))`
-/

namespace A387863.P568513812249144037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A387864 (n + 1)).toNat

end

end A387863.P568513812249144037

/-! ## A387863.P6068465670187281898

`∩[A049584(n+1), A333490(n+1)]`
-/

namespace A387863.P6068465670187281898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387863.P6068465670187281898

/-!
# A387864: Numbers r for which there are at least two integers strictly between prime(r) and prime(r+1), all of whose prime factors are less than prime(r+1) - prime(r).

The programs for A387864, there is no canonical definition to state claims against.
-/

/-! ## A387864.P12129150377249217233

`A000720(A387863(n+1))`
-/

namespace A387864.P12129150377249217233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A387863 (n + 1)).toNat

end

end A387864.P12129150377249217233

/-! ## A387864.P2130993821804161170

`A049084(or(1, A387863(n+1)))`
-/

namespace A387864.P2130993821804161170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A387863 (n + 1))).toNat

end

end A387864.P2130993821804161170

/-! ## A387864.P15039450448261108919

`∑{d}[A387863(n+1), A056239(#)]`
-/

namespace A387864.P15039450448261108919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A387864.P15039450448261108919

/-! ## A387864.P7439616265582060403

`A056239(A001511(2*n+3)*A387863(n+1))`
-/

namespace A387864.P7439616265582060403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001511 (2 * n + 3) * A387863 (n + 1)).toNat

end

end A387864.P7439616265582060403

/-!
# A387866: Numbers that can be split into two numbers whose products of digits are equal.

The programs for A387866, there is no canonical definition to state claims against.
-/

/-! ## A387866.P18260880802844691973

`∩[A068520(n+1), A160861(n+1)]`
-/

namespace A387866.P18260880802844691973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387866.P18260880802844691973

/-! ## A387866.P16141736493967938292

`A160861(A328617(n+1))`
-/

namespace A387866.P16141736493967938292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160861 (A328617 (n + 1)).toNat

end

end A387866.P16141736493967938292

/-! ## A387866.P5836619454359537198

`A160861(A351831(n+2))`
-/

namespace A387866.P5836619454359537198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160861 (A351831 (n + 2)).toNat

end

end A387866.P5836619454359537198

/-! ## A387866.P16571024198705539770

`A043285(A182933(n))*A160861(n+1)`
-/

namespace A387866.P16571024198705539770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (A182933 n).toNat * A160861 (n + 1)

end

end A387866.P16571024198705539770

/-! ## A387866.P508981216034192481

`A160861(n+1)/A295658(A143823(n))`
-/

namespace A387866.P508981216034192481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160861 (n + 1) : ℚ) / (A295658 (A143823 n).toNat : ℚ)

end

end A387866.P508981216034192481

/-!
# A387868: a(n) = Sum_{k=0..n} binomial(2*n+1,3*k).

The programs for A387868, the canonical program `A387868.P2846887750665386546` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387868 has offset 0).

The definition of A387868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387868.P2846887750665386546

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387868

/-- `3*a(n-1)+3*a(n-2)+4*a(n-3)` -/
def P2846887750665386546.Spec : Prop :=
  ∀ n, (P2846887750665386546.a n : ℤ) = A387868 n

theorem P2846887750665386546.correct : P2846887750665386546.Spec := by
  intro n
  simp only [A387868]

end A387868

/-! ## A387868.P311085365642838817

`ogf((-1+x-2x^2)/(-1+3x+3x^2+4x^3))`
-/

namespace A387868.P311085365642838817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -3, -3, -4] n

end

end A387868.P311085365642838817

namespace A387868

/-- `ogf((-1+x-2x^2)/(-1+3x+3x^2+4x^3))` -/
def P311085365642838817.Spec : Prop :=
  ∀ n, P311085365642838817.a n = A387868 n

end A387868

/-! ## A387868.P1214988638043185356

`A130781(2*n)`
-/

namespace A387868.P1214988638043185356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (2 * n)

end

end A387868.P1214988638043185356

namespace A387868

/-- `A130781(2*n)` -/
def P1214988638043185356.Spec : Prop :=
  ∀ n, P1214988638043185356.a n = A387868 n

end A387868

/-! ## A387868.P17075074743407651511

`A024493(Δ[n²])`
-/

namespace A387868.P17075074743407651511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387868.P17075074743407651511

namespace A387868

/-- `A024493(Δ[n²])` -/
def P17075074743407651511.Spec : Prop :=
  ∀ n, P17075074743407651511.a n = A387868 n

end A387868

/-! ## A387868.P13855171749295276219

`xor(1, A167617(2*n))`
-/

namespace A387868.P13855171749295276219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A167617 (2 * n))

end

end A387868.P13855171749295276219

namespace A387868

/-- `xor(1, A167617(2*n))` -/
def P13855171749295276219.Spec : Prop :=
  ∀ n, P13855171749295276219.a n = A387868 n

end A387868

/-! ## A387868.P10491944664861962288

`A111927(Δ[n²])+1`
-/

namespace A387868.P10491944664861962288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A387868.P10491944664861962288

namespace A387868

/-- `A111927(Δ[n²])+1` -/
def P10491944664861962288.Spec : Prop :=
  ∀ n, P10491944664861962288.a n = A387868 n

end A387868

/-! ## A387868.P13532648969391821476

`Δ[abs(A135258(2*n))]`
-/

namespace A387868.P13532648969391821476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135258 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387868.P13532648969391821476

namespace A387868

/-- `Δ[abs(A135258(2*n))]` -/
def P13532648969391821476.Spec : Prop :=
  ∀ n, P13532648969391821476.a n = A387868 n

end A387868

/-! ## A387868.P5139763162798904713

`Δ[A131666(2*n+1)]`
-/

namespace A387868.P5139763162798904713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387868.P5139763162798904713

namespace A387868

/-- `Δ[A131666(2*n+1)]` -/
def P5139763162798904713.Spec : Prop :=
  ∀ n, P5139763162798904713.a n = A387868 n

end A387868

/-! ## A387868.P4618947341353078762

`xor(1, A242563(2*n+1))`
-/

namespace A387868.P4618947341353078762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A242563 (2 * n + 1))

end

end A387868.P4618947341353078762

namespace A387868

/-- `xor(1, A242563(2*n+1))` -/
def P4618947341353078762.Spec : Prop :=
  ∀ n, P4618947341353078762.a n = A387868 n

end A387868

/-! ## A387868.P18309107780172063125

`A138635(A016969(n))`
-/

namespace A387868.P18309107780172063125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (A016969 n).toNat

end

end A387868.P18309107780172063125

namespace A387868

/-- `A138635(A016969(n))` -/
def P18309107780172063125.Spec : Prop :=
  ∀ n, P18309107780172063125.a n = A387868 n

end A387868

/-! ## A387868.P9560577850820455558

`A193652(A047268(n+1))`
-/

namespace A387868.P9560577850820455558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 (A047268 (n + 1)).toNat

end

end A387868.P9560577850820455558

namespace A387868

/-- `A193652(A047268(n+1))` -/
def P9560577850820455558.Spec : Prop :=
  ∀ n, P9560577850820455558.a n = A387868 n

end A387868

/-! ## A387868.P8366397466397192633

`A204418(n)+A020988(n)`
-/

namespace A387868.P8366397466397192633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + A020988 n

end

end A387868.P8366397466397192633

namespace A387868

/-- `A204418(n)+A020988(n)` -/
def P8366397466397192633.Spec : Prop :=
  ∀ n, P8366397466397192633.a n = A387868 n

end A387868

/-! ## A387868.P6333575342080897529

`A387843(n)+A191597(n)`
-/

namespace A387868.P6333575342080897529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387843 n + A191597 n

end

end A387868.P6333575342080897529

namespace A387868

/-- `A387843(n)+A191597(n)` -/
def P6333575342080897529.Spec : Prop :=
  ∀ n, P6333575342080897529.a n = A387868 n

end A387868

/-! ## A387868.P1247751403426481429

`A387843(n)+A024495(2*n)`
-/

namespace A387868.P1247751403426481429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387843 n + A024495 (2 * n)

end

end A387868.P1247751403426481429

namespace A387868

/-- `A387843(n)+A024495(2*n)` -/
def P1247751403426481429.Spec : Prop :=
  ∀ n, P1247751403426481429.a n = A387868 n

end A387868

/-! ## A387868.P4647481557042871240

`A000079(n)²-A131708(2*n)`
-/

namespace A387868.P4647481557042871240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A131708 (2 * n)

end

end A387868.P4647481557042871240

namespace A387868

/-- `A000079(n)²-A131708(2*n)` -/
def P4647481557042871240.Spec : Prop :=
  ∀ n, P4647481557042871240.a n = A387868 n

end A387868

/-! ## A387868.P9151468351617073037

`A049347(n)+A024495(2*n+1)`
-/

namespace A387868.P9151468351617073037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + A024495 (2 * n + 1)

end

end A387868.P9151468351617073037

namespace A387868

/-- `A049347(n)+A024495(2*n+1)` -/
def P9151468351617073037.Spec : Prop :=
  ∀ n, P9151468351617073037.a n = A387868 n

end A387868

/-! ## A387868.P6859663872145207166

`A282124(2*n)-A079978(n+2)`
-/

namespace A387868.P6859663872145207166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 (2 * n) - A079978 (n + 2)

end

end A387868.P6859663872145207166

namespace A387868

/-- `A282124(2*n)-A079978(n+2)` -/
def P6859663872145207166.Spec : Prop :=
  ∀ n, P6859663872145207166.a n = A387868 n

end A387868

/-! ## A387868.P15341540397778018418

`A024495(2*n)+A024493(2*n)`
-/

namespace A387868.P15341540397778018418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n) + A024493 (2 * n)

end

end A387868.P15341540397778018418

namespace A387868

/-- `A024495(2*n)+A024493(2*n)` -/
def P15341540397778018418.Spec : Prop :=
  ∀ n, P15341540397778018418.a n = A387868 n

end A387868

/-! ## A387868.P5305105817297956338

`A131708(2*n)+A086953(2*n)`
-/

namespace A387868.P5305105817297956338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (2 * n) + A086953 (2 * n)

end

end A387868.P5305105817297956338

namespace A387868

/-- `A131708(2*n)+A086953(2*n)` -/
def P5305105817297956338.Spec : Prop :=
  ∀ n, P5305105817297956338.a n = A387868 n

end A387868

/-! ## A387868.P2889544693626145203

`A135694(2*n)+A135574(2*n)`
-/

namespace A387868.P2889544693626145203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 (2 * n) + A135574 (2 * n)

end

end A387868.P2889544693626145203

namespace A387868

/-- `A135694(2*n)+A135574(2*n)` -/
def P2889544693626145203.Spec : Prop :=
  ∀ n, P2889544693626145203.a n = A387868 n

end A387868

/-!
# A387869: a(n) = Sum_{k=0..n} binomial(2*n+1,4*k).

The programs for A387869, the canonical program `A387869.P5959673116437551759` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387869 has offset 0).

The definition of A387869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387869.P5959673116437551759

`4*a(n-1)-4*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387869

/-- `4*a(n-1)-4*a(n-2)+16*a(n-3)` -/
def P5959673116437551759.Spec : Prop :=
  ∀ n, P5959673116437551759.a n = A387869 n

theorem P5959673116437551759.correct : P5959673116437551759.Spec := by
  intro n
  simp only [A387869]

end A387869

/-! ## A387869.P16748944676599156998

`2^(2*n-1)+(-1)^floor((n+1)/2)*2^(n-1)`
-/

namespace A387869.P16748944676599156998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) + (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A387869.P16748944676599156998

namespace A387869

/-- `2^(2*n-1)+(-1)^floor((n+1)/2)*2^(n-1)` -/
def P16748944676599156998.Spec : Prop :=
  ∀ n, P16748944676599156998.a n = (A387869 n : ℚ)

end A387869

/-! ## A387869.P8482917141615070785

`A038503(Δ[n²])`
-/

namespace A387869.P8482917141615070785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387869.P8482917141615070785

namespace A387869

/-- `A038503(Δ[n²])` -/
def P8482917141615070785.Spec : Prop :=
  ∀ n, P8482917141615070785.a n = A387869 n

end A387869

/-! ## A387869.P12475229756417312815

`A038518(Δ[n²])`
-/

namespace A387869.P12475229756417312815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387869.P12475229756417312815

namespace A387869

/-- `A038518(Δ[n²])` -/
def P12475229756417312815.Spec : Prop :=
  ∀ n, P12475229756417312815.a n = A387869 n

end A387869

/-! ## A387869.P8420899293429406465

`A137171(A004771(n))`
-/

namespace A387869.P8420899293429406465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A004771 n).toNat

end

end A387869.P8420899293429406465

namespace A387869

/-- `A137171(A004771(n))` -/
def P8420899293429406465.Spec : Prop :=
  ∀ n, P8420899293429406465.a n = A387869 n

end A387869

/-! ## A387869.P11515219317268407673

`A137173(A047541(n+1))`
-/

namespace A387869.P11515219317268407673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (A047541 (n + 1)).toNat

end

end A387869.P11515219317268407673

namespace A387869

/-- `A137173(A047541(n+1))` -/
def P11515219317268407673.Spec : Prop :=
  ∀ n, P11515219317268407673.a n = A387869 n

end A387869

/-! ## A387869.P10190532524484656703

`A137171(A133655(n+1))`
-/

namespace A387869.P10190532524484656703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A133655 (n + 1)).toNat

end

end A387869.P10190532524484656703

namespace A387869

/-- `A137171(A133655(n+1))` -/
def P10190532524484656703.Spec : Prop :=
  ∀ n, P10190532524484656703.a n = A387869 n

end A387869

/-!
# A387870: a(n) = Sum_{k=0..n} binomial(3*n+1,4*k).

The programs for A387870, the canonical program `A387870.P3699968840695008378` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387870 has offset 0).

The definition of A387870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387870.P3699968840695008378

`4*a(n-1)+24*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=2, a(2)=36`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387870

/-- `4*a(n-1)+24*a(n-2)+64*a(n-3)` -/
def P3699968840695008378.Spec : Prop :=
  ∀ n, (P3699968840695008378.a n : ℤ) = A387870 n

theorem P3699968840695008378.correct : P3699968840695008378.Spec := by
  intro n
  simp only [A387870]

end A387870

/-! ## A387870.P8530908761754020986

`2^(3*n-1)+2^((3*n-1)/2)*cos((3*n+1)*π/4)`
-/

namespace A387870.P8530908761754020986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ) : ℝ) + (2 : ℝ) ^ (((3 * n : ℤ) - 1 : ℚ) / 2 : ℝ) * Real.cos ((3 * n + 1 : ℝ) * Real.pi / 4)

end

end A387870.P8530908761754020986

namespace A387870

/-- `2^(3*n-1)+2^((3*n-1)/2)*cos((3*n+1)*π/4)` -/
def P8530908761754020986.Spec : Prop :=
  ∀ n, P8530908761754020986.a n = (A387870 n : ℝ)

end A387870

/-! ## A387870.P16115953553554246641

`A038503(3*n+1)`
-/

namespace A387870.P16115953553554246641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (3 * n + 1)

end

end A387870.P16115953553554246641

namespace A387870

/-- `A038503(3*n+1)` -/
def P16115953553554246641.Spec : Prop :=
  ∀ n, P16115953553554246641.a n = A387870 n

end A387870

/-! ## A387870.P6866630456040751979

`A137171(A017605(n))`
-/

namespace A387870.P6866630456040751979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A017605 n).toNat

end

end A387870.P6866630456040751979

namespace A387870

/-- `A137171(A017605(n))` -/
def P6866630456040751979.Spec : Prop :=
  ∀ n, P6866630456040751979.a n = A387870 n

end A387870

/-! ## A387870.P2181201722113608532

`record[A038503(A051340(3*n))]`
-/

namespace A387870.P2181201722113608532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (A051340 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387870.P2181201722113608532

namespace A387870

/-- `record[A038503(A051340(3*n))]` -/
def P2181201722113608532.Spec : Prop :=
  ∀ n, P2181201722113608532.a n = A387870 n

end A387870

/-!
# A387871: a(n) = Sum_{k=0..n} binomial(2*n+1,5*k).

The programs for A387871, the canonical program `A387871.P16244056214977471768` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387871 has offset 0).

The definition of A387871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387871.P16244056214977471768

`A139398(Δ[n²])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387871

/-- `A139398(Δ[n²])` -/
def P16244056214977471768.Spec : Prop :=
  ∀ n, P16244056214977471768.a n = A387871 n

theorem P16244056214977471768.correct : P16244056214977471768.Spec := by
  intro n
  simp only [A387871]

end A387871

/-! ## A387871.P447721686256553980

`A139761(2*n)+A139398(2*n)`
-/

namespace A387871.P447721686256553980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (2 * n) + A139398 (2 * n)

end

end A387871.P447721686256553980

namespace A387871

/-- `A139761(2*n)+A139398(2*n)` -/
def P447721686256553980.Spec : Prop :=
  ∀ n, P447721686256553980.a n = A387871 n

end A387871

/-! ## A387871.P5813009028612880635

`or(A139398(2*n+1), A270006(2*n))`
-/

namespace A387871.P5813009028612880635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139398 (2 * n + 1)) (A270006 (2 * n))

end

end A387871.P5813009028612880635

namespace A387871

/-- `or(A139398(2*n+1), A270006(2*n))` -/
def P5813009028612880635.Spec : Prop :=
  ∀ n, P5813009028612880635.a n = A387871 n

end A387871

/-! ## A387871.P4635219897133215869

`A139398(2*n+1)*A328578(2*n+1)`
-/

namespace A387871.P4635219897133215869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (2 * n + 1) * A328578 (2 * n + 1)

end

end A387871.P4635219897133215869

namespace A387871

/-- `A139398(2*n+1)*A328578(2*n+1)` -/
def P4635219897133215869.Spec : Prop :=
  ∀ n, P4635219897133215869.a n = A387871 n

end A387871

/-! ## A387871.P11512192955420529727

`A139398(2*n+1)+A127648(abs(2-C(n+3, 2)))`
-/

namespace A387871.P11512192955420529727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (2 * n + 1) + A127648 |2 - (Nat.choose (n + 3) 2 : ℤ)|.toNat

end

end A387871.P11512192955420529727

namespace A387871

/-- `A139398(2*n+1)+A127648(abs(2-C(n+3, 2)))` -/
def P11512192955420529727.Spec : Prop :=
  ∀ n, P11512192955420529727.a n = A387871 n

end A387871

/-! ## A387871.P4984744227128880820

`or(A127648(A275874(n+6)), A139398(2*n+1))`
-/

namespace A387871.P4984744227128880820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127648 (A275874 (n + 6)).toNat) (A139398 (2 * n + 1))

end

end A387871.P4984744227128880820

namespace A387871

/-- `or(A127648(A275874(n+6)), A139398(2*n+1))` -/
def P4984744227128880820.Spec : Prop :=
  ∀ n, P4984744227128880820.a n = A387871 n

end A387871

/-!
# A387872: a(n) = Sum_{k=0..n} binomial(3*n+1,5*k).

The programs for A387872, the canonical program `A387872.P4622119094112307466` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387872 has offset 0).

The definition of A387872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387872.P4622119094112307466

`A139398(3*n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387872

/-- `A139398(3*n+1)` -/
def P4622119094112307466.Spec : Prop :=
  ∀ n, P4622119094112307466.a n = A387872 n

theorem P4622119094112307466.correct : P4622119094112307466.Spec := by
  intro n
  simp only [A387872]

end A387872

/-!
# A387873: a(n) = Sum_{k=0..n} binomial(4*n+1,5*k).

The programs for A387873, there is no canonical definition to state claims against.
-/

/-! ## A387873.P9228093410126780630

`A387871(2*n)`
-/

namespace A387873.P9228093410126780630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387871 (2 * n)

end

end A387873.P9228093410126780630

/-! ## A387873.P8191310261654020718

`A139398(3*n+n+1)`
-/

namespace A387873.P8191310261654020718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n + (n + 1))

end

end A387873.P8191310261654020718

/-!
# A387874: a(n) = Sum_{k=0..n} binomial(2*n+1,6*k).

The programs for A387874, the canonical program `A387874.P13171271536536116590` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387874 has offset 0).

The definition of A387874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387874.P13171271536536116590

`A306847(Δ[n²])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A387874

/-- `A306847(Δ[n²])` -/
def P13171271536536116590.Spec : Prop :=
  ∀ n, P13171271536536116590.a n = A387874 n

theorem P13171271536536116590.correct : P13171271536536116590.Spec := by
  intro n
  simp only [A387874]

end A387874

/-! ## A387874.P18329874662336993593

`or(floor(1/(n+1)), A306847((n+1)²-n²))`
-/

namespace A387874.P18329874662336993593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A306847 ((n + 1) ^ 2 - n ^ 2))

end

end A387874.P18329874662336993593

namespace A387874

/-- `or(floor(1/(n+1)), A306847((n+1)²-n²))` -/
def P18329874662336993593.Spec : Prop :=
  ∀ n, P18329874662336993593.a n = A387874 n

end A387874

/-! ## A387874.P18118117240816935150

`A119336(2*n+1)-A119336(2*n)`
-/

namespace A387874.P18118117240816935150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 (2 * n + 1) - A119336 (2 * n)

end

end A387874.P18118117240816935150

namespace A387874

/-- `A119336(2*n+1)-A119336(2*n)` -/
def P18118117240816935150.Spec : Prop :=
  ∀ n, P18118117240816935150.a n = A387874 n

end A387874

/-! ## A387874.P11955734607015173453

`A024493(2*n+1)-A094715(2*n+1)`
-/

namespace A387874.P11955734607015173453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (2 * n + 1) - A094715 (2 * n + 1)

end

end A387874.P11955734607015173453

namespace A387874

/-- `A024493(2*n+1)-A094715(2*n+1)` -/
def P11955734607015173453.Spec : Prop :=
  ∀ n, P11955734607015173453.a n = A387874 n

end A387874

/-! ## A387874.P6991349945741782946

`A306847((n+1)²-n²)+A292251(2*(n+2))`
-/

namespace A387874.P6991349945741782946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 ((n + 1) ^ 2 - n ^ 2) + A292251 (2 * (n + 2))

end

end A387874.P6991349945741782946

namespace A387874

/-- `A306847((n+1)²-n²)+A292251(2*(n+2))` -/
def P6991349945741782946.Spec : Prop :=
  ∀ n, P6991349945741782946.a n = A387874 n

end A387874

/-!
# A387875: a(n) = Sum_{k=0..n} binomial(3*n+1,6*k).

The programs for A387875, the canonical program `A387875.P10629248055153435172` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387875 has offset 0).

The definition of A387875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387875.P10629248055153435172

`7*a(n-1)-19*a(n-2)+189*a(n-3)+216*a(n-4)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=211`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387875

/-- `7*a(n-1)-19*a(n-2)+189*a(n-3)+216*a(n-4)` -/
def P10629248055153435172.Spec : Prop :=
  ∀ n, P10629248055153435172.a n = A387875 n

theorem P10629248055153435172.correct : P10629248055153435172.Spec := by
  intro n
  simp only [A387875]

end A387875

/-! ## A387875.P7715158277410134955

`A306847(3*n+1)`
-/

namespace A387875.P7715158277410134955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (3 * n + 1)

end

end A387875.P7715158277410134955

namespace A387875

/-- `A306847(3*n+1)` -/
def P7715158277410134955.Spec : Prop :=
  ∀ n, P7715158277410134955.a n = A387875 n

end A387875

/-!
# A387876: a(n) = Sum_{k=0..n} binomial(4*n+1,6*k).

The programs for A387876, there is no canonical definition to state claims against.
-/

/-! ## A387876.P17818695704964556746

`A387874(2*n)`
-/

namespace A387876.P17818695704964556746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387874 (2 * n)

end

end A387876.P17818695704964556746

/-! ## A387876.P4415863631751497396

`A306847(3*n+n+1)`
-/

namespace A387876.P4415863631751497396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (3 * n + (n + 1))

end

end A387876.P4415863631751497396

/-!
# A387877: a(n) = Sum_{k=0..n} binomial(5*n+1,6*k).

The programs for A387877, there is no canonical definition to state claims against.
-/

/-! ## A387877.P18434705721638401795

`A306847(5*n+1)`
-/

namespace A387877.P18434705721638401795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (5 * n + 1)

end

end A387877.P18434705721638401795

/-!
# A387878: a(n) = Sum_{k=0..n} binomial(6*n+4,6*k).

The programs for A387878, there is no canonical definition to state claims against.
-/

/-! ## A387878.P15196055241931593304

`A387875(Δ[n²])`
-/

namespace A387878.P15196055241931593304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387878.P15196055241931593304

/-! ## A387878.P16484299960317546460

`A192356(3*(n+1))`
-/

namespace A387878.P16484299960317546460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192356 (3 * (n + 1))

end

end A387878.P16484299960317546460

/-! ## A387878.P11931830659624004115

`A377627(3*n+2)`
-/

namespace A387878.P11931830659624004115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377627 (3 * n + 2)

end

end A387878.P11931830659624004115

/-! ## A387878.P15702546537608962

`A094715(A016957(n))`
-/

namespace A387878.P15702546537608962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094715 (A016957 n).toNat

end

end A387878.P15702546537608962

/-! ## A387878.P5579404509436283908

`A306847(A006370(2*n+3)-6)`
-/

namespace A387878.P5579404509436283908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (A006370 (2 * n + 3) - 6).toNat

end

end A387878.P5579404509436283908

/-!
# A387879: Number of prime factors with multiplicity (bigomega) of the least common multiple of the prime indices of n.

The programs for A387879, there is no canonical definition to state claims against.
-/

/-! ## A387879.P3115674822516309473

`A001222(A290103(n+1))`
-/

namespace A387879.P3115674822516309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290103 (n + 1)).toNat

end

end A387879.P3115674822516309473

/-! ## A387879.P7121672994124158428

`∑{e}[A316431(2*(n+1)), #]`
-/

namespace A387879.P7121672994124158428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A387879.P7121672994124158428

/-! ## A387879.P11164985445172587806

`A001222(A316431(2*(n+1)))`
-/

namespace A387879.P11164985445172587806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A316431 (2 * (n + 1))).toNat

end

end A387879.P11164985445172587806

/-! ## A387879.P7241020888865528611

`A073093(A290103(2*(n+1)))-1`
-/

namespace A387879.P7241020888865528611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A290103 (2 * (n + 1))).toNat - 1

end

end A387879.P7241020888865528611

/-! ## A387879.P17057867734011926323

`A302242(n+1)-A302242(A327401(n+1))`
-/

namespace A387879.P17057867734011926323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) - A302242 (A327401 (n + 1)).toNat

end

end A387879.P17057867734011926323

/-! ## A387879.P13926801139839591232

`A341677(A000040(n+1)*A290103(n+1))`
-/

namespace A387879.P13926801139839591232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341677 (A000040 (n + 1) * A290103 (n + 1)).toNat

end

end A387879.P13926801139839591232

/-! ## A387879.P4547280613059791822

`A360616(A290103(n+1)*A290103(n+1))`
-/

namespace A387879.P4547280613059791822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (A290103 (n + 1) * A290103 (n + 1)).toNat

end

end A387879.P4547280613059791822

/-! ## A387879.P8400555032717697245

`A302242(A327389(n+1))`
-/

namespace A387879.P8400555032717697245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A327389 (n + 1)).toNat

end

end A387879.P8400555032717697245

/-!
# A387880: Triangle read by rows where T(n,k) is the number of subdiagonal multisets summing to n (or reversed partitions of n) with maximum k.

The programs for A387880, there is no canonical definition to state claims against.
-/

/-! ## A387880.P257763222078272509

`A362370(n)+A118685(A007318(2*n))`
-/

namespace A387880.P257763222078272509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362370 n + A118685 (A007318 (2 * n)).toNat

end

end A387880.P257763222078272509

/-! ## A387880.P15337530270990446772

`A362370(n)*A362414(A129012(n))`
-/

namespace A387880.P15337530270990446772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362370 n * A362414 (A129012 n).toNat

end

end A387880.P15337530270990446772

/-! ## A387880.P14158403083888855927

`A362370(n)^A260876(A260876(n))`
-/

namespace A387880.P14158403083888855927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362370 n : ℚ) ^ (A260876 (A260876 n).toNat : ℤ)

end

end A387880.P14158403083888855927

/-! ## A387880.P5810440421267450178

`A362370(n)+A000007(A001083(n+1))`
-/

namespace A387880.P5810440421267450178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362370 n + A000007 (A001083 (n + 1)).toNat

end

end A387880.P5810440421267450178

/-! ## A387880.P4806757624509408858

`A000035(A195316(n+1))*A362370(n)`
-/

namespace A387880.P4806757624509408858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195316 (n + 1)).toNat * A362370 n

end

end A387880.P4806757624509408858

/-!
# A387881: Numbers whose prime indices are subdiagonal.

The programs for A387881, there is no canonical definition to state claims against.
-/

/-! ## A387881.P4607933904920200842

`eq[A001222(n+1), A065770(n+1)]+1`
-/

namespace A387881.P4607933904920200842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A387881.P4607933904920200842

/-! ## A387881.P13240521825376803385

`filter[A325795(n+1), A331281(#)]`
-/

namespace A387881.P13240521825376803385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A387881.P13240521825376803385

/-! ## A387881.P15305673037325426972

`filter[A325796(n+1), A331281(#)]`
-/

namespace A387881.P15305673037325426972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A387881.P15305673037325426972

/-!
# A387883: a(n) is the number of regions into which the plane is divided by n^2 circles of radius 1, the centers of which are located at the nodes of a square lattice n X n.

The programs for A387883, the canonical program `A387883.P10055298116302213478` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387883 has offset 0).

The definition of A387883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387883.P10055298116302213478

`A374584(A004274(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387883

/-- `A374584(A004274(n+1))` -/
def P10055298116302213478.Spec : Prop :=
  ∀ n, P10055298116302213478.a n = A387883 n

theorem P10055298116302213478.correct : P10055298116302213478.Spec := by
  intro n
  simp only [A387883]

end A387883

/-! ## A387883.P4287915064635855484

`A374584(A004280(n+1))`
-/

namespace A387883.P4287915064635855484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374584 (A004280 (n + 1)).toNat

end

end A387883.P4287915064635855484

namespace A387883

/-- `A374584(A004280(n+1))` -/
def P4287915064635855484.Spec : Prop :=
  ∀ n, P4287915064635855484.a n = A387883 n

end A387883

/-! ## A387883.P18434724045342866837

`A274979(A004280(n+1))-A165900(n)`
-/

namespace A387883.P18434724045342866837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (A004280 (n + 1)).toNat - A165900 n

end

end A387883.P18434724045342866837

namespace A387883

/-- `A274979(A004280(n+1))-A165900(n)` -/
def P18434724045342866837.Spec : Prop :=
  ∀ n, P18434724045342866837.a n = A387883 n

end A387883

/-!
# A387885: Product of smaller and larger term of n-th psi-amicable pair, sorted by the smaller members from A323329.

The programs for A387885, there is no canonical definition to state claims against.
-/

/-! ## A387885.P16158111540005585268

`A323329(n+1)*A323330(n+1)`
-/

namespace A387885.P16158111540005585268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323329 (n + 1) * A323330 (n + 1)

end

end A387885.P16158111540005585268

/-! ## A387885.P12688225910407917182

`A383943(n+1)*A389098(n+1)`
-/

namespace A387885.P12688225910407917182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383943 (n + 1) * A389098 (n + 1)

end

end A387885.P12688225910407917182

/-! ## A387885.P8609758548726493708

`(A387641(n+1)-A323329(n+1))*A323329(n+1)`
-/

namespace A387885.P8609758548726493708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A387641 (n + 1) - A323329 (n + 1)) * A323329 (n + 1)

end

end A387885.P8609758548726493708

/-! ## A387885.P3395476286764795176

`(A387641(n+1)-A323330(n+1))*A323330(n+1)`
-/

namespace A387885.P3395476286764795176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A387641 (n + 1) - A323330 (n + 1)) * A323330 (n + 1)

end

end A387885.P3395476286764795176

/-! ## A387885.P11867219152413430521

`(A387643(n+1)+A323329(n+1))*A323329(n+1)`
-/

namespace A387885.P11867219152413430521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A387643 (n + 1) + A323329 (n + 1)) * A323329 (n + 1)

end

end A387885.P11867219152413430521

/-!
# A387892: Psi-deficient numbers: numbers k such that psi(k) < 2*k.

The programs for A387892, the canonical program `A387892.P11437669347664042803` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387892 has offset 1).

The definition of A387892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387892.P18029252763241036829

`eq[0, A341620(A007947(n+1))]+1`
-/

namespace A387892.P18029252763241036829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387892.P18029252763241036829

namespace A387892

/-- `eq[0, A341620(A007947(n+1))]+1` -/
def P18029252763241036829.Spec : Prop :=
  ∀ n, (P18029252763241036829.a n : ℤ) = A387892 (n + 1)

end A387892

/-! ## A387892.P11437669347664042803

`lt[A306927(n+1), n+1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A387892

/-- `lt[A306927(n+1), n+1]+1` -/
def P11437669347664042803.Spec : Prop :=
  ∀ n, (P11437669347664042803.a n : ℤ) = A387892 (n + 1)

theorem P11437669347664042803.correct : P11437669347664042803.Spec := by
  intro n
  simp only [A387892, Nat.add_sub_cancel]

end A387892

/-! ## A387892.P6871973847440014766

`lt[A001615(n+1), 2*(n+1)]+1`
-/

namespace A387892.P6871973847440014766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387892.P6871973847440014766

namespace A387892

/-- `lt[A001615(n+1), 2*(n+1)]+1` -/
def P6871973847440014766.Spec : Prop :=
  ∀ n, (P6871973847440014766.a n : ℤ) = A387892 (n + 1)

end A387892

/-! ## A387892.P5414769756752266049

`lt[A001615(A028310(n)), A028310(2*n)]`
-/

namespace A387892.P5414769756752266049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387892.P5414769756752266049

namespace A387892

/-- `lt[A001615(A028310(n)), A028310(2*n)]` -/
def P5414769756752266049.Spec : Prop :=
  ∀ n, (P5414769756752266049.a n : ℤ) = A387892 (n + 1)

end A387892

/-! ## A387892.P10760082683554268499

`filter[A357873(n+1), A097325(#)]`
-/

namespace A387892.P10760082683554268499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A387892.P10760082683554268499

namespace A387892

/-- `filter[A357873(n+1), A097325(#)]` -/
def P10760082683554268499.Spec : Prop :=
  ∀ n, P10760082683554268499.a n = A387892 (n + 1)

end A387892

/-!
# A387893: Psi-abundant numbers: numbers k such that psi(k) > 2*k.

The programs for A387893, the canonical program `A387893.P4630578512810266503` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387893 has offset 1).

The definition of A387893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387893.P16656899653084019030

`lt[A004273(n+2), A001615(n+1)]+1`
-/

namespace A387893.P16656899653084019030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387893.P16656899653084019030

namespace A387893

/-- `lt[A004273(n+2), A001615(n+1)]+1` -/
def P16656899653084019030.Spec : Prop :=
  ∀ n, (P16656899653084019030.a n : ℤ) = A387893 (n + 1)

end A387893

/-! ## A387893.P8836359171937175929

`lt[A115419(n+1), A001615(A028310(n))]`
-/

namespace A387893.P8836359171937175929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387893.P8836359171937175929

namespace A387893

/-- `lt[A115419(n+1), A001615(A028310(n))]` -/
def P8836359171937175929.Spec : Prop :=
  ∀ n, (P8836359171937175929.a n : ℤ) = A387893 (n + 1)

end A387893

/-! ## A387893.P4630578512810266503

`A014681(lt[A014681(n), A306927(n+1)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A387893

/-- `A014681(lt[A014681(n), A306927(n+1)])` -/
def P4630578512810266503.Spec : Prop :=
  ∀ n, P4630578512810266503.a n = A387893 (n + 1)

theorem P4630578512810266503.correct : P4630578512810266503.Spec := by
  intro n
  simp only [A387893, Nat.add_sub_cancel]

end A387893

/-! ## A387893.P2812413619217879167

`A014681(lt[A005818(n+1), A001615(n+1)])`
-/

namespace A387893.P2812413619217879167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387893.P2812413619217879167

namespace A387893

/-- `A014681(lt[A005818(n+1), A001615(n+1)])` -/
def P2812413619217879167.Spec : Prop :=
  ∀ n, P2812413619217879167.a n = A387893 (n + 1)

end A387893

/-! ## A387893.P17734426711935563518

`lt[n+1, A014682(A306927(n+1)+1+n-A000089(n+1))]+1`
-/

namespace A387893.P17734426711935563518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A306927 (n + 1) + 1 + (n : ℤ) - A000089 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387893.P17734426711935563518

namespace A387893

/-- `lt[n+1, A014682(A306927(n+1)+1+n-A000089(n+1))]+1` -/
def P17734426711935563518.Spec : Prop :=
  ∀ n, (P17734426711935563518.a n : ℤ) = A387893 (n + 1)

end A387893

/-! ## A387893.P5901039505433283488

`lt[A028310(2*(n+1)), A001615(A028310(n))]`
-/

namespace A387893.P5901039505433283488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387893.P5901039505433283488

namespace A387893

/-- `lt[A028310(2*(n+1)), A001615(A028310(n))]` -/
def P5901039505433283488.Spec : Prop :=
  ∀ n, (P5901039505433283488.a n : ℤ) = A387893 (n + 1)

end A387893

/-! ## A387893.P6881343128606648144

`A014681(lt[A014681(2*(n+2)), A001615(n+1)])`
-/

namespace A387893.P6881343128606648144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387893.P6881343128606648144

namespace A387893

/-- `A014681(lt[A014681(2*(n+2)), A001615(n+1)])` -/
def P6881343128606648144.Spec : Prop :=
  ∀ n, P6881343128606648144.a n = A387893 (n + 1)

end A387893

