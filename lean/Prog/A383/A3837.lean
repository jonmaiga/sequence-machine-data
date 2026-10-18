import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A383700: Coefficient of x^2 in expansion of (x+1) * (x+5) * ... * (x+4*n-3).

The programs for A383700, there is no canonical definition to state claims against.
-/

/-! ## A383700.P15145311996477830391

`A090618(2^∑[n])`
-/

namespace A383700.P15145311996477830391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090618 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A383700.P15145311996477830391

/-!
# A383701: Coefficient of x^3 in expansion of (x+1) * (x+5) * ... * (x+4*n-3).

The programs for A383701, there is no canonical definition to state claims against.
-/

/-! ## A383701.P15756090141674247474

`C(n, 3)*A325623(A186373(3*n))`
-/

namespace A383701.P15756090141674247474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) * A325623 (A186373 (3 * n)).toNat

end

end A383701.P15756090141674247474

/-! ## A383701.P5511284239151544773

`A196129(A002110(floor(C(n+1, 2)/4)))`
-/

namespace A383701.P5511284239151544773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196129 (A002110 ⌊(Nat.choose (n + 1) 2 : ℚ) / 4⌋.toNat).toNat

end

end A383701.P5511284239151544773

/-!
# A383702: Coefficient of x^2 in expansion of (x+3) * (x+7) * ... * (x+4*n-1).

The programs for A383702, there is no canonical definition to state claims against.
-/

/-! ## A383702.P3289131371780736111

`A253638(Δ[n²]^n)`
-/

namespace A383702.P3289131371780736111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n).toNat

end

end A383702.P3289131371780736111

/-!
# A383703: Coefficient of x^3 in expansion of (x+3) * (x+7) * ... * (x+4*n-1).

The programs for A383703, there is no canonical definition to state claims against.
-/

/-! ## A383703.P18062356074449954214

`A004526(A001142(n)-A052723(n))`
-/

namespace A383703.P18062356074449954214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001142 n - A052723 n).toNat

end

end A383703.P18062356074449954214

/-! ## A383703.P13746701747781280330

`A269371(A005329(n))-A005867(n)`
-/

namespace A383703.P13746701747781280330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A005329 n).toNat - A005867 n

end

end A383703.P13746701747781280330

/-!
# A383705: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(2/3).

The programs for A383705, the canonical program `A383705.P15354307696166593991` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383705 has offset 1).

The definition of A383705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383705.P15354307696166593991

`∏{e}[n+1, A127974(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383705

/-- `∏{e}[n+1, A127974(#)]` -/
def P15354307696166593991.Spec : Prop :=
  ∀ n, P15354307696166593991.a n = A383705 (n + 1)

theorem P15354307696166593991.correct : P15354307696166593991.Spec := by
  intro n
  simp only [A383705, Nat.add_sub_cancel]

end A383705

/-! ## A383705.P3149459762496776597

`A052421(A318476(n+1)+A069739(n+1))`
-/

namespace A383705.P3149459762496776597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A318476 (n + 1) + A069739 (n + 1)).toNat

end

end A383705.P3149459762496776597

namespace A383705

/-- `A052421(A318476(n+1)+A069739(n+1))` -/
def P3149459762496776597.Spec : Prop :=
  ∀ n, P3149459762496776597.a n = A383705 (n + 1)

end A383705

/-!
# A383706: Number of ways to choose disjoint strict integer partitions, one of each prime index of n.

The programs for A383706, there is no canonical definition to state claims against.
-/

/-! ## A383706.P11323745500377392954

`A384389(n+1)+char[∏{p}[n, #]-1]`
-/

namespace A383706.P11323745500377392954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A383706.P11323745500377392954

/-! ## A383706.P10331004482201362349

`A384389(n+1)+A008966(n+1)`
-/

namespace A383706.P10331004482201362349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + A008966 (n + 1)

end

end A383706.P10331004482201362349

/-! ## A383706.P10574434786400857116

`A384389(n+1)+A008683(n+1)²`
-/

namespace A383706.P10574434786400857116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + A008683 (n + 1) ^ 2

end

end A383706.P10574434786400857116

/-! ## A383706.P6635345337910019451

`A384389(n+1)+A010894(∑{e}[n+1, #%#²])`
-/

namespace A383706.P6635345337910019451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + A010894 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2 + 21)

end

end A383706.P6635345337910019451

/-! ## A383706.P14489569680407858377

`A384389(n+1)+A279329(A000688(n+1))`
-/

namespace A383706.P14489569680407858377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + A279329 (A000688 (n + 1)).toNat

end

end A383706.P14489569680407858377

/-! ## A383706.P17201962709241534772

`A384389(n+1)+A326168(A078310((n+1)/∏{p}[n+1, #])-1)`
-/

namespace A383706.P17201962709241534772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + A326168 (A078310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - 1).toNat

end

end A383706.P17201962709241534772

/-! ## A383706.P11347216534754249796

`A384389(n+1)+A326168(A008836(n+1)*A358272(n+1))`
-/

namespace A383706.P11347216534754249796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1) + A326168 (A008836 (n + 1) * A358272 (n + 1)).toNat

end

end A383706.P11347216534754249796

/-!
# A383707: Heinz numbers of maximally refined strict integer partitions.

The programs for A383707, there is no canonical definition to state claims against.
-/

/-! ## A383707.P490728890643752905

`filter[A384320(n+1), A008966(#)]`
-/

namespace A383707.P490728890643752905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A383707.P490728890643752905

/-! ## A383707.P12750591838488609757

`∩[A384320(n+1), A287483(n)]`
-/

namespace A383707.P12750591838488609757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383707.P12750591838488609757

/-! ## A383707.P343488929060983691

`∩[A087006(n+1), A384320(n+1)]`
-/

namespace A383707.P343488929060983691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383707.P343488929060983691

/-! ## A383707.P267496174406241897

`∩[A087007(n+1), A384320(n+1)]`
-/

namespace A383707.P267496174406241897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383707.P267496174406241897

/-! ## A383707.P5356881454028299182

`∩[A087008(n+1), A384320(n+1)]`
-/

namespace A383707.P5356881454028299182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383707.P5356881454028299182

/-!
# A383708: Number of integer partitions of n such that it is possible to choose a family of pairwise disjoint strict integer partitions, one of each part.

The programs for A383708, there is no canonical definition to state claims against.
-/

/-! ## A383708.P6834936704664819435

`A384317(n+1)+A179009(n+1)`
-/

namespace A383708.P6834936704664819435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384317 (n + 1) + A179009 (n + 1)

end

end A383708.P6834936704664819435

/-! ## A383708.P15581402583518321878

`A000041(n+1)-A383710(n+1)`
-/

namespace A383708.P15581402583518321878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A383710 (n + 1)

end

end A383708.P15581402583518321878

/-! ## A383708.P8338065514956766785

`A028364(n)-A358769(A363448(n))`
-/

namespace A383708.P8338065514956766785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 n - A358769 (A363448 n).toNat

end

end A383708.P8338065514956766785

/-!
# A383709: Number of integer partitions of n with distinct multiplicities (Wilf) and distinct 0-appended differences.

The programs for A383709, there is no canonical definition to state claims against.
-/

/-! ## A383709.P15805113951961642905

`A000120(A196776(n+1)+A001045(n))`
-/

namespace A383709.P15805113951961642905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A196776 (n + 1) + A001045 n).toNat

end

end A383709.P15805113951961642905

/-! ## A383709.P12119034542279872762

`A209281(A002321(n+1)+A000079(n))`
-/

namespace A383709.P12119034542279872762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A002321 (n + 1) + A000079 n).toNat

end

end A383709.P12119034542279872762

/-! ## A383709.P8060558718312369327

`A000120(A140298(n)*A344607(n+1))`
-/

namespace A383709.P8060558718312369327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A140298 n * A344607 (n + 1)).toNat

end

end A383709.P8060558718312369327

/-! ## A383709.P8703977062356851173

`A122841(n+4)+A007302(A268393(n+1))`
-/

namespace A383709.P8703977062356851173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 4) + A007302 (A268393 (n + 1)).toNat

end

end A383709.P8703977062356851173

/-!
# A383710: Number of integer partitions of n such that it is not possible to choose a family of pairwise disjoint strict integer partitions, one of each part.

The programs for A383710, there is no canonical definition to state claims against.
-/

/-! ## A383710.P6556448204006043773

`A384348(n)-A179009(n)`
-/

namespace A383710.P6556448204006043773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384348 n - A179009 n

end

end A383710.P6556448204006043773

/-! ## A383710.P16263883970044978465

`A367212(n)-A010051(A153649(2*n+1))`
-/

namespace A383710.P16263883970044978465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367212 n - A010051 (A153649 (2 * n + 1)).toNat

end

end A383710.P16263883970044978465

/-!
# A383711: Number of integer partitions of n with no ones such that it is not possible to choose a family of pairwise disjoint strict integer partitions, one of each part.

The programs for A383711, there is no canonical definition to state claims against.
-/

/-! ## A383711.P13527777208378781174

`A002865(n)-A383533(n)`
-/

namespace A383711.P13527777208378781174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A383533 n

end

end A383711.P13527777208378781174

/-!
# A383712: Heinz numbers of integer partitions with distinct multiplicities (Wilf) and distinct 0-appended differences.

The programs for A383712, there is no canonical definition to state claims against.
-/

/-! ## A383712.P17401890049982227210

`∩[A230843(n+1), A320340(n+1)]`
-/

namespace A383712.P17401890049982227210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383712.P17401890049982227210

/-! ## A383712.P7727379800624485143

`filter[A383515(n+1), A212793(#)]`
-/

namespace A383712.P7727379800624485143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A383712.P7727379800624485143

/-! ## A383712.P3888890644015419900

`filter[A383515(n+1), A359471(#)]`
-/

namespace A383712.P3888890644015419900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A383712.P3888890644015419900

/-! ## A383712.P4030846213669170554

`∩[A230843(n+1), A383515(n+1)]`
-/

namespace A383712.P4030846213669170554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383712.P4030846213669170554

/-! ## A383712.P3666941661717987788

`filter[A325367(n+1), A091862(#)]`
-/

namespace A383712.P3666941661717987788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A383712.P3666941661717987788

/-!
# A383713: Triangle read by rows: T(n,k) is the number of compositions of n with k parts all in standard order.

The programs for A383713, there is no canonical definition to state claims against.
-/

/-! ## A383713.P1322750070907528197

`A353495(A048037(n+1))+A047998(n)`
-/

namespace A383713.P1322750070907528197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A048037 (n + 1)).toNat + A047998 n

end

end A383713.P1322750070907528197

/-!
# A383715: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = (-1)^floor((k+1)/2) * A099927(n,k).

The programs for A383715, there is no canonical definition to state claims against.
-/

/-! ## A383715.P2225968681702395117

`A087960(A002262(n))*A099927(n)`
-/

namespace A383715.P2225968681702395117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A002262 n).toNat * A099927 n

end

end A383715.P2225968681702395117

/-! ## A383715.P16588443700821020523

`A057077(A002260(n+1))*A099927(n)`
-/

namespace A383715.P16588443700821020523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002260 (n + 1)).toNat * A099927 n

end

end A383715.P16588443700821020523

/-! ## A383715.P15898052004288272750

`A087960(A002262(n))*A203580(A172345(n))`
-/

namespace A383715.P15898052004288272750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A002262 n).toNat * A203580 (A172345 n).toNat

end

end A383715.P15898052004288272750

/-! ## A383715.P377137991639676806

`A087960(A002262(n))*A215088(A172342(n))`
-/

namespace A383715.P377137991639676806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A002262 n).toNat * A215088 (A172342 n).toNat

end

end A383715.P377137991639676806

/-! ## A383715.P5691530703369262819

`A057077(A002260(n+1))*A203580(A172345(n))`
-/

namespace A383715.P5691530703369262819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002260 (n + 1)).toNat * A203580 (A172345 n).toNat

end

end A383715.P5691530703369262819

/-!
# A383716: a(n) = Sum_{k=0..n} binomial(4*n+1,k) * binomial(4*n-k,n-k).

The programs for A383716, there is no canonical definition to state claims against.
-/

/-! ## A383716.P17787453737719903101

`A193816(A139276(n))`
-/

namespace A383716.P17787453737719903101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A139276 n).toNat

end

end A383716.P17787453737719903101

/-! ## A383716.P9780294755018573313

`A193817(A139277(n))`
-/

namespace A383716.P9780294755018573313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A139277 n).toNat

end

end A383716.P9780294755018573313

/-! ## A383716.P4749080174848678972

`A119258(A194268(n))`
-/

namespace A383716.P4749080174848678972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A194268 n).toNat

end

end A383716.P4749080174848678972

/-! ## A383716.P14717899306692943977

`A112857(A125201(n+1))`
-/

namespace A383716.P14717899306692943977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A125201 (n + 1)).toNat

end

end A383716.P14717899306692943977

/-! ## A383716.P13274971974284091553

`A119258(A056220(2*n+1)-n)`
-/

namespace A383716.P13274971974284091553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A056220 (2 * n + 1) - (n : ℤ)).toNat

end

end A383716.P13274971974284091553

/-!
# A383717: Dirichlet g.f.: Product_{p prime} (1 + 1/p^(s-1) + 1/p^(2*s-1)).

The programs for A383717, the canonical program `A383717.P12018944813867076919` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383717 has offset 1).

The definition of A383717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383717.P17065908325090168604

`A007947(n+1)*A212793(n+1)`
-/

namespace A383717.P17065908325090168604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A212793 (n + 1)

end

end A383717.P17065908325090168604

namespace A383717

/-- `A007947(n+1)*A212793(n+1)` -/
def P17065908325090168604.Spec : Prop :=
  ∀ n, P17065908325090168604.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P9110071341295247449

`A015052(n+1)*A212793(n+1)`
-/

namespace A383717.P9110071341295247449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1) * A212793 (n + 1)

end

end A383717.P9110071341295247449

namespace A383717

/-- `A015052(n+1)*A212793(n+1)` -/
def P9110071341295247449.Spec : Prop :=
  ∀ n, P9110071341295247449.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P2341035395766980921

`A015053(n+1)*A212793(n+1)`
-/

namespace A383717.P2341035395766980921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1) * A212793 (n + 1)

end

end A383717.P2341035395766980921

namespace A383717

/-- `A015053(n+1)*A212793(n+1)` -/
def P2341035395766980921.Spec : Prop :=
  ∀ n, P2341035395766980921.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P14411024446634701062

`A019554(n+1)*A212793(n+1)`
-/

