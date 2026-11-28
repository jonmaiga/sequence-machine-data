import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
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
# A402002: Number of free n-celled polyominoes that do not contain a copy of the quasi-polyomino {(0,0),(0,1),(1,1),(2,0)} (up to translations, rotations, and reflections).

The programs for A402002, there is no canonical definition to state claims against.
-/

/-! ## A402002.P11448642056702048925

`A297571(A034872(n+1))`
-/

namespace A402002.P11448642056702048925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (A034872 (n + 1)).toNat

end

end A402002.P11448642056702048925

/-! ## A402002.P11685644654741024661

`A051889(A355040(n+1))`
-/

namespace A402002.P11685644654741024661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A355040 (n + 1)).toNat

end

end A402002.P11685644654741024661

/-! ## A402002.P9232812576261802427

`A112325(A372375(n+1))`
-/

namespace A402002.P9232812576261802427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A372375 (n + 1)).toNat

end

end A402002.P9232812576261802427

/-! ## A402002.P17963490333226449373

`A292050(A309331(n+1))`
-/

namespace A402002.P17963490333226449373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A309331 (n + 1)).toNat

end

end A402002.P17963490333226449373

/-!
# A402006: Pythagorean primes p for which the legs u and v of the primitive Pythagorean triangle with hypotenuse p give another Pythagorean prime q = (p^4 + (u+v)^4)/2.

The programs for A402006, there is no canonical definition to state claims against.
-/

/-! ## A402006.P9834218083856765144

`∩[A053184(n+1), A308416(n+1)]`
-/

namespace A402006.P9834218083856765144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402006.P9834218083856765144

/-!
# A402007: Half the sum of the fourth powers of the hypotenuse and the sum of the legs: a(n) = (p^4 + (u+v)^4)/2, where u and v are the legs of the primitive Pythagorean triangle with hypotenuse p = A002144(n).

The programs for A402007, there is no canonical definition to state claims against.
-/

/-! ## A402007.P9864975676671443476

`2*A002144(n+1)²*A401741(n+1)-A400364(n+1)`
-/

namespace A402007.P9864975676671443476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002144 (n + 1) ^ 2 * A401741 (n + 1) - A400364 (n + 1)

end

end A402007.P9864975676671443476

/-! ## A402007.P1334167900002644875

`(A002144(n+1)^4+(A002365(n+1)+A002366(n+1))^4)/2`
-/

namespace A402007.P1334167900002644875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) ^ 4 + (A002365 (n + 1) + A002366 (n + 1)) ^ 4 : ℚ) / 2

end

end A402007.P1334167900002644875

/-! ## A402007.P5979615967976735276

`A402008(n+1)/A002144(n+1)`
-/

namespace A402007.P5979615967976735276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A402008 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A402007.P5979615967976735276

/-! ## A402007.P8421171242417683736

`A400364(n+1)*A402008(n+1)/A400365(n+1)`
-/

namespace A402007.P8421171242417683736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400364 (n + 1) * A402008 (n + 1) : ℚ) / (A400365 (n + 1) : ℚ)

end

end A402007.P8421171242417683736

/-!
# A402008: Square roots of the central entries in a six-square 3 X 3 magic-square construction from Pythagorean primes using fourth powers of the hypotenuse and the sum of the legs.

The programs for A402008, there is no canonical definition to state claims against.
-/

/-! ## A402008.P4082511398154685672

`A002144(n+1)*A402007(n+1)`
-/

namespace A402008.P4082511398154685672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A402007 (n + 1)

end

end A402008.P4082511398154685672

/-! ## A402008.P16888074241898150661

`A002313(n+2)*A402007(n+1)`
-/

namespace A402008.P16888074241898150661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A402007 (n + 1)

end

end A402008.P16888074241898150661

/-!
# A402009: A multidimensional generalization of the city building sequence A400000, giving the height of buildings located at (x_1, ..., x_k, 0, 0, ...) for partitions (x_1, ..., x_k) in the order given by A080577.

The programs for A402009, there is no canonical definition to state claims against.
-/

/-! ## A402009.P17946832734452529202

`A000120(A059902(n))`
-/

namespace A402009.P17946832734452529202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059902 n).toNat

end

end A402009.P17946832734452529202

/-! ## A402009.P13910429985670107190

`A058061(A131801(n))`
-/

namespace A402009.P13910429985670107190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A131801 n).toNat

end

end A402009.P13910429985670107190

/-! ## A402009.P16984117680776568575

`A193929(A293362(n))`
-/

namespace A402009.P16984117680776568575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A293362 n).toNat

end

