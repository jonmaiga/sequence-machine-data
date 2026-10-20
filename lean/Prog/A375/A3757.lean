import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A375700: Expansion of e.g.f. 1 / (1 + x^3 * log(1 - x))^(1/3).

The programs for A375700, there is no canonical definition to state claims against.
-/

/-! ## A375700.P4356468534186697829

`A004396(A375701(n))`
-/

namespace A375700.P4356468534186697829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A375701 n).toNat

end

end A375700.P4356468534186697829

/-! ## A375700.P8451475509924961911

`A008611(A351504(n)+1)`
-/

namespace A375700.P8451475509924961911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A351504 n + 1).toNat

end

end A375700.P8451475509924961911

/-! ## A375700.P13898993381914004668

`A004523(A375701(n)+1)`
-/

namespace A375700.P13898993381914004668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A375701 n + 1).toNat

end

end A375700.P13898993381914004668

/-! ## A375700.P16768757015791284322

`A002264(A353229(n)+2)`
-/

namespace A375700.P16768757015791284322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A353229 n + 2).toNat

end

end A375700.P16768757015791284322

/-!
# A375701: Expansion of e.g.f. 1 / sqrt(1 + x^3 * log(1 - x)).

The programs for A375701, there is no canonical definition to state claims against.
-/

/-! ## A375701.P361224084169850642

`A004525(A351504(n))`
-/

namespace A375701.P361224084169850642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A351504 n).toNat

end

end A375701.P361224084169850642

/-! ## A375701.P14068687543429671848

`A004525(A353229(n))`
-/

namespace A375701.P14068687543429671848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A353229 n).toNat

end

end A375701.P14068687543429671848

/-! ## A375701.P17784925435586958924

`A032766(A375700(n))`
-/

namespace A375701.P17784925435586958924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A375700 n).toNat

end

end A375701.P17784925435586958924

/-! ## A375701.P15712976301631695676

`A026741(A391377(n))`
-/

namespace A375701.P15712976301631695676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A391377 n).toNat

end

end A375701.P15712976301631695676

/-!
# A375702: Length of the n-th maximal run of adjacent (increasing by one at a time) non-perfect-powers.

The programs for A375702, the canonical program `A375702.P17550407363520646244` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375702 has offset 1).

The definition of A375702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375702.P17550407363520646244

`A069584(lt[A000203(n+1), A112537(n+1)]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A375702

/-- `A069584(lt[A000203(n+1), A112537(n+1)]+1)` -/
def P17550407363520646244.Spec : Prop :=
  ∀ n, P17550407363520646244.a n = A375702 (n + 1)

theorem P17550407363520646244.correct : P17550407363520646244.Spec := by
  intro n
  simp only [A375702, Nat.add_sub_cancel]

end A375702

/-! ## A375702.P14231800521939278849

`A069584(eq[A015493(n), A278029(n+1)])`
-/

namespace A375702.P14231800521939278849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375702.P14231800521939278849

namespace A375702

/-- `A069584(eq[A015493(n), A278029(n+1)])` -/
def P14231800521939278849.Spec : Prop :=
  ∀ n, P14231800521939278849.a n = A375702 (n + 1)

end A375702

/-! ## A375702.P13874345481347557572

`A069584(eq[A015885(n), A278029(n+1)])`
-/

namespace A375702.P13874345481347557572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375702.P13874345481347557572

namespace A375702

/-- `A069584(eq[A015885(n), A278029(n+1)])` -/
def P13874345481347557572.Spec : Prop :=
  ∀ n, P13874345481347557572.a n = A375702 (n + 1)

end A375702

/-! ## A375702.P5592967058675084591

`A069584(A375704(n+1))`
-/

namespace A375702.P5592967058675084591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (A375704 (n + 1)).toNat

end

end A375702.P5592967058675084591

namespace A375702

/-- `A069584(A375704(n+1))` -/
def P5592967058675084591.Spec : Prop :=
  ∀ n, P5592967058675084591.a n = A375702 (n + 1)

end A375702

/-! ## A375702.P12018393582402839601

`A074984(A375703(n+1))`
-/

namespace A375702.P12018393582402839601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A375703 (n + 1)).toNat

end

end A375702.P12018393582402839601

namespace A375702

/-- `A074984(A375703(n+1))` -/
def P12018393582402839601.Spec : Prop :=
  ∀ n, P12018393582402839601.a n = A375702 (n + 1)

end A375702

/-!
# A375703: Minimum of the n-th maximal run of adjacent (increasing by one at a time) non-perfect-powers.

The programs for A375703, there is no canonical definition to state claims against.
-/

/-! ## A375703.P13254764252660990299

`eq[1, A069584(n+1)]+1`
-/

namespace A375703.P13254764252660990299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375703.P13254764252660990299

/-! ## A375703.P1936189701014013623

`comp[n+1-A303709(n+1)]+1`
-/

namespace A375703.P1936189701014013623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A303709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375703.P1936189701014013623

/-! ## A375703.P10111390401386424483

`A001597(n+2-C(n, n²))+1`
-/

namespace A375703.P10111390401386424483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2 - Nat.choose n (n ^ 2)) + 1

end

end A375703.P10111390401386424483

/-! ## A375703.P17295748329969369674

`record[A081676((n+1)*gcd(2, ∏{p}[n, #]))+1]`
-/

namespace A375703.P17295748329969369674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 ((n + 1) * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375703.P17295748329969369674

/-! ## A375703.P6610193528124351956

`A001597(A326178(n+1))+1`
-/

namespace A375703.P6610193528124351956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A326178 (n + 1)).toNat + 1

end

end A375703.P6610193528124351956

/-! ## A375703.P17078661735064352334

`A081676(A375704(n+1))+1`
-/

namespace A375703.P17078661735064352334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A375704 (n + 1)).toNat + 1

end

end A375703.P17078661735064352334

/-! ## A375703.P4530280488278555559

`A001597(floor(sqrt(A028884(n))))+1`
-/

namespace A375703.P4530280488278555559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.sqrt (A028884 n)).toNat + 1

end

end A375703.P4530280488278555559

/-! ## A375703.P14646301173694588752

`record[A052410(A001597(n+1)+1)]`
-/

namespace A375703.P14646301173694588752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A001597 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375703.P14646301173694588752

/-! ## A375703.P10041535707194761359

`record[A081676(A007947(n+1))+1]`
-/

namespace A375703.P10041535707194761359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A007947 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375703.P10041535707194761359

/-! ## A375703.P2487234947364220900

`record[A175781(A001597(n+1)+1)]`
-/

namespace A375703.P2487234947364220900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (A001597 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375703.P2487234947364220900

/-!
# A375704: Maximum of the n-th maximal run of adjacent (increasing by one at a time) non-perfect-powers.

The programs for A375704, there is no canonical definition to state claims against.
-/

/-! ## A375704.P5709531629834287934

`eq[1, A074984(n+1)]+1`
-/

namespace A375704.P5709531629834287934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375704.P5709531629834287934

/-! ## A375704.P7912036177061136525

`A045542(n+2-C(n, n²))`
-/

namespace A375704.P7912036177061136525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 2 - Nat.choose n (n ^ 2))

end

end A375704.P7912036177061136525

/-! ## A375704.P10964180347973791898

`A001597(n+3)-ceil((n+3)/a(n-1))` with `a(0)=3`
-/

namespace A375704.P10964180347973791898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001597 (n + 3) - ⌈(n + 3 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A375704.P10964180347973791898

/-! ## A375704.P16120117091294260289

`A045542(A326178(n+1))`
-/

namespace A375704.P16120117091294260289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (A326178 (n + 1)).toNat

end

end A375704.P16120117091294260289

/-! ## A375704.P3032376393089681417

`A007916(A375714(n+1))`
-/

namespace A375704.P3032376393089681417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A375714 (n + 1)).toNat

end

end A375704.P3032376393089681417

/-! ## A375704.P6597356466295679997

`A007916(∑[A375702(n+1)])`
-/

namespace A375704.P6597356466295679997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375704.P6597356466295679997

/-! ## A375704.P3832036501396376762

`A045542(A184985(n+1)+1)`
-/

namespace A375704.P3832036501396376762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (A184985 (n + 1) + 1).toNat

end

end A375704.P3832036501396376762

/-! ## A375704.P68709148520259099

`filter[A045542(n+1), A132350(#)]`
-/

namespace A375704.P68709148520259099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A375704.P68709148520259099

/-! ## A375704.P5808933437611718055

`filter[A045542(n+1), A267579(#)]`
-/

namespace A375704.P5808933437611718055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A375704.P5808933437611718055

/-! ## A375704.P8273374745179640918

`filter[A045542(n+1), A347523(#)]`
-/

namespace A375704.P8273374745179640918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A375704.P8273374745179640918

/-!
# A375706: First differences of non-perfect-powers.

The programs for A375706, the canonical program `A375706.P12414521071869908907` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375706 has offset 1).

The definition of A375706 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375706.P12414521071869908907

`A007916(n+2)-A007916(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375706

/-- `A007916(n+2)-A007916(n+1)` -/
def P12414521071869908907.Spec : Prop :=
  ∀ n, P12414521071869908907.a n = A375706 (n + 1)

theorem P12414521071869908907.correct : P12414521071869908907.Spec := by
  intro n
  simp only [A375706, Nat.add_sub_cancel]

end A375706

/-! ## A375706.P6377032933840834881

`A376562(n)+a(n-1)` with `a(0)=1`
-/

namespace A375706.P6377032933840834881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376562 n + a (n - 1)

end

end A375706.P6377032933840834881

namespace A375706

/-- `A376562(n)+a(n-1)` -/
def P6377032933840834881.Spec : Prop :=
  ∀ n, P6377032933840834881.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P1846221172861467062

`Δ[A007916(n+1)]`
-/

namespace A375706.P1846221172861467062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P1846221172861467062

namespace A375706

/-- `Δ[A007916(n+1)]` -/
def P1846221172861467062.Spec : Prop :=
  ∀ n, P1846221172861467062.a n = A375706 (n + 1)

theorem P1846221172861467062.correct : P1846221172861467062.Spec := by
  intro n
  simp only [A375706, Nat.add_sub_cancel, A375706.P1846221172861467062.f1, A375706.P1846221172861467062.a, A375706.P12414521071869908907.a, SequenceMachineLib.memo_apply]

end A375706

/-! ## A375706.P3072947404951520327

`Δ[sqrt(A153158(n+1))]`
-/

namespace A375706.P3072947404951520327
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153158 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P3072947404951520327

namespace A375706

/-- `Δ[sqrt(A153158(n+1))]` -/
def P3072947404951520327.Spec : Prop :=
  ∀ n, P3072947404951520327.a n = (A375706 (n + 1) : ℝ)

end A375706

/-! ## A375706.P15642234136176378388

`Δ[record[A052410(n+2)]]`
-/

namespace A375706.P15642234136176378388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P15642234136176378388

namespace A375706

/-- `Δ[record[A052410(n+2)]]` -/
def P15642234136176378388.Spec : Prop :=
  ∀ n, P15642234136176378388.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P5084243407043964095

`Δ[eq[1, A052409(n+1)]]`
-/

namespace A375706.P5084243407043964095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375706.P5084243407043964095

namespace A375706

/-- `Δ[eq[1, A052409(n+1)]]` -/
def P5084243407043964095.Spec : Prop :=
  ∀ n, P5084243407043964095.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P4542274267068065113

`Δ[lt[A089723(n+2), 2]]`
-/

namespace A375706.P4542274267068065113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375706.P4542274267068065113

namespace A375706

/-- `Δ[lt[A089723(n+2), 2]]` -/
def P4542274267068065113.Spec : Prop :=
  ∀ n, P4542274267068065113.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P2472997382600105003

`Δ[lt[A295920(n+2), 2]]`
-/

namespace A375706.P2472997382600105003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375706.P2472997382600105003

namespace A375706

/-- `Δ[lt[A295920(n+2), 2]]` -/
def P2472997382600105003.Spec : Prop :=
  ∀ n, P2472997382600105003.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P5161315156756264978

`Δ[lt[A295924(n+2), 2]]`
-/

namespace A375706.P5161315156756264978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375706.P5161315156756264978

namespace A375706

/-- `Δ[lt[A295924(n+2), 2]]` -/
def P5161315156756264978.Spec : Prop :=
  ∀ n, P5161315156756264978.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P3617229253909945828

`Δ[A175082(n+2)]`
-/

namespace A375706.P3617229253909945828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P3617229253909945828

namespace A375706

/-- `Δ[A175082(n+2)]` -/
def P3617229253909945828.Spec : Prop :=
  ∀ n, P3617229253909945828.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P7753453847942561867

`A175082(n+3)-A175082(n+2)`
-/

namespace A375706.P7753453847942561867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 3) - A175082 (n + 2)

end

end A375706.P7753453847942561867

namespace A375706

/-- `A175082(n+3)-A175082(n+2)` -/
def P7753453847942561867.Spec : Prop :=
  ∀ n, P7753453847942561867.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P6139572124398220924

`Δ[record[A175781(n+2)]]`
-/

namespace A375706.P6139572124398220924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P6139572124398220924

namespace A375706

/-- `Δ[record[A175781(n+2)]]` -/
def P6139572124398220924.Spec : Prop :=
  ∀ n, P6139572124398220924.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P8369807645411571639

`Δ[record[A304491(n+2)]]`
-/

namespace A375706.P8369807645411571639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P8369807645411571639

namespace A375706

/-- `Δ[record[A304491(n+2)]]` -/
def P8369807645411571639.Spec : Prop :=
  ∀ n, P8369807645411571639.a n = A375706 (n + 1)

end A375706

/-! ## A375706.P213579474645641382

`Δ[record[A327501(n+2)]]`
-/

namespace A375706.P213579474645641382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327501 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375706.P213579474645641382

namespace A375706

/-- `Δ[record[A327501(n+2)]]` -/
def P213579474645641382.Spec : Prop :=
  ∀ n, P213579474645641382.a n = A375706 (n + 1)

end A375706

/-!
# A375707: First differences minus 1 of nonsquarefree numbers.

The programs for A375707, the canonical program `A375707.P16340562935949203801` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375707 has offset 1).

The definition of A375707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375707.P16340562935949203801

`A078147(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A375707

/-- `A078147(n+1)-1` -/
def P16340562935949203801.Spec : Prop :=
  ∀ n, P16340562935949203801.a n = A375707 (n + 1)

theorem P16340562935949203801.correct : P16340562935949203801.Spec := by
  intro n
  simp only [A375707, Nat.add_sub_cancel]

end A375707

/-! ## A375707.P16046932087220699305

`Δ[A013929(n+1)]-1`
-/

namespace A375707.P16046932087220699305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A375707.P16046932087220699305

namespace A375707

/-- `Δ[A013929(n+1)]-1` -/
def P16046932087220699305.Spec : Prop :=
  ∀ n, P16046932087220699305.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P6336820963893452172

`A376593(n)+a(n-1)` with `a(0)=3`
-/

namespace A375707.P6336820963893452172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A376593 n + a (n - 1)

end

end A375707.P6336820963893452172

namespace A375707

/-- `A376593(n)+a(n-1)` -/
def P6336820963893452172.Spec : Prop :=
  ∀ n, P6336820963893452172.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P7421884010269690878

`A001538(n)%A078147(n+1)`
-/

namespace A375707.P7421884010269690878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A078147 (n + 1))

end

end A375707.P7421884010269690878

namespace A375707

/-- `A001538(n)%A078147(n+1)` -/
def P7421884010269690878.Spec : Prop :=
  ∀ n, P7421884010269690878.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P15694230276984036852

`A002146(n)%A078147(n+1)`
-/

namespace A375707.P15694230276984036852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A078147 (n + 1))