namespace A383717.P14411024446634701062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A212793 (n + 1)

end

end A383717.P14411024446634701062

namespace A383717

/-- `A019554(n+1)*A212793(n+1)` -/
def P14411024446634701062.Spec : Prop :=
  ∀ n, P14411024446634701062.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P13994590027891993180

`A019555(n+1)*A212793(n+1)`
-/

namespace A383717.P13994590027891993180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A212793 (n + 1)

end

end A383717.P13994590027891993180

namespace A383717

/-- `A019555(n+1)*A212793(n+1)` -/
def P13994590027891993180.Spec : Prop :=
  ∀ n, P13994590027891993180.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P7511635640363806984

`A053166(n+1)*A212793(n+1)`
-/

namespace A383717.P7511635640363806984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) * A212793 (n + 1)

end

end A383717.P7511635640363806984

namespace A383717

/-- `A053166(n+1)*A212793(n+1)` -/
def P7511635640363806984.Spec : Prop :=
  ∀ n, P7511635640363806984.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P15402577158842130610

`A056552(n+1)*A212793(n+1)`
-/

namespace A383717.P15402577158842130610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1) * A212793 (n + 1)

end

end A383717.P15402577158842130610

namespace A383717

/-- `A056552(n+1)*A212793(n+1)` -/
def P15402577158842130610.Spec : Prop :=
  ∀ n, P15402577158842130610.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P4864903043906150488

`A056554(n+1)*A212793(n+1)`
-/

namespace A383717.P4864903043906150488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1) * A212793 (n + 1)

end

end A383717.P4864903043906150488

namespace A383717

/-- `A056554(n+1)*A212793(n+1)` -/
def P4864903043906150488.Spec : Prop :=
  ∀ n, P4864903043906150488.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P17646378807359912647

`A066069(n+1)*A212793(n+1)`
-/

namespace A383717.P17646378807359912647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1) * A212793 (n + 1)

end

end A383717.P17646378807359912647

namespace A383717

/-- `A066069(n+1)*A212793(n+1)` -/
def P17646378807359912647.Spec : Prop :=
  ∀ n, P17646378807359912647.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P212936253416515951

`A007913(n+1)*A397238(n+1)`
-/

namespace A383717.P212936253416515951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A397238 (n + 1)

end

end A383717.P212936253416515951

namespace A383717

/-- `A007913(n+1)*A397238(n+1)` -/
def P212936253416515951.Spec : Prop :=
  ∀ n, P212936253416515951.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P10151234796496030762

`A055231(n+1)*A397238(n+1)`
-/

namespace A383717.P10151234796496030762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A397238 (n + 1)

end

end A383717.P10151234796496030762

namespace A383717

/-- `A055231(n+1)*A397238(n+1)` -/
def P10151234796496030762.Spec : Prop :=
  ∀ n, P10151234796496030762.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P9737115731226174516

`A071975(n+1)*A397238(n+1)`
-/

namespace A383717.P9737115731226174516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1) * A397238 (n + 1)

end

end A383717.P9737115731226174516

namespace A383717

/-- `A071975(n+1)*A397238(n+1)` -/
def P9737115731226174516.Spec : Prop :=
  ∀ n, P9737115731226174516.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P16340211422868453774

`A212793(n+1)*A308056(n+1)`
-/

namespace A383717.P16340211422868453774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A308056 (n + 1)

end

end A383717.P16340211422868453774

namespace A383717

/-- `A212793(n+1)*A308056(n+1)` -/
def P16340211422868453774.Spec : Prop :=
  ∀ n, P16340211422868453774.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P12841465789256104034

`A212793(n+1)*A331737(n+1)`
-/

namespace A383717.P12841465789256104034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A331737 (n + 1)

end

end A383717.P12841465789256104034

namespace A383717

/-- `A212793(n+1)*A331737(n+1)` -/
def P12841465789256104034.Spec : Prop :=
  ∀ n, P12841465789256104034.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P8525229782283808190

`A160400(n+1)*A397238(n+1)`
-/

namespace A383717.P8525229782283808190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (n + 1) * A397238 (n + 1)

end

end A383717.P8525229782283808190

namespace A383717

/-- `A160400(n+1)*A397238(n+1)` -/
def P8525229782283808190.Spec : Prop :=
  ∀ n, P8525229782283808190.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P12211287882146778586

`A212793(n+1)*A350390(n+1)`
-/

namespace A383717.P12211287882146778586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A350390 (n + 1)

end

end A383717.P12211287882146778586

namespace A383717

/-- `A212793(n+1)*A350390(n+1)` -/
def P12211287882146778586.Spec : Prop :=
  ∀ n, P12211287882146778586.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P14165351291218051576

`A212793(n+1)*A355263(n+1)`
-/

namespace A383717.P14165351291218051576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A355263 (n + 1)

end

end A383717.P14165351291218051576

namespace A383717

/-- `A212793(n+1)*A355263(n+1)` -/
def P14165351291218051576.Spec : Prop :=
  ∀ n, P14165351291218051576.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P12018944813867076919

`A212793(n+1)*A366765(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A383717

/-- `A212793(n+1)*A366765(n+1)` -/
def P12018944813867076919.Spec : Prop :=
  ∀ n, P12018944813867076919.a n = A383717 (n + 1)

theorem P12018944813867076919.correct : P12018944813867076919.Spec := by
  intro n
  simp only [A383717, Nat.add_sub_cancel]

end A383717

/-! ## A383717.P17484819106017936346

`A212793(n+1)*A372379(n+1)`
-/

namespace A383717.P17484819106017936346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A372379 (n + 1)

end

end A383717.P17484819106017936346

namespace A383717

/-- `A212793(n+1)*A372379(n+1)` -/
def P17484819106017936346.Spec : Prop :=
  ∀ n, P17484819106017936346.a n = A383717 (n + 1)

end A383717

/-! ## A383717.P17218177763987341790

`A212793(n+1)*A375240(n+1)`
-/

namespace A383717.P17218177763987341790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A375240 (n + 1)

end

end A383717.P17218177763987341790

namespace A383717

/-- `A212793(n+1)*A375240(n+1)` -/
def P17218177763987341790.Spec : Prop :=
  ∀ n, P17218177763987341790.a n = A383717 (n + 1)

end A383717

/-!
# A383718: a(n) is the multinomial coefficient (length of n in binary) choose (the lengths of runs in n's binary expansion).

The programs for A383718, the canonical program `A383718.P12402657679353222347` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383718 has offset 0).

The definition of A383718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383718.P5984312139462690637

`A124774(xor(n, floor(n/2)))`
-/

namespace A383718.P5984312139462690637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A383718.P5984312139462690637

namespace A383718

/-- `A124774(xor(n, floor(n/2)))` -/
def P5984312139462690637.Spec : Prop :=
  ∀ n, P5984312139462690637.a n = A383718 n

end A383718

/-! ## A383718.P13184280989284298856

`A124774(A003188(n))`
-/

namespace A383718.P13184280989284298856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A003188 n).toNat

end

end A383718.P13184280989284298856

namespace A383718

/-- `A124774(A003188(n))` -/
def P13184280989284298856.Spec : Prop :=
  ∀ n, P13184280989284298856.a n = A383718 n

end A383718

/-! ## A383718.P4311365205712919079

`A124774(A341915(n))`
-/

namespace A383718.P4311365205712919079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A341915 n).toNat

end

end A383718.P4311365205712919079

namespace A383718

/-- `A124774(A341915(n))` -/
def P4311365205712919079.Spec : Prop :=
  ∀ n, P4311365205712919079.a n = A383718 n

end A383718

/-! ## A383718.P12402657679353222347

`A318762(A382255(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A383718

/-- `A318762(A382255(n))` -/
def P12402657679353222347.Spec : Prop :=
  ∀ n, P12402657679353222347.a n = A383718 n

theorem P12402657679353222347.correct : P12402657679353222347.Spec := by
  intro n
  simp only [A383718]

end A383718

/-! ## A383718.P13590821854515112030

`A124774(A286548(n)+n)`
-/

namespace A383718.P13590821854515112030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A286548 n + (n : ℤ)).toNat

end

end A383718.P13590821854515112030

namespace A383718

/-- `A124774(A286548(n)+n)` -/
def P13590821854515112030.Spec : Prop :=
  ∀ n, P13590821854515112030.a n = A383718 n

end A383718

/-!
# A383719: a(n) = Pell(n) * Pell(n-1) * Pell(n-2) * Pell(n-3) * Pell(n-4) / 3480.

The programs for A383719, there is no canonical definition to state claims against.
-/

/-! ## A383719.P746802529719864640

`A099927(eq[5, A002262(n)])`
-/

namespace A383719.P746802529719864640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383719.P746802529719864640

/-! ## A383719.P4409280107420720218

`A099927(A055998(n+3)+8)`
-/

namespace A383719.P4409280107420720218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A055998 (n + 3) + 8).toNat

end

end A383719.P4409280107420720218

/-! ## A383719.P15004847326216480944

`A099927(eq[5, A130270(n+1)])`
-/

namespace A383719.P15004847326216480944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383719.P15004847326216480944

/-! ## A383719.P10545602994257008780

`A099927(A026054(n+4)-A026054(n+3))`
-/

namespace A383719.P10545602994257008780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A026054 (n + 4) - A026054 (n + 3)).toNat

end

end A383719.P10545602994257008780

/-!
# A383720: a(0)=3, a(1)=5, a(2)=35; a(n) = 5*a(n-1) + 5*a(n-2) - a(n-3) for n > 2.

The programs for A383720, the canonical program `A383720.P15612201894768213120` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383720 has offset 0).

The definition of A383720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5*a(n-2)-a(n-3)` (program `A383720.P15612201894768213120`, by `A383720.P15612201894768213120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383720.P15612201894768213120

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=3, a(1)=5, a(2)=35`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383720

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P15612201894768213120.Spec : Prop :=
  ∀ n, P15612201894768213120.a n = A383720 n

theorem P15612201894768213120.correct : P15612201894768213120.Spec := by
  intro n
  simp only [A383720]

end A383720

/-! ## A383720.P9843991779623736273

`A003499(n)+(-1)^n`
-/

namespace A383720.P9843991779623736273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n + (-1) ^ n

end

end A383720.P9843991779623736273

namespace A383720

/-- `A003499(n)+(-1)^n` -/
def P9843991779623736273.Spec : Prop :=
  ∀ n, P9843991779623736273.a n = A383720 n

end A383720

/-! ## A383720.P7330002421505233656

`A353455(A000040(n+1))+A003499(n)`
-/

namespace A383720.P7330002421505233656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A000040 (n + 1)).toNat + A003499 n

end

end A383720.P7330002421505233656

namespace A383720

/-- `A353455(A000040(n+1))+A003499(n)` -/
def P7330002421505233656.Spec : Prop :=
  ∀ n, P7330002421505233656.a n = A383720 n

end A383720

/-! ## A383720.P10389699762378558959

`A090390(n)+A090390(n)+A001541(n)`
-/

namespace A383720.P10389699762378558959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + (A090390 n + A001541 n)

end

end A383720.P10389699762378558959

namespace A383720

/-- `A090390(n)+A090390(n)+A001541(n)` -/
def P10389699762378558959.Spec : Prop :=
  ∀ n, P10389699762378558959.a n = A383720 n

end A383720

/-! ## A383720.P11564913732096993305

`A182143(n)+A002203(n)*A100227(n)`
-/

namespace A383720.P11564913732096993305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n + A002203 n * A100227 n

end

end A383720.P11564913732096993305

namespace A383720

/-- `A182143(n)+A002203(n)*A100227(n)` -/
def P11564913732096993305.Spec : Prop :=
  ∀ n, P11564913732096993305.a n = A383720 n

end A383720

/-! ## A383720.P3969034094166325028

`A000129(n+1)*A135532(n+1)-A276598(n+1)`
-/

namespace A383720.P3969034094166325028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A135532 (n + 1) - A276598 (n + 1)

end

end A383720.P3969034094166325028

namespace A383720

/-- `A000129(n+1)*A135532(n+1)-A276598(n+1)` -/
def P3969034094166325028.Spec : Prop :=
  ∀ n, P3969034094166325028.a n = A383720 n

end A383720

/-!
# A383721: a(n) is the number of distinct rectangles with integer area that can be inscribed in a cube with edge length 4*n, as shown in the linked figure "Cube with inscribed rectangle".

The programs for A383721, there is no canonical definition to state claims against.
-/

/-! ## A383721.P10698593272912444517

`A244964(A296857(n+1))`
-/

namespace A383721.P10698593272912444517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244964 (A296857 (n + 1)).toNat

end

end A383721.P10698593272912444517

/-! ## A383721.P10601769373758755639

`A351112(n+1)+A116178(A005043(n))`
-/

namespace A383721.P10601769373758755639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (n + 1) + A116178 (A005043 n).toNat

end

end A383721.P10601769373758755639

/-! ## A383721.P7880017060569669425

`A301989(2*(n+1))+A056832(A000079(n))`
-/

namespace A383721.P7880017060569669425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (2 * (n + 1)) + A056832 (A000079 n).toNat

end

end A383721.P7880017060569669425

/-! ## A383721.P15423632977393889934

`A091090(A004798(n+1)+A000225(n))`
-/

namespace A383721.P15423632977393889934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A004798 (n + 1) + A000225 n).toNat

end

end A383721.P15423632977393889934

/-! ## A383721.P4500489901047573894

`A372720(n+1)+A010060(A005207(n))`
-/

namespace A383721.P4500489901047573894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372720 (n + 1) + A010060 (A005207 n).toNat

end

end A383721.P4500489901047573894

/-!
# A383722: a(n) = A378762(A382679(n)).

The programs for A383722, there is no canonical definition to state claims against.
-/

/-! ## A383722.P10713529984365626688

`A381968(A056023(n+1))`
-/

namespace A383722.P10713529984365626688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A056023 (n + 1)).toNat

end

end A383722.P10713529984365626688

/-! ## A383722.P4359817271929979147

`A056023(A382499(n+1))`
-/

namespace A383722.P4359817271929979147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A382499 (n + 1)).toNat

end

end A383722.P4359817271929979147

/-! ## A383722.P18294276067923543010

`A376214(A383419(n+1))`
-/

namespace A383722.P18294276067923543010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A383419 (n + 1)).toNat

end

end A383722.P18294276067923543010

/-! ## A383722.P17871815455021338672

`A383590(A376214(n+1))`
-/

namespace A383722.P17871815455021338672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A376214 (n + 1)).toNat

end

end A383722.P17871815455021338672

/-! ## A383722.P4275468647875275106

`A382680(A378762(n+1))`
-/

namespace A383722.P4275468647875275106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378762 (n + 1)).toNat

end

end A383722.P4275468647875275106

/-! ## A383722.P5205787514729570775

`A383419(A380817(n+1))`
-/

namespace A383722.P5205787514729570775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A380817 (n + 1)).toNat

end

end A383722.P5205787514729570775

/-! ## A383722.P5821017546631598133

`A380817(A383590(n+1))`
-/

namespace A383722.P5821017546631598133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A383590 (n + 1)).toNat

end

end A383722.P5821017546631598133

/-! ## A383722.P13070683837779422547

`A383724(A381662(n+1))`
-/

namespace A383722.P13070683837779422547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A381662 (n + 1)).toNat

end

end A383722.P13070683837779422547

/-! ## A383722.P3465218364851729076

`A383723(A381968(n+1))`
-/

namespace A383722.P3465218364851729076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A381968 (n + 1)).toNat

end

end A383722.P3465218364851729076

/-! ## A383722.P463965125672516276

`A382499(A383723(n+1))`
-/

namespace A383722.P463965125672516276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A383723 (n + 1)).toNat

end

end A383722.P463965125672516276

/-! ## A383722.P9246080342936687063

`A383589(A382679(n+1))`
-/

namespace A383722.P9246080342936687063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A382679 (n + 1)).toNat

end

end A383722.P9246080342936687063

/-! ## A383722.P17704567238969814770

`A382680(A378684(A378200(n+1)))`
-/

namespace A383722.P17704567238969814770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A378200 (n + 1)).toNat).toNat

end

end A383722.P17704567238969814770

/-! ## A383722.P14561255886543796541

`A379343(A381968(A378705(n+1)))`
-/

namespace A383722.P14561255886543796541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381968 (A378705 (n + 1)).toNat).toNat

end

end A383722.P14561255886543796541

/-! ## A383722.P3393096054522673418

`A382499(A378200(A379343(n+1)))`
-/

namespace A383722.P3393096054522673418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378200 (A379343 (n + 1)).toNat).toNat

end

end A383722.P3393096054522673418

/-! ## A383722.P4958734206762599788

`A378200(A382680(A379342(n+1)))`
-/

namespace A383722.P4958734206762599788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382680 (A379342 (n + 1)).toNat).toNat

end

end A383722.P4958734206762599788

/-! ## A383722.P2257787523301695125

`A378200(A381968(A380245(n+1)))`
-/

namespace A383722.P2257787523301695125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381968 (A380245 (n + 1)).toNat).toNat

end

end A383722.P2257787523301695125

/-! ## A383722.P13526629490016387711

`A380817(A376214(A383724(n+1)))`
-/

namespace A383722.P13526629490016387711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (A383724 (n + 1)).toNat).toNat

end

end A383722.P13526629490016387711

/-! ## A383722.P8481035643518302892

`A381968(A378705(A380815(n+1)))`
-/

namespace A383722.P8481035643518302892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378705 (A380815 (n + 1)).toNat).toNat

end

end A383722.P8481035643518302892

/-! ## A383722.P9847815207514321038

`A381968(A376214(A383589(n+1)))`
-/

namespace A383722.P9847815207514321038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A376214 (A383589 (n + 1)).toNat).toNat

end

end A383722.P9847815207514321038

/-! ## A383722.P11927153355924513994

`A381968(A378200(A381664(n+1)))`
-/

namespace A383722.P11927153355924513994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378200 (A381664 (n + 1)).toNat).toNat

end

end A383722.P11927153355924513994

/-!
# A383723: a(n) = A378762(A376214(n)).

The programs for A383723, the canonical program `A383723.P9683757287897343383` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383723 has offset 1).

The definition of A383723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376214, A378762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383723.P9683757287897343383

`A378762(A376214(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A383723

/-- `A378762(A376214(n+1))` -/
def P9683757287897343383.Spec : Prop :=
  ∀ n, P9683757287897343383.a n = A383723 (n + 1)

theorem P9683757287897343383.correct : P9683757287897343383.Spec := by
  intro n
  simp only [A383723, Nat.add_sub_cancel]

end A383723

/-! ## A383723.P10016363762303248259

`A381662(A056023(n+1))`
-/

namespace A383723.P10016363762303248259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A056023 (n + 1)).toNat

end

end A383723.P10016363762303248259

namespace A383723

/-- `A381662(A056023(n+1))` -/
def P10016363762303248259.Spec : Prop :=
  ∀ n, P10016363762303248259.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P17861022583842909709

`A378200(A379343(n+1))`
-/

namespace A383723.P17861022583842909709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A379343 (n + 1)).toNat