end A402009.P16984117680776568575

/-! ## A402009.P6327784990466589881

`A293433(A032251(n))`
-/

namespace A402009.P6327784990466589881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293433 (A032251 n).toNat

end

end A402009.P6327784990466589881

/-!
# A402010: Array read by antidiagonals: the n-th row gives the diagonal elements of the n-dimensional analog of the city building sequence A400000, divided by n.

The programs for A402010, there is no canonical definition to state claims against.
-/

/-! ## A402010.P18119986681029351878

`A124768(A059297(n+1))`
-/

namespace A402010.P18119986681029351878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A059297 (n + 1)).toNat

end

end A402010.P18119986681029351878

/-! ## A402010.P12684015794439367907

`A375039(A089460(n))`
-/

namespace A402010.P12684015794439367907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375039 (A089460 n).toNat

end

end A402010.P12684015794439367907

/-! ## A402010.P5980173130220920766

`A363879(A118022(n+1))`
-/

namespace A402010.P5980173130220920766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363879 (A118022 (n + 1)).toNat

end

end A402010.P5980173130220920766

/-! ## A402010.P10169769965965992522

`A287170(A348566(n+1))`
-/

namespace A402010.P10169769965965992522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A348566 (n + 1)).toNat

end

end A402010.P10169769965965992522

/-! ## A402010.P13974324483838193921

`A374470(A212267(n+2))`
-/

namespace A402010.P13974324483838193921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374470 (A212267 (n + 2)).toNat

end

end A402010.P13974324483838193921

/-!
# A402032: Row sums of the triangle A402031.

The programs for A402032, there is no canonical definition to state claims against.
-/

/-! ## A402032.P1057148386501588228

`A247987(A052986(n))`
-/

namespace A402032.P1057148386501588228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (A052986 n).toNat

end

end A402032.P1057148386501588228

/-!
# A402041: Numerators of the convergents of A402040.

The programs for A402041, there is no canonical definition to state claims against.
-/

/-! ## A402041.P17563044315234435528

`2*A158787(a(n-1))` with `a(0)=1`
-/

namespace A402041.P17563044315234435528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A158787 (a (n - 1)).toNat

end

end A402041.P17563044315234435528

/-!
# A402042: Denominators of the convergents of A402040.

The programs for A402042, there is no canonical definition to state claims against.
-/

/-! ## A402042.P17705669073554567997

`A373068(n^3)+n`
-/

namespace A402042.P17705669073554567997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373068 (n ^ 3) + (n : ℤ)

end

end A402042.P17705669073554567997

/-!
# A402051: Numbers k such that d_3(k) is not a 3-smooth number, where d_3 = A007425 is the 3rd Piltz function.

The programs for A402051, the canonical program `A402051.P8690979763279679617` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402051 has offset 1).

The definition of A402051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402051.P8568261659588940644

`∪[A176297(n+1), A402053(n+1)]`
-/

namespace A402051.P8568261659588940644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402051.P8568261659588940644

namespace A402051

/-- `∪[A176297(n+1), A402053(n+1)]` -/
def P8568261659588940644.Spec : Prop :=
  ∀ n, (P8568261659588940644.a n : ℤ) = A402051 (n + 1)

end A402051

/-! ## A402051.P8690979763279679617