end

end A375707.P15694230276984036852

namespace A375707

/-- `A002146(n)%A078147(n+1)` -/
def P15694230276984036852.Spec : Prop :=
  ∀ n, P15694230276984036852.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P16780079459025388069

`A002148(n)%A078147(n+1)`
-/

namespace A375707.P16780079459025388069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A078147 (n + 1))

end

end A375707.P16780079459025388069

namespace A375707

/-- `A002148(n)%A078147(n+1)` -/
def P16780079459025388069.Spec : Prop :=
  ∀ n, P16780079459025388069.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P13684040977446796176

`A017653(n)%A078147(n+1)`
-/

namespace A375707.P13684040977446796176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A078147 (n + 1))

end

end A375707.P13684040977446796176

namespace A375707

/-- `A017653(n)%A078147(n+1)` -/
def P13684040977446796176.Spec : Prop :=
  ∀ n, P13684040977446796176.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P4588708997828787041

`A017655(n)%A078147(n+1)`
-/

namespace A375707.P4588708997828787041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A078147 (n + 1))

end

end A375707.P4588708997828787041

namespace A375707

/-- `A017655(n)%A078147(n+1)` -/
def P4588708997828787041.Spec : Prop :=
  ∀ n, P4588708997828787041.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P18321359696870135318

`A017657(n)%A078147(n+1)`
-/

namespace A375707.P18321359696870135318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A078147 (n + 1))

end

end A375707.P18321359696870135318

namespace A375707

/-- `A017657(n)%A078147(n+1)` -/
def P18321359696870135318.Spec : Prop :=
  ∀ n, P18321359696870135318.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P17972005406161560235

`A094319(n)%A078147(n+1)`
-/

namespace A375707.P17972005406161560235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094319 n) (A078147 (n + 1))

end

end A375707.P17972005406161560235

namespace A375707

/-- `A094319(n)%A078147(n+1)` -/
def P17972005406161560235.Spec : Prop :=
  ∀ n, P17972005406161560235.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P17739902447009248294

`A152951(n)%A078147(n+1)`
-/

namespace A375707.P17739902447009248294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152951 n) (A078147 (n + 1))

end

end A375707.P17739902447009248294

namespace A375707

/-- `A152951(n)%A078147(n+1)` -/
def P17739902447009248294.Spec : Prop :=
  ∀ n, P17739902447009248294.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P13460057946028288095

`A348845(n)%A078147(n+1)`
-/

namespace A375707.P13460057946028288095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348845 n) (A078147 (n + 1))

end

end A375707.P13460057946028288095

namespace A375707

/-- `A348845(n)%A078147(n+1)` -/
def P13460057946028288095.Spec : Prop :=
  ∀ n, P13460057946028288095.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P9191395852905122509

`A350055(n)%A078147(n+1)`
-/

namespace A375707.P9191395852905122509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350055 n) (A078147 (n + 1))

end

end A375707.P9191395852905122509

namespace A375707

/-- `A350055(n)%A078147(n+1)` -/
def P9191395852905122509.Spec : Prop :=
  ∀ n, P9191395852905122509.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P18013448124989425212

`A033270(Δ[2*A013929(n+1)])`
-/

namespace A375707.P18013448124989425212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (n + 1) - f1 n).toNat

end

end A375707.P18013448124989425212

namespace A375707

/-- `A033270(Δ[2*A013929(n+1)])` -/
def P18013448124989425212.Spec : Prop :=
  ∀ n, P18013448124989425212.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P11909477317461518717

`A000353(n+1)%A078147(n+1)`
-/

namespace A375707.P11909477317461518717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000353 (n + 1)) (A078147 (n + 1))

end

end A375707.P11909477317461518717

namespace A375707

/-- `A000353(n+1)%A078147(n+1)` -/
def P11909477317461518717.Spec : Prop :=
  ∀ n, P11909477317461518717.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P14632945460719358449

`A002515(n+1)%A078147(n+1)`
-/

namespace A375707.P14632945460719358449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002515 (n + 1)) (A078147 (n + 1))

end

end A375707.P14632945460719358449

namespace A375707

/-- `A002515(n+1)%A078147(n+1)` -/
def P14632945460719358449.Spec : Prop :=
  ∀ n, P14632945460719358449.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P11805773967521417372

`A037074(n+1)%A078147(n+1)`
-/

namespace A375707.P11805773967521417372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037074 (n + 1)) (A078147 (n + 1))

end

end A375707.P11805773967521417372

namespace A375707

/-- `A037074(n+1)%A078147(n+1)` -/
def P11805773967521417372.Spec : Prop :=
  ∀ n, P11805773967521417372.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P3827016819410378898

`A044494(n+1)%A078147(n+1)`
-/

namespace A375707.P3827016819410378898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044494 (n + 1)) (A078147 (n + 1))

end

end A375707.P3827016819410378898

namespace A375707

/-- `A044494(n+1)%A078147(n+1)` -/
def P3827016819410378898.Spec : Prop :=
  ∀ n, P3827016819410378898.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P2189615127400209719

`A044506(n+1)%A078147(n+1)`
-/

namespace A375707.P2189615127400209719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044506 (n + 1)) (A078147 (n + 1))

end

end A375707.P2189615127400209719

namespace A375707

/-- `A044506(n+1)%A078147(n+1)` -/
def P2189615127400209719.Spec : Prop :=
  ∀ n, P2189615127400209719.a n = A375707 (n + 1)

end A375707

/-! ## A375707.P15968742268591279388

`A119859(n+1)%A078147(n+1)`
-/

namespace A375707.P15968742268591279388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119859 (n + 1)) (A078147 (n + 1))

end

end A375707.P15968742268591279388

namespace A375707

/-- `A119859(n+1)%A078147(n+1)` -/
def P15968742268591279388.Spec : Prop :=
  ∀ n, P15968742268591279388.a n = A375707 (n + 1)

end A375707

/-!
# A375708: First differences of non-prime-powers (exclusive, so 1 is not a prime-power).

The programs for A375708, the canonical program `A375708.P8231475400569183047` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375708 has offset 1).

The definition of A375708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375708.P8231475400569183047