end

end A383723.P17861022583842909709

namespace A383723

/-- `A378200(A379343(n+1))` -/
def P17861022583842909709.Spec : Prop :=
  ∀ n, P17861022583842909709.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P8065466907590409230

`A380200(A378705(n+1))`
-/

namespace A383723.P8065466907590409230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A378705 (n + 1)).toNat

end

end A383723.P8065466907590409230

namespace A383723

/-- `A380200(A378705(n+1))` -/
def P8065466907590409230.Spec : Prop :=
  ∀ n, P8065466907590409230.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P11843625108511219083

`A378705(A380245(n+1))`
-/

namespace A383723.P11843625108511219083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A380245 (n + 1)).toNat

end

end A383723.P11843625108511219083

namespace A383723

/-- `A378705(A380245(n+1))` -/
def P11843625108511219083.Spec : Prop :=
  ∀ n, P11843625108511219083.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P8898711361633905017

`A381664(A378200(n+1))`
-/

namespace A383723.P8898711361633905017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A378200 (n + 1)).toNat

end

end A383723.P8898711361633905017

namespace A383723

/-- `A381664(A378200(n+1))` -/
def P8898711361633905017.Spec : Prop :=
  ∀ n, P8898711361633905017.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P13926936675673122624

`A383589(A380817(n+1))`
-/

namespace A383723.P13926936675673122624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A380817 (n + 1)).toNat

end

end A383723.P13926936675673122624

namespace A383723

/-- `A383589(A380817(n+1))` -/
def P13926936675673122624.Spec : Prop :=
  ∀ n, P13926936675673122624.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P3994168241914173323

`A383724(A381968(n+1))`
-/

namespace A383723.P3994168241914173323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A381968 (n + 1)).toNat

end

end A383723.P3994168241914173323

namespace A383723

/-- `A383724(A381968(n+1))` -/
def P3994168241914173323.Spec : Prop :=
  ∀ n, P3994168241914173323.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P15713819255708665106

`A381968(A383722(n+1))`
-/

namespace A383723.P15713819255708665106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A383722 (n + 1)).toNat

end

end A383723.P15713819255708665106

namespace A383723

/-- `A381968(A383722(n+1))` -/
def P15713819255708665106.Spec : Prop :=
  ∀ n, P15713819255708665106.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P15044437721688070479

`A383419(A382680(n+1))`
-/

namespace A383723.P15044437721688070479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A382680 (n + 1)).toNat

end

end A383723.P15044437721688070479

namespace A383723

/-- `A383419(A382680(n+1))` -/
def P15044437721688070479.Spec : Prop :=
  ∀ n, P15044437721688070479.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P10893137572323103238

`A382679(A383419(n+1))`
-/

namespace A383723.P10893137572323103238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A383419 (n + 1)).toNat

end

end A383723.P10893137572323103238

namespace A383723

/-- `A382679(A383419(n+1))` -/
def P10893137572323103238.Spec : Prop :=
  ∀ n, P10893137572323103238.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P7478320853877252411

`A383722(A382499(n+1))`
-/

namespace A383723.P7478320853877252411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A382499 (n + 1)).toNat

end

end A383723.P7478320853877252411

namespace A383723

/-- `A383722(A382499(n+1))` -/
def P7478320853877252411.Spec : Prop :=
  ∀ n, P7478320853877252411.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P1104337892591026029

`A382499(A383724(n+1))`
-/

namespace A383723.P1104337892591026029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A383724 (n + 1)).toNat

end

end A383723.P1104337892591026029

namespace A383723

/-- `A382499(A383724(n+1))` -/
def P1104337892591026029.Spec : Prop :=
  ∀ n, P1104337892591026029.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P11389924655887828421

`A383590(A382679(n+1))`
-/

namespace A383723.P11389924655887828421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A382679 (n + 1)).toNat

end

end A383723.P11389924655887828421

namespace A383723

/-- `A383590(A382679(n+1))` -/
def P11389924655887828421.Spec : Prop :=
  ∀ n, P11389924655887828421.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P18034896756531673905

`A382680(A383590(n+1))`
-/

namespace A383723.P18034896756531673905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A383590 (n + 1)).toNat

end

end A383723.P18034896756531673905

namespace A383723

/-- `A382680(A383590(n+1))` -/
def P18034896756531673905.Spec : Prop :=
  ∀ n, P18034896756531673905.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P7511611452215451297

`A380245(A056023(A378684(n+1)))`
-/

namespace A383723.P7511611452215451297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A056023 (A378684 (n + 1)).toNat).toNat

end

end A383723.P7511611452215451297

namespace A383723

/-- `A380245(A056023(A378684(n+1)))` -/
def P7511611452215451297.Spec : Prop :=
  ∀ n, P7511611452215451297.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P7320639290816257858

`A378705(A376214(A380815(n+1)))`
-/

namespace A383723.P7320639290816257858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A376214 (A380815 (n + 1)).toNat).toNat

end

end A383723.P7320639290816257858

namespace A383723

/-- `A378705(A376214(A380815(n+1)))` -/
def P7320639290816257858.Spec : Prop :=
  ∀ n, P7320639290816257858.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P6782200328526798855

`A378200(A376214(A381663(n+1)))`
-/

namespace A383723.P6782200328526798855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A376214 (A381663 (n + 1)).toNat).toNat

end

end A383723.P6782200328526798855

namespace A383723

/-- `A378200(A376214(A381663(n+1)))` -/
def P6782200328526798855.Spec : Prop :=
  ∀ n, P6782200328526798855.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P9488922139772784687

`A379342(A379343(A378762(n+1)))`
-/

namespace A383723.P9488922139772784687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A379343 (A378762 (n + 1)).toNat).toNat

end

end A383723.P9488922139772784687

namespace A383723

/-- `A379342(A379343(A378762(n+1)))` -/
def P9488922139772784687.Spec : Prop :=
  ∀ n, P9488922139772784687.a n = A383723 (n + 1)

end A383723

/-! ## A383723.P6706642153278717823

`A378200(A380815(A379342(n+1)))`
-/

namespace A383723.P6706642153278717823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380815 (A379342 (n + 1)).toNat).toNat

end

end A383723.P6706642153278717823

namespace A383723

/-- `A378200(A380815(A379342(n+1)))` -/
def P6706642153278717823.Spec : Prop :=
  ∀ n, P6706642153278717823.a n = A383723 (n + 1)

end A383723

/-!
# A383724: a(n) = A378762(A382680(n)).

The programs for A383724, there is no canonical definition to state claims against.
-/

/-! ## A383724.P9613699557763636369

`A056023(A381968(n+1))`
-/

namespace A383724.P9613699557763636369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381968 (n + 1)).toNat

end

end A383724.P9613699557763636369

/-! ## A383724.P8496579506328850980

`A382499(A056023(n+1))`
-/

namespace A383724.P8496579506328850980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A056023 (n + 1)).toNat

end

end A383724.P8496579506328850980

/-! ## A383724.P1963448092839370927

`A383419(A376214(n+1))`
-/

namespace A383724.P1963448092839370927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A376214 (n + 1)).toNat

end

end A383724.P1963448092839370927

/-! ## A383724.P5943977416297399237

`A376214(A383590(n+1))`
-/

namespace A383724.P5943977416297399237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A383590 (n + 1)).toNat

end

end A383724.P5943977416297399237

/-! ## A383724.P2682976713173414920

`A382679(A378762(n+1))`
-/

namespace A383724.P2682976713173414920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A378762 (n + 1)).toNat

end

end A383724.P2682976713173414920

/-! ## A383724.P487957758163663956

`A380817(A383419(n+1))`
-/

namespace A383724.P487957758163663956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A383419 (n + 1)).toNat

end

end A383724.P487957758163663956

/-! ## A383724.P12160362926043730319

`A383590(A380817(n+1))`
-/

namespace A383724.P12160362926043730319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A380817 (n + 1)).toNat

end

end A383724.P12160362926043730319

/-! ## A383724.P12828489642520447232

`A383722(A381662(n+1))`
-/

namespace A383724.P12828489642520447232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A381662 (n + 1)).toNat

end

end A383724.P12828489642520447232

/-! ## A383724.P13100561292436378817

`A381968(A383723(n+1))`
-/

namespace A383724.P13100561292436378817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A383723 (n + 1)).toNat

end

end A383724.P13100561292436378817

/-! ## A383724.P453920842926077362

`A383723(A382499(n+1))`
-/

namespace A383724.P453920842926077362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A382499 (n + 1)).toNat

end

end A383724.P453920842926077362

/-! ## A383724.P5775407123706088331

`A383589(A382680(n+1))`
-/

namespace A383724.P5775407123706088331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A382680 (n + 1)).toNat

end

end A383724.P5775407123706088331

/-! ## A383724.P8248171672738881927

`A381968(A378200(A379343(n+1)))`
-/

namespace A383724.P8248171672738881927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378200 (A379343 (n + 1)).toNat).toNat

end

end A383724.P8248171672738881927

/-! ## A383724.P15750773426048239564

`A379342(A382499(A378200(n+1)))`
-/

namespace A383724.P15750773426048239564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A382499 (A378200 (n + 1)).toNat).toNat

end

end A383724.P15750773426048239564

/-! ## A383724.P3448910758079821848

`A379343(A382680(A378705(n+1)))`
-/

namespace A383724.P3448910758079821848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A382680 (A378705 (n + 1)).toNat).toNat

end

end A383724.P3448910758079821848

/-! ## A383724.P680005077348874887

`A380817(A376214(A383722(n+1)))`
-/

namespace A383724.P680005077348874887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (A383722 (n + 1)).toNat).toNat

end

end A383724.P680005077348874887

/-! ## A383724.P13375748082641609434

`A378684(A383419(A378684(n+1)))`
-/

namespace A383724.P13375748082641609434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A383419 (A378684 (n + 1)).toNat).toNat

end

end A383724.P13375748082641609434

/-! ## A383724.P14738081957040379248

`A381968(A378705(A380245(n+1)))`
-/

namespace A383724.P14738081957040379248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378705 (A380245 (n + 1)).toNat).toNat