`∪[A360723(n+1), A366761(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A402051

/-- `∪[A360723(n+1), A366761(n+1)]` -/
def P8690979763279679617.Spec : Prop :=
  ∀ n, (P8690979763279679617.a n : ℤ) = A402051 (n + 1)

theorem P8690979763279679617.correct : P8690979763279679617.Spec := by
  intro n
  simp only [A402051, Nat.add_sub_cancel]

end A402051

/-! ## A402051.P12957496168148180194

`∪[A366761(n+1), A402053(n+1)]`
-/

namespace A402051.P12957496168148180194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402051.P12957496168148180194

namespace A402051

/-- `∪[A366761(n+1), A402053(n+1)]` -/
def P12957496168148180194.Spec : Prop :=
  ∀ n, (P12957496168148180194.a n : ℤ) = A402051 (n + 1)

end A402051

/-!
# A402052: Numbers k such that d_3(k) is not a 5-smooth number, where d_3 = A007425 is the 3rd Piltz function.

The programs for A402052, there is no canonical definition to state claims against.
-/

/-! ## A402052.P3772136737729375737

`∩[A122616(n+1), A270263(n+1)]`
-/

namespace A402052.P3772136737729375737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402052.P3772136737729375737

/-! ## A402052.P8659831860646346683

`∩[A270263(n+1), A339840(n+1)]`
-/

namespace A402052.P8659831860646346683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402052.P8659831860646346683

/-!
# A402055: Numbers k such that gcd(d_3(k), 6) = 1, where d_3 = A007425 is the 3rd Piltz function.

The programs for A402055, there is no canonical definition to state claims against.
-/

/-! ## A402055.P15816050977666961903

`A402056(n+1)^3`
-/

namespace A402055.P15816050977666961903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402056 (n + 1) ^ 3

end

end A402055.P15816050977666961903

/-! ## A402055.P11057720365738455469

`A000578(A402056(n+1))`
-/

namespace A402055.P11057720365738455469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A402056 (n + 1)).toNat

end

end A402055.P11057720365738455469

/-! ## A402055.P14006433178440687980

`∩[A000578(n), A401486(n+1)]`
-/

namespace A402055.P14006433178440687980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402055.P14006433178440687980

/-! ## A402055.P17569323546919842383

`∩[A109900(n), A401486(n+1)]`
-/

namespace A402055.P17569323546919842383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402055.P17569323546919842383

/-! ## A402055.P909642940739861227

`∩[A116978(n+1), A401486(n+1)]`
-/

namespace A402055.P909642940739861227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402055.P909642940739861227

/-!
# A402056: Numbers k such that gcd(d_3(k^3), 6) = 1, where d_3 = A007425 is the 3rd Piltz function.

The programs for A402056, there is no canonical definition to state claims against.
-/

/-! ## A402056.P15463721114147084324

`A402055(n+1)^(1/3)`
-/

namespace A402056.P15463721114147084324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A402055 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A402056.P15463721114147084324

/-! ## A402056.P16533125128083801070

`filter[A353833(n+1), A401917(#)]`
-/

namespace A402056.P16533125128083801070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A402056.P16533125128083801070

/-! ## A402056.P15931560964517222140

`filter[A389482(n+1), A401917(#)]`
-/

namespace A402056.P15931560964517222140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A402056.P15931560964517222140

/-!
# A402057: Numbers k such that gcd(d_3(k), 30) = 1, where d_3 = A007425 is the 3rd Piltz function.

The programs for A402057, there is no canonical definition to state claims against.
-/

/-! ## A402057.P11529897248536786842

`A402058(n+1)^3`
-/

namespace A402057.P11529897248536786842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402058 (n + 1) ^ 3

end

end A402057.P11529897248536786842

/-! ## A402057.P14810810544848737431

`A000578(A402058(n+1))`
-/

namespace A402057.P14810810544848737431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A402058 (n + 1)).toNat

end

end A402057.P14810810544848737431

/-!
# A402058: Numbers k such that gcd(d_3(k^3), 30) = 1, where d_3 = A007425 is the 3rd Piltz function.

The programs for A402058, there is no canonical definition to state claims against.
-/

/-! ## A402058.P8033185798208718135

`A402057(n+1)^(1/3)`
-/

namespace A402058.P8033185798208718135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A402057 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A402058.P8033185798208718135

/-! ## A402058.P8984434169671637460

`A382895((n+1)^5)`
-/

namespace A402058.P8984434169671637460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382895 ((n + 1) ^ 5)

end

end A402058.P8984434169671637460

/-!
# A402059: Numbers k such that gcd(d_4(k), 6) = 1, where d_4 = A007426 is the 4th Piltz function.

The programs for A402059, there is no canonical definition to state claims against.
-/

/-! ## A402059.P8391989763479845640

`A402060(n+1)^4`
-/

namespace A402059.P8391989763479845640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402060 (n + 1) ^ 4

end

end A402059.P8391989763479845640

/-! ## A402059.P16496227045946718065

`A057521(A268335(n+1)²)²`
-/

namespace A402059.P16496227045946718065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A268335 (n + 1) ^ 2).toNat ^ 2

end

end A402059.P16496227045946718065

/-! ## A402059.P10276800386042339276

`A000290(A374458(n+1))`
-/

namespace A402059.P10276800386042339276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A374458 (n + 1)).toNat

end

end A402059.P10276800386042339276

/-! ## A402059.P17551519591804899085

`A053143(A268335(n+1)²)²`
-/

namespace A402059.P17551519591804899085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A268335 (n + 1) ^ 2).toNat ^ 2

end

end A402059.P17551519591804899085

/-! ## A402059.P15993973263887198785

`A003557(A367406(n+1))²²`
-/

namespace A402059.P15993973263887198785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (A367406 (n + 1)).toNat ^ 2) ^ 2

end

end A402059.P15993973263887198785

/-! ## A402059.P15635345254685277754