`A024619(n+1)-A361102(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375708

/-- `A024619(n+1)-A361102(n+1)` -/
def P8231475400569183047.Spec : Prop :=
  ∀ n, P8231475400569183047.a n = A375708 (n + 1)

theorem P8231475400569183047.correct : P8231475400569183047.Spec := by
  intro n
  simp only [A375708, Nat.add_sub_cancel]

end A375708

/-! ## A375708.P11950125034041551478

`Δ[A361102(n+1)]`
-/

namespace A375708.P11950125034041551478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375708.P11950125034041551478

namespace A375708

/-- `Δ[A361102(n+1)]` -/
def P11950125034041551478.Spec : Prop :=
  ∀ n, P11950125034041551478.a n = A375708 (n + 1)

end A375708

/-! ## A375708.P14237947799960097957

`A361102(n+2)-A361102(n+1)`
-/

namespace A375708.P14237947799960097957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2) - A361102 (n + 1)

end

end A375708.P14237947799960097957

namespace A375708

/-- `A361102(n+2)-A361102(n+1)` -/
def P14237947799960097957.Spec : Prop :=
  ∀ n, P14237947799960097957.a n = A375708 (n + 1)

end A375708

/-!
# A375709: Numbers k such that A013929(k+1) = A013929(k) + 1. In other words, the k-th nonsquarefree number is 1 less than the next nonsquarefree number.

The programs for A375709, there is no canonical definition to state claims against.
-/

/-! ## A375709.P9233066814507943789

`∑[A373409(n+1)]`
-/

namespace A375709.P9233066814507943789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375709.P9233066814507943789

/-! ## A375709.P7049542807631500027

`comp[A243348(n+1)]`
-/

namespace A375709.P7049542807631500027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375709.P7049542807631500027

/-! ## A375709.P17428425844000607752

`eq[0, A375707(n+1)]+1`
-/

namespace A375709.P17428425844000607752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375709.P17428425844000607752

/-! ## A375709.P16600454640437245617

`eq[1, A078147(n+1)]+1`
-/

namespace A375709.P16600454640437245617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375709.P16600454640437245617

/-! ## A375709.P6013438263367079360

`comp[A005117(n+1)-(n+1)]`
-/

namespace A375709.P6013438263367079360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375709.P6013438263367079360

/-! ## A375709.P14300537829258087140

`A057627(A068781(n+1))`
-/

namespace A375709.P14300537829258087140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A068781 (n + 1)).toNat

end

end A375709.P14300537829258087140

/-!
# A375710: Numbers k such that A013929(k+1) - A013929(k) = 2. In other words, the k-th nonsquarefree number is 2 less than the next nonsquarefree number.

The programs for A375710, there is no canonical definition to state claims against.
-/

/-! ## A375710.P541905523835685681

`eq[1, A375707(n+1)]+1`
-/

namespace A375710.P541905523835685681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375710.P541905523835685681

/-! ## A375710.P5318249456682183805

`eq[2, A078147(n+1)]+1`
-/

namespace A375710.P5318249456682183805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375710.P5318249456682183805

/-! ## A375710.P18149348429894202771

`eq[2, Δ[A013929(n+1)]]+1`
-/

namespace A375710.P18149348429894202771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375710.P18149348429894202771

/-! ## A375710.P6966838228841827963

`A057627(A073247(n+1))`
-/

namespace A375710.P6966838228841827963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A073247 (n + 1)).toNat

end

end A375710.P6966838228841827963

/-! ## A375710.P17290112241902983730

`eq[2, A078147(A028310(n))]`
-/

namespace A375710.P17290112241902983730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375710.P17290112241902983730

/-! ## A375710.P7250799328373163393

`eq[2, A078147(A233583(n+1))]`
-/

namespace A375710.P7250799328373163393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375710.P7250799328373163393

/-!
# A375711: Numbers k such that A013929(k+1) - A013929(k) = 3. In other words, the k-th nonsquarefree number is 3 less than the next nonsquarefree number.

The programs for A375711, there is no canonical definition to state claims against.
-/

/-! ## A375711.P5499042953101595931

`eq[2, A375707(n+1)]+1`
-/

namespace A375711.P5499042953101595931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375711.P5499042953101595931

/-! ## A375711.P12970936714643459079

`eq[3, A078147(n+1)]+1`
-/

namespace A375711.P12970936714643459079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375711.P12970936714643459079

/-! ## A375711.P3350183420409020650

`A057627(A073248(n+1))`
-/

namespace A375711.P3350183420409020650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A073248 (n + 1)).toNat

end

end A375711.P3350183420409020650

/-! ## A375711.P13279905262039668293

`eq[3, A078147(A028310(n))]`
-/

namespace A375711.P13279905262039668293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375711.P13279905262039668293

/-! ## A375711.P15947735513764027499

`eq[3, A078147(A233583(n+1))]`
-/

namespace A375711.P15947735513764027499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375711.P15947735513764027499

/-!
# A375712: Numbers k such that A013929(k+1) - A013929(k) = 4. In other words, the k-th nonsquarefree number is 4 less than the next nonsquarefree number.

The programs for A375712, there is no canonical definition to state claims against.
-/

/-! ## A375712.P5220530832821547348

`lt[2, A375707(n+1)]+1`
-/

namespace A375712.P5220530832821547348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375712.P5220530832821547348

/-! ## A375712.P18204210577282038156

`lt[3, A078147(n+1)]+1`
-/

namespace A375712.P18204210577282038156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375712.P18204210577282038156

/-! ## A375712.P13861828730820366723

`A057627(A007675(n+2))`
-/

namespace A375712.P13861828730820366723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A007675 (n + 2)).toNat

end

end A375712.P13861828730820366723

/-! ## A375712.P1603223066214300987

`A057627(A228649(n+2))`
-/

namespace A375712.P1603223066214300987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A228649 (n + 2)).toNat

end

end A375712.P1603223066214300987

/-! ## A375712.P1234354468659892492

`A284584(A228649(n+2)-2)`
-/

namespace A375712.P1234354468659892492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (A228649 (n + 2) - 2).toNat

end

end A375712.P1234354468659892492

/-!
# A375713: Indices of consecutive non-prime-powers (A361102) differing by 1. Numbers k such that the k-th and (k+1)-th non-prime-powers differ by just one.

The programs for A375713, there is no canonical definition to state claims against.
-/

/-! ## A375713.P4424063088299703401

`∑[A373672(n+1)]`
-/

namespace A375713.P4424063088299703401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375713.P4424063088299703401

/-! ## A375713.P17127216955381707781

`A376163(n+1)+1`
-/

namespace A375713.P17127216955381707781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376163 (n + 1) + 1

end

end A375713.P17127216955381707781

/-! ## A375713.P4653242241748929572

`eq[1, A375708(n+1)]+1`
-/

namespace A375713.P4653242241748929572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375713.P4653242241748929572

/-! ## A375713.P10478966235415487109

`eq[1, A375735(n+1)]+2`
-/

namespace A375713.P10478966235415487109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A375713.P10478966235415487109

/-! ## A375713.P13477859179943095224

`comp[∑[A093555(n+1)]]+1`
-/

namespace A375713.P13477859179943095224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093555 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375713.P13477859179943095224

/-! ## A375713.P17607316342608812770

`comp[record[A008475(n+1)]-n]`
-/

namespace A375713.P17607316342608812770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375713.P17607316342608812770

/-! ## A375713.P16344021694710567270

`comp[comp[A337687(n+1)]-n]`
-/

namespace A375713.P16344021694710567270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337687 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375713.P16344021694710567270

/-! ## A375713.P5640183092899391361

`comp[A181062(n+1)-n]+1`
-/

namespace A375713.P5640183092899391361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375713.P5640183092899391361

/-! ## A375713.P567008189908159677

`comp[∑[A057820(n+1)-1]]+1`
-/

namespace A375713.P567008189908159677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375713.P567008189908159677

/-! ## A375713.P11182607534258264353

`comp[A000961(n+1)-(char[1]+n)]`
-/

namespace A375713.P11182607534258264353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375713.P11182607534258264353

/-!
# A375714: Positions of non-successions of consecutive non-perfect-powers. Numbers k such that the k-th non-perfect-power is at least two fewer than the next.

The programs for A375714, there is no canonical definition to state claims against.
-/

/-! ## A375714.P6922097113962515397

`∑[A375702(n+1)]`
-/

namespace A375714.P6922097113962515397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375714.P6922097113962515397

/-! ## A375714.P8353402250987784380

`A278029(A375704(n+1))`
-/

namespace A375714.P8353402250987784380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A375704 (n + 1)).toNat

end

end A375714.P8353402250987784380

/-! ## A375714.P8826615306929491132

`∑[A074984(A375703(n+1))]`
-/

namespace A375714.P8826615306929491132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A375703 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375714.P8826615306929491132

/-! ## A375714.P8319905589624838335

`record[A045542(n+1)-A090108(n+1)]`
-/

namespace A375714.P8319905589624838335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) - A090108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375714.P8319905589624838335

/-! ## A375714.P3702112404876089355

`A375702(n+1)+a(n-A057427(n))` with `a(0)=2`
-/

namespace A375714.P3702112404876089355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A375702 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A375714.P3702112404876089355

/-! ## A375714.P8476697713668975485

`A278029(eq[A015157(n), A278029(n+1)])`
-/

namespace A375714.P8476697713668975485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375714.P8476697713668975485

/-! ## A375714.P4721633560637583049

`A278029(eq[A015213(n), A278029(n+1)])`
-/

namespace A375714.P4721633560637583049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375714.P4721633560637583049

/-! ## A375714.P8047025815168637477

`A278029(eq[A015285(n), A278029(n+1)])`
-/

namespace A375714.P8047025815168637477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375714.P8047025815168637477

/-! ## A375714.P14578166565783288315

`A278029(eq[A015325(n), A278029(n+1)])`
-/

namespace A375714.P14578166565783288315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375714.P14578166565783288315

/-!
# A375718: Expansion of e.g.f. 1 / sqrt(1 - x^3 * (exp(x) - 1)).

The programs for A375718, there is no canonical definition to state claims against.
-/

/-! ## A375718.P8739823522139838134

`A004525(A292891(n))`
-/

namespace A375718.P8739823522139838134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A292891 n).toNat

end

end A375718.P8739823522139838134

/-! ## A375718.P9402616632785194294

`A004525(A358014(n))`
-/

namespace A375718.P9402616632785194294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A358014 n).toNat

end

end A375718.P9402616632785194294

/-! ## A375718.P10160102978588920671

`A004525(A370990(n))`
-/

namespace A375718.P10160102978588920671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A370990 n).toNat

end

end A375718.P10160102978588920671

/-! ## A375718.P15197853496656347251

`A004525(A376293(n))`
-/

namespace A375718.P15197853496656347251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A376293 n).toNat

end

end A375718.P15197853496656347251

/-!
# A375726: a(n) = a(n-1) + 3*a(n-2) + a(n-3) with a(0) = 1, a(1) = 3, a(2) = 6.

The programs for A375726, the canonical program `A375726.P4119834171023144462` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375726 has offset 0).

The definition of A375726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)+a(n-3)` (program `A375726.P4119834171023144462`, by `A375726.P4119834171023144462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375726.P15455624634452063523

`2*a(n-1)+a(n-2)-(-1)^n` with `a(0)=1, a(1)=3`
-/

namespace A375726.P15455624634452063523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) - (-1) ^ n

end

end A375726.P15455624634452063523

namespace A375726

/-- `2*a(n-1)+a(n-2)-(-1)^n` -/
def P15455624634452063523.Spec : Prop :=
  ∀ n, P15455624634452063523.a n = A375726 n

end A375726

/-! ## A375726.P4119834171023144462

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375726

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P4119834171023144462.Spec : Prop :=
  ∀ n, (P4119834171023144462.a n : ℤ) = A375726 n

theorem P4119834171023144462.correct : P4119834171023144462.Spec := by
  intro n
  simp only [A375726]

end A375726

/-! ## A375726.P5620604028901915124

`ogf((1+2x)/(1-x-3x^2-x^3))`
-/

namespace A375726.P5620604028901915124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -3, -1] n

end

end A375726.P5620604028901915124

namespace A375726

/-- `ogf((1+2x)/(1-x-3x^2-x^3))` -/
def P5620604028901915124.Spec : Prop :=
  ∀ n, P5620604028901915124.a n = A375726 n

end A375726

/-! ## A375726.P17947396266415083165

`A098790(n)+A000035(n)`
-/

namespace A375726.P17947396266415083165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n + A000035 n

end

end A375726.P17947396266415083165

namespace A375726

/-- `A098790(n)+A000035(n)` -/
def P17947396266415083165.Spec : Prop :=
  ∀ n, P17947396266415083165.a n = A375726 n

end A375726

/-! ## A375726.P677077383285302693

`∑[A002203(n)-A111954(n)]`
-/

namespace A375726.P677077383285302693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A111954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375726.P677077383285302693

namespace A375726

/-- `∑[A002203(n)-A111954(n)]` -/
def P677077383285302693.Spec : Prop :=
  ∀ n, P677077383285302693.a n = A375726 n

end A375726

/-! ## A375726.P6649994245570677454

`A097076(n)+A000129(n+1)`
-/

namespace A375726.P6649994245570677454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n + A000129 (n + 1)

end

end A375726.P6649994245570677454

namespace A375726

/-- `A097076(n)+A000129(n+1)` -/
def P6649994245570677454.Spec : Prop :=
  ∀ n, P6649994245570677454.a n = A375726 n

end A375726

/-! ## A375726.P15029671514722564951

`A097075(n+1)+A001333(n)`
-/

namespace A375726.P15029671514722564951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) + A001333 n

end

end A375726.P15029671514722564951

namespace A375726

/-- `A097075(n+1)+A001333(n)` -/
def P15029671514722564951.Spec : Prop :=
  ∀ n, P15029671514722564951.a n = A375726 n

end A375726

/-! ## A375726.P9308482213084808655

`A215928(n+1)+A097076(n)`
-/

namespace A375726.P9308482213084808655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) + A097076 n

end

end A375726.P9308482213084808655

namespace A375726

/-- `A215928(n+1)+A097076(n)` -/
def P9308482213084808655.Spec : Prop :=
  ∀ n, P9308482213084808655.a n = A375726 n

end A375726

/-! ## A375726.P16036360855866609977

`A228797(n+1)-A111352(n)`
-/

namespace A375726.P16036360855866609977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228797 (n + 1) - A111352 n

end

end A375726.P16036360855866609977

namespace A375726

/-- `A228797(n+1)-A111352(n)` -/
def P16036360855866609977.Spec : Prop :=
  ∀ n, P16036360855866609977.a n = A375726 n

end A375726

/-! ## A375726.P121105435621537375

`A097076(n+1)+2*A097076(n)`
-/

namespace A375726.P121105435621537375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + 2 * A097076 n

end

end A375726.P121105435621537375

namespace A375726

/-- `A097076(n+1)+2*A097076(n)` -/
def P121105435621537375.Spec : Prop :=
  ∀ n, P121105435621537375.a n = A375726 n

end A375726

/-! ## A375726.P6284164236694761526

`A097076(n)+A113225(n)+A105635(n)`
-/

namespace A375726.P6284164236694761526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n + (A113225 n + A105635 n)

end

end A375726.P6284164236694761526

namespace A375726

/-- `A097076(n)+A113225(n)+A105635(n)` -/
def P6284164236694761526.Spec : Prop :=
  ∀ n, P6284164236694761526.a n = A375726 n

end A375726

/-! ## A375726.P2567627465075843119

`A097075(n+1)+A097076(n)+A097075(n)`
-/

namespace A375726.P2567627465075843119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) + (A097076 n + A097075 n)

end

end A375726.P2567627465075843119

namespace A375726

/-- `A097075(n+1)+A097076(n)+A097075(n)` -/
def P2567627465075843119.Spec : Prop :=
  ∀ n, P2567627465075843119.a n = A375726 n

end A375726

/-! ## A375726.P5528719299940048462

`A113727(n+1)+A113727(n)-A000129(n)`
-/

namespace A375726.P5528719299940048462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113727 (n + 1) + (A113727 n - A000129 n)

end

end A375726.P5528719299940048462

namespace A375726

/-- `A113727(n+1)+A113727(n)-A000129(n)` -/
def P5528719299940048462.Spec : Prop :=
  ∀ n, P5528719299940048462.a n = A375726 n

end A375726

/-! ## A375726.P7066953219627820383

`A000129(n+1)+A097075(n+1)-A000129(n)`
-/

namespace A375726.P7066953219627820383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A097075 (n + 1) - A000129 n)

end

end A375726.P7066953219627820383

namespace A375726

/-- `A000129(n+1)+A097075(n+1)-A000129(n)` -/
def P7066953219627820383.Spec : Prop :=
  ∀ n, P7066953219627820383.a n = A375726 n

end A375726

/-! ## A375726.P8655346310471712696

`A048654(n)-a(n-1)` with `a(0)=1`
-/

namespace A375726.P8655346310471712696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048654 n - a (n - 1)

end

end A375726.P8655346310471712696

namespace A375726

/-- `A048654(n)-a(n-1)` -/
def P8655346310471712696.Spec : Prop :=
  ∀ n, P8655346310471712696.a n = A375726 n

end A375726

/-! ## A375726.P1418523094484308071

`A098586(n)-A113224(n)`
-/

namespace A375726.P1418523094484308071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098586 n - A113224 n

end

end A375726.P1418523094484308071

namespace A375726

/-- `A098586(n)-A113224(n)` -/
def P1418523094484308071.Spec : Prop :=
  ∀ n, P1418523094484308071.a n = A375726 n

end A375726

/-! ## A375726.P5348052137137106144

`A111955(n+1)-A097076(n)`
-/

namespace A375726.P5348052137137106144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 (n + 1) - A097076 n

end

end A375726.P5348052137137106144

namespace A375726

/-- `A111955(n+1)-A097076(n)` -/
def P5348052137137106144.Spec : Prop :=
  ∀ n, P5348052137137106144.a n = A375726 n

end A375726

/-! ## A375726.P10478392887664521612

`A113224(n+1)-A033539(n+2)`
-/

namespace A375726.P10478392887664521612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 (n + 1) - A033539 (n + 2)

end

end A375726.P10478392887664521612

namespace A375726

/-- `A113224(n+1)-A033539(n+2)` -/
def P10478392887664521612.Spec : Prop :=
  ∀ n, P10478392887664521612.a n = A375726 n

end A375726

/-! ## A375726.P204292429769620829

`A048739(n+1)-A080039(n+1)`
-/

namespace A375726.P204292429769620829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (n + 1) - A080039 (n + 1)

end

end A375726.P204292429769620829

namespace A375726

/-- `A048739(n+1)-A080039(n+1)` -/
def P204292429769620829.Spec : Prop :=
  ∀ n, P204292429769620829.a n = A375726 n

end A375726

/-! ## A375726.P16224138597146611030

`A166868(n)-(A166867(n)+A000129(n))`
-/

namespace A375726.P16224138597146611030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166868 n - (A166867 n + A000129 n)

end

end A375726.P16224138597146611030

namespace A375726

/-- `A166868(n)-(A166867(n)+A000129(n))` -/
def P16224138597146611030.Spec : Prop :=
  ∀ n, P16224138597146611030.a n = A375726 n

end A375726

/-!
# A375728: Least number k such that the concatenation of n consecutive numbers from k to k+n-1 is divisible by their sum.

The programs for A375728, there is no canonical definition to state claims against.
-/

/-! ## A375728.P7584649284672557864

`A098326(a(and(n, n-1))+and(n, -n)²)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=1`
-/

namespace A375728.P7584649284672557864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 1] fun n a =>
  A098326 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2).toNat

end

end A375728.P7584649284672557864

/-! ## A375728.P9670201121741165830

`A063966(A068973(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=1, a(5)=5`
-/

namespace A375728.P9670201121741165830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 1, 5] fun n a =>
  A063966 (A068973 (a (n - 1)).toNat).toNat

end

end A375728.P9670201121741165830

/-! ## A375728.P4209253664214921724

`A346704(n+1)+A346698(A361558(n))`
-/

namespace A375728.P4209253664214921724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (n + 1) + A346698 (A361558 n).toNat

end

end A375728.P4209253664214921724

/-!
# A375730: a(n) = n^n + n*n + n+n + 1.

The programs for A375730, the canonical program `A375730.P3280158583342801557` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375730 has offset 0).

The definition of A375730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n*n+n+n+1` (program `A375730.P3280158583342801557`, by `A375730.P3280158583342801557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375730.P9044090580760041022

`n^n+(n+1)²`
-/

namespace A375730.P9044090580760041022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n + (n + 1) ^ 2

end

end A375730.P9044090580760041022

namespace A375730

/-- `n^n+(n+1)²` -/
def P9044090580760041022.Spec : Prop :=
  ∀ n, (P9044090580760041022.a n : ℤ) = A375730 n

theorem P9044090580760041022.correct : P9044090580760041022.Spec := by
  intro n
  simp only [A375730, Nat.add_sub_cancel, A375730.P9044090580760041022.a, A375730.P3280158583342801557.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A375730

/-! ## A375730.P3280158583342801557

`n^n+n*n+n+n+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375730

/-- `n^n+n*n+n+n+1` -/
def P3280158583342801557.Spec : Prop :=
  ∀ n, (P3280158583342801557.a n : ℤ) = A375730 n

theorem P3280158583342801557.correct : P3280158583342801557.Spec := by
  intro n
  simp only [A375730]

end A375730

/-! ## A375730.P18386825112671162322

`floor(∑[a(n-1)+2]+n^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A375730.P18386825112671162322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ n

end

end A375730.P18386825112671162322

namespace A375730

/-- `floor(∑[a(n-1)+2]+n^n)` -/
def P18386825112671162322.Spec : Prop :=
  ∀ n, (P18386825112671162322.a n : ℤ) = A375730 n

end A375730

/-! ## A375730.P1556486291813207888

`(A000312(n)/(n+1)+n+1)*(n+1)`
-/

namespace A375730.P1556486291813207888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000312 n : ℚ) / (n + 1 : ℚ) + (n : ℚ) + 1) * (n + 1 : ℚ)

end

end A375730.P1556486291813207888

namespace A375730

/-- `(A000312(n)/(n+1)+n+1)*(n+1)` -/
def P1556486291813207888.Spec : Prop :=
  ∀ n, P1556486291813207888.a n = (A375730 n : ℚ)

end A375730

/-! ## A375730.P8634650698063331656

`record[A245732(n)+A060734(n+1)]`
-/

namespace A375730.P8634650698063331656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245732 n + A060734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375730.P8634650698063331656

namespace A375730

/-- `record[A245732(n)+A060734(n+1)]` -/
def P8634650698063331656.Spec : Prop :=
  ∀ n, P8634650698063331656.a n = A375730 n

end A375730

/-! ## A375730.P13216598104289693553

`record[A362856(n)+A128077(n+1)]`
-/

namespace A375730.P13216598104289693553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362856 n + A128077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375730.P13216598104289693553

namespace A375730

/-- `record[A362856(n)+A128077(n+1)]` -/
def P13216598104289693553.Spec : Prop :=
  ∀ n, P13216598104289693553.a n = A375730 n

end A375730

/-!
# A375731: a(n) is the number of partitions of n having a square number of parts whose sum of squares is a square.

The programs for A375731, there is no canonical definition to state claims against.
-/

/-! ## A375731.P13920671646756148256

`A126305(A122454(n))`
-/

namespace A375731.P13920671646756148256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A122454 n).toNat

end

end A375731.P13920671646756148256

/-! ## A375731.P1244857150618753151

`A359306(∑[A129103(floor(n/4))])`
-/

namespace A375731.P1244857150618753151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129103 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375731.P1244857150618753151

/-! ## A375731.P87925255034838390

`A279060(A049964(n+1))+A112765(n+1)`
-/

namespace A375731.P87925255034838390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A049964 (n + 1)).toNat + A112765 (n + 1)

end

end A375731.P87925255034838390

/-! ## A375731.P4901483679239476192

`gcd(A264990(A038086(n+1)), A372167(n+3))`
-/

namespace A375731.P4901483679239476192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264990 (A038086 (n + 1)).toNat) (A372167 (n + 3))

end

end A375731.P4901483679239476192

/-!
# A375734: Indices of consecutive prime-powers (exclusive) differing by 1. Positions of 1's in A057820.

The programs for A375734, there is no canonical definition to state claims against.
-/

/-! ## A375734.P10570023239328014376

`∑[A373671(n+1)]`
-/

namespace A375734.P10570023239328014376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375734.P10570023239328014376

/-! ## A375734.P15239342414198380168

`A373671(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A375734.P15239342414198380168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373671 (n + 1) + a (A023443 n).toNat

end

end A375734.P15239342414198380168

/-! ## A375734.P15877778862530660784

`eq[1, A275120(n+1)]`
-/

namespace A375734.P15877778862530660784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375734.P15877778862530660784

/-! ## A375734.P8004019604107172269

`A025528(A006549(n+2))`
-/

namespace A375734.P8004019604107172269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A006549 (n + 2)).toNat

end

end A375734.P8004019604107172269

/-! ## A375734.P12248837481538677866

`eq[A022932(n), A057820(n+1)]`
-/

namespace A375734.P12248837481538677866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375734.P12248837481538677866

/-!
# A375735: First differences of non-prime-powers (inclusive).

The programs for A375735, the canonical program `A375735.P17339394773180058432` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375735 has offset 1).

The definition of A375735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375735.P10273425847146175489

`A376599(n)+a(n-1)` with `a(0)=4`
-/

namespace A375735.P10273425847146175489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A376599 n + a (n - 1)

end

end A375735.P10273425847146175489

namespace A375735

/-- `A376599(n)+a(n-1)` -/
def P10273425847146175489.Spec : Prop :=
  ∀ n, P10273425847146175489.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P17339394773180058432

`A375708(n+2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375735

/-- `A375708(n+2)` -/
def P17339394773180058432.Spec : Prop :=
  ∀ n, P17339394773180058432.a n = A375735 (n + 1)

theorem P17339394773180058432.correct : P17339394773180058432.Spec := by
  intro n
  simp only [A375735, Nat.add_sub_cancel]

end A375735

/-! ## A375735.P5928376640576970136

`Δ[A024619(n+1)]`
-/

namespace A375735.P5928376640576970136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375735.P5928376640576970136

namespace A375735

/-- `Δ[A024619(n+1)]` -/
def P5928376640576970136.Spec : Prop :=
  ∀ n, P5928376640576970136.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P2779821652043510314

`Δ[A080765(n+1)]`
-/

namespace A375735.P2779821652043510314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375735.P2779821652043510314

namespace A375735

/-- `Δ[A080765(n+1)]` -/
def P2779821652043510314.Spec : Prop :=
  ∀ n, P2779821652043510314.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P10748845840763269792

`Δ[lt[1, A001221(n+1)]]`
-/

namespace A375735.P10748845840763269792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P10748845840763269792

namespace A375735

/-- `Δ[lt[1, A001221(n+1)]]` -/
def P10748845840763269792.Spec : Prop :=
  ∀ n, P10748845840763269792.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P13779684227049563402

`Δ[lt[1, A259936(n+1)]]`
-/

namespace A375735.P13779684227049563402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P13779684227049563402

namespace A375735

/-- `Δ[lt[1, A259936(n+1)]]` -/
def P13779684227049563402.Spec : Prop :=
  ∀ n, P13779684227049563402.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P240558887995933004

`A024619(n+2)-A024619(n+1)`
-/

namespace A375735.P240558887995933004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 2) - A024619 (n + 1)

end

end A375735.P240558887995933004

namespace A375735

/-- `A024619(n+2)-A024619(n+1)` -/
def P240558887995933004.Spec : Prop :=
  ∀ n, P240558887995933004.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P8823306659332132653

`A080765(n+2)-A080765(n+1)`
-/

namespace A375735.P8823306659332132653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 2) - A080765 (n + 1)

end

end A375735.P8823306659332132653

namespace A375735

/-- `A080765(n+2)-A080765(n+1)` -/
def P8823306659332132653.Spec : Prop :=
  ∀ n, P8823306659332132653.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P6248279743896096597

`Δ[A361102(n+2)]`
-/

namespace A375735.P6248279743896096597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375735.P6248279743896096597

namespace A375735

/-- `Δ[A361102(n+2)]` -/
def P6248279743896096597.Spec : Prop :=
  ∀ n, P6248279743896096597.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P1282560771996416236

`A361102(n+3)-A361102(n+2)`
-/

namespace A375735.P1282560771996416236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 3) - A361102 (n + 2)

end

end A375735.P1282560771996416236

namespace A375735

/-- `A361102(n+3)-A361102(n+2)` -/
def P1282560771996416236.Spec : Prop :=
  ∀ n, P1282560771996416236.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P10702044360097756776

`Δ[A387335(n+4)]`
-/

namespace A375735.P10702044360097756776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375735.P10702044360097756776

namespace A375735

/-- `Δ[A387335(n+4)]` -/
def P10702044360097756776.Spec : Prop :=
  ∀ n, P10702044360097756776.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P9745048641138486094

`Δ[lt[1, A007875(n+1)]]`
-/

namespace A375735.P9745048641138486094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P9745048641138486094

namespace A375735

/-- `Δ[lt[1, A007875(n+1)]]` -/
def P9745048641138486094.Spec : Prop :=
  ∀ n, P9745048641138486094.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P1725270323388777952

`Δ[eq[1, A014963(n+2)]]`
-/

namespace A375735.P1725270323388777952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P1725270323388777952

namespace A375735

/-- `Δ[eq[1, A014963(n+2)]]` -/
def P1725270323388777952.Spec : Prop :=
  ∀ n, P1725270323388777952.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P15512578181670356129

`Δ[lt[2, A034444(n+1)]]`
-/

namespace A375735.P15512578181670356129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P15512578181670356129

namespace A375735

/-- `Δ[lt[2, A034444(n+1)]]` -/
def P15512578181670356129.Spec : Prop :=
  ∀ n, P15512578181670356129.a n = A375735 (n + 1)

end A375735

/-! ## A375735.P17313788098617099963

`Δ[lt[A100994(n+2), 2]]`
-/

namespace A375735.P17313788098617099963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P17313788098617099963

namespace A375735

/-- `Δ[lt[A100994(n+2), 2]]` -/
def P17313788098617099963.Spec : Prop :=
  ∀ n, P17313788098617099963.a n = A375735 (n + 1)

end A375735

/-!
# A375736: Length of the n-th maximal anti-run of adjacent (increasing by more than one at a time) non-perfect-powers.

The programs for A375736, there is no canonical definition to state claims against.
-/

/-! ## A375736.P13988393664808500354

`Δ[comp[A375714(n+1)]]`
-/

namespace A375736.P13988393664808500354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375714 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375736.P13988393664808500354

/-! ## A375736.P3256446960966596358

`Δ[comp[∑[A375702(n+1)]]]`
-/

namespace A375736.P3256446960966596358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375736.P3256446960966596358

/-! ## A375736.P12282685393651750941

`Δ[comp[∑[A053289(n+1)-1]]]`
-/

namespace A375736.P12282685393651750941
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375736.P12282685393651750941

/-! ## A375736.P3749172600377040169

`ceil(sqrt(Δ[A375738(n+1)]))`
-/

namespace A375736.P3749172600377040169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌉

end

end A375736.P3749172600377040169

/-! ## A375736.P4669175044353245612

`A004001(Δ[A375738(n+1)])`
-/

namespace A375736.P4669175044353245612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (f1 (n + 1) - f1 n).toNat

end

end A375736.P4669175044353245612

/-! ## A375736.P1741816306234119743

`A032153(Δ[A375738(n+1)])`
-/

namespace A375736.P1741816306234119743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032153 (f1 (n + 1) - f1 n).toNat

end

end A375736.P1741816306234119743

/-! ## A375736.P2476021705245812984

`A046699(Δ[A375738(n+1)])`
-/

namespace A375736.P2476021705245812984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (f1 (n + 1) - f1 n).toNat

end

end A375736.P2476021705245812984

/-! ## A375736.P18404734635774661892

`A097793(Δ[A375738(n+1)])`
-/

namespace A375736.P18404734635774661892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097793 (f1 (n + 1) - f1 n).toNat

end

end A375736.P18404734635774661892

/-! ## A375736.P5304360753291767340

`A134021(Δ[A375738(n+1)])`
-/

namespace A375736.P5304360753291767340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (f1 (n + 1) - f1 n).toNat

end

end A375736.P5304360753291767340

/-! ## A375736.P7860303848299385806

`A332668(Δ[A375738(n+1)])`
-/

namespace A375736.P7860303848299385806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332668 (f1 (n + 1) - f1 n).toNat

end

end A375736.P7860303848299385806

/-!
# A375738: Minimum of the n-th maximal anti-run of adjacent (increasing by more than one at a time) non-perfect-powers.

The programs for A375738, there is no canonical definition to state claims against.
-/

/-! ## A375738.P17390371286563620450

`record[A052410(A052410(n+1)+1)]`
-/

namespace A375738.P17390371286563620450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A052410 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375738.P17390371286563620450

/-! ## A375738.P1229403387042893383

`record[A175781(A175781(n+1)+1)]`
-/

namespace A375738.P1229403387042893383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (A175781 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375738.P1229403387042893383

/-! ## A375738.P8058792098612342602

`record[A304491(A304491(n+1)+1)]`
-/

namespace A375738.P8058792098612342602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (A304491 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375738.P8058792098612342602

/-! ## A375738.P9381976391278579481

`record[A327501(A327501(n+1)+1)]`
-/

namespace A375738.P9381976391278579481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327501 (A327501 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375738.P9381976391278579481

/-! ## A375738.P7641291545686859735

`eq[A346403(n+1), A346403(n+2)]+2`
-/

namespace A375738.P7641291545686859735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346403 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A375738.P7641291545686859735

/-! ## A375738.P7735117288581906908

`∩[A175082(n+1)+1, A175082(n+1)]`
-/

namespace A375738.P7735117288581906908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375738.P7735117288581906908

/-! ## A375738.P6803601074267493149

`∪[A003154(n+1), A375739(n+1)]+1`
-/

namespace A375738.P6803601074267493149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A375738.P6803601074267493149

/-!
# A375739: Maximum of the n-th maximal anti-run of adjacent (increasing by more than one at a time) non-perfect-powers.

The programs for A375739, there is no canonical definition to state claims against.
-/

/-! ## A375739.P11714668482404134501

`lt[1, A069584(n+1)]`
-/

namespace A375739.P11714668482404134501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A375739.P11714668482404134501

/-! ## A375739.P13719010185582470887

`record[A360964(∑[n+2])]`
-/

namespace A375739.P13719010185582470887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360964 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375739.P13719010185582470887

/-! ## A375739.P7501033052736293520

`lt[1, A074984(n+1)]+1`
-/

namespace A375739.P7501033052736293520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375739.P7501033052736293520

/-! ## A375739.P13260438259668339734

`lt[1, n/A081676(n+1)]`
-/

namespace A375739.P13260438259668339734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A081676 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A375739.P13260438259668339734

/-! ## A375739.P4671794381050476990

`A007916(A375740(n+1))`
-/

namespace A375739.P4671794381050476990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A375740 (n + 1)).toNat

end

end A375739.P4671794381050476990

/-! ## A375739.P6855503605257170069

`comp[A081676(n+1)-A112526(n+1)]`
-/

namespace A375739.P6855503605257170069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1) - A112526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375739.P6855503605257170069

/-! ## A375739.P6588661738159008182

`comp[A203025(n+1)-A003849(n+1)]`
-/

namespace A375739.P6588661738159008182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203025 (n + 1) - A003849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375739.P6588661738159008182

/-! ## A375739.P1147048751510081591

`eq[A052409(n+1), A052409(n+2)]+1`
-/

namespace A375739.P1147048751510081591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A375739.P1147048751510081591

/-! ## A375739.P8757838881318023048

`∩[A007916(n+1)-1, A007916(n+1)]`
-/

namespace A375739.P8757838881318023048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375739.P8757838881318023048

/-! ## A375739.P7273170551616864335

`∩[A007916(n+1), A033619(A007916(n+1))]`
-/

namespace A375739.P7273170551616864335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A007916 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375739.P7273170551616864335

/-!
# A375740: Numbers k such that A007916(k+1) - A007916(k) = 1. In other words, the k-th non-perfect-power is 1 less than the next.

The programs for A375740, there is no canonical definition to state claims against.
-/

/-! ## A375740.P18295198467452962600

`∑[A375736(n+1)]`
-/

namespace A375740.P18295198467452962600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375740.P18295198467452962600

/-! ## A375740.P14765349269352540272

`comp[∑[A076412(n)-1]]`
-/

namespace A375740.P14765349269352540272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375740.P14765349269352540272

/-! ## A375740.P6476285327170754457

`eq[1, A375706(n+1)]+1`
-/

namespace A375740.P6476285327170754457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375740.P6476285327170754457

/-! ## A375740.P1408504501857523635

`comp[comp[A052410(n+2)]-n]`
-/

namespace A375740.P1408504501857523635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375740.P1408504501857523635

/-! ## A375740.P6817978678237876457

`comp[A375714(n+1)-1]+1`
-/

namespace A375740.P6817978678237876457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375714 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375740.P6817978678237876457

/-! ## A375740.P3686575414283278697

`comp[A001597(n+1)-(n+1)]`
-/

namespace A375740.P3686575414283278697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375740.P3686575414283278697

/-! ## A375740.P5165626021162457493

`comp[A075309(n+1)-(n+1)]`
-/

namespace A375740.P5165626021162457493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375740.P5165626021162457493

/-! ## A375740.P1804063770066071829

`comp[A090516(n+1)-(n+1)]`
-/

namespace A375740.P1804063770066071829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375740.P1804063770066071829

/-! ## A375740.P545287206449102446

`record[A000027(n+1)/A375706(n+1)]`
-/

namespace A375740.P545287206449102446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A375706 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375740.P545287206449102446

/-! ## A375740.P7127204753412260837

`comp[∑[A375702(n+1)]-A375702(n+1)]`
-/

namespace A375740.P7127204753412260837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375702 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A375702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375740.P7127204753412260837

/-!
# A375744: Numbers that are the sum of 4 but no fewer nonzero squares and admit a representation with 4 distinct squares.

The programs for A375744, there is no canonical definition to state claims against.
-/

/-! ## A375744.P6081611281885573804

`lt[A005875(n), A025443(n)]`
-/

namespace A375744.P6081611281885573804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375744.P6081611281885573804

/-! ## A375744.P18402121770363643648

`filter[A004433(n+1), A072401(#)]`
-/

namespace A375744.P18402121770363643648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A375744.P18402121770363643648

/-! ## A375744.P6899883640007112519

`∩[A001944(n+1), A004215(n+1)]`
-/

namespace A375744.P6899883640007112519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375744.P6899883640007112519

/-! ## A375744.P74126165049378072

`∩[A004215(n+1), A004433(n+1)]`
-/

namespace A375744.P74126165049378072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375744.P74126165049378072

/-! ## A375744.P4597594599961022323

`∩[A001944(n+1), A214328(n+1)]`
-/

namespace A375744.P4597594599961022323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375744.P4597594599961022323

/-! ## A375744.P16088538875275880379

`∩[A004433(n+1), A214328(n+1)]`
-/

namespace A375744.P16088538875275880379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375744.P16088538875275880379

/-!
# A375750: Numbers k such that 4*k+1 is the hypotenuse of a primitive Pythagorean triangle with an odd short leg.

The programs for A375750, there is no canonical definition to state claims against.
-/

/-! ## A375750.P2348306721292373731

`lt[A000040(n+1)², A363931(n+1)]`
-/

namespace A375750.P2348306721292373731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375750.P2348306721292373731

/-! ## A375750.P10297403731820516232

`lt[A000961(A001844(n)), A363931(n+1)]`
-/

namespace A375750.P10297403731820516232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A001844 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375750.P10297403731820516232

/-! ## A375750.P2941395318270539078

`lt[A227196(A361600(n)), A227196(n+1)]`
-/

namespace A375750.P2941395318270539078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A361600 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375750.P2941395318270539078

/-! ## A375750.P14731838014745565623

`lt[A000108(A111800(n+1)), A363931(n+1)]`
-/

namespace A375750.P14731838014745565623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A111800 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375750.P14731838014745565623

/-! ## A375750.P783599544968615664

`lt[A361120(A188211(n+1)), A001462(n+1)]`
-/

namespace A375750.P783599544968615664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361120 (A188211 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375750.P783599544968615664

/-!
# A375751: a(n) is the difference between F=A000045(n) and the largest prime not exceeding F.

The programs for A375751, there is no canonical definition to state claims against.
-/

/-! ## A375751.P1041962126613970838

`A000045(n+3)-A138184(n+3)`
-/

namespace A375751.P1041962126613970838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - A138184 (n + 3)

end

end A375751.P1041962126613970838

/-! ## A375751.P6312252986643641684

`A020695(n)-A138184(n+3)`
-/

namespace A375751.P6312252986643641684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A138184 (n + 3)

end

end A375751.P6312252986643641684

/-! ## A375751.P6386544640226330395

`A175851(A000045(n+3))-1`
-/

namespace A375751.P6386544640226330395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A000045 (n + 3)).toNat - 1

end

end A375751.P6386544640226330395

/-!
# A375752: a(n) is the difference between T=n*(n+1)/2 and the largest prime not exceeding T.

The programs for A375752, there is no canonical definition to state claims against.
-/

/-! ## A375752.P17714161242326919861

`A000217(n+2)-A065384(n+2)`
-/

namespace A375752.P17714161242326919861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - A065384 (n + 2)

end

end A375752.P17714161242326919861

/-! ## A375752.P4381434213098277520

`A034856(n+1)+2-A065384(n+2)`
-/

namespace A375752.P4381434213098277520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (2 - A065384 (n + 2))

end

end A375752.P4381434213098277520

/-! ## A375752.P6182018685636756322

`A249742(A006093(n+2))-A065384(n+2)`
-/

namespace A375752.P6182018685636756322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A006093 (n + 2)).toNat - A065384 (n + 2)

end

end A375752.P6182018685636756322

/-! ## A375752.P1166126421604022665

`A175851(∑[n+2]+1)-1`
-/

namespace A375752.P1166126421604022665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A375752.P1166126421604022665

/-! ## A375752.P17941129154305793996

`A057427(n)*A175851(∑[n+2])`
-/

namespace A375752.P17941129154305793996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A175851 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375752.P17941129154305793996

/-! ## A375752.P12592728662224115538

`A175851(∑[n+2])%A301674(n)`
-/

namespace A375752.P12592728662224115538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175851 (∑ j ∈ Finset.range (n + 1), f1 j)) (A301674 n)

end

end A375752.P12592728662224115538

/-! ## A375752.P324591394840715863

`A064722(C(n+3, 2))`
-/

namespace A375752.P324591394840715863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (Nat.choose (n + 3) 2)

end

end A375752.P324591394840715863

/-! ## A375752.P16040907558085230540

`A064722(∑[n+2]+1)`
-/

namespace A375752.P16040907558085230540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A375752.P16040907558085230540

/-! ## A375752.P7095459594322746740

`A049711(A000217(n+2))-A000007(n)`
-/

namespace A375752.P7095459594322746740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A000217 (n + 2)).toNat - A000007 n

end

end A375752.P7095459594322746740

/-! ## A375752.P1053369598419418227

`A064722(A000217(n+2))%A000098(n)`
-/

namespace A375752.P1053369598419418227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064722 (A000217 (n + 2)).toNat) (A000098 n)

end

end A375752.P1053369598419418227

/-!
# A375758: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, the initial digit of n divides a(n).

The programs for A375758, there is no canonical definition to state claims against.
-/

/-! ## A375758.P11811348718297018825

`lt[n*gcd(n, ∑[n]), 20*n]`
-/

namespace A375758.P11811348718297018825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A375758.P11811348718297018825

/-! ## A375758.P6970556082296095383

`lt[n/(n%2+1), 19]+1`
-/

namespace A375758.P6970556082296095383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A375758.P6970556082296095383

/-! ## A375758.P15423256452588606437

`lt[-6, a(n-2)-1]` with `a(0)=-11, a(1)=4, a(2)=13`
-/

namespace A375758.P15423256452588606437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-11, 4, 13] fun n f2 =>
  f2 (n - 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375758.P15423256452588606437

/-! ## A375758.P12368239626238627182

`lt[A302604(n+1), 9]+1`
-/

namespace A375758.P12368239626238627182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302604 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A375758.P12368239626238627182

/-! ## A375758.P11243063322213252242

`lt[A215495(n+1), 20]+1`
-/

namespace A375758.P11243063322213252242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A375758.P11243063322213252242

/-!
# A375760: Array read by rows: T(n,k) is the first prime with exactly n occurrences of decimal digit k.

The programs for A375760, there is no canonical definition to state claims against.
-/

/-! ## A375760.P15995916105426949139

`A128773(A327564(2*n+5))+1`
-/

namespace A375760.P15995916105426949139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128773 (A327564 (2 * n + 5)).toNat + 1

end

end A375760.P15995916105426949139

/-! ## A375760.P10707379094124753308

`A058959(n^A046660(2*n+5))`
-/

namespace A375760.P10707379094124753308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058959 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A046660 (2 * n + 5) : ℤ))).toNat