end

end A383724.P14738081957040379248

/-! ## A383724.P2856662920009126199

`A378200(A381968(A380815(n+1)))`
-/

namespace A383724.P2856662920009126199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381968 (A380815 (n + 1)).toNat).toNat

end

end A383724.P2856662920009126199

/-! ## A383724.P3112373586531706681

`A376214(A381968(A383589(n+1)))`
-/

namespace A383724.P3112373586531706681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A381968 (A383589 (n + 1)).toNat).toNat

end

end A383724.P3112373586531706681

/-! ## A383724.P4322970833864222359

`A379342(A383590(A379342(n+1)))`
-/

namespace A383724.P4322970833864222359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A383590 (A379342 (n + 1)).toNat).toNat

end

end A383724.P4322970833864222359

/-!
# A383725: a(n) is the least number k such that omega(k) = n and the largest prime factor of k equals the sum of its remaining prime factors, where omega(k) = A001221(k).

The programs for A383725, there is no canonical definition to state claims against.
-/

/-! ## A383725.P13853696885159489475

`A383726(∑[n]+3)`
-/

namespace A383725.P13853696885159489475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383726 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A383725.P13853696885159489475

/-!
# A383731: Number of hexagonal n-element polyominoes whose graph is a nonextensible path.

The programs for A383731, there is no canonical definition to state claims against.
-/

/-! ## A383731.P9954820528119074282

`A342119(A358907(n+1))`
-/

namespace A383731.P9954820528119074282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342119 (A358907 (n + 1)).toNat

end

end A383731.P9954820528119074282

/-!
# A383734: Numbers k such that 2+k and 2*k are squares.

The programs for A383734, the canonical program `A383734.P9758797150290240358` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383734 has offset 1).

The definition of A383734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383734.P9758797150290240358

`34*a(n-1)-a(n-2)+32` with `a(0)=2, a(1)=98`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383734

/-- `34*a(n-1)-a(n-2)+32` -/
def P9758797150290240358.Spec : Prop :=
  ∀ n, P9758797150290240358.a n = A383734 (n + 1)

theorem P9758797150290240358.correct : P9758797150290240358.Spec := by
  intro n
  simp only [A383734, Nat.add_sub_cancel]

end A383734

/-! ## A383734.P16823014190970129734

`A075870(n+1)²-2`
-/

namespace A383734.P16823014190970129734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (n + 1) ^ 2 - 2

end

end A383734.P16823014190970129734

namespace A383734

/-- `A075870(n+1)²-2` -/
def P16823014190970129734.Spec : Prop :=
  ∀ n, P16823014190970129734.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P9862517033228081710

`2*sqrt(2)*sinh(n*log(17+12*sqrt(2)))+3*cosh(n*log(17+12*sqrt(2)))-1`
-/

namespace A383734.P9862517033228081710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (2 : ℝ) * Real.sinh ((n : ℝ) * Real.log (17 + 12 * Real.sqrt (2 : ℝ))) + 3 * Real.cosh ((n : ℝ) * Real.log (17 + 12 * Real.sqrt (2 : ℝ))) - 1

end

end A383734.P9862517033228081710

namespace A383734

/-- `2*sqrt(2)*sinh(n*log(17+12*sqrt(2)))+3*cosh(n*log(17+12*sqrt(2)))-1` -/
def P9862517033228081710.Spec : Prop :=
  ∀ n, P9862517033228081710.a n = (A383734 (n + 1) : ℝ)

end A383734

/-! ## A383734.P7769529522434780333

`A379508(n)+1`
-/

namespace A383734.P7769529522434780333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379508 n + 1

end

end A383734.P7769529522434780333

namespace A383734

/-- `A379508(n)+1` -/
def P7769529522434780333.Spec : Prop :=
  ∀ n, P7769529522434780333.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P4430102221160547131

`2*A008843(n)`
-/

namespace A383734.P4430102221160547131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008843 n

end

end A383734.P4430102221160547131

namespace A383734

/-- `2*A008843(n)` -/
def P4430102221160547131.Spec : Prop :=
  ∀ n, P4430102221160547131.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P3199908872725510877

`2*A002315(n)²`
-/

namespace A383734.P3199908872725510877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n ^ 2

end

end A383734.P3199908872725510877

namespace A383734

/-- `2*A002315(n)²` -/
def P3199908872725510877.Spec : Prop :=
  ∀ n, P3199908872725510877.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P6958285932654255632

`A165518(n+1)-2`
-/

namespace A383734.P6958285932654255632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165518 (n + 1) - 2

end

end A383734.P6958285932654255632

namespace A383734

/-- `A165518(n+1)-2` -/
def P6958285932654255632.Spec : Prop :=
  ∀ n, P6958285932654255632.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P478905362303246740

`2*(A008845(n)+1)`
-/

namespace A383734.P478905362303246740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008845 n + 1)

end

end A383734.P478905362303246740

namespace A383734

/-- `2*(A008845(n)+1)` -/
def P478905362303246740.Spec : Prop :=
  ∀ n, P478905362303246740.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P14244959035699556084

`A082639(2*(n+1))`
-/

namespace A383734.P14244959035699556084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (2 * (n + 1))

end

end A383734.P14244959035699556084

namespace A383734

/-- `A082639(2*(n+1))` -/
def P14244959035699556084.Spec : Prop :=
  ∀ n, P14244959035699556084.a n = A383734 (n + 1)

end A383734

/-! ## A383734.P1495106497657314314

`3*A077420(n)-1`
-/

namespace A383734.P1495106497657314314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077420 n - 1

end

end A383734.P1495106497657314314

namespace A383734

/-- `3*A077420(n)-1` -/
def P1495106497657314314.Spec : Prop :=
  ∀ n, P1495106497657314314.a n = A383734 (n + 1)

end A383734

/-!
# A383735: Array read by antidiagonals, where each row is the cluster series for percolation on the cells of a certain type of polyominoids.

The programs for A383735, there is no canonical definition to state claims against.
-/

/-! ## A383735.P8220175097754751448

`A366768(A135381(n+1))`
-/

namespace A383735.P8220175097754751448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366768 (A135381 (n + 1)).toNat

end

end A383735.P8220175097754751448

/-! ## A383735.P16266210144574049833

`A366768(A135382(n+2))`
-/

namespace A383735.P16266210144574049833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366768 (A135382 (n + 2)).toNat

end

end A383735.P16266210144574049833

/-! ## A383735.P6354955060132588595

`A366768(A351831(n+2))`
-/

namespace A383735.P6354955060132588595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366768 (A351831 (n + 2)).toNat

end

end A383735.P6354955060132588595

/-! ## A383735.P8978840702498477088

`A330944(2^A366768(n+1))`
-/

namespace A383735.P8978840702498477088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A366768 (n + 1) : ℤ))).toNat

end

end A383735.P8978840702498477088

/-! ## A383735.P6818235524673368426

`A356225(3^A366768(n+1))`
-/

namespace A383735.P6818235524673368426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A366768 (n + 1) : ℤ))).toNat

end

end A383735.P6818235524673368426

/-!
# A383737: Cluster series for percolation on polyominoid cells, with connections only between orthogonal cells ("hard" polyominoids).

The programs for A383737, there is no canonical definition to state claims against.
-/

/-! ## A383737.P2253724731574429325

`A060320(A188493(n+1))`
-/

namespace A383737.P2253724731574429325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060320 (A188493 (n + 1)).toNat

end

end A383737.P2253724731574429325

/-!
# A383738: Number of solutions to the n-queens puzzle in a n X n board that are not square root permutations of {n-1,...,2,1,0}.

The programs for A383738, there is no canonical definition to state claims against.
-/

/-! ## A383738.P7040150378150350016

`A000170(n+1)-A033148(n+1)`
-/

namespace A383738.P7040150378150350016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000170 (n + 1) - A033148 (n + 1)

end

end A383738.P7040150378150350016

/-! ## A383738.P17938176294353956445

`8*A260320(n+1)+4*A260319(n+1)`
-/

namespace A383738.P17938176294353956445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A260320 (n + 1) + 4 * A260319 (n + 1)

end

end A383738.P17938176294353956445

/-! ## A383738.P13385046244948593395

`A352729(A000170(n+1))`
-/

namespace A383738.P13385046244948593395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A000170 (n + 1)).toNat

end

end A383738.P13385046244948593395

/-! ## A383738.P18354598220181554010

`and(A000170(n+1), A377665(A087903(n+4)))`
-/

namespace A383738.P18354598220181554010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000170 (n + 1)) (A377665 (A087903 (n + 4)).toNat)

end

end A383738.P18354598220181554010

/-!
# A383740: a(0) = 4; a(n) = Pell(4*n)/Pell(n) for n > 0.

The programs for A383740, there is no canonical definition to state claims against.
-/

/-! ## A383740.P10535386261942946317

`A002203(n)*A003499(n)`
-/

namespace A383740.P10535386261942946317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n * A003499 n

end

end A383740.P10535386261942946317

/-! ## A383740.P2829915877275232492

`A002203(2*n)*A002203(n)`
-/

namespace A383740.P2829915877275232492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) * A002203 n

end

end A383740.P2829915877275232492

/-! ## A383740.P1042818608060035122

`Δ[A249576(3*n+2)]*A003499(n)`
-/

namespace A383740.P1042818608060035122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003499 n

end

end A383740.P1042818608060035122

/-! ## A383740.P6351044303140797624

`A284126(A117625(n))`
-/

namespace A383740.P6351044303140797624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284126 (A117625 n).toNat

end

end A383740.P6351044303140797624

/-! ## A383740.P11037807998169798294

`A284126(A140064(n))`
-/

namespace A383740.P11037807998169798294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284126 (A140064 n).toNat

end

end A383740.P11037807998169798294

/-!
# A383741: a(0) = 5; a(n) = Pell(5*n)/Pell(n) for n > 0.

The programs for A383741, there is no canonical definition to state claims against.
-/

/-! ## A383741.P5154509368923413448

`A002203(3*n)*A002203(n)+1`
-/

namespace A383741.P5154509368923413448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (3 * n) * A002203 n + 1

end

end A383741.P5154509368923413448

/-! ## A383741.P60264200445448702

`A383742(eq[5, A144328(n+1)])`
-/

namespace A383741.P60264200445448702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383741.P60264200445448702

/-! ## A383741.P9868048020101697071

`A383742(A000217(n+6)-(n+1))`
-/

namespace A383741.P9868048020101697071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383742 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A383741.P9868048020101697071

/-!
# A383742: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of g.f. x/(1 - A002203(k)*x + (-1)^k*x^2).

The programs for A383742, there is no canonical definition to state claims against.
-/

/-! ## A383742.P15773437464053081078

`xor(A103438(n), A108611(A211399(n)))`
-/

namespace A383742.P15773437464053081078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103438 n) (A108611 (A211399 n).toNat)

end

end A383742.P15773437464053081078

/-! ## A383742.P5601015647123942971

`A335095(n)%A335080(A124776(n))`
-/

namespace A383742.P5601015647123942971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335095 n) (A335080 (A124776 n).toNat)

end

end A383742.P5601015647123942971

/-! ## A383742.P1882388996978344270

`A358008(A008305(n+1)*A008596(n+1))`
-/

namespace A383742.P1882388996978344270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358008 ((A008305 (n + 1) * A008596 (n + 1)).toNat + 87)

end

end A383742.P1882388996978344270

/-!
# A383744: The number of distinct straightedge-and-compass constructions that can be made with a total of n lines and circles up to rigid motion.

The programs for A383744, there is no canonical definition to state claims against.
-/

/-! ## A383744.P1070742700309067185

`A028920(n)*A187207(A062207(n))`
-/

namespace A383744.P1070742700309067185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n * A187207 (A062207 n).toNat

end

end A383744.P1070742700309067185

/-!
# A383745: Numbers k of the form x*(x+1) whose sum of digits is of the form y*(y+1).

The programs for A383745, there is no canonical definition to state claims against.
-/

/-! ## A383745.P13780607890640953961

`lt[A309936(n+1), A000035(A101337(n+1))]`
-/

namespace A383745.P13780607890640953961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A101337 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383745.P13780607890640953961

/-! ## A383745.P8170996761983661559

`∩[A179082(n+1), A004526(A001844(n))]`
-/

namespace A383745.P8170996761983661559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001844 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383745.P8170996761983661559

/-! ## A383745.P243548834298339031

`∩[A179081(2*n)+2*n, A005843(A000217(n))]`
-/

namespace A383745.P243548834298339031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (2 * n) + (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000217 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383745.P243548834298339031

/-! ## A383745.P12421745067656392854

`∩[A166048(n+1), A179082(n+1)]`
-/

namespace A383745.P12421745067656392854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383745.P12421745067656392854

/-!
# A383747: Consider the polynomial P(m,z) = Sum_{k=1..r} d(k)*z^(k-1) where d(1) < d(2) < ... < d(r) are the r divisors of m. The sequence lists the numbers m such that P(m,z) contains at least three zeros of the form -1/q, i/q, -i/q, for some integer q, i = sqrt(-1).

The programs for A383747, there is no canonical definition to state claims against.
-/

/-! ## A383747.P14924951812852899121

`∩[A175496(n+1), A335650(n+1)]`
-/

namespace A383747.P14924951812852899121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383747.P14924951812852899121

/-! ## A383747.P14299350300883520208

`∩[A335650(n+1), A336593(n+1)]`
-/

namespace A383747.P14299350300883520208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383747.P14299350300883520208

/-! ## A383747.P18052453161436973900

`∩[A291127(n+1), A385097(n+1)]`
-/

namespace A383747.P18052453161436973900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383747.P18052453161436973900

/-!
# A383748: a(n) = q is the smallest integer, such that the numbers -1/q, i/q, -i/q with i = sqrt(-1), are three zeros of the polynomial P(A783747(n),z) = Sum_{k=1..r} d(k)*z^(k-1) where d(1) < d(2), ..., < d(r) are the r divisors of A383747(n).

The programs for A383748, there is no canonical definition to state claims against.
-/

/-! ## A383748.P16873228797400444576

`A014673(A383747(n+1))`
-/

namespace A383748.P16873228797400444576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A383747 (n + 1)).toNat

end

end A383748.P16873228797400444576

/-! ## A383748.P17517098622905761544

`A055229(floor(sqrt(A383747(n+1)²+1)))`
-/

namespace A383748.P17517098622905761544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (Int.sqrt (A383747 (n + 1) ^ 2 + 1)).toNat

end

end A383748.P17517098622905761544

/-! ## A383748.P11578067257130053602