`A350388(A268335(n+1)²)²`
-/

namespace A402059.P15635345254685277754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A268335 (n + 1) ^ 2).toNat ^ 2

end

end A402059.P15635345254685277754

/-! ## A402059.P16412486855905013520

`A383764(A268335(n+1)²)²`
-/

namespace A402059.P16412486855905013520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383764 (A268335 (n + 1) ^ 2).toNat ^ 2

end

end A402059.P16412486855905013520

/-! ## A402059.P13885365307672827460

`A384052(A268335(n+1)²)²`
-/

namespace A402059.P13885365307672827460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (A268335 (n + 1) ^ 2).toNat ^ 2

end

end A402059.P13885365307672827460

/-! ## A402059.P16737062915361518804

`A384250(A268335(n+1)²)²`
-/

namespace A402059.P16737062915361518804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384250 (A268335 (n + 1) ^ 2).toNat ^ 2

end

end A402059.P16737062915361518804

/-!
# A402060: Numbers k such that gcd(d_4(k^4), 6) = 1, where d_4 = A007426 is the 4th Piltz function.

The programs for A402060, there is no canonical definition to state claims against.
-/

/-! ## A402060.P6408363107378647100

`A402059(n+1)^(1/4)`
-/

namespace A402060.P6408363107378647100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A402059 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A402060.P6408363107378647100

/-! ## A402060.P11507595774395920131

`sqrt(sqrt(A402059(n+1)))`
-/

namespace A402060.P11507595774395920131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A402059 (n + 1) : ℝ))

end

end A402060.P11507595774395920131

/-!
# A402062: Expansion of g.f. (1 + x)*(1 + x^2)/((1 - x)*(1 - 2*x^2)).

The programs for A402062, the canonical program `A402062.P8818315172926567454` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402062 has offset 0).

The definition of A402062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3)/(1-x-2x^2+2x^3))` (program `A402062.P8818315172926567454`, by `A402062.P8818315172926567454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A402062.P8818315172926567454

`ogf((1+x+x^2+x^3)/(1-x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A402062

/-- `ogf((1+x+x^2+x^3)/(1-x-2x^2+2x^3))` -/
def P8818315172926567454.Spec : Prop :=
  ∀ n, P8818315172926567454.a n = A402062 n

theorem P8818315172926567454.correct : P8818315172926567454.Spec := by
  intro n
  simp only [A402062]

end A402062

/-! ## A402062.P1397682404706914368

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A402062.P1397682404706914368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 8] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A402062.P1397682404706914368

namespace A402062

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P1397682404706914368.Spec : Prop :=
  ∀ n, P1397682404706914368.a n = A402062 n

end A402062

/-! ## A402062.P9561147050225341274

`∑[ogf((1+x+x^2+x^3)/(1-2x^2))]`
-/

namespace A402062.P9561147050225341274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402062.P9561147050225341274

namespace A402062

/-- `∑[ogf((1+x+x^2+x^3)/(1-2x^2))]` -/
def P9561147050225341274.Spec : Prop :=
  ∀ n, P9561147050225341274.a n = A402062 n

end A402062

/-! ## A402062.P3058804878429849317

`2*(a(n-2)+2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A402062.P3058804878429849317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 2) + 2)

end

end A402062.P3058804878429849317

namespace A402062

/-- `2*(a(n-2)+2)` -/
def P3058804878429849317.Spec : Prop :=
  ∀ n, (P3058804878429849317.a n : ℤ) = A402062 n

end A402062

/-! ## A402062.P4014752981290917297