end

end A375760.P10707379094124753308

/-! ## A375760.P17052731311048623989

`A074399(n^val(A077385(n+1), 2))`
-/

namespace A375760.P17052731311048623989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n ^ SequenceMachineLib.valuation (A077385 (n + 1)).toNat 2)

end

end A375760.P17052731311048623989

/-! ## A375760.P9821996728104732793

`A020639((A193722(3*n+1)+1)*(n²+1))`
-/

namespace A375760.P9821996728104732793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A193722 (3 * n + 1) + 1) * (n ^ 2 + 1 : ℤ)).toNat

end

end A375760.P9821996728104732793

/-! ## A375760.P10945948324990727349

`A360964(A088305(n)+A000267(n))`
-/

namespace A375760.P10945948324990727349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360964 (A088305 n + A000267 n).toNat

end

end A375760.P10945948324990727349

/-!
# A375761: Infinite triangle T(n, k), n > 0, k = 1..n, read and filled in the greedy way by rows with distinct positive integers such that for any n > 1, k = 2..n, T(n, k) = T(n-1, k-1) * T(n, k-1).

The programs for A375761, there is no canonical definition to state claims against.
-/

/-! ## A375761.P8115097668131620555

`A064319(comp[∑[n]]^A055642(n))`
-/

namespace A375761.P8115097668131620555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064319 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A375761.P8115097668131620555