`A055229(A383747(n+1))%A005936(n+1)`
-/

namespace A383748.P11578067257130053602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055229 (A383747 (n + 1)).toNat) (A005936 (n + 1))

end

end A383748.P11578067257130053602

/-! ## A383748.P10190687606129148192

`A055229(A383747(n+1)%A185477(n+1))`
-/

namespace A383748.P10190687606129148192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (Int.tmod (A383747 (n + 1)) (A185477 (n + 1))).toNat

end

end A383748.P10190687606129148192

/-! ## A383748.P345667571830566738

`A055229(A383747(n+1))+C(n, A017281(n))`
-/

namespace A383748.P345667571830566738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A383747 (n + 1)).toNat + (Nat.choose n (A017281 n).toNat : ℤ)

end

end A383748.P345667571830566738

/-! ## A383748.P14176467233101329892

`A055229(A383747(n+1))+C(n, A001358(n+1))`
-/

namespace A383748.P14176467233101329892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A383747 (n + 1)).toNat + (Nat.choose n (A001358 (n + 1)).toNat : ℤ)

end

end A383748.P14176467233101329892

/-! ## A383748.P14816425463162426667

`A055229(A383747(n+1))+C(n, A046257(n+1))`
-/

namespace A383748.P14816425463162426667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A383747 (n + 1)).toNat + (Nat.choose n (A046257 (n + 1)).toNat : ℤ)

end

end A383748.P14816425463162426667

/-! ## A383748.P2271892402421689865

`A055229(A383747(n+1))+C(n, A246281(n+1))`
-/

namespace A383748.P2271892402421689865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A383747 (n + 1)).toNat + (Nat.choose n (A246281 (n + 1)).toNat : ℤ)

end

end A383748.P2271892402421689865

/-! ## A383748.P9756141174100404591

`A055229(4*A383747(n+1))`
-/

namespace A383748.P9756141174100404591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (4 * A383747 (n + 1)).toNat

end

end A383748.P9756141174100404591

/-!
# A383749: Positive numbers k whose decimal expansion does not contain the decimal expansion of any proper divisor of k.

The programs for A383749, there is no canonical definition to state claims against.
-/

/-! ## A383749.P7212728838815905847

`record[A121042(n+1)]`
-/

namespace A383749.P7212728838815905847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383749.P7212728838815905847

/-! ## A383749.P9658698273372943711

`eq[1, char[A121042(n+4)]]`
-/

namespace A383749.P9658698273372943711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (n + 4)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383749.P9658698273372943711

/-! ## A383749.P10853435694382062600

`eq[1, A121041(n+1)]+1`
-/

namespace A383749.P10853435694382062600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383749.P10853435694382062600

/-! ## A383749.P15358343178309658584

`eq[n, A121042(abs(1-n)+1)]`
-/

namespace A383749.P15358343178309658584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383749.P15358343178309658584

/-! ## A383749.P13826726399154439525

`eq[n+1, A355620(n+1)]+1`
-/

namespace A383749.P13826726399154439525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383749.P13826726399154439525

/-!
# A383750: a(n) = number of iterations of z -> z^2 + c(n) with c(n) = 1/n + (2/(n^2))*i - 1/8 + (3*sqrt(3)/8)*i to reach |z| > 2, starting with z = 0.

The programs for A383750, there is no canonical definition to state claims against.
-/

/-! ## A383750.P17342408598049478963

`floor((A301724(2*n+1)+A124762(3*n+2))/6)`
-/

namespace A383750.P17342408598049478963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301724 (2 * n + 1) + A124762 (3 * n + 2) : ℚ) / 6⌋

end

end A383750.P17342408598049478963

/-! ## A383750.P5616712625259742343

`A157685(A072154(n+1))+n`
-/

namespace A383750.P5616712625259742343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A072154 (n + 1)).toNat + (n : ℤ)

end

end A383750.P5616712625259742343

/-! ## A383750.P8384588455995769768

`∑[A040434(A299258(2*n+3))]-1`
-/

namespace A383750.P8384588455995769768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040434 (A299258 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A383750.P8384588455995769768

/-! ## A383750.P7918462024122765103

`A187318(n)+A000035(A154233(n))`
-/

namespace A383750.P7918462024122765103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n + A000035 (A154233 n).toNat

end

end A383750.P7918462024122765103

/-! ## A383750.P17569259562508252424

`A187318(n)+A006519(A046347(n+1))`
-/

namespace A383750.P17569259562508252424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n + A006519 (A046347 (n + 1)).toNat

end

end A383750.P17569259562508252424

/-!
# A383751: Number of Carlitz compositions of n with parts in standard order.

The programs for A383751, there is no canonical definition to state claims against.
-/

/-! ## A383751.P11587511801260277531

`A380822(∑[abs(1-n)])`
-/

namespace A383751.P11587511801260277531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383751.P11587511801260277531

/-! ## A383751.P9770016472906656553

`A352891(2*n+5)*A380822(A152947(n+1))`
-/

namespace A383751.P9770016472906656553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352891 (2 * n + 5) * A380822 (A152947 (n + 1)).toNat

end

end A383751.P9770016472906656553

/-!
# A383753: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = 2^(n-k) * T(n-1,k-1) + 3^k * T(n-1,k) with T(n,k) = n^k if n*k=0.

The programs for A383753, there is no canonical definition to state claims against.
-/

/-! ## A383753.P18283355430597130912

`A261393(A022168(n))`
-/

namespace A383753.P18283355430597130912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A022168 n).toNat

end

end A383753.P18283355430597130912

/-!
# A383754: Expansion of 1/Product_{k=0..3} (1 - 2^k * 3^(3-k) * x).

The programs for A383754, there is no canonical definition to state claims against.
-/

/-! ## A383754.P8224651289834138877

`A383753(A167614(n+2))`
-/

namespace A383754.P8224651289834138877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383753 (A167614 (n + 2)).toNat

end

end A383754.P8224651289834138877

/-! ## A383754.P1165276917972049807

`A383753(A141214(n)+6)`
-/

namespace A383754.P1165276917972049807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383753 (A141214 n + 6).toNat

end

end A383754.P1165276917972049807

/-! ## A383754.P765626827118220516

`A383753(eq[3, A025581(n)])`
-/

namespace A383754.P765626827118220516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383754.P765626827118220516

/-!
# A383755: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = 3^(n-k) * T(n-1,k-1) + 4^k * T(n-1,k) with T(n,k) = n^k if n*k=0.

The programs for A383755, there is no canonical definition to state claims against.
-/

/-! ## A383755.P633232541424111388

`A119733(A022168(n))`
-/

namespace A383755.P633232541424111388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A022168 n).toNat

end

end A383755.P633232541424111388

/-! ## A383755.P9369788090105924656

`A261393(A022172(n))`
-/

namespace A383755.P9369788090105924656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A022172 n).toNat

end

end A383755.P9369788090105924656

/-! ## A383755.P17629850702369913942

`A115733(A176639(n))`
-/

namespace A383755.P17629850702369913942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115733 (A176639 n).toNat

end

end A383755.P17629850702369913942

/-! ## A383755.P7905993393284994988

`A303739(A178346(n))`
-/

namespace A383755.P7905993393284994988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303739 (A178346 n).toNat

end

end A383755.P7905993393284994988

/-! ## A383755.P9046576665589855508

`A320634(A168552(n))`
-/

namespace A383755.P9046576665589855508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (A168552 n).toNat

end

end A383755.P9046576665589855508

/-!
# A383756: Expansion of 1/Product_{k=0..2} (1 - 3^k * 4^(2-k) * x).

The programs for A383756, the canonical program `A383756.P12147955923966923030` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383756 has offset 0).

The definition of A383756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383756.P12147955923966923030

`(3*9^(n+1)-7*12^(n+1)+4*16^(n+1))/7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383756

/-- `(3*9^(n+1)-7*12^(n+1)+4*16^(n+1))/7` -/
def P12147955923966923030.Spec : Prop :=
  ∀ n, P12147955923966923030.a n = (A383756 n : ℚ)

end A383756

/-! ## A383756.P1244772800213965080

`A383755(∑[n+3])`
-/

namespace A383756.P1244772800213965080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383756.P1244772800213965080

namespace A383756

/-- `A383755(∑[n+3])` -/
def P1244772800213965080.Spec : Prop :=
  ∀ n, P1244772800213965080.a n = A383756 n

end A383756

/-!
# A383757: Expansion of 1/Product_{k=0..3} (1 - 3^k * 4^(3-k) * x).

The programs for A383757, there is no canonical definition to state claims against.
-/

/-! ## A383757.P13582602778121038946

`A383755(A167614(n+2))`
-/

namespace A383757.P13582602778121038946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383755 (A167614 (n + 2)).toNat

end

end A383757.P13582602778121038946

/-! ## A383757.P3475763894669628977

`A383755(A074775(3*(n+1))-A362708(n+1))`
-/

namespace A383757.P3475763894669628977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383755 (A074775 (3 * (n + 1)) - A362708 (n + 1)).toNat

end

end A383757.P3475763894669628977

/-!
# A383761: Irregular triangle read by rows in which the n-th row lists the exponential squarefree exponential divisors of n.

The programs for A383761, there is no canonical definition to state claims against.
-/

/-! ## A383761.P8907572139830733605

`A338782(A361255(n+1)%A194405(3*(n+1)))`
-/

namespace A383761.P8907572139830733605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (Int.tmod (A361255 (n + 1)) (A194405 (3 * (n + 1)))).toNat

end

end A383761.P8907572139830733605

/-! ## A383761.P16884131315509869059

`filter[A322791(n+1), A370598(#)]`
-/

namespace A383761.P16884131315509869059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A383761.P16884131315509869059

/-! ## A383761.P4280532715736530478

`A361255(n+1)%A366855(n+1)`
-/

namespace A383761.P4280532715736530478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361255 (n + 1)) (A366855 (n + 1))

end

end A383761.P4280532715736530478

/-! ## A383761.P5707995998826994519

`A322791(A335469(n+2)%A335485(2*n+1))`
-/

namespace A383761.P5707995998826994519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (Int.tmod (A335469 (n + 2)) (A335485 (2 * n + 1))).toNat

end

end A383761.P5707995998826994519

/-!
# A383762: The number of unitary divisors of n that are exponentially squarefree numbers.

The programs for A383762, the canonical program `A383762.P17957299951470629655` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383762 has offset 1).

The definition of A383762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383762.P6173432018319444152

`2^A384421(n+1)`
-/

namespace A383762.P6173432018319444152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A384421 (n + 1) : ℤ)

end

end A383762.P6173432018319444152

namespace A383762

/-- `2^A384421(n+1)` -/
def P6173432018319444152.Spec : Prop :=
  ∀ n, P6173432018319444152.a n = (A383762 (n + 1) : ℚ)

end A383762

/-! ## A383762.P17957299951470629655

`∏{e}[n+1, A008966(#)+1]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A383762

/-- `∏{e}[n+1, A008966(#)+1]` -/
def P17957299951470629655.Spec : Prop :=
  ∀ n, P17957299951470629655.a n = A383762 (n + 1)

theorem P17957299951470629655.correct : P17957299951470629655.Spec := by
  intro n
  simp only [A383762, Nat.add_sub_cancel]

end A383762

/-! ## A383762.P3117873853419766133

`∏{e}[n+1, A008683(#)²+1]`
-/

namespace A383762.P3117873853419766133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A008683 (Nat.factorization (f1 n) p) ^ 2 + 1)

end

end A383762.P3117873853419766133

namespace A383762

/-- `∏{e}[n+1, A008683(#)²+1]` -/
def P3117873853419766133.Spec : Prop :=
  ∀ n, P3117873853419766133.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P8328852901131905107

`A034444(A383764(n+1))`
-/

namespace A383762.P8328852901131905107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A383764 (n + 1)).toNat

end

end A383762.P8328852901131905107

namespace A383762

/-- `A034444(A383764(n+1))` -/
def P8328852901131905107.Spec : Prop :=
  ∀ n, P8328852901131905107.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P11637107762291975264

`A392451(A384555(n+1)²)`
-/

namespace A383762.P11637107762291975264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392451 (A384555 (n + 1) ^ 2).toNat

end

end A383762.P11637107762291975264

namespace A383762

/-- `A392451(A384555(n+1)²)` -/
def P11637107762291975264.Spec : Prop :=
  ∀ n, P11637107762291975264.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P17080728916590827358

`A368883((n+1)*A350389(n+1))`
-/

namespace A383762.P17080728916590827358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368883 ((n + 1 : ℤ) * A350389 (n + 1)).toNat

end

end A383762.P17080728916590827358

namespace A383762

/-- `A368883((n+1)*A350389(n+1))` -/
def P17080728916590827358.Spec : Prop :=
  ∀ n, P17080728916590827358.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P1705359819710252598

`A365488(A048798(A019555((n+1)²)))`
-/

namespace A383762.P1705359819710252598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A048798 (A019555 ((n + 1) ^ 2)).toNat).toNat

end

end A383762.P1705359819710252598

namespace A383762

/-- `A365488(A048798(A019555((n+1)²)))` -/
def P1705359819710252598.Spec : Prop :=
  ∀ n, P1705359819710252598.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P5880791586615800039

`A278908(A007947(A383764(n+1))²)`
-/

namespace A383762.P5880791586615800039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A007947 (A383764 (n + 1)).toNat ^ 2).toNat

end

end A383762.P5880791586615800039

namespace A383762

/-- `A278908(A007947(A383764(n+1))²)` -/
def P5880791586615800039.Spec : Prop :=
  ∀ n, P5880791586615800039.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P304840035497846245

`A368883(A007948(A384555(n+1)²))`
-/

namespace A383762.P304840035497846245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368883 (A007948 (A384555 (n + 1) ^ 2).toNat).toNat

end

end A383762.P304840035497846245

namespace A383762

/-- `A368883(A007948(A384555(n+1)²))` -/
def P304840035497846245.Spec : Prop :=
  ∀ n, P304840035497846245.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P16234291297689071270

`A055076(A000188((n+1)*A350389(n+1)))`
-/

namespace A383762.P16234291297689071270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A000188 ((n + 1 : ℤ) * A350389 (n + 1)).toNat).toNat

end

end A383762.P16234291297689071270

namespace A383762

/-- `A055076(A000188((n+1)*A350389(n+1)))` -/
def P16234291297689071270.Spec : Prop :=
  ∀ n, P16234291297689071270.a n = A383762 (n + 1)

end A383762

/-! ## A383762.P6202608159897504767

`A392451(A384555(n+1)*A384555(n+1))`
-/