`∑[2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A402062.P4014752981290917297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402062.P4014752981290917297

namespace A402062

/-- `∑[2*a(n-2)]` -/
def P4014752981290917297.Spec : Prop :=
  ∀ n, (P4014752981290917297.a n : ℤ) = A402062 n

end A402062

/-! ## A402062.P3778683553786280769

`a(n-2)+a(n-2)+4` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A402062.P3778683553786280769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) + a (n - 2) + 4

end

end A402062.P3778683553786280769

namespace A402062

/-- `a(n-2)+a(n-2)+4` -/
def P3778683553786280769.Spec : Prop :=
  ∀ n, (P3778683553786280769.a n : ℤ) = A402062 n

end A402062

/-! ## A402062.P16772589138738824364

`A354785(n+1)-A040002(n)`
-/

namespace A402062.P16772589138738824364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354785 (n + 1) - A040002 n

end

end A402062.P16772589138738824364

namespace A402062

/-- `A354785(n+1)-A040002(n)` -/
def P16772589138738824364.Spec : Prop :=
  ∀ n, P16772589138738824364.a n = A402062 n

end A402062

/-! ## A402062.P7312808570794596372

`∪[A053209(n), A131128(n)]`
-/

namespace A402062.P7312808570794596372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402062.P7312808570794596372

namespace A402062

/-- `∪[A053209(n), A131128(n)]` -/
def P7312808570794596372.Spec : Prop :=
  ∀ n, (P7312808570794596372.a n : ℤ) = A402062 n

end A402062

/-! ## A402062.P4552615051589984265

`A347789(n+2)-A029744(n+1)`
-/

namespace A402062.P4552615051589984265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 2) - A029744 (n + 1)

end

end A402062.P4552615051589984265

namespace A402062

/-- `A347789(n+2)-A029744(n+1)` -/
def P4552615051589984265.Spec : Prop :=
  ∀ n, P4552615051589984265.a n = A402062 n

end A402062

/-! ## A402062.P4442911893421464274

`2*A027383(n)-A029744(n+1)`
-/

namespace A402062.P4442911893421464274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027383 n - A029744 (n + 1)

end

end A402062.P4442911893421464274

namespace A402062

/-- `2*A027383(n)-A029744(n+1)` -/
def P4442911893421464274.Spec : Prop :=
  ∀ n, P4442911893421464274.a n = A402062 n

end A402062

/-! ## A402062.P5421513633357502869

`A099942(n)+A083416(n+1)-A081026(n+1)`
-/

namespace A402062.P5421513633357502869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099942 n + A083416 (n + 1) - A081026 (n + 1)

end

end A402062.P5421513633357502869

namespace A402062

/-- `A099942(n)+A083416(n+1)-A081026(n+1)` -/
def P5421513633357502869.Spec : Prop :=
  ∀ n, P5421513633357502869.a n = A402062 n

end A402062

/-! ## A402062.P17808170344197290050

`A354788(n)+A052955(n+1)-A029744(n+1)`
-/

namespace A402062.P17808170344197290050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 n + A052955 (n + 1) - A029744 (n + 1)

end

end A402062.P17808170344197290050

namespace A402062

/-- `A354788(n)+A052955(n+1)-A029744(n+1)` -/
def P17808170344197290050.Spec : Prop :=
  ∀ n, P17808170344197290050.a n = A402062 n

end A402062

/-! ## A402062.P17099366252543029873

`A354789(n)-(A354788(n)+A029744(n+1))`
-/

namespace A402062.P17099366252543029873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354789 n - (A354788 n + A029744 (n + 1))

end

end A402062.P17099366252543029873

namespace A402062

/-- `A354789(n)-(A354788(n)+A029744(n+1))` -/
def P17099366252543029873.Spec : Prop :=
  ∀ n, P17099366252543029873.a n = A402062 n

end A402062

/-!
# A402063: Expansion of g.f. (sqrt(1 - 14*x^3 + 161*x^6) - 7*x^3 + 14*x^2 - 1)/(14*x^2*(1-2x-x^2)).

The programs for A402063, there is no canonical definition to state claims against.
-/

/-! ## A402063.P8001522443500913125

`A125667(A079224(n))`
-/

namespace A402063.P8001522443500913125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125667 (A079224 n).toNat

end

end A402063.P8001522443500913125

/-! ## A402063.P5461735190422772416

`A057286(A241724(n))`
-/

namespace A402063.P5461735190422772416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057286 (A241724 (n + 21)).toNat

end

end A402063.P5461735190422772416

/-! ## A402063.P9294189870271473214

`A048342(A302020(n))`
-/

namespace A402063.P9294189870271473214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048342 (A302020 n).toNat

end

end A402063.P9294189870271473214

/-!
# A402064: Expansion of g.f. (1 - 6*x^2 - x^3 - sqrt(1 - 16*x^2 + 2*x^3 + 64*x^4 - 16*x^5 - 15*x^6))/(2*x^2*(1 - 2x - x^2)).

The programs for A402064, there is no canonical definition to state claims against.
-/

/-! ## A402064.P16785204539337353442

`A322902(A006906(n))`
-/

namespace A402064.P16785204539337353442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (A006906 n).toNat

end

end A402064.P16785204539337353442

/-! ## A402064.P9029006090685996103

`A352274(A104433(n))`
-/

namespace A402064.P9029006090685996103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352274 (A104433 n).toNat

end

end A402064.P9029006090685996103

/-! ## A402064.P13740868642921747739

`A151991(A005962(n+1))`
-/

namespace A402064.P13740868642921747739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (A005962 (n + 1)).toNat

end

end A402064.P13740868642921747739