/-! ## A375761.P2272087751060519671

`A064319(comp[∑[n]]^A165045(n+1))`
-/

namespace A375761.P2272087751060519671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064319 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A165045 (n + 1) : ℤ))).toNat

end

end A375761.P2272087751060519671

/-!
# A375764: a(n) is the sum of distinct sums of all subsets with two or more elements of {1, 2, ..., n}.

The programs for A375764, the canonical program `A375764.P1948126829962016897` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375764 has offset 0).

The definition of A375764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375764.P2502290423317848105

`a(n-1)+(n^3+n)/2` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A375764.P2502290423317848105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  a (n - 1) + (n ^ 3 + n : ℚ) / 2

end

end A375764.P2502290423317848105

namespace A375764

/-- `a(n-1)+(n^3+n)/2` -/
def P2502290423317848105.Spec : Prop :=
  ∀ n, P2502290423317848105.a n = (A375764 n : ℚ)

end A375764

/-! ## A375764.P1948126829962016897

`(n-1)*∑[n]+a(n-1)+n` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375764

/-- `(n-1)*∑[n]+a(n-1)+n` -/
def P1948126829962016897.Spec : Prop :=
  ∀ n, P1948126829962016897.a n = A375764 n

theorem P1948126829962016897.correct : P1948126829962016897.Spec := by
  intro n
  simp only [A375764]