namespace A383762.P6202608159897504767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392451 (A384555 (n + 1) * A384555 (n + 1)).toNat

end

end A383762.P6202608159897504767

namespace A383762

/-- `A392451(A384555(n+1)*A384555(n+1))` -/
def P6202608159897504767.Spec : Prop :=
  ∀ n, P6202608159897504767.a n = A383762 (n + 1)

end A383762

/-!
# A383763: The sum of unitary divisors of n that are exponentially squarefree numbers.

The programs for A383763, the canonical program `A383763.P993383120488087921` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383763 has offset 1).

The definition of A383763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383763.P993383120488087921

`A034448(A383764(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A383763

/-- `A034448(A383764(n+1))` -/
def P993383120488087921.Spec : Prop :=
  ∀ n, P993383120488087921.a n = A383763 (n + 1)

theorem P993383120488087921.correct : P993383120488087921.Spec := by
  intro n
  simp only [A383763, Nat.add_sub_cancel]

end A383763

/-! ## A383763.P7379499481398896932

`A034448(n+1)%A334333(A269526(2*n+3))`
-/

namespace A383763.P7379499481398896932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A334333 (A269526 (2 * n + 3)).toNat)

end

end A383763.P7379499481398896932

namespace A383763

/-- `A034448(n+1)%A334333(A269526(2*n+3))` -/
def P7379499481398896932.Spec : Prop :=
  ∀ n, P7379499481398896932.a n = A383763 (n + 1)

end A383763

/-! ## A383763.P10935620471563391930

`A034448(n+1)%A033431(A331309(n+1))`
-/

namespace A383763.P10935620471563391930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A033431 (A331309 (n + 1)).toNat)

end

end A383763.P10935620471563391930

namespace A383763

/-- `A034448(n+1)%A033431(A331309(n+1))` -/
def P10935620471563391930.Spec : Prop :=
  ∀ n, P10935620471563391930.a n = A383763 (n + 1)

end A383763

/-! ## A383763.P1883753790771641659

`gcd(A034448(n+1), A250070(A034448(2*n+3)))`
-/

namespace A383763.P1883753790771641659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A250070 (A034448 (2 * n + 3)).toNat)

end

end A383763.P1883753790771641659

namespace A383763

/-- `gcd(A034448(n+1), A250070(A034448(2*n+3)))` -/
def P1883753790771641659.Spec : Prop :=
  ∀ n, (P1883753790771641659.a n : ℤ) = A383763 (n + 1)

end A383763

/-! ## A383763.P5628616335613013034

`A385049(n+1)%A101640(n+5)`
-/

namespace A383763.P5628616335613013034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385049 (n + 1)) (A101640 (n + 5))

end

end A383763.P5628616335613013034

namespace A383763

/-- `A385049(n+1)%A101640(n+5)` -/
def P5628616335613013034.Spec : Prop :=
  ∀ n, P5628616335613013034.a n = A383763 (n + 1)

end A383763

/-!
# A383764: The largest unitary divisor of n that is an exponentially squarefree number.

The programs for A383764, the canonical program `A383764.P4000777454404002987` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383764 has offset 1).

The definition of A383764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383764.P4000777454404002987

`A071974((n+1)*A365683(n+1))`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A383764

/-- `A071974((n+1)*A365683(n+1))` -/
def P4000777454404002987.Spec : Prop :=
  ∀ n, P4000777454404002987.a n = A383764 (n + 1)

theorem P4000777454404002987.correct : P4000777454404002987.Spec := by
  intro n
  simp only [A383764, Nat.add_sub_cancel]

end A383764

/-! ## A383764.P5752241818425499949

`A365684(n+1)%A319829(n+1)`
-/

namespace A383764.P5752241818425499949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365684 (n + 1)) (A319829 (n + 1))

end

end A383764.P5752241818425499949

namespace A383764

/-- `A365684(n+1)%A319829(n+1)` -/
def P5752241818425499949.Spec : Prop :=
  ∀ n, P5752241818425499949.a n = A383764 (n + 1)

end A383764

/-! ## A383764.P953769656310173753

`(n+1)%A019278(A129227(n+1))`
-/

namespace A383764.P953769656310173753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A019278 (A129227 (n + 1)).toNat)

end

end A383764.P953769656310173753

namespace A383764

/-- `(n+1)%A019278(A129227(n+1))` -/
def P953769656310173753.Spec : Prop :=
  ∀ n, P953769656310173753.a n = A383764 (n + 1)

end A383764

/-! ## A383764.P11280196047229474775

`gcd(n+1, A010815(A185233(n+1)))`
-/

namespace A383764.P11280196047229474775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010815 (A185233 (n + 1)).toNat)

end

end A383764.P11280196047229474775

namespace A383764

/-- `gcd(n+1, A010815(A185233(n+1)))` -/
def P11280196047229474775.Spec : Prop :=
  ∀ n, (P11280196047229474775.a n : ℤ) = A383764 (n + 1)

end A383764

/-! ## A383764.P1329783339547365698

`A000027(n+1)%A004720(A000217(3*n+2))`
-/

namespace A383764.P1329783339547365698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A004720 (A000217 (3 * n + 2)).toNat)

end

end A383764.P1329783339547365698

namespace A383764

/-- `A000027(n+1)%A004720(A000217(3*n+2))` -/
def P1329783339547365698.Spec : Prop :=
  ∀ n, P1329783339547365698.a n = A383764 (n + 1)

end A383764

/-!
# A383765: Number of compositions of n such that between any pair of equal adjacent parts there can be a pair of brackets enclosing a new nonempty composition with the same rules.

The programs for A383765, there is no canonical definition to state claims against.
-/

/-! ## A383765.P7742169994911301053

`A024417(A289612(n))`
-/

namespace A383765.P7742169994911301053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A289612 n).toNat

end

end A383765.P7742169994911301053

/-! ## A383765.P18191736704848951779

`A226190(A249561(n+1))`
-/

namespace A383765.P18191736704848951779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A249561 (n + 1)).toNat

end

end A383765.P18191736704848951779

/-! ## A383765.P2843654044238400032

`A267043(A000142(n))+A148160(n)`
-/

namespace A383765.P2843654044238400032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 (A000142 n).toNat + A148160 n

end

end A383765.P2843654044238400032

/-!
# A383766: a(n) is the number of numbers k (0 <= k < n) such that there exist solutions of x^3 + x == y^2 + 1 == k (mod n).

The programs for A383766, there is no canonical definition to state claims against.
-/

/-! ## A383766.P12842657323931146961

`A241597(∑{d}[n+1, #%2]*A043320(n+1))`
-/

namespace A383766.P12842657323931146961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241597 (((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) * A043320 (n + 1)).toNat

end

end A383766.P12842657323931146961

/-! ## A383766.P1819486452798841781

`lcm(A329312(n+1), A333632((n+1)²/∏{p}[n+1, #]))`
-/

namespace A383766.P1819486452798841781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A329312 (n + 1)) (A333632 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A383766.P1819486452798841781

/-! ## A383766.P4104132589738105594

`A357992(A357975(n+1)%A111441(n+2))`
-/

namespace A383766.P4104132589738105594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357992 (Int.tmod (A357975 (n + 1)) (A111441 (n + 2))).toNat

end

end A383766.P4104132589738105594

/-! ## A383766.P4118692251129494227

`A000120(2*(n+1))*A088530(A219045(n+1))`
-/

namespace A383766.P4118692251129494227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * (n + 1)) * A088530 (A219045 (n + 1)).toNat

end

end A383766.P4118692251129494227

/-! ## A383766.P8214623885726041996

`∑{e}[A002893(floor(n/(xor(n, n+1)+1))+1), #]`
-/

namespace A383766.P8214623885726041996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A383766.P8214623885726041996

/-!
# A383767: a(n) = [x^n] Product_{k=0..n-1} (1 + k*x)/(1 - k*x).

The programs for A383767, there is no canonical definition to state claims against.
-/

/-! ## A383767.P16963647533146547386

`A383900(2*n²)`
-/

namespace A383767.P16963647533146547386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383900 (2 * n ^ 2)

end

end A383767.P16963647533146547386

/-! ## A383767.P18032825469645650644

`A383900(A001105(n))^A257990(n+1)`
-/

namespace A383767.P18032825469645650644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383900 (A001105 n).toNat : ℚ) ^ (A257990 (n + 1) : ℤ)

end

end A383767.P18032825469645650644

/-!
# A383768: Numerators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

The programs for A383768, there is no canonical definition to state claims against.
-/

/-! ## A383768.P5162289979559135987

`A300955(A300955(n+1))*A318649(n+1)`
-/

namespace A383768.P5162289979559135987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (A300955 (n + 1)).toNat * A318649 (n + 1)

end

end A383768.P5162289979559135987

/-! ## A383768.P1128901444100244172

`A070939(A090764(n))*A318649(n+1)`
-/

namespace A383768.P1128901444100244172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A090764 n).toNat * A318649 (n + 1)

end

end A383768.P1128901444100244172

/-! ## A383768.P6939329569610142397

`A268387(A000079(n+1))*A318649(n+1)`
-/

namespace A383768.P6939329569610142397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A000079 (n + 1)).toNat * A318649 (n + 1)

end

end A383768.P6939329569610142397

/-! ## A383768.P11676056797990183770

`A001511(A364956(2*n+3))*A318649(n+1)`
-/

namespace A383768.P11676056797990183770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A364956 (2 * n + 3)).toNat * A318649 (n + 1)

end

end A383768.P11676056797990183770

/-! ## A383768.P5218383537547537560

`A007814(A308709(2*n+3))*A318649(n+1)`
-/

namespace A383768.P5218383537547537560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A308709 (2 * n + 3)).toNat * A318649 (n + 1)

end

end A383768.P5218383537547537560

/-!
# A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

The programs for A383769, the canonical program `A383769.P11406854060680008032` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383769 has offset 1).

The definition of A383769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383769.P11406854060680008032

`ceil(A318512(n+1)/2^val(n+1, 2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383769

/-- `ceil(A318512(n+1)/2^val(n+1, 2))` -/
def P11406854060680008032.Spec : Prop :=
  ∀ n, P11406854060680008032.a n = A383769 (n + 1)

theorem P11406854060680008032.correct : P11406854060680008032.Spec := by
  intro n
  simp only [A383769, Nat.add_sub_cancel]

end A383769

/-! ## A383769.P12923984547509022256

`A318658(n+1)*A330098(A000203(n+1))`
-/

namespace A383769.P12923984547509022256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318658 (n + 1) * A330098 (A000203 (n + 1)).toNat

end

end A383769.P12923984547509022256

namespace A383769

/-- `A318658(n+1)*A330098(A000203(n+1))` -/
def P12923984547509022256.Spec : Prop :=
  ∀ n, P12923984547509022256.a n = A383769 (n + 1)

end A383769

/-! ## A383769.P8071750674444293307

`lcm(A318658(A296240(3*n+5)), A318658(n+1))`
-/

namespace A383769.P8071750674444293307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A318658 (A296240 (3 * n + 5)).toNat) (A318658 (n + 1))

end

end A383769.P8071750674444293307

namespace A383769

/-- `lcm(A318658(A296240(3*n+5)), A318658(n+1))` -/
def P8071750674444293307.Spec : Prop :=
  ∀ n, (P8071750674444293307.a n : ℤ) = A383769 (n + 1)

end A383769

/-! ## A383769.P7165373870400121098

`A353475(A089840(3*n+4))+A318658(n+1)`
-/

namespace A383769.P7165373870400121098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (A089840 (3 * n + 4)).toNat + A318658 (n + 1)

end

end A383769.P7165373870400121098

namespace A383769

/-- `A353475(A089840(3*n+4))+A318658(n+1)` -/
def P7165373870400121098.Spec : Prop :=
  ∀ n, P7165373870400121098.a n = A383769 (n + 1)

end A383769

/-! ## A383769.P4914201201926607554

`A317934(lcm(n%2+(n+1)², A349630(2*n+5)))`
-/

namespace A383769.P4914201201926607554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (Int.lcm ((n % 2 + (n + 1) ^ 2 : ℕ) : ℤ) (A349630 (2 * n + 5)))

end

end A383769.P4914201201926607554

namespace A383769

/-- `A317934(lcm(n%2+(n+1)², A349630(2*n+5)))` -/
def P4914201201926607554.Spec : Prop :=
  ∀ n, P4914201201926607554.a n = A383769 (n + 1)

end A383769

/-!
# A383770: Number of nonnesting permutations of [n] avoiding 231 (and by symmetry 132, 213, or 312).

The programs for A383770, there is no canonical definition to state claims against.
-/

/-! ## A383770.P4240464011417272657

`A260734(A202830(n)-n)`
-/

namespace A383770.P4240464011417272657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A202830 n - (n : ℤ)).toNat

end

end A383770.P4240464011417272657

/-! ## A383770.P8002846923776415138

`A100196(or(n, A004149(3*n)))`
-/

namespace A383770.P8002846923776415138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (n : ℤ) (A004149 (3 * n))).toNat

end

end A383770.P8002846923776415138

/-!
# A383771: Number of noncrossing permutations of [n] avoiding 213 (and by symmetry 132, 213, or 312).

The programs for A383771, there is no canonical definition to state claims against.
-/

/-! ## A383771.P1455837462662610393

`A367368(A294591(n))`
-/

namespace A383771.P1455837462662610393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367368 (A294591 n).toNat

end

end A383771.P1455837462662610393

/-! ## A383771.P17176185857504141305

`A199876(n)-A241463(A000041(n))`
-/

namespace A383771.P17176185857504141305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199876 n - A241463 (A000041 n).toNat

end

end A383771.P17176185857504141305

/-!
# A383772: a(n) = neg(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (1, 2, ... , n), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A383772, there is no canonical definition to state claims against.
-/

/-! ## A383772.P15400824614596358841

`A052182(n+1)-A383773(n+1)`
-/

namespace A383772.P15400824614596358841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052182 (n + 1) - A383773 (n + 1)

end

end A383772.P15400824614596358841

/-! ## A383772.P2666742327490645906

`A383773(n+1)-A085719(n+1)`
-/

namespace A383772.P2666742327490645906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383773 (n + 1) - A085719 (n + 1)

end

end A383772.P2666742327490645906

/-! ## A383772.P3202509787467855357

`A081132(n)/Δ[A001057(n)]-A383773(n+1)`
-/

namespace A383772.P3202509787467855357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081132 n : ℚ) / (f1 (n + 1) - f1 n : ℚ) - (A383773 (n + 1) : ℚ)

end

end A383772.P3202509787467855357

/-!
# A383773: a(n) = pos(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (1, 2, ... , n), and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A383773, there is no canonical definition to state claims against.
-/

/-! ## A383773.P4818210053390980826

`A383772(n+1)+A085719(n+1)`
-/

namespace A383773.P4818210053390980826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383772 (n + 1) + A085719 (n + 1)

end

end A383773.P4818210053390980826

/-! ## A383773.P1088460217196555301

`A052182(n+1)-A383772(n+1)`
-/

namespace A383773.P1088460217196555301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052182 (n + 1) - A383772 (n + 1)

end

end A383773.P1088460217196555301

/-! ## A383773.P16234228305142345437

`A081132(n)/Δ[A001057(n)]-A383772(n+1)`
-/

namespace A383773.P16234228305142345437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081132 n : ℚ) / (f1 (n + 1) - f1 n : ℚ) - (A383772 (n + 1) : ℚ)

end

end A383773.P16234228305142345437

/-!
# A383774: a(n) = neg(M(n)), where M(n) is the n X n left circulant matrix with (row 1) = (1, 2, ... , n), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A383774, there is no canonical definition to state claims against.
-/

/-! ## A383774.P10822668953612078927

`A383775(n+1)-A085719(n+1)`
-/

namespace A383774.P10822668953612078927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383775 (n + 1) - A085719 (n + 1)

end

end A383774.P10822668953612078927

/-!
# A383775: a(n) = pos(M(n)), where M(n) is the n X n left circulant matrix with (row 1) = (1, 2, ... , n), and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A383775, there is no canonical definition to state claims against.
-/

/-! ## A383775.P1661630099125360163

`A383774(n+1)+A085719(n+1)`
-/

namespace A383775.P1661630099125360163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383774 (n + 1) + A085719 (n + 1)

end

end A383775.P1661630099125360163

/-!
# A383776: a(n) = (11*n + 3 + 6/(n+2)) * Catalan(n).

The programs for A383776, the canonical program `A383776.P498288519129441269` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383776 has offset 0).

The definition of A383776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383776.P17838389210219820466

`A088218(n+2)+record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=3`
-/

namespace A383776.P17838389210219820466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 (n + 2) : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383776.P17838389210219820466

namespace A383776

/-- `A088218(n+2)+record[a(n-1)/(floor(n/2)/n-1)]` -/
def P17838389210219820466.Spec : Prop :=
  ∀ n, P17838389210219820466.a n = (A383776 n : ℚ)

end A383776

/-! ## A383776.P498288519129441269

`A051960(n+1)+A000108(n)-A001791(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A383776

/-- `A051960(n+1)+A000108(n)-A001791(n)` -/
def P498288519129441269.Spec : Prop :=
  ∀ n, P498288519129441269.a n = A383776 n

theorem P498288519129441269.correct : P498288519129441269.Spec := by
  intro n
  simp only [A383776]

end A383776

/-! ## A383776.P1802280973332920216

`A001791(n+1)+A028283(n+1)+A000984(n)`
-/

namespace A383776.P1802280973332920216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + (A028283 (n + 1) + A000984 n)

end

end A383776.P1802280973332920216

namespace A383776

/-- `A001791(n+1)+A028283(n+1)+A000984(n)` -/
def P1802280973332920216.Spec : Prop :=
  ∀ n, P1802280973332920216.a n = A383776 n

end A383776

/-! ## A383776.P12465659161524686040

`A057977(2*n+3)+A008585(A067804(∑[n]))`
-/

namespace A383776.P12465659161524686040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 3) + A008585 (A067804 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A383776.P12465659161524686040

namespace A383776

/-- `A057977(2*n+3)+A008585(A067804(∑[n]))` -/
def P12465659161524686040.Spec : Prop :=
  ∀ n, P12465659161524686040.a n = A383776 n

end A383776

/-!
# A383778: a(n) = n*(n^2 - 3*n + 10)*2^(n-4).

The programs for A383778, the canonical program `A383778.P7441444959680470616` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383778 has offset 0).