end A375764

/-! ## A375764.P16128991355689325878

`A006003(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A375764.P16128991355689325878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  A006003 n + a (n - 1)

end

end A375764.P16128991355689325878

namespace A375764

/-- `A006003(n)+a(n-1)` -/
def P16128991355689325878.Spec : Prop :=
  ∀ n, P16128991355689325878.a n = A375764 n

end A375764

/-! ## A375764.P93112573069146352

`A152041(n)%A154323(n)`
-/

namespace A375764.P93112573069146352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152041 n) (A154323 n)

end

end A375764.P93112573069146352

namespace A375764

/-- `A152041(n)%A154323(n)` -/
def P93112573069146352.Spec : Prop :=
  ∀ n, P93112573069146352.a n = A375764 n

end A375764

/-! ## A375764.P4952722621853315150

`A002817(n)-A211010(A004273(n))`
-/

namespace A375764.P4952722621853315150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A211010 (A004273 n).toNat

end

end A375764.P4952722621853315150

namespace A375764

/-- `A002817(n)-A211010(A004273(n))` -/
def P4952722621853315150.Spec : Prop :=
  ∀ n, P4952722621853315150.a n = A375764 n

end A375764

/-! ## A375764.P13853234520230643311

`A000217(A000217(n))-3%A007931(n+1)`
-/

namespace A375764.P13853234520230643311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat - Int.tmod 3 (A007931 (n + 1))

end

end A375764.P13853234520230643311

namespace A375764

/-- `A000217(A000217(n))-3%A007931(n+1)` -/
def P13853234520230643311.Spec : Prop :=
  ∀ n, P13853234520230643311.a n = A375764 n

end A375764

/-! ## A375764.P9589417779626051186

`A000096(abs(1-(char[1]+∑[n])))-2`
-/

namespace A375764.P9589417779626051186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 |1 - (((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|.toNat - 2

end

end A375764.P9589417779626051186

namespace A375764

/-- `A000096(abs(1-(char[1]+∑[n])))-2` -/
def P9589417779626051186.Spec : Prop :=
  ∀ n, P9589417779626051186.a n = A375764 n

end A375764

/-! ## A375764.P4345225686981827414

`A055998(A289207(∑[n]))`
-/

namespace A375764.P4345225686981827414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A289207 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A375764.P4345225686981827414

namespace A375764

/-- `A055998(A289207(∑[n]))` -/
def P4345225686981827414.Spec : Prop :=
  ∀ n, P4345225686981827414.a n = A375764 n

end A375764

/-! ## A375764.P1176044650588049243

`A034856(A212342(n))-1`
-/

namespace A375764.P1176044650588049243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A212342 n).toNat - 1

end

end A375764.P1176044650588049243

namespace A375764

/-- `A034856(A212342(n))-1` -/
def P1176044650588049243.Spec : Prop :=
  ∀ n, P1176044650588049243.a n = A375764 n

end A375764

/-! ## A375764.P6634397570048155793

`A055998(A212342(n)-1)`
-/

namespace A375764.P6634397570048155793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A212342 n - 1).toNat

end

end A375764.P6634397570048155793

namespace A375764

/-- `A055998(A212342(n)-1)` -/
def P6634397570048155793.Spec : Prop :=
  ∀ n, P6634397570048155793.a n = A375764 n

end A375764

/-! ## A375764.P1341464200880004743

`A000124(A000217(n))-A151798(n)`
-/

namespace A375764.P1341464200880004743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000217 n).toNat - A151798 n

end

end A375764.P1341464200880004743

namespace A375764

/-- `A000124(A000217(n))-A151798(n)` -/
def P1341464200880004743.Spec : Prop :=
  ∀ n, P1341464200880004743.a n = A375764 n

end A375764

/-!
# A375766: The maximum exponent in the prime factorization of the numbers whose exponents in their prime factorization are all Fibonacci numbers.

The programs for A375766, the canonical program `A375766.P13293560451162268866` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375766 has offset 1).

The definition of A375766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375766.P13293560451162268866

`A051903(A115063(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A375766

/-- `A051903(A115063(n+1))` -/
def P13293560451162268866.Spec : Prop :=
  ∀ n, P13293560451162268866.a n = A375766 (n + 1)

theorem P13293560451162268866.correct : P13293560451162268866.Spec := by
  intro n
  simp only [A375766, Nat.add_sub_cancel]

end A375766

/-!
# A375767: The indices of the terms of A375766 in the Fibonacci sequence.

The programs for A375767, the canonical program `A375767.P11029837342179991351` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375767 has offset 1).

The definition of A375767 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375767.P11029837342179991351

`A130233(A375766(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A375767

/-- `A130233(A375766(n+1))` -/
def P11029837342179991351.Spec : Prop :=
  ∀ n, P11029837342179991351.a n = A375767 (n + 1)

theorem P11029837342179991351.correct : P11029837342179991351.Spec := by
  intro n
  simp only [A375767, Nat.add_sub_cancel]

end A375767

/-! ## A375767.P16935949182108038287

`A375429(A115063(n+1))`
-/

namespace A375767.P16935949182108038287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375429 (A115063 (n + 1)).toNat

end

end A375767.P16935949182108038287

namespace A375767

/-- `A375429(A115063(n+1))` -/
def P16935949182108038287.Spec : Prop :=
  ∀ n, P16935949182108038287.a n = A375767 (n + 1)

end A375767

/-!
# A375768: 

The programs for A375768, there is no canonical definition to state claims against.
-/

/-! ## A375768.P10640290788176258715

`filter[A051903(n+1), A010056(#)]`
-/

namespace A375768.P10640290788176258715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A375768.P10640290788176258715

/-!
# A375770: In an n X n grid draw straight walls between cells, starting at a border, such that the resulting figure is connected and has only one-cell wide paths; a(n) is the number of solutions distinct under reflections and rotations.

The programs for A375770, there is no canonical definition to state claims against.
-/

/-! ## A375770.P12371908092306356852

`A004525(A375860(n+1)+A004525(n))`
-/

namespace A375770.P12371908092306356852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A375860 (n + 1) + A004525 n).toNat

end

end A375770.P12371908092306356852

/-!
# A375774: The number of n-digit integers that can be written as the product of n single-digit integers. The single-digit integers need not be distinct.

The programs for A375774, there is no canonical definition to state claims against.
-/

/-! ## A375774.P7335526738352296865

`∑[A345921(A350359(3*n+5))-1]`
-/

namespace A375774.P7335526738352296865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A350359 (3 * n + 5)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375774.P7335526738352296865

/-!
# A375775: For n >= 1, a(n) is the largest k >= 1 such that A001359(n) + i*(i + 1) is prime for all i from 1 to k.

The programs for A375775, there is no canonical definition to state claims against.
-/

/-! ## A375775.P8683722056520510812

`A371896(n+1)-1`
-/

namespace A375775.P8683722056520510812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371896 (n + 1) - 1

end

end A375775.P8683722056520510812

/-! ## A375775.P15061704021754615937

`A002837(A371896(n+1))`
-/

namespace A375775.P15061704021754615937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A371896 (n + 1)).toNat

end

end A375775.P15061704021754615937

/-! ## A375775.P9971434287506091360

`A166931(n+1)%A371896(n+1)`
-/

namespace A375775.P9971434287506091360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A371896 (n + 1))

end

end A375775.P9971434287506091360

/-! ## A375775.P17057683590372090887

`A127228(n+4)%A371896(n+1)`
-/

namespace A375775.P17057683590372090887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A371896 (n + 1))

end

end A375775.P17057683590372090887

/-! ## A375775.P9060616226208254751

`A127229(n+5)%A371896(n+1)`
-/

namespace A375775.P9060616226208254751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A371896 (n + 1))

end

end A375775.P9060616226208254751

/-! ## A375775.P8948072421871715425

`A208936(A029707(n+1))-1`
-/

namespace A375775.P8948072421871715425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (A029707 (n + 1)).toNat - 1

end

end A375775.P8948072421871715425

/-! ## A375775.P3360350996701567300

`A208645(A001359(n+1))-1`
-/

namespace A375775.P3360350996701567300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A001359 (n + 1)).toNat - 1

end

end A375775.P3360350996701567300

/-! ## A375775.P8878976446361575747

`A208645(A124588(n+2))-1`
-/

namespace A375775.P8878976446361575747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A124588 (n + 2)).toNat - 1

end

end A375775.P8878976446361575747

/-! ## A375775.P15237433881760477360

`A208645(A181747(n+2))-1`
-/

namespace A375775.P15237433881760477360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A181747 (n + 2)).toNat - 1

end

end A375775.P15237433881760477360

/-! ## A375775.P5846760820630826697

`A056561(A208645(A001359(n+1)))`
-/

namespace A375775.P5846760820630826697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A208645 (A001359 (n + 1)).toNat).toNat

end

end A375775.P5846760820630826697

/-!
# A375776: Bitwise conflict-free sequence: Each number n is placed into the first set k that contains no element x where n AND x > 0: a(n) = k.

The programs for A375776, there is no canonical definition to state claims against.
-/

/-! ## A375776.P13091694687960990078

`A279125(n+1)+1`
-/

namespace A375776.P13091694687960990078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279125 (n + 1) + 1

end

end A375776.P13091694687960990078

/-! ## A375776.P17494010653995887873

`A083537(A015908(n+1))+1`
-/

namespace A375776.P17494010653995887873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083537 (A015908 (n + 1)).toNat + 1

end

end A375776.P17494010653995887873

/-! ## A375776.P5185187438967575809

`A363127(A319564(3*n))+A003963(n+1)`
-/

namespace A375776.P5185187438967575809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363127 (A319564 (3 * n)).toNat + A003963 (n + 1)

end

end A375776.P5185187438967575809

/-!
# A375777: Numbers k such that k - rad(k) - 1 is prime, where rad(k) is A007947(k).

The programs for A375777, there is no canonical definition to state claims against.
-/

/-! ## A375777.P15351834292691635666

`lt[A351568(A365166(n+1)), A105570(n)]`
-/

namespace A375777.P15351834292691635666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A365166 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375777.P15351834292691635666

/-! ## A375777.P17274539303829931848

`A013929(lt[A000040(n+5), A248146(2*n+5)])`
-/

namespace A375777.P17274539303829931848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248146 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375777.P17274539303829931848

/-! ## A375777.P14129209463657943453

`eq[A087049(n), A195860(A344705(2*(n+1)))]`
-/