The definition of A383778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383778.P7441444959680470616

`n*(n²-3*n+10)*2^(n-4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383778

/-- `n*(n²-3*n+10)*2^(n-4)` -/
def P7441444959680470616.Spec : Prop :=
  ∀ n, P7441444959680470616.a n = (A383778 n : ℚ)

end A383778

/-! ## A383778.P879680980902979520

`A046718(n+4)-A104270(n+1)`
-/

namespace A383778.P879680980902979520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046718 (n + 4) - A104270 (n + 1)

end

end A383778.P879680980902979520

namespace A383778

/-- `A046718(n+4)-A104270(n+1)` -/
def P879680980902979520.Spec : Prop :=
  ∀ n, P879680980902979520.a n = A383778 n

end A383778

/-! ## A383778.P10614417335094781239

`2*A384243(n+1)/(n+1)`
-/

namespace A383778.P10614417335094781239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A384243 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A383778.P10614417335094781239

namespace A383778

/-- `2*A384243(n+1)/(n+1)` -/
def P10614417335094781239.Spec : Prop :=
  ∀ n, P10614417335094781239.a n = (A383778 n : ℚ)

end A383778

/-!
# A383781: Primes where successively deleting the most significant digit yields a sequence that alternates between a prime and a nonprime at every step until a single-digit number remains.

The programs for A383781, there is no canonical definition to state claims against.
-/

/-! ## A383781.P5461640319149127458

`p?[lcm(11*floor(n/10)-n, ceil(9*n/10))]`
-/

namespace A383781.P5461640319149127458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) ⌈9 * ((n : ℚ) / 10)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A383781.P5461640319149127458

/-! ## A383781.P13275612223819803955

`p?[lt[A004086(n+2), 40]]`
-/

namespace A383781.P13275612223819803955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A383781.P13275612223819803955

/-! ## A383781.P1769750285932422522

`A158069(A077168(n))`
-/

namespace A383781.P1769750285932422522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158069 (A077168 n).toNat

end

end A383781.P1769750285932422522

/-! ## A383781.P14977338678907164773

`A095171(A158069(n+1))`
-/

namespace A383781.P14977338678907164773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095171 (A158069 (n + 1)).toNat

end

end A383781.P14977338678907164773

/-! ## A383781.P2078310193095441659

`p?[∑[A174354(A052947(n))]]`
-/

namespace A383781.P2078310193095441659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174354 (A052947 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383781.P2078310193095441659

/-!
# A383782: a(n) is the number of n-digit terms in A383781.

The programs for A383782, there is no canonical definition to state claims against.
-/

/-! ## A383782.P2517604689626428669

`A299634(A151374(n)/A262586(n))`
-/

namespace A383782.P2517604689626428669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 (SequenceMachineLib.roundAway ((A151374 n : ℚ) / (A262586 n : ℚ))).toNat

end

end A383782.P2517604689626428669

/-!
# A383783: a(n) = Sum_{k=1..2^n} mu(k) * (floor(2^n/k)^4 - floor((2^n-1)/k)^4).

The programs for A383783, the canonical program `A383783.P9434858666287389407` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383783 has offset 0).

The definition of A383783 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344597, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383783.P9434858666287389407

`A344597(2^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A383783

/-- `A344597(2^n)` -/
def P9434858666287389407.Spec : Prop :=
  ∀ n, P9434858666287389407.a n = A383783 n

theorem P9434858666287389407.correct : P9434858666287389407.Spec := by
  intro n
  simp only [A383783]

end A383783

/-! ## A383783.P6634347251147533325

`A100171(2^n)`
-/

namespace A383783.P6634347251147533325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100171 (2 ^ n)

end

end A383783.P6634347251147533325

namespace A383783

/-- `A100171(2^n)` -/
def P6634347251147533325.Spec : Prop :=
  ∀ n, P6634347251147533325.a n = A383783 n

end A383783

/-! ## A383783.P12437382899704217129

`record[A344597(A354169(n+1))]`
-/

namespace A383783.P12437382899704217129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344597 (A354169 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383783.P12437382899704217129

namespace A383783

/-- `record[A344597(A354169(n+1))]` -/
def P12437382899704217129.Spec : Prop :=
  ∀ n, P12437382899704217129.a n = A383783 n

end A383783

/-! ## A383783.P7165807528450620756

`or(A318715(n+1), A344597(A000079(n)))`
-/

namespace A383783.P7165807528450620756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318715 (n + 1)) (A344597 (A000079 n).toNat)

end

end A383783.P7165807528450620756

namespace A383783

/-- `or(A318715(n+1), A344597(A000079(n)))` -/
def P7165807528450620756.Spec : Prop :=
  ∀ n, P7165807528450620756.a n = A383783 n

end A383783

/-! ## A383783.P807557488767054831

`A344597(A000079(n))+A185015(3*n+1)`
-/

namespace A383783.P807557488767054831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344597 (A000079 n).toNat + A185015 (3 * n + 1)

end

end A383783.P807557488767054831

namespace A383783

/-- `A344597(A000079(n))+A185015(3*n+1)` -/
def P807557488767054831.Spec : Prop :=
  ∀ n, P807557488767054831.a n = A383783 n

end A383783

/-!
# A383784: Norms of vectors in any regular planar tiling (square or A2 lattice).

The programs for A383784, the canonical program `A383784.P16897109203414652711` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383784 has offset 1).

The definition of A383784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383784.P342464107627589296

`∪[A000404(n+1), A003136(n+1)]`
-/

namespace A383784.P342464107627589296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P342464107627589296

namespace A383784

/-- `∪[A000404(n+1), A003136(n+1)]` -/
def P342464107627589296.Spec : Prop :=
  ∀ n, (P342464107627589296.a n : ℤ) = A383784 (n + 1)

end A383784

/-! ## A383784.P14737093035221427095

`∪[A000415(n+1), A003136(n+1)]`
-/

namespace A383784.P14737093035221427095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P14737093035221427095

namespace A383784

/-- `∪[A000415(n+1), A003136(n+1)]` -/
def P14737093035221427095.Spec : Prop :=
  ∀ n, (P14737093035221427095.a n : ℤ) = A383784 (n + 1)

end A383784

/-! ## A383784.P16897109203414652711

`∪[A001481(n+1), A003136(n+1)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A383784

/-- `∪[A001481(n+1), A003136(n+1)]` -/
def P16897109203414652711.Spec : Prop :=
  ∀ n, (P16897109203414652711.a n : ℤ) = A383784 (n + 1)

theorem P16897109203414652711.correct : P16897109203414652711.Spec := by
  intro n
  simp only [A383784, Nat.add_sub_cancel]

end A383784

/-! ## A383784.P16957640247018345980

`∪[A003136(n+1), A005792(n+1)]`
-/

namespace A383784.P16957640247018345980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P16957640247018345980

namespace A383784

/-- `∪[A003136(n+1), A005792(n+1)]` -/
def P16957640247018345980.Spec : Prop :=
  ∀ n, (P16957640247018345980.a n : ℤ) = A383784 (n + 1)

end A383784

/-! ## A383784.P15107689315530091863

`∪[A001481(n+1), A024614(n+1)]`
-/

namespace A383784.P15107689315530091863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P15107689315530091863

namespace A383784

/-- `∪[A001481(n+1), A024614(n+1)]` -/
def P15107689315530091863.Spec : Prop :=
  ∀ n, (P15107689315530091863.a n : ℤ) = A383784 (n + 1)

end A383784

/-!
# A383785: Numbers not occurring as norms of vectors in any regular planar lattice.

The programs for A383785, the canonical program `A383785.P9174165813630133873` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383785 has offset 1).

The definition of A383785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383785.P9174165813630133873

`comp[A383784(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A383785

/-- `comp[A383784(n+1)]` -/
def P9174165813630133873.Spec : Prop :=
  ∀ n, (P9174165813630133873.a n : ℤ) = A383785 (n + 1)

theorem P9174165813630133873.correct : P9174165813630133873.Spec := by
  intro n
  simp only [A383785, Nat.add_sub_cancel]

end A383785

/-! ## A383785.P7351509251408668077

`∩[A018825(n+1), A034020(n+1)]`
-/

namespace A383785.P7351509251408668077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383785.P7351509251408668077

namespace A383785

/-- `∩[A018825(n+1), A034020(n+1)]` -/
def P7351509251408668077.Spec : Prop :=
  ∀ n, (P7351509251408668077.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P3083913625947383652

`∩[A022544(n+1), A034020(n+1)]`
-/

namespace A383785.P3083913625947383652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383785.P3083913625947383652

namespace A383785

/-- `∩[A022544(n+1), A034020(n+1)]` -/
def P3083913625947383652.Spec : Prop :=
  ∀ n, (P3083913625947383652.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P8814989437064466104

`eq[A004016(n), A025426(n)]`
-/

namespace A383785.P8814989437064466104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P8814989437064466104

namespace A383785

/-- `eq[A004016(n), A025426(n)]` -/
def P8814989437064466104.Spec : Prop :=
  ∀ n, (P8814989437064466104.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P4789676296827200445

`eq[A005928(n), A025426(n)]`
-/

namespace A383785.P4789676296827200445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P4789676296827200445

namespace A383785

/-- `eq[A005928(n), A025426(n)]` -/
def P4789676296827200445.Spec : Prop :=
  ∀ n, (P4789676296827200445.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P1719435755570020525

`eq[A005928(n), A037214(n)]`
-/

namespace A383785.P1719435755570020525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P1719435755570020525

namespace A383785

/-- `eq[A005928(n), A037214(n)]` -/
def P1719435755570020525.Spec : Prop :=
  ∀ n, (P1719435755570020525.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P9274077379060774935

`eq[A004016(n), A063725(n)]`
-/

namespace A383785.P9274077379060774935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P9274077379060774935

namespace A383785

/-- `eq[A004016(n), A063725(n)]` -/
def P9274077379060774935.Spec : Prop :=
  ∀ n, (P9274077379060774935.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P11220220828786533838

`eq[A005928(n), A063725(n)]`
-/

namespace A383785.P11220220828786533838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P11220220828786533838

namespace A383785

/-- `eq[A005928(n), A063725(n)]` -/
def P11220220828786533838.Spec : Prop :=
  ∀ n, (P11220220828786533838.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P14619080540694992300

`eq[A033716(n), A037214(n)]`
-/

namespace A383785.P14619080540694992300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P14619080540694992300

namespace A383785

/-- `eq[A033716(n), A037214(n)]` -/
def P14619080540694992300.Spec : Prop :=
  ∀ n, (P14619080540694992300.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P5783128496587308093

`eq[A037214(n), A088534(n)]`
-/

namespace A383785.P5783128496587308093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P5783128496587308093

namespace A383785

/-- `eq[A037214(n), A088534(n)]` -/
def P5783128496587308093.Spec : Prop :=
  ∀ n, (P5783128496587308093.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P8085816142505888519

`eq[A037214(n), A097109(n)]`
-/

namespace A383785.P8085816142505888519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P8085816142505888519

namespace A383785

/-- `eq[A037214(n), A097109(n)]` -/
def P8085816142505888519.Spec : Prop :=
  ∀ n, (P8085816142505888519.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P1042318298661697181

`eq[A025426(n), A113062(n)]`
-/

namespace A383785.P1042318298661697181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P1042318298661697181

namespace A383785

/-- `eq[A025426(n), A113062(n)]` -/
def P1042318298661697181.Spec : Prop :=
  ∀ n, (P1042318298661697181.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P8581591790683293186

`eq[A025426(n), A115978(n)]`
-/

namespace A383785.P8581591790683293186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P8581591790683293186

namespace A383785

/-- `eq[A025426(n), A115978(n)]` -/
def P8581591790683293186.Spec : Prop :=
  ∀ n, (P8581591790683293186.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P7653158325417234111

`eq[A004016(n), A143574(n)]`
-/

namespace A383785.P7653158325417234111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P7653158325417234111

namespace A383785

/-- `eq[A004016(n), A143574(n)]` -/
def P7653158325417234111.Spec : Prop :=
  ∀ n, (P7653158325417234111.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P10069012304897728712

`eq[A005928(n), A143574(n)]`
-/

namespace A383785.P10069012304897728712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P10069012304897728712

namespace A383785

/-- `eq[A005928(n), A143574(n)]` -/
def P10069012304897728712.Spec : Prop :=
  ∀ n, (P10069012304897728712.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P7483504491121267880

`eq[A037214(n), A113062(n)]`
-/

namespace A383785.P7483504491121267880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P7483504491121267880

namespace A383785

/-- `eq[A037214(n), A113062(n)]` -/
def P7483504491121267880.Spec : Prop :=
  ∀ n, (P7483504491121267880.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P4761901186065482896

`eq[A037214(n), A115978(n)]`
-/

namespace A383785.P4761901186065482896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P4761901186065482896

namespace A383785

/-- `eq[A037214(n), A115978(n)]` -/
def P4761901186065482896.Spec : Prop :=
  ∀ n, (P4761901186065482896.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P2688589875254782024

`eq[A037214(n), A119395(n)]`
-/

namespace A383785.P2688589875254782024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P2688589875254782024

namespace A383785

/-- `eq[A037214(n), A119395(n)]` -/
def P2688589875254782024.Spec : Prop :=
  ∀ n, (P2688589875254782024.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P2201019134585706657

`eq[A004016(n), A302771(n)]`
-/

namespace A383785.P2201019134585706657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P2201019134585706657

namespace A383785

/-- `eq[A004016(n), A302771(n)]` -/
def P2201019134585706657.Spec : Prop :=
  ∀ n, (P2201019134585706657.a n : ℤ) = A383785 (n + 1)

end A383785

/-! ## A383785.P13291869732624556623

`eq[A005928(n), A302771(n)]`
-/

namespace A383785.P13291869732624556623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383785.P13291869732624556623

namespace A383785

/-- `eq[A005928(n), A302771(n)]` -/
def P13291869732624556623.Spec : Prop :=
  ∀ n, (P13291869732624556623.a n : ℤ) = A383785 (n + 1)

end A383785

/-!
# A383786: Number of polyforms with n cells on the faces of a pentagonal hexecontahedron up to rotation.

The programs for A383786, there is no canonical definition to state claims against.
-/

/-! ## A383786.P3947013313740325140

`A289497(A151162(n))`
-/

namespace A383786.P3947013313740325140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A151162 n).toNat

end

end A383786.P3947013313740325140

/-! ## A383786.P18307478507413819517

`A289494(A007858(n+2))`
-/

namespace A383786.P18307478507413819517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A007858 (n + 2)).toNat

end

end A383786.P18307478507413819517

/-!
# A383787: Largest number obtainable by either keeping each decimal digit d in n or replacing it with 9-d.

The programs for A383787, there is no canonical definition to state claims against.
-/

/-! ## A383787.P17243262658805613035

`A061601(A383788(n+1))`
-/

namespace A383787.P17243262658805613035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A383788 (n + 1)).toNat

end

end A383787.P17243262658805613035

/-!
# A383788: Smallest number obtainable by either keeping each decimal digit d in n or replacing it with 9-d.

The programs for A383788, there is no canonical definition to state claims against.
-/

/-! ## A383788.P6469944371097905786

`A167831(A167831(n+1))`
-/

namespace A383788.P6469944371097905786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (A167831 (n + 1)).toNat

end

end A383788.P6469944371097905786

/-! ## A383788.P4393605900294918857

`A061601(A383787(n+1))`
-/

namespace A383788.P4393605900294918857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A383787 (n + 1)).toNat

end

end A383788.P4393605900294918857

/-! ## A383788.P13104713880577511908

`A106747(A118757(2*n+3)%A114315(n+2))`
-/

namespace A383788.P13104713880577511908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (Int.tmod (A118757 (2 * n + 3)) (A114315 (n + 2))).toNat

end

end A383788.P13104713880577511908

/-! ## A383788.P6196183769921784322

`A106747(A118757(2*n+3))%A361852(n+5)`
-/

namespace A383788.P6196183769921784322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106747 (A118757 (2 * n + 3)).toNat) (A361852 (n + 5))

end

end A383788.P6196183769921784322

/-!
# A383789: a(1) = 1; for n > 1, a(n) is the smallest positive integer not already in the sequence such that it shares at least one digit with a(n-1), and it has a different number of digits from a(n-1).

The programs for A383789, there is no canonical definition to state claims against.
-/

/-! ## A383789.P11258465344839087785

`A185169(A082605(n+1))`
-/

namespace A383789.P11258465344839087785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185169 (A082605 (n + 1)).toNat

end

end A383789.P11258465344839087785

/-!
# A383791: Numerators of the sequence whose Dirichlet convolution with itself yields fourth powers (A000583).

The programs for A383791, there is no canonical definition to state claims against.
-/

/-! ## A383791.P3462709269168130008

`A100565(A000079(n))*A383768(n+1)`
-/

namespace A383791.P3462709269168130008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (A000079 n).toNat * A383768 (n + 1)

end

end A383791.P3462709269168130008

/-! ## A383791.P14751779621453766560

`A000005(A000351(n))*A383768(n+1)`
-/

namespace A383791.P14751779621453766560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000351 n).toNat * A383768 (n + 1)

end

end A383791.P14751779621453766560

/-!
# A383793: Numerators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

The programs for A383793, the canonical program `A383793.P8012503440223215475` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383793 has offset 1).

The definition of A383793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383793.P8012503440223215475

`A038502(n+1)*A256688(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383793

/-- `A038502(n+1)*A256688(n+1)` -/
def P8012503440223215475.Spec : Prop :=
  ∀ n, P8012503440223215475.a n = A383793 (n + 1)

theorem P8012503440223215475.correct : P8012503440223215475.Spec := by
  intro n
  simp only [A383793, Nat.add_sub_cancel]

end A383793

/-!
# A383794: Denominators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

The programs for A383794, the canonical program `A383794.P14355268900012724645` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383794 has offset 1).

The definition of A383794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383794.P14355268900012724645

`A256689(n+1)/A038500(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A383794

/-- `A256689(n+1)/A038500(n+1)` -/
def P14355268900012724645.Spec : Prop :=
  ∀ n, P14355268900012724645.a n = (A383794 (n + 1) : ℚ)

end A383794

/-!
# A383795: Dirichlet g.f.: zeta(2*s-2) * zeta(s)^2.

The programs for A383795, the canonical program `A383795.P2583133115178924486` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383795 has offset 1).

The definition of A383795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383795.P7961179423190940325

`∑{d}[n+1, A035316(#)]`
-/

namespace A383795.P7961179423190940325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d

end

end A383795.P7961179423190940325

namespace A383795

/-- `∑{d}[n+1, A035316(#)]` -/
def P7961179423190940325.Spec : Prop :=
  ∀ n, P7961179423190940325.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P14812962537457056485

`∑{d}[n+1, A008833(#)*A046951((n+1)/#)]`
-/

namespace A383795.P14812962537457056485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P14812962537457056485

namespace A383795

/-- `∑{d}[n+1, A008833(#)*A046951((n+1)/#)]` -/
def P14812962537457056485.Spec : Prop :=
  ∀ n, P14812962537457056485.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P11294884751358461811

`∑{d}[n+1, A000203(#)*A061020((n+1)/#)]`
-/

namespace A383795.P11294884751358461811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P11294884751358461811

namespace A383795

/-- `∑{d}[n+1, A000203(#)*A061020((n+1)/#)]` -/
def P11294884751358461811.Spec : Prop :=
  ∀ n, P11294884751358461811.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P2583133115178924486

`∑{d}[n+1, A007429(#)*A061019((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A383795

/-- `∑{d}[n+1, A007429(#)*A061019((n+1)/#)]` -/
def P2583133115178924486.Spec : Prop :=
  ∀ n, P2583133115178924486.a n = A383795 (n + 1)

theorem P2583133115178924486.correct : P2583133115178924486.Spec := by
  intro n
  simp only [A383795, Nat.add_sub_cancel]

end A383795

/-! ## A383795.P15991192800206920610

`∑{d}[n+1, A055210(#)*A069290((n+1)/#)]`
-/

namespace A383795.P15991192800206920610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055210 d * A069290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P15991192800206920610

namespace A383795

/-- `∑{d}[n+1, A055210(#)*A069290((n+1)/#)]` -/
def P15991192800206920610.Spec : Prop :=
  ∀ n, P15991192800206920610.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P13803605490988912022

`∑{d}[n+1, A007430(#)*A158523((n+1)/#)]`
-/

namespace A383795.P13803605490988912022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P13803605490988912022

namespace A383795

/-- `∑{d}[n+1, A007430(#)*A158523((n+1)/#)]` -/
def P13803605490988912022.Spec : Prop :=
  ∀ n, P13803605490988912022.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P7277512001237818661

`∑{d}[n+1, A076792(#)*A198286((n+1)/#)]`
-/

namespace A383795.P7277512001237818661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076792 d * A198286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P7277512001237818661

namespace A383795

/-- `∑{d}[n+1, A076792(#)*A198286((n+1)/#)]` -/
def P7277512001237818661.Spec : Prop :=
  ∀ n, P7277512001237818661.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P4940176919303308884

`∑{d}[n+1, A034761(#)*A298473((n+1)/#)]`
-/

namespace A383795.P4940176919303308884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P4940176919303308884

namespace A383795

/-- `∑{d}[n+1, A034761(#)*A298473((n+1)/#)]` -/
def P4940176919303308884.Spec : Prop :=
  ∀ n, P4940176919303308884.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P9692617053610538713

`∑{d}[n+1, A038712(#)*A300853((n+1)/#)]`
-/

namespace A383795.P9692617053610538713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A300853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P9692617053610538713

namespace A383795

/-- `∑{d}[n+1, A038712(#)*A300853((n+1)/#)]` -/
def P9692617053610538713.Spec : Prop :=
  ∀ n, P9692617053610538713.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P16015603645784179377

`∑{d}[n+1, A007425(#)*A358272((n+1)/#)]`
-/

namespace A383795.P16015603645784179377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P16015603645784179377

namespace A383795

/-- `∑{d}[n+1, A007425(#)*A358272((n+1)/#)]` -/
def P16015603645784179377.Spec : Prop :=
  ∀ n, P16015603645784179377.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P5970028894606393761

`∑{d}[n+1, A300909(#)*A370239((n+1)/#)]`
-/

namespace A383795.P5970028894606393761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300909 d * A370239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P5970028894606393761

namespace A383795

/-- `∑{d}[n+1, A300909(#)*A370239((n+1)/#)]` -/
def P5970028894606393761.Spec : Prop :=
  ∀ n, P5970028894606393761.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P9401998826574342521

`∑{d}[n+1, A323921(#)*A360159((n+1)/#)]`
-/

namespace A383795.P9401998826574342521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323921 d * A360159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P9401998826574342521

namespace A383795

/-- `∑{d}[n+1, A323921(#)*A360159((n+1)/#)]` -/
def P9401998826574342521.Spec : Prop :=
  ∀ n, P9401998826574342521.a n = A383795 (n + 1)

end A383795

/-! ## A383795.P7932234725838574407

`∑{d}[n+1, A358347(#)*A361793((n+1)/#)]`
-/

namespace A383795.P7932234725838574407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358347 d * A361793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P7932234725838574407

namespace A383795

/-- `∑{d}[n+1, A358347(#)*A361793((n+1)/#)]` -/
def P7932234725838574407.Spec : Prop :=
  ∀ n, P7932234725838574407.a n = A383795 (n + 1)

end A383795

/-!
# A383797: a(n) = 10*binomial(n,5) + 4*binomial(n,3) + n.

The programs for A383797, the canonical program `A383797.P4684990636784939626` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383797 has offset 0).

The definition of A383797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*C(n, 5)+4*C(n, 3)+n` (program `A383797.P4684990636784939626`, by `A383797.P4684990636784939626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383797.P4684990636784939626

`10*C(n, 5)+4*C(n, 3)+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A383797

/-- `10*C(n, 5)+4*C(n, 3)+n` -/
def P4684990636784939626.Spec : Prop :=
  ∀ n, (P4684990636784939626.a n : ℤ) = A383797 n

theorem P4684990636784939626.correct : P4684990636784939626.Spec := by
  intro n
  simp only [A383797]

end A383797

/-! ## A383797.P8056900417639483466

`A329673(n)-A000120(A000670(n))`
-/

namespace A383797.P8056900417639483466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329673 n - A000120 (A000670 n).toNat

end

end A383797.P8056900417639483466

namespace A383797

/-- `A329673(n)-A000120(A000670(n))` -/
def P8056900417639483466.Spec : Prop :=
  ∀ n, P8056900417639483466.a n = A383797 n

end A383797

/-! ## A383797.P4522838632807549967

`A344899(n+1)-A255120(A082733(n+1))`
-/

namespace A383797.P4522838632807549967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 (n + 1) - A255120 (A082733 (n + 1)).toNat

end

end A383797.P4522838632807549967

namespace A383797

/-- `A344899(n+1)-A255120(A082733(n+1))` -/
def P4522838632807549967.Spec : Prop :=
  ∀ n, P4522838632807549967.a n = A383797 n

end A383797