namespace A375777.P14129209463657943453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (A344705 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375777.P14129209463657943453

/-! ## A375777.P18372306599787513951

`A013929(A389597(n+3)%A349155(3*n+4))`
-/

namespace A375777.P18372306599787513951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (Int.tmod (A389597 (n + 3)) (A349155 (3 * n + 4))).toNat

end

end A375777.P18372306599787513951

/-! ## A375777.P1233387298298618439

`lt[A001222(A300166(n+1)), A000190(n+1)²]+1`
-/

namespace A375777.P1233387298298618439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A300166 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375777.P1233387298298618439

/-!
# A375778: Number of multiset permutations of {{1}^n, {2}^n, ..., {n}^n} with no fixed points.

The programs for A375778, there is no canonical definition to state claims against.
-/

/-! ## A375778.P8296745234895317379

`A372307(∑[4*n])`
-/

namespace A375778.P8296745234895317379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375778.P8296745234895317379

/-!
# A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

The programs for A375782, the canonical program `A375782.P12848737483940934003` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375782 has offset 1).

The definition of A375782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375782.P8801765608598199363

`val((3/2)^val(n+2, 2)*(n+2)-1, 2)`
-/

namespace A375782.P8801765608598199363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 2) 2 * (n + 2 : ℚ) - 1)).toNat 2

end

end A375782.P8801765608598199363

namespace A375782

/-- `val((3/2)^val(n+2, 2)*(n+2)-1, 2)` -/
def P8801765608598199363.Spec : Prop :=
  ∀ n, (P8801765608598199363.a n : ℤ) = A375782 (n + 1)

end A375782

/-! ## A375782.P12848737483940934003

`1+A007814(A085062(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A375782

/-- `1+A007814(A085062(n+1))` -/
def P12848737483940934003.Spec : Prop :=
  ∀ n, P12848737483940934003.a n = A375782 (n + 1)

theorem P12848737483940934003.correct : P12848737483940934003.Spec := by
  intro n
  simp only [A375782, Nat.add_sub_cancel]

end A375782

/-! ## A375782.P10629034333840405901

`A001511(A085062(n+1))`
-/

namespace A375782.P10629034333840405901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A085062 (n + 1)).toNat

end

end A375782.P10629034333840405901

namespace A375782

/-- `A001511(A085062(n+1))` -/
def P10629034333840405901.Spec : Prop :=
  ∀ n, P10629034333840405901.a n = A375782 (n + 1)

end A375782

/-! ## A375782.P12245999543277885572

`A285097(A394497(n+2))`
-/

namespace A375782.P12245999543277885572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A394497 (n + 2)).toNat

end

end A375782.P12245999543277885572

namespace A375782

/-- `A285097(A394497(n+2))` -/
def P12245999543277885572.Spec : Prop :=
  ∀ n, P12245999543277885572.a n = A375782 (n + 1)

end A375782

/-! ## A375782.P14420314150367696286

`A007814(A394497(n+2)-1)`
-/

namespace A375782.P14420314150367696286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A394497 (n + 2) - 1).toNat

end

end A375782.P14420314150367696286

namespace A375782

/-- `A007814(A394497(n+2)-1)` -/
def P14420314150367696286.Spec : Prop :=
  ∀ n, P14420314150367696286.a n = A375782 (n + 1)

end A375782

/-!
# A375784: Array read by rows: T(n,k) is the first number with n prime factors (counted with multiplicity) and n occurrences of decimal digit k.

The programs for A375784, there is no canonical definition to state claims against.
-/

/-! ## A375784.P17307390348580995399

`A062584(n)+A002448(A034472(n))`
-/

namespace A375784.P17307390348580995399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n + A002448 (A034472 n).toNat

end

end A375784.P17307390348580995399

/-! ## A375784.P16187078386327515038

`A062584(n)+A049084(A331320(n))`
-/

namespace A375784.P16187078386327515038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n + A049084 (A331320 n).toNat

end

end A375784.P16187078386327515038

/-! ## A375784.P13596953566682604586

`A062584(n)+A054973(A072673(n+1))`
-/

namespace A375784.P13596953566682604586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n + A054973 (A072673 (n + 1)).toNat

end

end A375784.P13596953566682604586

/-! ## A375784.P1059207714771070169

`A062584(n)-A002448(A302164(n+4))`
-/

namespace A375784.P1059207714771070169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n - A002448 (A302164 (n + 4)).toNat

end

end A375784.P1059207714771070169

/-! ## A375784.P17505435646364054175

`A094176(A003557(3*n+5))+A062584(n)`
-/

namespace A375784.P17505435646364054175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094176 (A003557 (3 * n + 5)).toNat + A062584 n

end

end A375784.P17505435646364054175

/-!
# A375785: a(n) is the number of distinct integer-sided cuboids having the same surface as a cube with edge length n.

The programs for A375785, there is no canonical definition to state claims against.
-/

/-! ## A375785.P8042172483628493113

`A066955(3*(n+1)²)`
-/

namespace A375785.P8042172483628493113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (3 * (n + 1) ^ 2)

end

end A375785.P8042172483628493113

/-!
# A375786: a(n) is the minimum volume of an integer-sided cuboid having the same surface as a cube with edge length n.

The programs for A375786, there is no canonical definition to state claims against.
-/

/-! ## A375786.P12490123241495881022

`A212631(A119034(n+1))+A047599(n+1)`
-/

namespace A375786.P12490123241495881022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212631 (A119034 (n + 1)).toNat + A047599 (n + 1)

end

end A375786.P12490123241495881022

/-! ## A375786.P16904777169326597611

`A390091(A082694(3*n+1)-A299675(n+1))`
-/

namespace A375786.P16904777169326597611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390091 (A082694 (3 * n + 1) - A299675 (n + 1)).toNat

end

end A375786.P16904777169326597611

/-!
# A375789: First position index for A197123(n) in the decimal expansion of Pi.

The programs for A375789, there is no canonical definition to state claims against.
-/

/-! ## A375789.P13280054356934054911

`Δ[A056239(∑{d}[A203557(n), #]+n+1)]`
-/

namespace A375789.P13280054356934054911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ d ∈ Nat.divisors (f2 n).natAbs, d + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375789.P13280054356934054911

/-!
# A375790: Numbers k such that (sigma(k) - k)^(sigma(k) - k) == k (mod sigma(k)), where sigma = A000203.

The programs for A375790, there is no canonical definition to state claims against.
-/

/-! ## A375790.P257994658577213247

`∩[A053869(n+1), A375488(n+1)]`
-/

namespace A375790.P257994658577213247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375790.P257994658577213247

/-!
# A375791: a(n) = A375516(n+1) / A375516(n).

The programs for A375791, there is no canonical definition to state claims against.
-/

/-! ## A375791.P11401383108156189488

`A375516(n+1)/A375516(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375791.P11401383108156189488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375516 (n + 1) : ℚ) / (A375516 n : ℚ)

end

end A375791.P11401383108156189488

/-! ## A375791.P16941959408486835304

`ratio[(a(n-1)/(n-a(n-1)%n)+1)*a(n-1)]` with `a(0)=1`
-/

namespace A375791.P16941959408486835304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) / ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) (n : ℤ) : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A375791.P16941959408486835304

/-! ## A375791.P13386073441608707739

`ratio[A375516(n)]`
-/

namespace A375791.P13386073441608707739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A375791.P13386073441608707739

/-! ## A375791.P1696626590908730634

`ratio[A374983(n)+1]`
-/

namespace A375791.P1696626590908730634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374983 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A375791.P1696626590908730634

/-! ## A375791.P15623551549175762603

`A375517(n+1)/A374663(n+1)+1`
-/

namespace A375791.P15623551549175762603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375517 (n + 1) : ℚ) / (A374663 (n + 1) : ℚ) + 1

end

end A375791.P15623551549175762603

/-!
# A375792: Numbers k such that 2^k == 2 (mod k-th triangular number) and not 2^k == 2 (mod k-th oblong number).

The programs for A375792, there is no canonical definition to state claims against.
-/

/-! ## A375792.P15691628526619927149

`∩[A007520(n+1), A375793(n+1)]`
-/

namespace A375792.P15691628526619927149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375792.P15691628526619927149

/-!
# A375793: Numbers m such that 2^m == 2 (mod m-th triangular number).

The programs for A375793, there is no canonical definition to state claims against.
-/

/-! ## A375793.P15723616058560823132

`eq[A270096(n+1), A298422(n+1)]`
-/

namespace A375793.P15723616058560823132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375793.P15723616058560823132

/-! ## A375793.P17557640847840905424

`eq[A276976(n+1), A298422(n+1)]`
-/

namespace A375793.P17557640847840905424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375793.P17557640847840905424

/-! ## A375793.P13882268141347611331

`eq[A103314(n), A270096(n+1)]`
-/

namespace A375793.P13882268141347611331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375793.P13882268141347611331

/-! ## A375793.P14317673213751432164

`eq[A103314(n), A276976(n+1)]`
-/

namespace A375793.P14317673213751432164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375793.P14317673213751432164

/-! ## A375793.P11280574519478591408

`eq[A270096(n+1), A326843(n)]`
-/

namespace A375793.P11280574519478591408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375793.P11280574519478591408

/-!
# A375794: Numbers k such that 2^k == 2 (mod ((k - 1)*k/2)) and not 2^k == 2 (mod ((k - 1)*k)).

The programs for A375794, there is no canonical definition to state claims against.
-/

/-! ## A375794.P17028354254928601141

`eq[2, A116420(n)]+2`
-/

namespace A375794.P17028354254928601141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A375794.P17028354254928601141

/-!
# A375795: Expansion of e.g.f. 1/(1 - (exp(x^2) - 1)/x).

The programs for A375795, there is no canonical definition to state claims against.
-/

/-! ## A375795.P8745525514796302003

`n*A220844(a(n-1))` with `a(0)=1`
-/

namespace A375795.P8745525514796302003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A220844 (a (n - 1)).toNat

end

end A375795.P8745525514796302003

/-! ## A375795.P4812172176052709956

`A335448(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A375795.P4812172176052709956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A335448 (a (n - 1) + 1).toNat

end

end A375795.P4812172176052709956

/-!
# A375797: Table T(n, k) read by upward antidiagonals. The sequences in each column k is a triangle read by rows (blocks), where each row is a permutation of the numbers of its constituents. Row number n in column k has length n*k = A003991(n,k); see Comments.

The programs for A375797, there is no canonical definition to state claims against.
-/

/-! ## A375797.P5725052217316446244

`A251722(n+1)+A086073(A128066(n+1))`
-/

namespace A375797.P5725052217316446244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251722 (n + 1) + A086073 (A128066 (n + 1)).toNat

end

end A375797.P5725052217316446244

/-! ## A375797.P1048529534768007502

`or(A001878(A026633(n+1)), A004736(n+1))`
-/

namespace A375797.P1048529534768007502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001878 (A026633 (n + 1)).toNat) (A004736 (n + 1))

end

end A375797.P1048529534768007502

/-! ## A375797.P3745527410769515897

`or(A004736(n+1), A290260(A063432(2*n+5)))`
-/

namespace A375797.P3745527410769515897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004736 (n + 1)) (A290260 (A063432 (2 * n + 5)).toNat)

end

end A375797.P3745527410769515897

/-!
# A375798: Expansion of e.g.f. 1/(1 + (log(1 - x^2))/x).

The programs for A375798, there is no canonical definition to state claims against.
-/

/-! ## A375798.P16578358888810003456

`n*A226164(a(n-1)²)` with `a(0)=1`
-/

namespace A375798.P16578358888810003456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A226164 (a (n - 1) ^ 2).toNat

end

end A375798.P16578358888810003456

/-! ## A375798.P9323096793173224705

`n*A277727(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A375798.P9323096793173224705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A277727 (a (n - 1) + 1).toNat

end

end A375798.P9323096793173224705

