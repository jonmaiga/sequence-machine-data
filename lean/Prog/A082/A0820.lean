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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A082000: First column of array in A081998.

The programs for A082000, there is no canonical definition to state claims against.
-/

/-! ## A082000.P3351213842746190501

`A081998(∑[n]+n*and(1, n))`
-/

namespace A082000.P3351213842746190501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (∑ j ∈ Finset.range (n + 1), f1 j + n * Nat.land 1 n)

end

end A082000.P3351213842746190501

/-! ## A082000.P13268588800396769135

`A081998(∑[A266303(n)]-1)`
-/

namespace A082000.P13268588800396769135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A082000.P13268588800396769135

/-! ## A082000.P16641776252479217928

`A081998(eq[1, A092543(n+1)])`
-/

namespace A082000.P16641776252479217928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082000.P16641776252479217928

/-! ## A082000.P149011335259658711

`A081998(A014682(n)+A007590(n))`
-/

namespace A082000.P149011335259658711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A014682 n + A007590 n).toNat

end

end A082000.P149011335259658711

/-! ## A082000.P3660668623199624328

`A081998(A055998(n)-A022998(n))`
-/

namespace A082000.P3660668623199624328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A055998 n - A022998 n).toNat

end

end A082000.P3660668623199624328

/-! ## A082000.P6195456921696424062

`A081998(A000096(n)-A237420(n))`
-/

namespace A082000.P6195456921696424062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n - A237420 n).toNat

end

end A082000.P6195456921696424062

/-! ## A082000.P1091298479496110170

`A081998(A000096(n)-2*A142150(n))`
-/

namespace A082000.P1091298479496110170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n - 2 * A142150 n).toNat

end

end A082000.P1091298479496110170

/-! ## A082000.P17433459509894569376

`A081998(eq[A081344(n+1), A093995(n+1)])`
-/

namespace A082000.P17433459509894569376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082000.P17433459509894569376

/-! ## A082000.P11082442172174456342

`A081998(eq[A056023(n+1), A127739(n+1)])`
-/

namespace A082000.P11082442172174456342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082000.P11082442172174456342

/-! ## A082000.P17837691004181499235

`A081998(A000096(n)-A005843(A142150(n)))`
-/

namespace A082000.P17837691004181499235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n - A005843 (A142150 n).toNat).toNat

end

end A082000.P17837691004181499235

/-! ## A082000.P12511808430388947728

`A081998(A000096(n)-A142150(n)-A142150(n))`
-/

namespace A082000.P12511808430388947728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 (A000096 n - A142150 n - A142150 n).toNat

end

end A082000.P12511808430388947728

/-! ## A082000.P3681193750329741010

`record[A010054(A056023(n+1))*A081998(n)]`
-/

namespace A082000.P3681193750329741010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A056023 (n + 1)).toNat * A081998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082000.P3681193750329741010

/-!
# A082001: Sum of n-th antidiagonal of array in A081998.

The programs for A082001, there is no canonical definition to state claims against.
-/

/-! ## A082001.P4269370458546910370

`A289500((n+5)*C(A018252(n+1), n))`
-/

namespace A082001.P4269370458546910370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 ((n + 5) * Nat.choose (A018252 (n + 1)).toNat n)

end

end A082001.P4269370458546910370

/-! ## A082001.P4379613853186155617

`A062026(n+1)-A344326(A062024(n))`
-/

namespace A082001.P4379613853186155617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062026 (n + 1) - A344326 (A062024 n).toNat

end

end A082001.P4379613853186155617

/-!
# A082003: First row of array in A082002.

The programs for A082003, there is no canonical definition to state claims against.
-/

/-! ## A082003.P5904436419658737324

`A082002(A128918(n+1))`
-/

namespace A082003.P5904436419658737324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082002 (A128918 (n + 1)).toNat

end

end A082003.P5904436419658737324

/-! ## A082003.P14737209067541304294

`A082002(A266304(n)+1)`
-/

namespace A082003.P14737209067541304294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082002 (A266304 n + 1).toNat

end

end A082003.P14737209067541304294

/-! ## A082003.P6783237148659458107

`A082002(A131179(A109613(n))+n)`
-/

namespace A082003.P6783237148659458107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082002 (A131179 (A109613 n).toNat + (n : ℤ)).toNat

end

end A082003.P6783237148659458107

/-!
# A082004: First column of array in A082002.

The programs for A082004, there is no canonical definition to state claims against.
-/

/-! ## A082004.P8713318468562083467

`A082002(A131179(n+1))`
-/

namespace A082004.P8713318468562083467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082002 (A131179 (n + 1)).toNat

end

end A082004.P8713318468562083467

/-! ## A082004.P10963727661373087978

`A008486(lt[A002264(n), A057432(n)])`
-/

namespace A082004.P10963727661373087978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082004.P10963727661373087978

/-! ## A082004.P2225265456936147038

`A008486(eq[A000007(n), A219200(n)])`
-/

namespace A082004.P2225265456936147038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082004.P2225265456936147038

/-! ## A082004.P10173633635960021950

`A008486(eq[A000007(n), A341978(n)])`
-/

namespace A082004.P10173633635960021950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082004.P10173633635960021950

/-! ## A082004.P12360494201150070893

`record[A090049(ceil((n²-1)/2))]`
-/

namespace A082004.P12360494201150070893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090049 ⌈((n ^ 2 : ℤ) - 1 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082004.P12360494201150070893

/-!
# A082005: Sum of n-th antidiagonal of array in A082002.

The programs for A082005, there is no canonical definition to state claims against.
-/

/-! ## A082005.P17131598680052061736

`xor(A115077(n+1), A233307(A125136(3*n+5)))`
-/

namespace A082005.P17131598680052061736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115077 (n + 1)) (A233307 (A125136 (3 * n + 5)).toNat)

end

end A082005.P17131598680052061736

/-!
# A082007: Triangle (an infinite binary tree) read by rows; see Comments lines for definition.

The programs for A082007, there is no canonical definition to state claims against.
-/

/-! ## A082007.P15562974907847375067

`A082008(n+1)-1`
-/

namespace A082007.P15562974907847375067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082008 (n + 1) - 1

end

end A082007.P15562974907847375067

/-! ## A082007.P1906775463944780229

`A111352(A000108(gcd(n, n+1)))+A082008(n+1)`
-/

namespace A082007.P1906775463944780229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 (A000108 (Nat.gcd n (n + 1))).toNat + A082008 (n + 1)

end

end A082007.P1906775463944780229

/-! ## A082007.P16850811971296364881

`A087960(Δ[A001651(n+1)])+A082008(n+1)`
-/

namespace A082007.P16850811971296364881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (f1 (n + 1) - f1 n).toNat + A082008 (n + 1)

end

end A082007.P16850811971296364881

/-! ## A082007.P2338903874654871950

`A260196(n+2)+A082008(n+1)`
-/

namespace A082007.P2338903874654871950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A082008 (n + 1)

end

end A082007.P2338903874654871950

/-! ## A082007.P1318596133253113249

`A087960(A057653(n+1))+A082008(n+1)`
-/

namespace A082007.P1318596133253113249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A057653 (n + 1)).toNat + A082008 (n + 1)

end

end A082007.P1318596133253113249

/-! ## A082007.P11961578599408709818

`A114592(A000040(n+1))+A082008(n+1)`
-/

namespace A082007.P11961578599408709818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A000040 (n + 1)).toNat + A082008 (n + 1)

end

end A082007.P11961578599408709818

/-! ## A082007.P16344543871780931072

`A023443(A082008(n+1))`
-/

namespace A082007.P16344543871780931072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A082008 (n + 1)).toNat

end

end A082007.P16344543871780931072

/-! ## A082007.P5987083450678973818

`A023446(A082008(n+1)+3)`
-/

namespace A082007.P5987083450678973818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A082008 (n + 1) + 3).toNat

end

end A082007.P5987083450678973818

/-! ## A082007.P334930910358338326

`A023448(A082008(n+1)+5)`
-/

namespace A082007.P334930910358338326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A082008 (n + 1) + 5).toNat

end

end A082007.P334930910358338326

/-! ## A082007.P15134578472739722690

`A023449(A082008(n+1)+6)`
-/

namespace A082007.P15134578472739722690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A082008 (n + 1) + 6).toNat

end

end A082007.P15134578472739722690

/-!
# A082008: a(n) = A082007(n-1) + 1.

The programs for A082008, there is no canonical definition to state claims against.
-/

/-! ## A082008.P7174818161252491321

`A082007(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082008.P7174818161252491321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082007 n + 1

end

end A082008.P7174818161252491321

/-! ## A082008.P10343143281544627521

`1-(A000007(A311590(n))-A082007(n))`
-/

namespace A082008.P10343143281544627521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 (A311590 n).toNat - A082007 n)

end

end A082008.P10343143281544627521

/-! ## A082008.P17103639423566639789

`1-(A000007(A301724(n))-A082007(n))`
-/

namespace A082008.P17103639423566639789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 (A301724 n).toNat - A082007 n)

end

end A082008.P17103639423566639789

/-! ## A082008.P6546394250950284248

`A008619(2*A082007(n))`
-/

namespace A082008.P6546394250950284248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A082007 n).toNat

end

end A082008.P6546394250950284248

/-! ## A082008.P5910498686225028003

`A029579(2*A082007(n))`
-/

namespace A082008.P5910498686225028003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A082007 n).toNat

end

end A082008.P5910498686225028003

/-! ## A082008.P16038556495963990668

`A052938(2*A082007(n))`
-/

namespace A082008.P16038556495963990668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A082007 n).toNat

end

end A082008.P16038556495963990668

/-! ## A082008.P7821388318383516919

`A008620(3*A082007(n))`
-/

namespace A082008.P7821388318383516919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A082007 n).toNat

end

end A082008.P7821388318383516919

/-!
# A082010: a(n) = n/2 if n is even, otherwise floor(8*n/5)+1.

The programs for A082010, the canonical program `A082010.P17959695738523496705` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082010 has offset 0).

The definition of A082010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082010.P17959695738523496705

`A047263(∑[n]%(n+1)+1)+A026741(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082010

/-- `A047263(∑[n]%(n+1)+1)+A026741(n)` -/
def P17959695738523496705.Spec : Prop :=
  ∀ n, P17959695738523496705.a n = A082010 n

theorem P17959695738523496705.correct : P17959695738523496705.Spec := by
  intro n
  simp only [A082010]

end A082010

/-! ## A082010.P7884601385014654271

`A014682(n)+A008616(A093178(n))`
-/

namespace A082010.P7884601385014654271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A008616 (A093178 n).toNat

end

end A082010.P7884601385014654271

namespace A082010

/-- `A014682(n)+A008616(A093178(n))` -/
def P7884601385014654271.Spec : Prop :=
  ∀ n, P7884601385014654271.a n = A082010 n

end A082010

/-! ## A082010.P14869996206122999576

`A014682(n)+A002266(A282738(n))`
-/

namespace A082010.P14869996206122999576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A002266 (A282738 n).toNat

end

end A082010.P14869996206122999576

namespace A082010

/-- `A014682(n)+A002266(A282738(n))` -/
def P14869996206122999576.Spec : Prop :=
  ∀ n, P14869996206122999576.a n = A082010 n

end A082010

/-! ## A082010.P12811465149987182895

`A001281(n)-A047367(A093178(n))`
-/

namespace A082010.P12811465149987182895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n - A047367 (A093178 n).toNat

end

end A082010.P12811465149987182895

namespace A082010

/-- `A001281(n)-A047367(A093178(n))` -/
def P12811465149987182895.Spec : Prop :=
  ∀ n, P12811465149987182895.a n = A082010 n

end A082010

/-! ## A082010.P1276029994974305936

`A014682(n)+A000035(n)*A008616(n)`
-/

namespace A082010.P1276029994974305936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A000035 n * A008616 n

end

end A082010.P1276029994974305936

namespace A082010

/-- `A014682(n)+A000035(n)*A008616(n)` -/
def P1276029994974305936.Spec : Prop :=
  ∀ n, P1276029994974305936.a n = A082010 n

end A082010

/-! ## A082010.P3726009392638313341

`A014682(n)+A008616(n)%A152271(n)`
-/

namespace A082010.P3726009392638313341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + Int.tmod (A008616 n) (A152271 n)

end

end A082010.P3726009392638313341

namespace A082010

/-- `A014682(n)+A008616(n)%A152271(n)` -/
def P3726009392638313341.Spec : Prop :=
  ∀ n, P3726009392638313341.a n = A082010 n

end A082010

/-! ## A082010.P16514434461801491453

`A047497(n+1)%(A047497(n+1)+A001057(n))`
-/

namespace A082010.P16514434461801491453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047497 (n + 1)) (A047497 (n + 1) + A001057 n)

end

end A082010.P16514434461801491453

namespace A082010

/-- `A047497(n+1)%(A047497(n+1)+A001057(n))` -/
def P16514434461801491453.Spec : Prop :=
  ∀ n, P16514434461801491453.a n = A082010 n

end A082010

/-!
# A082011: Square array read by antidiagonals, alternating upwards and downwards: T(1,1) = 2 and every other entry is the smallest prime not already used such that the n-th antidiagonal sum is a multiple of n.

The programs for A082011, there is no canonical definition to state claims against.
-/

/-! ## A082011.P10120886567889134739

`p?[A338265(A338265(n+1))-19]`
-/

namespace A082011.P10120886567889134739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338265 (A338265 (n + 1)).toNat - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082011.P10120886567889134739

/-! ## A082011.P1398493664394719283

`p?[A338466(A342441(n+1)%A306788(n+1))]`
-/

namespace A082011.P1398493664394719283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (Int.tmod (A342441 (n + 1)) (A306788 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082011.P1398493664394719283

/-! ## A082011.P6328226969065880382

`p?[A269445(A187769(n))]`
-/

namespace A082011.P6328226969065880382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269445 (A187769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082011.P6328226969065880382

/-! ## A082011.P11296790126039962589

`p?[A269445(A209862(n))]`
-/

namespace A082011.P11296790126039962589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269445 (A209862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082011.P11296790126039962589

/-! ## A082011.P18388871125778904889

`p?[∏{d}[A338466(A342441(n+1)), #]]`
-/

namespace A082011.P18388871125778904889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A342441 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082011.P18388871125778904889

/-!
# A082012: First row of square array A082011.

The programs for A082012, there is no canonical definition to state claims against.
-/

/-! ## A082012.P1651600562515500995

`A082011(A128918(n+1))`
-/

namespace A082012.P1651600562515500995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (A128918 (n + 1)).toNat

end

end A082012.P1651600562515500995

/-! ## A082012.P14753320965946056494

`A082011(A266304(n)+1)`
-/

namespace A082012.P14753320965946056494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (A266304 n + 1).toNat

end

end A082012.P14753320965946056494

/-! ## A082012.P13255008899513386822

`A082011(∑[A019425(n+1)])`
-/

namespace A082012.P13255008899513386822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082012.P13255008899513386822

/-! ## A082012.P3371433112240833349

`A082011(A131179(or(1, n))+n)`
-/

namespace A082012.P3371433112240833349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (A131179 (Nat.lor 1 n) + (n : ℤ)).toNat

end

end A082012.P3371433112240833349

/-! ## A082012.P6326557549614830933

`A082011(A194280(n²+1))`
-/

namespace A082012.P6326557549614830933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (A194280 (n ^ 2 + 1)).toNat

end

end A082012.P6326557549614830933

/-!
# A082013: First column of square array A082011.

The programs for A082013, there is no canonical definition to state claims against.
-/

/-! ## A082013.P14224779843629400701

`A082011(A131179(n+1))`
-/

namespace A082013.P14224779843629400701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (A131179 (n + 1)).toNat

end

end A082013.P14224779843629400701

/-! ## A082013.P14346218023910988874

`A082011((n+1)²-A266304(n))`
-/

namespace A082013.P14346218023910988874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (((n + 1) ^ 2 : ℤ) - A266304 n).toNat

end

end A082013.P14346218023910988874

/-! ## A082013.P7408873676841485929

`A082011(record[A131179(ceil(abs((1-n)/2)))])`
-/

namespace A082013.P7408873676841485929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082013.P7408873676841485929

/-! ## A082013.P10301836982839878473

`A082011(A194280((n+1)²))`
-/

namespace A082013.P10301836982839878473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (A194280 ((n + 1) ^ 2)).toNat

end

end A082013.P10301836982839878473

/-! ## A082013.P17064290156873998306

`p?[A082011(n+1)*A092543(n+1)]`
-/

namespace A082013.P17064290156873998306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082011 (n + 1) * A092543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082013.P17064290156873998306

/-!
# A082014: Antidiagonal sums of square array A082011.

The programs for A082014, there is no canonical definition to state claims against.
-/

/-! ## A082014.P18046268094842885343

`(n+1)*A082015(n+1)`
-/

namespace A082014.P18046268094842885343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082015 (n + 1)

end

end A082014.P18046268094842885343

/-!
# A082015: Antidiagonal sums of square array A082011 divided by the number of the antidiagonal.

The programs for A082015, there is no canonical definition to state claims against.
-/

/-! ## A082015.P1739827508776373058

`A082014(n+1)/(n+1)`
-/

namespace A082015.P1739827508776373058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082014 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082015.P1739827508776373058

/-!
# A082017: First row of square array T(n,k) with T(1,1) = 1 where antidiagonals are filled alternating upwards and downwards with the smallest number not already used such that the n-th antidiagonal sum is a multiple of n.

The programs for A082017, there is no canonical definition to state claims against.
-/

/-! ## A082017.P17993800304041696585

`A074134(n+1)+A074136(n+1)-A082018(n+1)`
-/

namespace A082017.P17993800304041696585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1) + (A074136 (n + 1) - A082018 (n + 1))

end

end A082017.P17993800304041696585

/-! ## A082017.P13751474957967358864

`A074135(∑[n+2]-1-lcm(2, n))`
-/

namespace A082017.P13751474957967358864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (Nat.lcm 2 n : ℤ)).toNat

end

end A082017.P13751474957967358864

/-! ## A082017.P11472825005678132804

`A074135(A128918(n+1))`
-/

namespace A082017.P11472825005678132804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A128918 (n + 1)).toNat

end

end A082017.P11472825005678132804

/-! ## A082017.P2795793554244145721

`A074135(A266304(n)+1)`
-/

namespace A082017.P2795793554244145721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A266304 n + 1).toNat

end

end A082017.P2795793554244145721

/-! ## A082017.P7533008280123720519

`A074135(A131179(A109613(n))+n)`
-/

namespace A082017.P7533008280123720519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A131179 (A109613 n).toNat + (n : ℤ)).toNat

end

end A082017.P7533008280123720519

/-!
# A082018: First column of square array T(n,k) with T(1,1) = 1 where antidiagonals are filled alternating upwards and downwards with the smallest number not already used such that the n-th antidiagonal sum is a multiple of n.

The programs for A082018, there is no canonical definition to state claims against.
-/

/-! ## A082018.P3097751764872889356

`A074134(n+1)+A074136(n+1)-A082017(n+1)`
-/

namespace A082018.P3097751764872889356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1) + (A074136 (n + 1) - A082017 (n + 1))

end

end A082018.P3097751764872889356

/-! ## A082018.P11099448151146646104

`A082017(n+2)-or(1, n+1)`
-/

namespace A082018.P11099448151146646104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 2) - (Nat.lor 1 (n + 1) : ℤ)

end

end A082018.P11099448151146646104

/-! ## A082018.P4536279197197781906

`A082017(n+2)-A109613(n+1)`
-/

namespace A082018.P4536279197197781906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 2) - A109613 (n + 1)

end

end A082018.P4536279197197781906

/-! ## A082018.P501360882377548209

`A082017(n+2)-(A000034(n)+n)`
-/

namespace A082018.P501360882377548209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 2) - (A000034 n + (n : ℤ))

end

end A082018.P501360882377548209

/-! ## A082018.P3609911044706300284

`A082017(n+2)-A005408(round(n/2))`
-/

namespace A082018.P3609911044706300284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 2) - A005408 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

end

end A082018.P3609911044706300284

/-! ## A082018.P15814084301178615258

`A082017(n+2)-(A000035(n)+1+n)`
-/

namespace A082018.P15814084301178615258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 2) - (A000035 n + 1 + (n : ℤ))

end

end A082018.P15814084301178615258

/-! ## A082018.P15443521586981429738

`A082017(n+2)-A004525(Δ[A005563(n)])`
-/

namespace A082018.P15443521586981429738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 2) - A004525 (f1 (n + 1) - f1 n).toNat

end

end A082018.P15443521586981429738

/-! ## A082018.P5848393821923951153

`A074135(A131179(n+1))`
-/

namespace A082018.P5848393821923951153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A131179 (n + 1)).toNat

end

end A082018.P5848393821923951153

/-! ## A082018.P1351951547216052991

`A083920(A082017(n+2))`
-/

namespace A082018.P1351951547216052991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A082017 (n + 2)).toNat

end

end A082018.P1351951547216052991

/-!
# A082019: Diagonal of square array T(n,k) with T(1,1) = 1 where antidiagonals are filled alternating upwards and downwards with the smallest number not already used such that the n-th antidiagonal sum is a multiple of n.

The programs for A082019, the canonical program `A082019.P8023442530786272007` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082019 has offset 1).

The definition of A082019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082019.P10869088368135761294

`∑[4*n]+A132141(n+1)%2`
-/

namespace A082019.P10869088368135761294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A132141 (n + 1)) 2

end

end A082019.P10869088368135761294

namespace A082019

/-- `∑[4*n]+A132141(n+1)%2` -/
def P10869088368135761294.Spec : Prop :=
  ∀ n, P10869088368135761294.a n = A082019 (n + 1)

end A082019

/-! ## A082019.P8023442530786272007

`∑[4*n]+1-A157671(n+1)%2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082019

/-- `∑[4*n]+1-A157671(n+1)%2` -/
def P8023442530786272007.Spec : Prop :=
  ∀ n, P8023442530786272007.a n = A082019 (n + 1)

theorem P8023442530786272007.correct : P8023442530786272007.Spec := by
  intro n
  simp only [A082019, Nat.add_sub_cancel]

end A082019

/-! ## A082019.P11567737625927914405

`A000035(A132141(n+1))+∑[4*n]`
-/

namespace A082019.P11567737625927914405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A132141 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A082019.P11567737625927914405

namespace A082019

/-- `A000035(A132141(n+1))+∑[4*n]` -/
def P11567737625927914405.Spec : Prop :=
  ∀ n, P11567737625927914405.a n = A082019 (n + 1)

end A082019

/-! ## A082019.P9990333564777797806

`A000035(A297251(n+1))+∑[4*n]`
-/

namespace A082019.P9990333564777797806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A297251 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A082019.P9990333564777797806

namespace A082019

/-- `A000035(A297251(n+1))+∑[4*n]` -/
def P9990333564777797806.Spec : Prop :=
  ∀ n, P9990333564777797806.a n = A082019 (n + 1)

end A082019

/-! ## A082019.P1143576994256820171

`A074135(∑[4*n]+1)`
-/

namespace A082019.P1143576994256820171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082019.P1143576994256820171

namespace A082019

/-- `A074135(∑[4*n]+1)` -/
def P1143576994256820171.Spec : Prop :=
  ∀ n, P1143576994256820171.a n = A082019 (n + 1)

end A082019

/-!
# A082022: In the following square array A(i,j) = Least Common Multiple of i and j. Sequence contains the product of the terms of the n-th antidiagonal.

The programs for A082022, there is no canonical definition to state claims against.
-/

/-! ## A082022.P3888682528981804041

`A001044(n)/A051190(n+1)`
-/

namespace A082022.P3888682528981804041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n : ℚ) / (A051190 (n + 1) : ℚ)

end

end A082022.P3888682528981804041

/-! ## A082022.P11156380666996199942

`A000142(n)²/A051190(n+1)`
-/

namespace A082022.P11156380666996199942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n ^ 2 : ℚ) / (A051190 (n + 1) : ℚ)

end

end A082022.P11156380666996199942

/-! ## A082022.P2695961738708939864

`A119619(n+1)*A349269(A000217(n))`
-/

namespace A082022.P2695961738708939864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119619 (n + 1) * A349269 (A000217 n).toNat

end

end A082022.P2695961738708939864

/-!
# A082023: Number of partitions of n into 2 parts which are not relatively prime.

The programs for A082023, the canonical program `A082023.P820682903743471019` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082023 has offset 0).

The definition of A082023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082023.P820682903743471019

`ceil(A016035(abs(1-n)+1)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082023

/-- `ceil(A016035(abs(1-n)+1)/2)` -/
def P820682903743471019.Spec : Prop :=
  ∀ n, P820682903743471019.a n = A082023 n

theorem P820682903743471019.correct : P820682903743471019.Spec := by
  intro n
  simp only [A082023]

end A082023

/-! ## A082023.P15818993710715259224

`A004526(∑{d}[n, A062790(#)])`
-/

namespace A082023.P15818993710715259224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A062790 d).toNat

end

end A082023.P15818993710715259224

namespace A082023

/-- `A004526(∑{d}[n, A062790(#)])` -/
def P15818993710715259224.Spec : Prop :=
  ∀ n, P15818993710715259224.a n = A082023 n

end A082023

/-! ## A082023.P11186883376889395533

`floor(A051953(A028310(n))/2)`
-/

namespace A082023.P11186883376889395533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051953 (A028310 n).toNat : ℚ) / 2⌋

end

end A082023.P11186883376889395533

namespace A082023

/-- `floor(A051953(A028310(n))/2)` -/
def P11186883376889395533.Spec : Prop :=
  ∀ n, P11186883376889395533.a n = A082023 n

end A082023

/-! ## A082023.P3951496564685982676

`A004526(A051953(abs(1-n)+1))`
-/

namespace A082023.P3951496564685982676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A051953 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A082023.P3951496564685982676

namespace A082023

/-- `A004526(A051953(abs(1-n)+1))` -/
def P3951496564685982676.Spec : Prop :=
  ∀ n, P3951496564685982676.a n = A082023 n

end A082023

/-! ## A082023.P12804647446673242351

`A004526(abs(n-A225530(n)))`
-/

namespace A082023.P12804647446673242351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |(n : ℤ) - A225530 n|.toNat

end

end A082023.P12804647446673242351

namespace A082023

/-- `A004526(abs(n-A225530(n)))` -/
def P12804647446673242351.Spec : Prop :=
  ∀ n, P12804647446673242351.a n = A082023 n

end A082023

/-! ## A082023.P9817754089888324021

`A140106(2-A225530(n)+n)`
-/

namespace A082023.P9817754089888324021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 - A225530 n + (n : ℤ)).toNat

end

end A082023.P9817754089888324021

namespace A082023

/-- `A140106(2-A225530(n)+n)` -/
def P9817754089888324021.Spec : Prop :=
  ∀ n, P9817754089888324021.a n = A082023 n

end A082023

/-! ## A082023.P1542094438109957465

`A140106(2-(A225530(n)-n))`
-/

namespace A082023.P1542094438109957465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 - (A225530 n - (n : ℤ))).toNat

end

end A082023.P1542094438109957465

namespace A082023

/-- `A140106(2-(A225530(n)-n))` -/
def P1542094438109957465.Spec : Prop :=
  ∀ n, P1542094438109957465.a n = A082023 n

end A082023

/-! ## A082023.P2202605897967845718

`A004526(A233583(n+1)-A225530(n))`
-/

namespace A082023.P2202605897967845718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A233583 (n + 1) - A225530 n).toNat

end

end A082023.P2202605897967845718

namespace A082023

/-- `A004526(A233583(n+1)-A225530(n))` -/
def P2202605897967845718.Spec : Prop :=
  ∀ n, P2202605897967845718.a n = A082023 n

end A082023

/-! ## A082023.P17919624819979732082

`A004526((n-A225530(n))%A035363(2*n))`
-/

namespace A082023.P17919624819979732082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod ((n : ℤ) - A225530 n) (A035363 (2 * n))).toNat

end

end A082023.P17919624819979732082

namespace A082023

/-- `A004526((n-A225530(n))%A035363(2*n))` -/
def P17919624819979732082.Spec : Prop :=
  ∀ n, P17919624819979732082.a n = A082023 n

end A082023

/-!
# A082024: Number of partitions of n into 3 parts which have common divisors.

The programs for A082024, there is no canonical definition to state claims against.
-/

/-! ## A082024.P3385201717099028005

`A337599(n%A327766(n))`
-/

namespace A082024.P3385201717099028005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 (Int.tmod (n : ℤ) (A327766 n)).toNat

end

end A082024.P3385201717099028005

/-! ## A082024.P13828670635647485084

`C(A337599(n), A327000(A055672(n)))`
-/

namespace A082024.P13828670635647485084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A337599 n).toNat (A327000 (A055672 n).toNat).toNat

end

end A082024.P13828670635647485084

/-! ## A082024.P6923584032379714534

`A337599(n)-A102683(A188832(n+1))`
-/

namespace A082024.P6923584032379714534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 n - A102683 (A188832 (n + 1)).toNat

end

end A082024.P6923584032379714534

/-! ## A082024.P7894980826348195316

`A337599(n)%A000010(A298422(n+1))`
-/

namespace A082024.P7894980826348195316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337599 n) (A000010 (A298422 (n + 1)).toNat)

end

end A082024.P7894980826348195316

/-! ## A082024.P6381633106781008015

`A337599(n)%A010947(n)`
-/

namespace A082024.P6381633106781008015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337599 n) (A010947 n)

end

end A082024.P6381633106781008015

/-!
# A082028: Expansion of exp(x)*(1+x)/(1-x)^2.

The programs for A082028, there is no canonical definition to state claims against.
-/

/-! ## A082028.P6768056578207049020

`(2*n-1)*A000522(n)+2`
-/

namespace A082028.P6768056578207049020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * A000522 n + 2

end

end A082028.P6768056578207049020

/-! ## A082028.P16787775928474621850

`A093964(n)+floor(Δ[e*n!])+1`
-/

namespace A082028.P16787775928474621850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n + (⌊f1 (n + 1) - f1 n⌋ + 1)

end

end A082028.P16787775928474621850

/-! ## A082028.P11582318092540704027

`Δ[A007526(n)]+n!*∑[∑[n/n!]]`
-/

namespace A082028.P11582318092540704027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A082028.P11582318092540704027

/-! ## A082028.P6956697729596496987

`A093964(n)+A001339(n)`
-/

namespace A082028.P6956697729596496987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n + A001339 n

end

end A082028.P6956697729596496987

/-! ## A082028.P4289935875307190423

`A093964(n)+Δ[A000522(n)]`
-/

namespace A082028.P4289935875307190423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n + (f1 (n + 1) - f1 n)

end

end A082028.P4289935875307190423

/-! ## A082028.P10157182394648837649

`A093964(n)+Δ[A007526(n)]`
-/

namespace A082028.P10157182394648837649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n + (f1 (n + 1) - f1 n)

end

end A082028.P10157182394648837649

/-! ## A082028.P3767376694250893749

`Δ[A030297(n)]-A007526(n)`
-/

namespace A082028.P3767376694250893749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007526 n

end

end A082028.P3767376694250893749

/-! ## A082028.P10398717438973517347

`A006183(n+2)-A000522(n)`
-/

namespace A082028.P10398717438973517347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006183 (n + 2) - A000522 n

end

end A082028.P10398717438973517347

/-! ## A082028.P17455687388209057210

`2*A001339(n)-A000522(n)`
-/

namespace A082028.P17455687388209057210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001339 n - A000522 n

end

end A082028.P17455687388209057210

/-! ## A082028.P2466925103237486789

`A000522(n)+n*A006183(n+1)`
-/

namespace A082028.P2466925103237486789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (n : ℤ) * A006183 (n + 1)

end

end A082028.P2466925103237486789

/-!
# A082029: Expansion of exp(2*x)*(1+x)/(1-x)^2.

The programs for A082029, there is no canonical definition to state claims against.
-/

/-! ## A082029.P10953579408181564552

`2*A081923(n)-A010842(n)`
-/

namespace A082029.P10953579408181564552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081923 n - A010842 n

end

end A082029.P10953579408181564552

/-! ## A082029.P8083780375921508314

`A005843(A081923(n))-A010842(n)`
-/

namespace A082029.P8083780375921508314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A081923 n).toNat - A010842 n

end

end A082029.P8083780375921508314

/-!
# A082030: Expansion of e.g.f. exp(x)/(1-x)^3.

The programs for A082030, the canonical program `A082030.P1258226744096547734` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082030 has offset 0).

The definition of A082030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082030.P6546667298711967629

`A001340(n)/2`
-/

namespace A082030.P6546667298711967629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001340 n : ℚ) / 2

end

end A082030.P6546667298711967629

namespace A082030

/-- `A001340(n)/2` -/
def P6546667298711967629.Spec : Prop :=
  ∀ n, P6546667298711967629.a n = (A082030 n : ℚ)

end A082030

/-! ## A082030.P1258226744096547734

`(n*(n²+n+1)*a(n-1)+1)/(n²-n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082030

/-- `(n*(n²+n+1)*a(n-1)+1)/(n²-n+1)` -/
def P1258226744096547734.Spec : Prop :=
  ∀ n, P1258226744096547734.a n = (A082030 n : ℚ)

end A082030

/-! ## A082030.P17593091075147010883

`Δ[floor(Δ[e*n!])/2]`
-/

namespace A082030.P17593091075147010883
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊f2 (n + 1) - f2 n⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P17593091075147010883

namespace A082030

/-- `Δ[floor(Δ[e*n!])/2]` -/
def P17593091075147010883.Spec : Prop :=
  ∀ n, P17593091075147010883.a n = (A082030 n : ℚ)

end A082030

/-! ## A082030.P12180690609031400084

`∏[n+3-(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A082030.P12180690609031400084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 3 : ℚ) - ((n : ℤ) - 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082030.P12180690609031400084

namespace A082030

/-- `∏[n+3-(n-1)/a(n-1)]` -/
def P12180690609031400084.Spec : Prop :=
  ∀ n, P12180690609031400084.a n = (A082030 n : ℚ)

end A082030

/-! ## A082030.P13693896733825244077

`Δ[A036919(n)]`
-/

namespace A082030.P13693896733825244077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P13693896733825244077

namespace A082030

/-- `Δ[A036919(n)]` -/
def P13693896733825244077.Spec : Prop :=
  ∀ n, P13693896733825244077.a n = A082030 n

end A082030

/-! ## A082030.P3704285099899400460

`Δ[Δ[A038155(n)]]`
-/

namespace A082030.P3704285099899400460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P3704285099899400460

namespace A082030

/-- `Δ[Δ[A038155(n)]]` -/
def P3704285099899400460.Spec : Prop :=
  ∀ n, P3704285099899400460.a n = A082030 n

end A082030

/-! ## A082030.P18316039343704000120

`Δ[A001339(n)/2]`
-/

namespace A082030.P18316039343704000120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001339 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P18316039343704000120

namespace A082030

/-- `Δ[A001339(n)/2]` -/
def P18316039343704000120.Spec : Prop :=
  ∀ n, P18316039343704000120.a n = (A082030 n : ℚ)

end A082030

/-! ## A082030.P2245377314135535571

`Δ[Δ[abs(A009132(n))]]`
-/

namespace A082030.P2245377314135535571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009132 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P2245377314135535571

namespace A082030

/-- `Δ[Δ[abs(A009132(n))]]` -/
def P2245377314135535571.Spec : Prop :=
  ∀ n, P2245377314135535571.a n = A082030 n

end A082030

/-! ## A082030.P5332125559569795322

`Δ[Δ[abs(A009578(n))]]`
-/

namespace A082030.P5332125559569795322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009578 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P5332125559569795322

namespace A082030

/-- `Δ[Δ[abs(A009578(n))]]` -/
def P5332125559569795322.Spec : Prop :=
  ∀ n, P5332125559569795322.a n = A082030 n

end A082030

/-! ## A082030.P8951660902365437613

`Δ[Δ[A000522(n)/2]]`
-/

namespace A082030.P8951660902365437613
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082030.P8951660902365437613

namespace A082030

/-- `Δ[Δ[A000522(n)/2]]` -/
def P8951660902365437613.Spec : Prop :=
  ∀ n, P8951660902365437613.a n = (A082030 n : ℚ)

end A082030

/-!
# A082031: Expansion of e.g.f. exp(2*x)/(1-x)^3.

The programs for A082031, there is no canonical definition to state claims against.
-/

/-! ## A082031.P9738912139487662617

`A081923(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A082031.P9738912139487662617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081923 n + (n : ℤ) * a (n - 1)

end

end A082031.P9738912139487662617

/-! ## A082031.P4801380554993330467

`A081923(n+1)/2-A081923(n)`
-/

namespace A082031.P4801380554993330467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081923 (n + 1) : ℚ) / 2 - (A081923 n : ℚ)

end

end A082031.P4801380554993330467

/-! ## A082031.P14350452985522649282

`Δ[Δ[A193658(n)/2]]`
-/

namespace A082031.P14350452985522649282
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193658 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082031.P14350452985522649282

/-!
# A082032: Expansion of e.g.f.: exp(2*x)/(1-2*x).

The programs for A082032, the canonical program `A082032.P9227803161975649599` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082032 has offset 0).

The definition of A082032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082032.P9227803161975649599

`2^n*A000522(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082032

/-- `2^n*A000522(n)` -/
def P9227803161975649599.Spec : Prop :=
  ∀ n, P9227803161975649599.a n = A082032 n

theorem P9227803161975649599.correct : P9227803161975649599.Spec := by
  intro n
  simp only [A082032]

end A082032

/-! ## A082032.P8934024407982048296

`n!*∑[1/n!]*2^n`
-/

namespace A082032.P8934024407982048296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (2 ^ n : ℚ)

end

end A082032.P8934024407982048296

namespace A082032

/-- `n!*∑[1/n!]*2^n` -/
def P8934024407982048296.Spec : Prop :=
  ∀ n, P8934024407982048296.a n = (A082032 n : ℚ)

end A082032

/-! ## A082032.P146044644284416653

`2^n+2*n*a(n-1)` with `a(0)=1`
-/

namespace A082032.P146044644284416653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + 2 * (n * a (n - 1))

end

end A082032.P146044644284416653

namespace A082032

/-- `2^n+2*n*a(n-1)` -/
def P146044644284416653.Spec : Prop :=
  ∀ n, (P146044644284416653.a n : ℤ) = A082032 n

end A082032

/-! ## A082032.P4363547569124946049

`2^n+a(n-1)/n^-1+a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A082032.P4363547569124946049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℝ) + (a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)))

end

end A082032.P4363547569124946049

namespace A082032

/-- `2^n+a(n-1)/n^-1+a(n-1)/tan(acot(n))` -/
def P4363547569124946049.Spec : Prop :=
  ∀ n, P4363547569124946049.a n = (A082032 n : ℝ)

end A082032

/-! ## A082032.P12503895760224884246

`2^n*A143409(∑[n])`
-/

namespace A082032.P12503895760224884246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A143409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082032.P12503895760224884246

namespace A082032

/-- `2^n*A143409(∑[n])` -/
def P12503895760224884246.Spec : Prop :=
  ∀ n, P12503895760224884246.a n = A082032 n

end A082032

/-! ## A082032.P9380552042505153348

`2^n*Δ[A002104(n)]`
-/

namespace A082032.P9380552042505153348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A082032.P9380552042505153348

namespace A082032

/-- `2^n*Δ[A002104(n)]` -/
def P9380552042505153348.Spec : Prop :=
  ∀ n, P9380552042505153348.a n = A082032 n

end A082032

/-! ## A082032.P14191229032039994942

`2^n*record[A143409(n)]`
-/

namespace A082032.P14191229032039994942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082032.P14191229032039994942

namespace A082032

/-- `2^n*record[A143409(n)]` -/
def P14191229032039994942.Spec : Prop :=
  ∀ n, P14191229032039994942.a n = A082032 n

end A082032

/-! ## A082032.P11598723127409227082

`A000522(n)*A036561(∑[n])`
-/

namespace A082032.P11598723127409227082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A036561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082032.P11598723127409227082

namespace A082032

/-- `A000522(n)*A036561(∑[n])` -/
def P11598723127409227082.Spec : Prop :=
  ∀ n, P11598723127409227082.a n = A082032 n

end A082032

/-! ## A082032.P8267401733095900108

`A000522(n)*A106195(∑[n])`
-/

namespace A082032.P8267401733095900108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A106195 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082032.P8267401733095900108

namespace A082032

/-- `A000522(n)*A106195(∑[n])` -/
def P8267401733095900108.Spec : Prop :=
  ∀ n, P8267401733095900108.a n = A082032 n

end A082032

/-!
# A082033: a(n) = (3*n + 1)*n!.

The programs for A082033, the canonical program `A082033.P11367952999440619249` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082033 has offset 0).

The definition of A082033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*n!` (program `A082033.P11367952999440619249`, by `A082033.P11367952999440619249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082033.P11367952999440619249

`(3*n+1)*n!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082033

/-- `(3*n+1)*n!` -/
def P11367952999440619249.Spec : Prop :=
  ∀ n, (P11367952999440619249.a n : ℤ) = A082033 n

theorem P11367952999440619249.correct : P11367952999440619249.Spec := by
  intro n
  simp only [A082033]

end A082033

/-! ## A082033.P14551750678811342550

`(3-2/(n+1))*∏[n+1]`
-/

namespace A082033.P14551750678811342550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - 2 / (n + 1 : ℚ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A082033.P14551750678811342550

namespace A082033

/-- `(3-2/(n+1))*∏[n+1]` -/
def P14551750678811342550.Spec : Prop :=
  ∀ n, P14551750678811342550.a n = (A082033 n : ℚ)

end A082033

/-! ## A082033.P16883456584642250485

`(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` with `a(0)=1, a(1)=4, a(2)=14`
-/

namespace A082033.P16883456584642250485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 1) * ((n + 2 : ℤ) * a (n - 2) - ((n : ℤ) - 2) * a (n - 3))

end

end A082033.P16883456584642250485

namespace A082033

/-- `(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` -/
def P16883456584642250485.Spec : Prop :=
  ∀ n, P16883456584642250485.a n = A082033 n

end A082033

/-! ## A082033.P8664275511701501830

`A007680(n)+Δ[n!]`
-/

namespace A082033.P8664275511701501830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A082033.P8664275511701501830

namespace A082033

/-- `A007680(n)+Δ[n!]` -/
def P8664275511701501830.Spec : Prop :=
  ∀ n, P8664275511701501830.a n = A082033 n

end A082033

/-! ## A082033.P69049082045062076

`Δ[A052560(n)]+n!`
-/

namespace A082033.P69049082045062076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial n : ℤ)

end

end A082033.P69049082045062076

namespace A082033

/-- `Δ[A052560(n)]+n!` -/
def P69049082045062076.Spec : Prop :=
  ∀ n, P69049082045062076.a n = A082033 n

end A082033

/-! ## A082033.P6032438021904958997

`3*A001563(n)+n!`
-/

namespace A082033.P6032438021904958997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001563 n + (Nat.factorial n : ℤ)

end

end A082033.P6032438021904958997

namespace A082033

/-- `3*A001563(n)+n!` -/
def P6032438021904958997.Spec : Prop :=
  ∀ n, P6032438021904958997.a n = A082033 n

theorem P6032438021904958997.correct : P6032438021904958997.Spec := by
  intro n
  simp only [A082033, Nat.add_sub_cancel, A082033.P6032438021904958997.a, A082033.P11367952999440619249.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082033

/-! ## A082033.P17706020883048224325

`A007680(n)+A001563(n)`
-/

namespace A082033.P17706020883048224325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n + A001563 n

end

end A082033.P17706020883048224325

namespace A082033

/-- `A007680(n)+A001563(n)` -/
def P17706020883048224325.Spec : Prop :=
  ∀ n, P17706020883048224325.a n = A082033 n

theorem P17706020883048224325.correct : P17706020883048224325.Spec := by
  intro n
  simp only [A082033, Nat.add_sub_cancel, A082033.P17706020883048224325.a, A082033.P11367952999440619249.a, A001563, A001563.P7265670906522758193.a, A007680, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082033

/-! ## A082033.P9318460261073217790

`A052673(n)+A000142(n)`
-/

namespace A082033.P9318460261073217790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052673 n + A000142 n

end

end A082033.P9318460261073217790

namespace A082033

/-- `A052673(n)+A000142(n)` -/
def P9318460261073217790.Spec : Prop :=
  ∀ n, P9318460261073217790.a n = A082033 n

theorem P9318460261073217790.correct : P9318460261073217790.Spec := by
  intro n
  simp only [A082033, Nat.add_sub_cancel, A082033.P9318460261073217790.a, A082033.P11367952999440619249.a, A000142, A000142.P3272619076580183195.a, A052673, A052673.P12155012864637387162.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082033

/-!
# A082034: a(n) = (4*n + 1)*n!.

The programs for A082034, the canonical program `A082034.P13351584392463274094` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082034 has offset 0).

The definition of A082034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*n!` (program `A082034.P13351584392463274094`, by `A082034.P13351584392463274094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082034.P13351584392463274094

`(4*n+1)*n!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082034

/-- `(4*n+1)*n!` -/
def P13351584392463274094.Spec : Prop :=
  ∀ n, (P13351584392463274094.a n : ℤ) = A082034 n

theorem P13351584392463274094.correct : P13351584392463274094.Spec := by
  intro n
  simp only [A082034]

end A082034

/-! ## A082034.P13519242776788945721

`n!*or(1, 4*n)`
-/

namespace A082034.P13519242776788945721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.lor 1 (4 * n)

end

end A082034.P13519242776788945721

namespace A082034

/-- `n!*or(1, 4*n)` -/
def P13519242776788945721.Spec : Prop :=
  ∀ n, (P13519242776788945721.a n : ℤ) = A082034 n

end A082034

/-! ## A082034.P8974206703307905811

`n!*xor(1, 4*n)`
-/

namespace A082034.P8974206703307905811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 1 (4 * n)

end

end A082034.P8974206703307905811

namespace A082034

/-- `n!*xor(1, 4*n)` -/
def P8974206703307905811.Spec : Prop :=
  ∀ n, (P8974206703307905811.a n : ℤ) = A082034 n

end A082034

/-! ## A082034.P11784567319615432550

`n!*Δ[C(2*n, 2)]`
-/

namespace A082034.P11784567319615432550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A082034.P11784567319615432550

namespace A082034

/-- `n!*Δ[C(2*n, 2)]` -/
def P11784567319615432550.Spec : Prop :=
  ∀ n, P11784567319615432550.a n = A082034 n

theorem P11784567319615432550.correct : P11784567319615432550.Spec := by
  intro n
  simp only [A082034, Nat.add_sub_cancel, A082034.P11784567319615432550.f1, A082034.P11784567319615432550.a, A082034.P13351584392463274094.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082034

/-! ## A082034.P4729056038120932499

`(4-3/(n+1))*∏[n+1]`
-/

namespace A082034.P4729056038120932499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - 3 / (n + 1 : ℚ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A082034.P4729056038120932499

namespace A082034

/-- `(4-3/(n+1))*∏[n+1]` -/
def P4729056038120932499.Spec : Prop :=
  ∀ n, P4729056038120932499.a n = (A082034 n : ℚ)

end A082034

/-! ## A082034.P14243181426854804516

`A196532(n)-A288964(n)`
-/

namespace A082034.P14243181426854804516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196532 n - A288964 n

end

end A082034.P14243181426854804516

namespace A082034

/-- `A196532(n)-A288964(n)` -/
def P14243181426854804516.Spec : Prop :=
  ∀ n, P14243181426854804516.a n = A082034 n

end A082034

/-! ## A082034.P11351509652858111250

`A052673(n)+A000142(n+1)`
-/

namespace A082034.P11351509652858111250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052673 n + A000142 (n + 1)

end

end A082034.P11351509652858111250

namespace A082034

/-- `A052673(n)+A000142(n+1)` -/
def P11351509652858111250.Spec : Prop :=
  ∀ n, P11351509652858111250.a n = A082034 n

end A082034

/-! ## A082034.P16445849676882227531

`A052578(n+1)-A052560(n)`
-/

namespace A082034.P16445849676882227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052578 (n + 1) - A052560 n

end

end A082034.P16445849676882227531

namespace A082034

/-- `A052578(n+1)-A052560(n)` -/
def P16445849676882227531.Spec : Prop :=
  ∀ n, P16445849676882227531.a n = A082034 n

end A082034

/-! ## A082034.P9809621709990328252

`A173321(n+1)-A173323(n)`
-/

namespace A082034.P9809621709990328252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173321 (n + 1) - A173323 n

end

end A082034.P9809621709990328252

namespace A082034

/-- `A173321(n+1)-A173323(n)` -/
def P9809621709990328252.Spec : Prop :=
  ∀ n, P9809621709990328252.a n = A082034 n

end A082034

/-!
# A082035: a(n) = (4n^2+2n+1) * n!.

The programs for A082035, the canonical program `A082035.P5427268236758019140` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082035 has offset 0).

The definition of A082035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²+2*n+1)*n!` (program `A082035.P5427268236758019140`, by `A082035.P5427268236758019140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082035.P5427268236758019140

`(4*n²+2*n+1)*n!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082035

/-- `(4*n²+2*n+1)*n!` -/
def P5427268236758019140.Spec : Prop :=
  ∀ n, (P5427268236758019140.a n : ℤ) = A082035 n

theorem P5427268236758019140.correct : P5427268236758019140.Spec := by
  intro n
  simp only [A082035]

end A082035

/-! ## A082035.P2615047435089753458

`n!*A054569(n+1)`
-/

namespace A082035.P2615047435089753458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A054569 (n + 1)

end

end A082035.P2615047435089753458

namespace A082035

/-- `n!*A054569(n+1)` -/
def P2615047435089753458.Spec : Prop :=
  ∀ n, P2615047435089753458.a n = A082035 n

theorem P2615047435089753458.correct : P2615047435089753458.Spec := by
  intro n
  simp only [A082035, Nat.add_sub_cancel, A082035.P2615047435089753458.a, A082035.P5427268236758019140.a, A054569, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082035

/-! ## A082035.P5596996100778406939

`4*A002775(n)+A007680(n)`
-/

namespace A082035.P5596996100778406939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002775 n + A007680 n

end

end A082035.P5596996100778406939

namespace A082035

/-- `4*A002775(n)+A007680(n)` -/
def P5596996100778406939.Spec : Prop :=
  ∀ n, P5596996100778406939.a n = A082035 n

theorem P5596996100778406939.correct : P5596996100778406939.Spec := by
  intro n
  simp only [A082035, Nat.add_sub_cancel, A082035.P5596996100778406939.a, A082035.P5427268236758019140.a, A002775, A002775.P5567253749503335915.a, A007680, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082035

/-! ## A082035.P7414275506563219306

`n!*record[or(1, n)²-n]`
-/

namespace A082035.P7414275506563219306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082035.P7414275506563219306

namespace A082035

/-- `n!*record[or(1, n)²-n]` -/
def P7414275506563219306.Spec : Prop :=
  ∀ n, P7414275506563219306.a n = A082035 n

end A082035

/-! ## A082035.P6701038159499635588

`n!*or(1, (2*n+1)*2*n)`
-/

namespace A082035.P6701038159499635588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.lor 1 ((2 * n + 1) * (2 * n))

end

end A082035.P6701038159499635588

namespace A082035

/-- `n!*or(1, (2*n+1)*2*n)` -/
def P6701038159499635588.Spec : Prop :=
  ∀ n, (P6701038159499635588.a n : ℤ) = A082035 n

end A082035

/-! ## A082035.P2340395285155078735

`n!*xor(1, (2*n+1)*2*n)`
-/

namespace A082035.P2340395285155078735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 1 ((2 * n + 1) * (2 * n))

end

end A082035.P2340395285155078735

namespace A082035

/-- `n!*xor(1, (2*n+1)*2*n)` -/
def P2340395285155078735.Spec : Prop :=
  ∀ n, (P2340395285155078735.a n : ℤ) = A082035 n

end A082035

/-! ## A082035.P17645276224332887626

`A082038(∑[n+3])`
-/

namespace A082035.P17645276224332887626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082035.P17645276224332887626

namespace A082035

/-- `A082038(∑[n+3])` -/
def P17645276224332887626.Spec : Prop :=
  ∀ n, P17645276224332887626.a n = A082035 n

end A082035

/-! ## A082035.P13705328674769932764

`n!+n!*A002378(2*n)`
-/

namespace A082035.P13705328674769932764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (Nat.factorial n : ℤ) * A002378 (2 * n)

end

end A082035.P13705328674769932764

namespace A082035

/-- `n!+n!*A002378(2*n)` -/
def P13705328674769932764.Spec : Prop :=
  ∀ n, P13705328674769932764.a n = A082035 n

theorem P13705328674769932764.correct : P13705328674769932764.Spec := by
  intro n
  simp only [A082035, Nat.add_sub_cancel, A082035.P13705328674769932764.a, A082035.P5427268236758019140.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082035

/-! ## A082035.P18186615258773659346

`((2*n)²+2*n+1)*A000142(n)`
-/

namespace A082035.P18186615258773659346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + (2 * n + 1) : ℤ) * A000142 n

end

end A082035.P18186615258773659346

namespace A082035

/-- `((2*n)²+2*n+1)*A000142(n)` -/
def P18186615258773659346.Spec : Prop :=
  ∀ n, P18186615258773659346.a n = A082035 n

theorem P18186615258773659346.correct : P18186615258773659346.Spec := by
  intro n
  simp only [A082035, Nat.add_sub_cancel, A082035.P18186615258773659346.a, A082035.P5427268236758019140.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082035

/-! ## A082035.P10526385727378448528

`n!*A002061(A005408(n))`
-/

namespace A082035.P10526385727378448528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002061 (A005408 n).toNat

end

end A082035.P10526385727378448528

namespace A082035

/-- `n!*A002061(A005408(n))` -/
def P10526385727378448528.Spec : Prop :=
  ∀ n, P10526385727378448528.a n = A082035 n

end A082035

/-!
# A082036: a(n) = (9*n^2+3*n+1) * n!.

The programs for A082036, the canonical program `A082036.P16492465448424613186` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082036 has offset 0).

The definition of A082036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²+3*n+1)*n!` (program `A082036.P16492465448424613186`, by `A082036.P16492465448424613186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082036.P16492465448424613186

`(9*n²+3*n+1)*n!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082036

/-- `(9*n²+3*n+1)*n!` -/
def P16492465448424613186.Spec : Prop :=
  ∀ n, (P16492465448424613186.a n : ℤ) = A082036 n

theorem P16492465448424613186.correct : P16492465448424613186.Spec := by
  intro n
  simp only [A082036]

end A082036

/-! ## A082036.P16210912964000741516

`n!*A082040(n)`
-/

namespace A082036.P16210912964000741516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A082040 n

end

end A082036.P16210912964000741516

namespace A082036

/-- `n!*A082040(n)` -/
def P16210912964000741516.Spec : Prop :=
  ∀ n, P16210912964000741516.a n = A082036 n

theorem P16210912964000741516.correct : P16210912964000741516.Spec := by
  intro n
  simp only [A082036, Nat.add_sub_cancel, A082036.P16210912964000741516.a, A082036.P16492465448424613186.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082036

/-! ## A082036.P11707125056877076064

`9*A002775(n)+3*A001563(n)+n!`
-/

namespace A082036.P11707125056877076064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002775 n + 3 * A001563 n + (Nat.factorial n : ℤ)

end

end A082036.P11707125056877076064

namespace A082036

/-- `9*A002775(n)+3*A001563(n)+n!` -/
def P11707125056877076064.Spec : Prop :=
  ∀ n, P11707125056877076064.a n = A082036 n

theorem P11707125056877076064.correct : P11707125056877076064.Spec := by
  intro n
  simp only [A082036, Nat.add_sub_cancel, A082036.P11707125056877076064.a, A082036.P16492465448424613186.a, A001563, A001563.P7265670906522758193.a, A002775, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082036

/-! ## A082036.P3718282961231919472

`n!*∑[a(n-1)+18]` with `a(0)=1, a(1)=12`
-/

namespace A082036.P3718282961231919472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082036.P3718282961231919472

namespace A082036

/-- `n!*∑[a(n-1)+18]` -/
def P3718282961231919472.Spec : Prop :=
  ∀ n, (P3718282961231919472.a n : ℤ) = A082036 n

end A082036

/-! ## A082036.P13219164270026613212

`n!*∑[A019557(n)]`
-/

namespace A082036.P13219164270026613212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082036.P13219164270026613212

namespace A082036

/-- `n!*∑[A019557(n)]` -/
def P13219164270026613212.Spec : Prop :=
  ∀ n, P13219164270026613212.a n = A082036 n

end A082036

/-! ## A082036.P17607308781354803565

`A000142(n)*A082040(n)`
-/

namespace A082036.P17607308781354803565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A082040 n

end

end A082036.P17607308781354803565

namespace A082036

/-- `A000142(n)*A082040(n)` -/
def P17607308781354803565.Spec : Prop :=
  ∀ n, P17607308781354803565.a n = A082036 n

theorem P17607308781354803565.correct : P17607308781354803565.Spec := by
  intro n
  simp only [A082036, Nat.add_sub_cancel, A082036.P17607308781354803565.a, A082036.P16492465448424613186.a, A000142, A000142.P3272619076580183195.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082036

/-! ## A082036.P11894631475531478849

`A000142(n)*A002061(3*n+1)`
-/

namespace A082036.P11894631475531478849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002061 (3 * n + 1)

end

end A082036.P11894631475531478849

namespace A082036

/-- `A000142(n)*A002061(3*n+1)` -/
def P11894631475531478849.Spec : Prop :=
  ∀ n, P11894631475531478849.a n = A082036 n

theorem P11894631475531478849.correct : P11894631475531478849.Spec := by
  intro n
  simp only [A082036, Nat.add_sub_cancel, A082036.P11894631475531478849.a, A082036.P16492465448424613186.a, A000142, A000142.P3272619076580183195.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082036

/-! ## A082036.P14941793478999576407

`A082035(n)/A054569(n+1)*A082040(n)`
-/

namespace A082036.P14941793478999576407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082035 n : ℚ) / (A054569 (n + 1) : ℚ) * (A082040 n : ℚ)

end

end A082036.P14941793478999576407

namespace A082036

/-- `A082035(n)/A054569(n+1)*A082040(n)` -/
def P14941793478999576407.Spec : Prop :=
  ∀ n, P14941793478999576407.a n = (A082036 n : ℚ)

end A082036

/-! ## A082036.P17583255058433116242

`A000142(n)*A016777(n*A016777(n))`
-/

namespace A082036.P17583255058433116242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A016777 ((n : ℤ) * A016777 n).toNat

end

end A082036.P17583255058433116242

namespace A082036

/-- `A000142(n)*A016777(n*A016777(n))` -/
def P17583255058433116242.Spec : Prop :=
  ∀ n, P17583255058433116242.a n = A082036 n

end A082036

/-!
# A082037: A square array of linear-factorial numbers, read by antidiagonals.

The programs for A082037, the canonical program `A082037.P18394999940905367011` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082037 has offset 0).

The definition of A082037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082037.P15644950428882413378

`(n-C(∑[char[∑[n]]], 2))!*A077028(n)`
-/

namespace A082037.P15644950428882413378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A077028 n

end

end A082037.P15644950428882413378

namespace A082037

/-- `(n-C(∑[char[∑[n]]], 2))!*A077028(n)` -/
def P15644950428882413378.Spec : Prop :=
  ∀ n, P15644950428882413378.a n = A082037 n

end A082037

/-! ## A082037.P17869137081811190815

`(A004247(n)+1)*(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A082037.P17869137081811190815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ)

end

end A082037.P17869137081811190815

namespace A082037

/-- `(A004247(n)+1)*(n-C(∑[char[∑[n]]], 2))!` -/
def P17869137081811190815.Spec : Prop :=
  ∀ n, P17869137081811190815.a n = A082037 n

end A082037

/-! ## A082037.P15802933949533823969

`A077028(n)*A233543(n)`
-/

namespace A082037.P15802933949533823969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A233543 n

end

end A082037.P15802933949533823969

namespace A082037

/-- `A077028(n)*A233543(n)` -/
def P15802933949533823969.Spec : Prop :=
  ∀ n, P15802933949533823969.a n = A082037 n

end A082037

/-! ## A082037.P18394999940905367011

`A002262(n)!*A077028(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082037

/-- `A002262(n)!*A077028(n)` -/
def P18394999940905367011.Spec : Prop :=
  ∀ n, P18394999940905367011.a n = A082037 n

theorem P18394999940905367011.correct : P18394999940905367011.Spec := by
  intro n
  simp only [A082037]

end A082037

/-! ## A082037.P13572136997400697891

`(A004247(n)+1)*A233543(n)`
-/

namespace A082037.P13572136997400697891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) * A233543 n

end

end A082037.P13572136997400697891

namespace A082037

/-- `(A004247(n)+1)*A233543(n)` -/
def P13572136997400697891.Spec : Prop :=
  ∀ n, P13572136997400697891.a n = A082037 n

end A082037

/-! ## A082037.P17884903378421918651

`(2-A176270(n))*A233543(n)`
-/

namespace A082037.P17884903378421918651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A176270 n) * A233543 n

end

end A082037.P17884903378421918651

namespace A082037

/-- `(2-A176270(n))*A233543(n)` -/
def P17884903378421918651.Spec : Prop :=
  ∀ n, P17884903378421918651.a n = A082037 n

end A082037

/-! ## A082037.P2556290028916632645

`log2(A059268(n))!*A077028(n)`
-/

namespace A082037.P2556290028916632645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ) * A077028 n

end

end A082037.P2556290028916632645

namespace A082037

/-- `log2(A059268(n))!*A077028(n)` -/
def P2556290028916632645.Spec : Prop :=
  ∀ n, P2556290028916632645.a n = A082037 n

end A082037

/-! ## A082037.P17161472710265592289

`(A004247(n)+1)*A002262(n)!`
-/

namespace A082037.P17161472710265592289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) * (Nat.factorial (A002262 n).toNat : ℤ)

end

end A082037.P17161472710265592289

namespace A082037

/-- `(A004247(n)+1)*A002262(n)!` -/
def P17161472710265592289.Spec : Prop :=
  ∀ n, P17161472710265592289.a n = A082037 n

theorem P17161472710265592289.correct : P17161472710265592289.Spec := by
  intro n
  simp only [A082037, Nat.add_sub_cancel, A082037.P17161472710265592289.a, A082037.P18394999940905367011.a, A002262, A002262.P17823619022233514403.a, A004247, A004247.P2751605162508615148.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082037

/-!
# A082038: A square array of quadratic-factorial numbers, read by antidiagonals.

The programs for A082038, the canonical program `A082038.P1982626931142953073` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082038 has offset 0).

The definition of A082038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082038.P4831950655110202281

`(n-C(∑[char[∑[n]]], 2))!*A082039(n)`
-/

namespace A082038.P4831950655110202281
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A082039 n

end

end A082038.P4831950655110202281

namespace A082038

/-- `(n-C(∑[char[∑[n]]], 2))!*A082039(n)` -/
def P4831950655110202281.Spec : Prop :=
  ∀ n, P4831950655110202281.a n = A082038 n

end A082038

/-! ## A082038.P1982626931142953073

`A082039(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082038

/-- `A082039(n)*A233543(n)` -/
def P1982626931142953073.Spec : Prop :=
  ∀ n, P1982626931142953073.a n = A082038 n

theorem P1982626931142953073.correct : P1982626931142953073.Spec := by
  intro n
  simp only [A082038]

end A082038

/-! ## A082038.P17498152017098552844

`A002262(n)!*A082039(n)`
-/

namespace A082038.P17498152017098552844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A082039 n

end

end A082038.P17498152017098552844

namespace A082038

/-- `A002262(n)!*A082039(n)` -/
def P17498152017098552844.Spec : Prop :=
  ∀ n, P17498152017098552844.a n = A082038 n

end A082038

/-! ## A082038.P3027793619241689254

`A144328(n+1)!*A082039(n)`
-/

namespace A082038.P3027793619241689254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A082039 n

end

end A082038.P3027793619241689254

namespace A082038

/-- `A144328(n+1)!*A082039(n)` -/
def P3027793619241689254.Spec : Prop :=
  ∀ n, P3027793619241689254.a n = A082038 n

end A082038

/-! ## A082038.P13023820243958589266

`(2*C(A077028(n), 2)+1)*A233543(n)`
-/

namespace A082038.P13023820243958589266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A077028 n).toNat 2 + 1 : ℤ) * A233543 n

end

end A082038.P13023820243958589266

namespace A082038

/-- `(2*C(A077028(n), 2)+1)*A233543(n)` -/
def P13023820243958589266.Spec : Prop :=
  ∀ n, P13023820243958589266.a n = A082038 n

end A082038

/-! ## A082038.P12869198180722166295

`A200975(A157528(n))*A233543(n)`
-/

namespace A082038.P12869198180722166295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (A157528 n).toNat * A233543 n

end

end A082038.P12869198180722166295

namespace A082038

/-- `A200975(A157528(n))*A233543(n)` -/
def P12869198180722166295.Spec : Prop :=
  ∀ n, P12869198180722166295.a n = A082038 n

end A082038

/-! ## A082038.P12174865570741499797

`(A004247(n)²+2-A176270(n))*A233543(n)`
-/

namespace A082038.P12174865570741499797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n ^ 2 + (2 - A176270 n)) * A233543 n

end

end A082038.P12174865570741499797

namespace A082038

/-- `(A004247(n)²+2-A176270(n))*A233543(n)` -/
def P12174865570741499797.Spec : Prop :=
  ∀ n, P12174865570741499797.a n = A082038 n

theorem P12174865570741499797.correct : P12174865570741499797.Spec := by
  intro n
  simp only [A082038, Nat.add_sub_cancel, A082038.P12174865570741499797.a, A082038.P1982626931142953073.a, A004247, A004247.P2751605162508615148.a, A082039, A082039.P10289297583619271704.a, A176270, A176270.P15264438552937889960.a, A233543, A233543.P8120853931293690238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082038

/-! ## A082038.P557377922205713559

`A021009(A112367(n))*A082039(n)`
-/

namespace A082038.P557377922205713559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A082039 n

end

end A082038.P557377922205713559

namespace A082038

/-- `A021009(A112367(n))*A082039(n)` -/
def P557377922205713559.Spec : Prop :=
  ∀ n, P557377922205713559.a n = A082038 n

end A082038

/-!
# A082039: Symmetric square array defined by T(n,k) = k^2*n^2 + k*n + 1, read by antidiagonals.

The programs for A082039, the canonical program `A082039.P10289297583619271704` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082039 has offset 0).

The definition of A082039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)²*(row(n)-col(n))²+col(n)*(row(n)-col(n))+1` (program `A082039.P10289297583619271704`, by `A082039.P10289297583619271704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082039.P10289297583619271704

`col(n)²*(row(n)-col(n))²+col(n)*(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082039

/-- `col(n)²*(row(n)-col(n))²+col(n)*(row(n)-col(n))+1` -/
def P10289297583619271704.Spec : Prop :=
  ∀ n, P10289297583619271704.a n = A082039 n

theorem P10289297583619271704.correct : P10289297583619271704.Spec := by
  intro n
  simp only [A082039]

end A082039

/-! ## A082039.P13337751896266644232

`(row(n)-col(n))²*col(n)²+(row(n)-col(n))*col(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082039.P13337751896266644232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 * (SequenceMachineLib.triCol n ^ 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + 1

end

end A082039.P13337751896266644232

namespace A082039

/-- `(row(n)-col(n))²*col(n)²+(row(n)-col(n))*col(n)+1` -/
def P13337751896266644232.Spec : Prop :=
  ∀ n, P13337751896266644232.a n = A082039 n

theorem P13337751896266644232.correct : P13337751896266644232.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P13337751896266644232.a, A082039.P10289297583619271704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082039

/-! ## A082039.P17491945336732980010

`1+col(n)*(row(n)-col(n))+(col(n)*(row(n)-col(n)))²`
-/

namespace A082039.P17491945336732980010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) ^ 2

end

end A082039.P17491945336732980010

namespace A082039

/-- `1+col(n)*(row(n)-col(n))+(col(n)*(row(n)-col(n)))²` -/
def P17491945336732980010.Spec : Prop :=
  ∀ n, P17491945336732980010.a n = A082039 n

theorem P17491945336732980010.correct : P17491945336732980010.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P17491945336732980010.a, A082039.P10289297583619271704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082039

/-! ## A082039.P1706200198396104013

`2*C(A077028(n), 2)+1`
-/

namespace A082039.P1706200198396104013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A077028 n).toNat 2 + 1

end

end A082039.P1706200198396104013

namespace A082039

/-- `2*C(A077028(n), 2)+1` -/
def P1706200198396104013.Spec : Prop :=
  ∀ n, (P1706200198396104013.a n : ℤ) = A082039 n

end A082039

/-! ## A082039.P8044261391266560463

`ceil((A004247(n)+1/2)²)`
-/

namespace A082039.P8044261391266560463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A004247 n : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A082039.P8044261391266560463

namespace A082039

/-- `ceil((A004247(n)+1/2)²)` -/
def P8044261391266560463.Spec : Prop :=
  ∀ n, P8044261391266560463.a n = A082039 n

end A082039

/-! ## A082039.P11177962459265174914

`ceil((A130154(n+1)/2)²)`
-/

namespace A082039.P11177962459265174914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A130154 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A082039.P11177962459265174914

namespace A082039

/-- `ceil((A130154(n+1)/2)²)` -/
def P11177962459265174914.Spec : Prop :=
  ∀ n, P11177962459265174914.a n = A082039 n

end A082039

/-! ## A082039.P15448083390561090140

`A002061(∑[round(sqrt(2*n))²]+1-n²-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A082039.P15448083390561090140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n ^ 2 : ℤ)) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))).toNat

end

end A082039.P15448083390561090140

namespace A082039

/-- `A002061(∑[round(sqrt(2*n))²]+1-n²-(n-C(∑[char[∑[n]]], 2)))` -/
def P15448083390561090140.Spec : Prop :=
  ∀ n, P15448083390561090140.a n = A082039 n

end A082039

/-! ## A082039.P1792286249539655916

`A002061(A077028(n))`
-/

namespace A082039.P1792286249539655916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A077028 n).toNat

end

end A082039.P1792286249539655916

namespace A082039

/-- `A002061(A077028(n))` -/
def P1792286249539655916.Spec : Prop :=
  ∀ n, P1792286249539655916.a n = A082039 n

end A082039

/-! ## A082039.P5811541751346538028

`A200975(A157528(n))`
-/

namespace A082039.P5811541751346538028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (A157528 n).toNat

end

end A082039.P5811541751346538028

namespace A082039

/-- `A200975(A157528(n))` -/
def P5811541751346538028.Spec : Prop :=
  ∀ n, P5811541751346538028.a n = A082039 n

end A082039

/-! ## A082039.P10699967719249505731

`A002061(sqrt(A082043(n)))`
-/

namespace A082039.P10699967719249505731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.roundAway (Real.sqrt (A082043 n : ℝ))).toNat

end

end A082039.P10699967719249505731

namespace A082039

/-- `A002061(sqrt(A082043(n)))` -/
def P10699967719249505731.Spec : Prop :=
  ∀ n, P10699967719249505731.a n = A082039 n

end A082039

/-! ## A082039.P15902719143501919443

`A002061(A004247(n)+1)`
-/

namespace A082039.P15902719143501919443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A004247 n + 1).toNat

end

end A082039.P15902719143501919443

namespace A082039

/-- `A002061(A004247(n)+1)` -/
def P15902719143501919443.Spec : Prop :=
  ∀ n, P15902719143501919443.a n = A082039 n

end A082039

/-! ## A082039.P10351050820111984460

`A004652(A130154(n+1))`
-/

namespace A082039.P10351050820111984460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A130154 (n + 1)).toNat

end

end A082039.P10351050820111984460

namespace A082039

/-- `A004652(A130154(n+1))` -/
def P10351050820111984460.Spec : Prop :=
  ∀ n, P10351050820111984460.a n = A082039 n

end A082039

/-! ## A082039.P7013780828052690678

`A082043(n)-A004247(n)`
-/

namespace A082039.P7013780828052690678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n - A004247 n

end

end A082039.P7013780828052690678

namespace A082039

/-- `A082043(n)-A004247(n)` -/
def P7013780828052690678.Spec : Prop :=
  ∀ n, P7013780828052690678.a n = A082039 n

theorem P7013780828052690678.correct : P7013780828052690678.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P7013780828052690678.a, A082039.P10289297583619271704.a, A004247, A004247.P2751605162508615148.a, A082043, A082043.P1888788749395997436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P15016949782169531816

`A077028(n)+A004247(n)²`
-/

namespace A082039.P15016949782169531816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A004247 n ^ 2

end

end A082039.P15016949782169531816

namespace A082039

/-- `A077028(n)+A004247(n)²` -/
def P15016949782169531816.Spec : Prop :=
  ∀ n, P15016949782169531816.a n = A082039 n

theorem P15016949782169531816.correct : P15016949782169531816.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P15016949782169531816.a, A082039.P10289297583619271704.a, A004247, A004247.P2751605162508615148.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P18021311526461863663

`A082046(n)-2*A004247(n)`
-/

namespace A082039.P18021311526461863663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n - 2 * A004247 n

end

end A082039.P18021311526461863663

namespace A082039

/-- `A082046(n)-2*A004247(n)` -/
def P18021311526461863663.Spec : Prop :=
  ∀ n, P18021311526461863663.a n = A082039 n

theorem P18021311526461863663.correct : P18021311526461863663.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P18021311526461863663.a, A082039.P10289297583619271704.a, A004247, A004247.P2751605162508615148.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P17255628069509035102

`2*A082043(n)-A082046(n)`
-/

namespace A082039.P17255628069509035102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082043 n - A082046 n

end

end A082039.P17255628069509035102

namespace A082039

/-- `2*A082043(n)-A082046(n)` -/
def P17255628069509035102.Spec : Prop :=
  ∀ n, P17255628069509035102.a n = A082039 n

theorem P17255628069509035102.correct : P17255628069509035102.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P17255628069509035102.a, A082039.P10289297583619271704.a, A082043, A082043.P1888788749395997436.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P4937782992118102513

`2*A082046(n)-A082110(n)`
-/

namespace A082039.P4937782992118102513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082046 n - A082110 n

end

end A082039.P4937782992118102513

namespace A082039

/-- `2*A082046(n)-A082110(n)` -/
def P4937782992118102513.Spec : Prop :=
  ∀ n, P4937782992118102513.a n = A082039 n

theorem P4937782992118102513.correct : P4937782992118102513.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P4937782992118102513.a, A082039.P10289297583619271704.a, A082046, A082046.P3826101076602898823.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P1960917356521788649

`A077028(n)+(1-A176270(n))²`
-/

namespace A082039.P1960917356521788649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (1 - A176270 n) ^ 2

end

end A082039.P1960917356521788649

namespace A082039

/-- `A077028(n)+(1-A176270(n))²` -/
def P1960917356521788649.Spec : Prop :=
  ∀ n, P1960917356521788649.a n = A082039 n

theorem P1960917356521788649.correct : P1960917356521788649.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P1960917356521788649.a, A082039.P10289297583619271704.a, A077028, A077028.P18404356772921913843.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P4770121890567164185

`A004247(n)²+2-A176270(n)`
-/

namespace A082039.P4770121890567164185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n ^ 2 + (2 - A176270 n)

end

end A082039.P4770121890567164185

namespace A082039

/-- `A004247(n)²+2-A176270(n)` -/
def P4770121890567164185.Spec : Prop :=
  ∀ n, P4770121890567164185.a n = A082039 n

theorem P4770121890567164185.correct : P4770121890567164185.Spec := by
  intro n
  simp only [A082039, Nat.add_sub_cancel, A082039.P4770121890567164185.a, A082039.P10289297583619271704.a, A004247, A004247.P2751605162508615148.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082039

/-! ## A082039.P761168903327738509

`A000290(A004247(n)+1)-A004247(n)`
-/

namespace A082039.P761168903327738509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A004247 n + 1).toNat - A004247 n

end

end A082039.P761168903327738509

namespace A082039

/-- `A000290(A004247(n)+1)-A004247(n)` -/
def P761168903327738509.Spec : Prop :=
  ∀ n, P761168903327738509.a n = A082039 n

end A082039

/-!
# A082040: a(n) = 9*n^2 + 3*n + 1.

The programs for A082040, the canonical program `A082040.P13987900187150890134` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082040 has offset 0).

The definition of A082040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n²+3*n+1` (program `A082040.P13987900187150890134`, by `A082040.P13987900187150890134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082040.P13987900187150890134

`9*n²+3*n+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082040

/-- `9*n²+3*n+1` -/
def P13987900187150890134.Spec : Prop :=
  ∀ n, (P13987900187150890134.a n : ℤ) = A082040 n

theorem P13987900187150890134.correct : P13987900187150890134.Spec := by
  intro n
  simp only [A082040]

end A082040

/-! ## A082040.P5795587960217491488

`∑[a(n-1)+18]` with `a(0)=1, a(1)=12`
-/

namespace A082040.P5795587960217491488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082040.P5795587960217491488

namespace A082040

/-- `∑[a(n-1)+18]` -/
def P5795587960217491488.Spec : Prop :=
  ∀ n, (P5795587960217491488.a n : ℤ) = A082040 n

end A082040

/-! ## A082040.P14085384412454430467

`∑[ogf((1+10x+7x^2)/(1-2x+x^2))]`
-/

namespace A082040.P14085384412454430467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082040.P14085384412454430467

namespace A082040

/-- `∑[ogf((1+10x+7x^2)/(1-2x+x^2))]` -/
def P14085384412454430467.Spec : Prop :=
  ∀ n, P14085384412454430467.a n = A082040 n

end A082040

/-! ## A082040.P453659737145029021

`ogf((1+10x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A082040.P453659737145029021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 7] [1, -3, 3, -1] n

end

end A082040.P453659737145029021

namespace A082040

/-- `ogf((1+10x+7x^2)/(1-3x+3x^2-x^3))` -/
def P453659737145029021.Spec : Prop :=
  ∀ n, P453659737145029021.a n = A082040 n

end A082040

/-! ## A082040.P7633137910486851972

`∑[A019557(n)]`
-/

namespace A082040.P7633137910486851972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082040.P7633137910486851972

namespace A082040

/-- `∑[A019557(n)]` -/
def P7633137910486851972.Spec : Prop :=
  ∀ n, P7633137910486851972.a n = A082040 n

end A082040

/-! ## A082040.P4849564809928144852

`ceil(A081272(n)/2)`
-/

namespace A082040.P4849564809928144852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081272 n : ℚ) / 2⌉

end

end A082040.P4849564809928144852

namespace A082040

/-- `ceil(A081272(n)/2)` -/
def P4849564809928144852.Spec : Prop :=
  ∀ n, P4849564809928144852.a n = A082040 n

end A082040

/-! ## A082040.P5383711480330532539

`(A016922(n)+3)/4`
-/

namespace A082040.P5383711480330532539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016922 n + 3 : ℚ) / 4

end

end A082040.P5383711480330532539

namespace A082040

/-- `(A016922(n)+3)/4` -/
def P5383711480330532539.Spec : Prop :=
  ∀ n, P5383711480330532539.a n = (A082040 n : ℚ)

theorem P5383711480330532539.correct : P5383711480330532539.Spec := by
  intro n
  simp only [A082040, Nat.add_sub_cancel, A082040.P5383711480330532539.a, A082040.P13987900187150890134.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082040

/-! ## A082040.P15920068615560169526

`ceil((A016921(n)/2)²)`
-/

namespace A082040.P15920068615560169526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A016921 n : ℚ) / 2) ^ 2⌉

end

end A082040.P15920068615560169526

namespace A082040

/-- `ceil((A016921(n)/2)²)` -/
def P15920068615560169526.Spec : Prop :=
  ∀ n, P15920068615560169526.a n = A082040 n

end A082040

/-! ## A082040.P15908951732354930013

`ceil((A271114(n)/2)²)`
-/

namespace A082040.P15908951732354930013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A271114 n : ℚ) / 2) ^ 2⌉

end

end A082040.P15908951732354930013

namespace A082040

/-- `ceil((A271114(n)/2)²)` -/
def P15908951732354930013.Spec : Prop :=
  ∀ n, P15908951732354930013.a n = A082040 n

end A082040

/-! ## A082040.P4291325164168320957

`ceil(A298037(2*n)/2)`
-/

namespace A082040.P4291325164168320957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298037 (2 * n) : ℚ) / 2⌉

end

end A082040.P4291325164168320957

namespace A082040

/-- `ceil(A298037(2*n)/2)` -/
def P4291325164168320957.Spec : Prop :=
  ∀ n, P4291325164168320957.a n = A082040 n

end A082040

/-! ## A082040.P2274499866223826617

`∑[A113770(n)+2*n]`
-/

namespace A082040.P2274499866223826617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082040.P2274499866223826617

namespace A082040

/-- `∑[A113770(n)+2*n]` -/
def P2274499866223826617.Spec : Prop :=
  ∀ n, P2274499866223826617.a n = A082040 n

end A082040

/-! ## A082040.P9956937118932649415

`or(1, 3*n*A016777(n))`
-/

namespace A082040.P9956937118932649415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((n : ℤ) * A016777 n))

end

end A082040.P9956937118932649415

namespace A082040

/-- `or(1, 3*n*A016777(n))` -/
def P9956937118932649415.Spec : Prop :=
  ∀ n, P9956937118932649415.a n = A082040 n

end A082040

/-! ## A082040.P17209400990706589904

`floor(A016780(n)/A069131(n+1))`
-/

namespace A082040.P17209400990706589904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016780 n : ℚ) / (A069131 (n + 1) : ℚ)⌋

end

end A082040.P17209400990706589904

namespace A082040

/-- `floor(A016780(n)/A069131(n+1))` -/
def P17209400990706589904.Spec : Prop :=
  ∀ n, P17209400990706589904.a n = A082040 n

end A082040

/-! ## A082040.P15497753048240520060

`Δ[A064046(n)/5]`
-/

namespace A082040.P15497753048240520060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064046 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082040.P15497753048240520060

namespace A082040

/-- `Δ[A064046(n)/5]` -/
def P15497753048240520060.Spec : Prop :=
  ∀ n, P15497753048240520060.a n = (A082040 n : ℚ)

theorem P15497753048240520060.correct : P15497753048240520060.Spec := by
  intro n
  simp only [A082040, Nat.add_sub_cancel, A082040.P15497753048240520060.f1, A082040.P15497753048240520060.a, A082040.P13987900187150890134.a, A064046, A064046.P17679552197568254219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082040

/-! ## A082040.P1925782712078522724

`Δ[(n-1)*A056107(n)]`
-/

namespace A082040.P1925782712078522724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082040.P1925782712078522724

namespace A082040

/-- `Δ[(n-1)*A056107(n)]` -/
def P1925782712078522724.Spec : Prop :=
  ∀ n, P1925782712078522724.a n = A082040 n

theorem P1925782712078522724.correct : P1925782712078522724.Spec := by
  intro n
  simp only [A082040, Nat.add_sub_cancel, A082040.P1925782712078522724.f1, A082040.P1925782712078522724.a, A082040.P13987900187150890134.a, A056107, A056107.P16256314836093114361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082040

/-! ## A082040.P7736209271586305456

`Δ[n*(A077588(n)-1)]`
-/

namespace A082040.P7736209271586305456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A077588 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082040.P7736209271586305456

namespace A082040

/-- `Δ[n*(A077588(n)-1)]` -/
def P7736209271586305456.Spec : Prop :=
  ∀ n, P7736209271586305456.a n = A082040 n

end A082040

/-! ## A082040.P12017966541579441562

`Δ[n*(A056105(n)-n)]`
-/

namespace A082040.P12017966541579441562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056105 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082040.P12017966541579441562

namespace A082040

/-- `Δ[n*(A056105(n)-n)]` -/
def P12017966541579441562.Spec : Prop :=
  ∀ n, P12017966541579441562.a n = A082040 n

theorem P12017966541579441562.correct : P12017966541579441562.Spec := by
  intro n
  simp only [A082040, Nat.add_sub_cancel, A082040.P12017966541579441562.f1, A082040.P12017966541579441562.a, A082040.P13987900187150890134.a, A056105, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082040

/-! ## A082040.P7462754350950881399

`A298027(2*n)`
-/

namespace A082040.P7462754350950881399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 (2 * n)

end

end A082040.P7462754350950881399

namespace A082040

/-- `A298027(2*n)` -/
def P7462754350950881399.Spec : Prop :=
  ∀ n, P7462754350950881399.a n = A082040 n

end A082040

/-! ## A082040.P5883955397068034050

`∑[A298033(2*n)]`
-/

namespace A082040.P5883955397068034050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082040.P5883955397068034050

namespace A082040

/-- `∑[A298033(2*n)]` -/
def P5883955397068034050.Spec : Prop :=
  ∀ n, P5883955397068034050.a n = A082040 n

end A082040

/-! ## A082040.P5207893501560408725

`A130770(3*n)`
-/

namespace A082040.P5207893501560408725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (3 * n)

end

end A082040.P5207893501560408725

namespace A082040

/-- `A130770(3*n)` -/
def P5207893501560408725.Spec : Prop :=
  ∀ n, P5207893501560408725.a n = A082040 n

end A082040

/-!
# A082041: a(n) = 16*n^2 + 4*n + 1.

The programs for A082041, the canonical program `A082041.P4769740866210431926` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082041 has offset 0).

The definition of A082041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n²+4*n+1` (program `A082041.P4769740866210431926`, by `A082041.P4769740866210431926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082041.P4769740866210431926

`16*n²+4*n+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082041

/-- `16*n²+4*n+1` -/
def P4769740866210431926.Spec : Prop :=
  ∀ n, (P4769740866210431926.a n : ℤ) = A082041 n

theorem P4769740866210431926.correct : P4769740866210431926.Spec := by
  intro n
  simp only [A082041]

end A082041

/-! ## A082041.P9485682007820272615

`∑[a(n-1)+32]` with `a(0)=1, a(1)=20`
-/

namespace A082041.P9485682007820272615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082041.P9485682007820272615

namespace A082041

/-- `∑[a(n-1)+32]` -/
def P9485682007820272615.Spec : Prop :=
  ∀ n, (P9485682007820272615.a n : ℤ) = A082041 n

end A082041

/-! ## A082041.P16570466677605944241

`or(1, n*(16*n+4))`
-/

namespace A082041.P16570466677605944241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (16 * n + 4))

end

end A082041.P16570466677605944241

namespace A082041

/-- `or(1, n*(16*n+4))` -/
def P16570466677605944241.Spec : Prop :=
  ∀ n, (P16570466677605944241.a n : ℤ) = A082041 n

end A082041

/-! ## A082041.P5688968574185266719

`xor(1, n*(16*n+4))`
-/

namespace A082041.P5688968574185266719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (16 * n + 4))

end

end A082041.P5688968574185266719

namespace A082041

/-- `xor(1, n*(16*n+4))` -/
def P5688968574185266719.Spec : Prop :=
  ∀ n, (P5688968574185266719.a n : ℤ) = A082041 n

end A082041

/-! ## A082041.P15870113465047077364

`ceil(or(1, 8*n)²/4)`
-/

namespace A082041.P15870113465047077364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (8 * n) ^ 2 : ℚ) / 4⌉

end

end A082041.P15870113465047077364

namespace A082041

/-- `ceil(or(1, 8*n)²/4)` -/
def P15870113465047077364.Spec : Prop :=
  ∀ n, P15870113465047077364.a n = A082041 n

end A082041

/-! ## A082041.P13659510543108678499

`record[(2-or(3, n))²-n]`
-/

namespace A082041.P13659510543108678499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.lor 3 n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082041.P13659510543108678499

namespace A082041

/-- `record[(2-or(3, n))²-n]` -/
def P13659510543108678499.Spec : Prop :=
  ∀ n, P13659510543108678499.a n = A082041 n

end A082041

/-! ## A082041.P14337057350841508631

`record[(2*n+1)^gcd(2, n)-2*n]`
-/

namespace A082041.P14337057350841508631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ Nat.gcd 2 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082041.P14337057350841508631

namespace A082041

/-- `record[(2*n+1)^gcd(2, n)-2*n]` -/
def P14337057350841508631.Spec : Prop :=
  ∀ n, P14337057350841508631.a n = A082041 n

end A082041

/-! ## A082041.P3656972773785382880

`(A017078(n)+3)/4`
-/

namespace A082041.P3656972773785382880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017078 n + 3 : ℚ) / 4

end

end A082041.P3656972773785382880

namespace A082041

/-- `(A017078(n)+3)/4` -/
def P3656972773785382880.Spec : Prop :=
  ∀ n, P3656972773785382880.a n = (A082041 n : ℚ)

theorem P3656972773785382880.correct : P3656972773785382880.Spec := by
  intro n
  simp only [A082041, Nat.add_sub_cancel, A082041.P3656972773785382880.a, A082041.P4769740866210431926.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082041

/-! ## A082041.P16332162481673166057

`ceil((A017077(n)/2)²)`
-/

namespace A082041.P16332162481673166057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A017077 n : ℚ) / 2) ^ 2⌉

end

end A082041.P16332162481673166057

namespace A082041

/-- `ceil((A017077(n)/2)²)` -/
def P16332162481673166057.Spec : Prop :=
  ∀ n, P16332162481673166057.a n = A082041 n

end A082041

/-! ## A082041.P9174191499620326121

`abs(n-A143838(n+1))`
-/

namespace A082041.P9174191499620326121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A143838 (n + 1)|

end

end A082041.P9174191499620326121

namespace A082041

/-- `abs(n-A143838(n+1))` -/
def P9174191499620326121.Spec : Prop :=
  ∀ n, P9174191499620326121.a n = A082041 n

end A082041

/-! ## A082041.P13411066823071616752

`(A272129(n+1)+1)/2`
-/

namespace A082041.P13411066823071616752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272129 (n + 1) + 1 : ℚ) / 2

end

end A082041.P13411066823071616752

namespace A082041

/-- `(A272129(n+1)+1)/2` -/
def P13411066823071616752.Spec : Prop :=
  ∀ n, P13411066823071616752.a n = (A082041 n : ℚ)

theorem P13411066823071616752.correct : P13411066823071616752.Spec := by
  intro n
  simp only [A082041, Nat.add_sub_cancel, A082041.P13411066823071616752.a, A082041.P4769740866210431926.a, A272129, A272129.P8632855432401845907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082041

/-! ## A082041.P5546706829504643419

`A054569(Δ[n²])`
-/

namespace A082041.P5546706829504643419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082041.P5546706829504643419

namespace A082041

/-- `A054569(Δ[n²])` -/
def P5546706829504643419.Spec : Prop :=
  ∀ n, P5546706829504643419.a n = A082041 n

end A082041

/-! ## A082041.P16270198412572687075

`(A102083(2*n)+1)/2`
-/

namespace A082041.P16270198412572687075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102083 (2 * n) + 1 : ℚ) / 2

end

end A082041.P16270198412572687075

namespace A082041

/-- `(A102083(2*n)+1)/2` -/
def P16270198412572687075.Spec : Prop :=
  ∀ n, P16270198412572687075.a n = (A082041 n : ℚ)

theorem P16270198412572687075.correct : P16270198412572687075.Spec := by
  intro n
  simp only [A082041, Nat.add_sub_cancel, A082041.P16270198412572687075.a, A082041.P4769740866210431926.a, A102083, A102083.P4890678275567249568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082041

/-! ## A082041.P17723316678633252127

`ceil((A016813(2*n)/2)²)`
-/

namespace A082041.P17723316678633252127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A016813 (2 * n) : ℚ) / 2) ^ 2⌉

end

end A082041.P17723316678633252127

namespace A082041

/-- `ceil((A016813(2*n)/2)²)` -/
def P17723316678633252127.Spec : Prop :=
  ∀ n, P17723316678633252127.a n = A082041 n

end A082041

/-! ## A082041.P11459624514622737232

`A081348(4*n)`
-/

namespace A082041.P11459624514622737232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081348 (4 * n)

end

end A082041.P11459624514622737232

namespace A082041

/-- `A081348(4*n)` -/
def P11459624514622737232.Spec : Prop :=
  ∀ n, P11459624514622737232.a n = A082041 n

end A082041

/-! ## A082041.P876642719283491920

`A213041(4*n)`
-/

namespace A082041.P876642719283491920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 (4 * n)

end

end A082041.P876642719283491920

namespace A082041

/-- `A213041(4*n)` -/
def P876642719283491920.Spec : Prop :=
  ∀ n, P876642719283491920.a n = A082041 n

end A082041

/-! ## A082041.P12190242925430871149

`A190716(4*n+1)`
-/

namespace A082041.P12190242925430871149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190716 (4 * n + 1)

end

end A082041.P12190242925430871149

namespace A082041

/-- `A190716(4*n+1)` -/
def P12190242925430871149.Spec : Prop :=
  ∀ n, P12190242925430871149.a n = A082041 n

end A082041

/-! ## A082041.P2343952631320177360

`A325657(4*n+1)`
-/

namespace A082041.P2343952631320177360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 (4 * n + 1)

end

end A082041.P2343952631320177360

namespace A082041

/-- `A325657(4*n+1)` -/
def P2343952631320177360.Spec : Prop :=
  ∀ n, P2343952631320177360.a n = A082041 n

end A082041

/-! ## A082041.P2996626295183205041

`A002061(3*n+n+1)`
-/

namespace A082041.P2996626295183205041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (3 * n + (n + 1))

end

end A082041.P2996626295183205041

namespace A082041

/-- `A002061(3*n+n+1)` -/
def P2996626295183205041.Spec : Prop :=
  ∀ n, P2996626295183205041.a n = A082041 n

theorem P2996626295183205041.correct : P2996626295183205041.Spec := by
  intro n
  simp only [A082041, Nat.add_sub_cancel, A082041.P2996626295183205041.a, A082041.P4769740866210431926.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082041

/-! ## A082041.P7005868088888760824

`record[A065261(n+1)²-n]`
-/

namespace A082041.P7005868088888760824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082041.P7005868088888760824

namespace A082041

/-- `record[A065261(n+1)²-n]` -/
def P7005868088888760824.Spec : Prop :=
  ∀ n, P7005868088888760824.a n = A082041 n

end A082041

/-!
# A082042: a(n) = (n^2 + 1)*n!.

The programs for A082042, the canonical program `A082042.P296544515640534810` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082042 has offset 0).

The definition of A082042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)*n!` (program `A082042.P296544515640534810`, by `A082042.P296544515640534810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082042.P296544515640534810

`(n²+1)*n!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082042

/-- `(n²+1)*n!` -/
def P296544515640534810.Spec : Prop :=
  ∀ n, (P296544515640534810.a n : ℤ) = A082042 n

theorem P296544515640534810.correct : P296544515640534810.Spec := by
  intro n
  simp only [A082042]

end A082042

/-! ## A082042.P12723989849502329454

`A002522(n)*A000142(n)`
-/

namespace A082042.P12723989849502329454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A000142 n

end

end A082042.P12723989849502329454

namespace A082042

/-- `A002522(n)*A000142(n)` -/
def P12723989849502329454.Spec : Prop :=
  ∀ n, P12723989849502329454.a n = A082042 n

theorem P12723989849502329454.correct : P12723989849502329454.Spec := by
  intro n
  simp only [A082042, Nat.add_sub_cancel, A082042.P12723989849502329454.a, A082042.P296544515640534810.a, A000142, A000142.P3272619076580183195.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082042

/-! ## A082042.P7473629542720374126

`Δ[(n-1)*n!]`
-/

namespace A082042.P7473629542720374126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082042.P7473629542720374126

namespace A082042

/-- `Δ[(n-1)*n!]` -/
def P7473629542720374126.Spec : Prop :=
  ∀ n, P7473629542720374126.a n = A082042 n

theorem P7473629542720374126.correct : P7473629542720374126.Spec := by
  intro n
  simp only [A082042, Nat.add_sub_cancel, A082042.P7473629542720374126.f1, A082042.P7473629542720374126.a, A082042.P296544515640534810.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A082042

/-! ## A082042.P5778114233532795661

`Δ[Δ[n!]-n!]`
-/

namespace A082042.P5778114233532795661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082042.P5778114233532795661

namespace A082042

/-- `Δ[Δ[n!]-n!]` -/
def P5778114233532795661.Spec : Prop :=
  ∀ n, P5778114233532795661.a n = A082042 n

theorem P5778114233532795661.correct : P5778114233532795661.Spec := by
  intro n
  simp only [A082042, Nat.add_sub_cancel, A082042.P5778114233532795661.f2, A082042.P5778114233532795661.f1, A082042.P5778114233532795661.a, A082042.P296544515640534810.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A082042

/-! ## A082042.P3406655502543093504

`n!/cos(atan(n))²`
-/

namespace A082042.P3406655502543093504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A082042.P3406655502543093504

namespace A082042

/-- `n!/cos(atan(n))²` -/
def P3406655502543093504.Spec : Prop :=
  ∀ n, P3406655502543093504.a n = (A082042 n : ℝ)

end A082042

/-! ## A082042.P5259782887602000906

`n!*(1+n*n)`
-/

namespace A082042.P5259782887602000906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (1 + n * n)

end

end A082042.P5259782887602000906

namespace A082042

/-- `n!*(1+n*n)` -/
def P5259782887602000906.Spec : Prop :=
  ∀ n, (P5259782887602000906.a n : ℤ) = A082042 n

theorem P5259782887602000906.correct : P5259782887602000906.Spec := by
  intro n
  simp only [A082042, Nat.add_sub_cancel, A082042.P5259782887602000906.a, A082042.P296544515640534810.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082042

/-! ## A082042.P5060915355552847075

`-((n-1-∑[2*n])*n!)`
-/

namespace A082042.P5060915355552847075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (Nat.factorial n : ℤ))

end

end A082042.P5060915355552847075

namespace A082042

/-- `-((n-1-∑[2*n])*n!)` -/
def P5060915355552847075.Spec : Prop :=
  ∀ n, P5060915355552847075.a n = A082042 n

end A082042

/-! ## A082042.P5970185337340976934

`Δ[(n-1)/(n+1)*∏[n+1]]`
-/

namespace A082042.P5970185337340976934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082042.P5970185337340976934

namespace A082042

/-- `Δ[(n-1)/(n+1)*∏[n+1]]` -/
def P5970185337340976934.Spec : Prop :=
  ∀ n, P5970185337340976934.a n = (A082042 n : ℚ)

end A082042

/-! ## A082042.P13890941199374959844

`(n²+1)*∏[C(n, a(n-1))]` with `a(0)=1`
-/

namespace A082042.P13890941199374959844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A082042.P13890941199374959844

namespace A082042

/-- `(n²+1)*∏[C(n, a(n-1))]` -/
def P13890941199374959844.Spec : Prop :=
  ∀ n, (P13890941199374959844.a n : ℤ) = A082042 n

end A082042

/-! ## A082042.P6887585922310786069

`A002775(n)+A000142(n)`
-/

namespace A082042.P6887585922310786069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002775 n + A000142 n

end

end A082042.P6887585922310786069

namespace A082042

/-- `A002775(n)+A000142(n)` -/
def P6887585922310786069.Spec : Prop :=
  ∀ n, P6887585922310786069.a n = A082042 n

theorem P6887585922310786069.correct : P6887585922310786069.Spec := by
  intro n
  simp only [A082042, Nat.add_sub_cancel, A082042.P6887585922310786069.a, A082042.P296544515640534810.a, A000142, A000142.P3272619076580183195.a, A002775, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082042

/-!
# A082043: Square array, A(n, k) = (k*n)^2 + 2*k*n + 1, read by antidiagonals.

The programs for A082043, the canonical program `A082043.P1888788749395997436` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082043 has offset 0).

The definition of A082043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)*(row(n)-col(n)))²+2*col(n)*(row(n)-col(n))+1` (program `A082043.P1888788749395997436`, by `A082043.P1888788749395997436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082043.P1888788749395997436

`(col(n)*(row(n)-col(n)))²+2*col(n)*(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082043

/-- `(col(n)*(row(n)-col(n)))²+2*col(n)*(row(n)-col(n))+1` -/
def P1888788749395997436.Spec : Prop :=
  ∀ n, P1888788749395997436.a n = A082043 n

theorem P1888788749395997436.correct : P1888788749395997436.Spec := by
  intro n
  simp only [A082043]

end A082043

/-! ## A082043.P1028376343462252774

`((row(n)-col(n))*col(n))²+2*(row(n)-col(n))*col(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082043.P1028376343462252774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) ^ 2 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + 1

end

end A082043.P1028376343462252774

namespace A082043

/-- `((row(n)-col(n))*col(n))²+2*(row(n)-col(n))*col(n)+1` -/
def P1028376343462252774.Spec : Prop :=
  ∀ n, P1028376343462252774.a n = A082043 n

theorem P1028376343462252774.correct : P1028376343462252774.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P1028376343462252774.a, A082043.P1888788749395997436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082043

/-! ## A082043.P14070031586170129983

`(col(n)*(row(n)-col(n))+1)²`
-/

namespace A082043.P14070031586170129983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1) ^ 2

end

end A082043.P14070031586170129983

namespace A082043

/-- `(col(n)*(row(n)-col(n))+1)²` -/
def P14070031586170129983.Spec : Prop :=
  ∀ n, P14070031586170129983.a n = A082043 n

theorem P14070031586170129983.correct : P14070031586170129983.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P14070031586170129983.a, A082043.P1888788749395997436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082043

/-! ## A082043.P1025111469588909891

`(∑[round(sqrt(2*n))²]+1-n²-(n-C(∑[char[∑[n]]], 2)))²`
-/

namespace A082043.P1025111469588909891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n ^ 2 : ℤ)) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))) ^ 2

end

end A082043.P1025111469588909891

namespace A082043

/-- `(∑[round(sqrt(2*n))²]+1-n²-(n-C(∑[char[∑[n]]], 2)))²` -/
def P1025111469588909891.Spec : Prop :=
  ∀ n, P1025111469588909891.a n = A082043 n

end A082043

/-! ## A082043.P660603342059149024

`A077028(n)²`
-/

namespace A082043.P660603342059149024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n ^ 2

end

end A082043.P660603342059149024

namespace A082043

/-- `A077028(n)²` -/
def P660603342059149024.Spec : Prop :=
  ∀ n, P660603342059149024.a n = A082043 n

theorem P660603342059149024.correct : P660603342059149024.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P660603342059149024.a, A082043.P1888788749395997436.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082043

/-! ## A082043.P10553364820529597400

`(A004247(n)+1)²`
-/

namespace A082043.P10553364820529597400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) ^ 2

end

end A082043.P10553364820529597400

namespace A082043

/-- `(A004247(n)+1)²` -/
def P10553364820529597400.Spec : Prop :=
  ∀ n, P10553364820529597400.a n = A082043 n

theorem P10553364820529597400.correct : P10553364820529597400.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P10553364820529597400.a, A082043.P1888788749395997436.a, A004247, A004247.P2751605162508615148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082043

/-! ## A082043.P8193745398850785251

`(2-A176270(n))²`
-/

namespace A082043.P8193745398850785251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A176270 n) ^ 2

end

end A082043.P8193745398850785251

namespace A082043

/-- `(2-A176270(n))²` -/
def P8193745398850785251.Spec : Prop :=
  ∀ n, P8193745398850785251.a n = A082043 n

theorem P8193745398850785251.correct : P8193745398850785251.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P8193745398850785251.a, A082043.P1888788749395997436.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082043

/-! ## A082043.P13260631994222445140

`(2-A309555(n))²`
-/

namespace A082043.P13260631994222445140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A309555 n) ^ 2

end

end A082043.P13260631994222445140

namespace A082043

/-- `(2-A309555(n))²` -/
def P13260631994222445140.Spec : Prop :=
  ∀ n, P13260631994222445140.a n = A082043 n

theorem P13260631994222445140.correct : P13260631994222445140.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P13260631994222445140.a, A082043.P1888788749395997436.a, A309555, A309555.P13111641592475178072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082043

/-! ## A082043.P16089506778778778693

`floor(sqrt(A082046(n)))²`
-/

namespace A082043.P16089506778778778693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082046 n) ^ 2

end

end A082043.P16089506778778778693

namespace A082043

/-- `floor(sqrt(A082046(n)))²` -/
def P16089506778778778693.Spec : Prop :=
  ∀ n, P16089506778778778693.a n = A082043 n

end A082043

/-! ## A082043.P12164941565671582831

`ceil(sqrt(A082039(n)))²`
-/

namespace A082043.P12164941565671582831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A082039 n : ℝ)⌉ ^ 2

end

end A082043.P12164941565671582831

namespace A082043

/-- `ceil(sqrt(A082039(n)))²` -/
def P12164941565671582831.Spec : Prop :=
  ∀ n, P12164941565671582831.a n = A082043 n

end A082043

/-! ## A082043.P8886705191707017158

`ceil(A130154(n+1)/2)²`
-/

namespace A082043.P8886705191707017158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130154 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A082043.P8886705191707017158

namespace A082043

/-- `ceil(A130154(n+1)/2)²` -/
def P8886705191707017158.Spec : Prop :=
  ∀ n, P8886705191707017158.a n = A082043 n

end A082043

/-! ## A082043.P3538433953174105012

`A008619(A157528(n))²`
-/

namespace A082043.P3538433953174105012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157528 n).toNat ^ 2

end

end A082043.P3538433953174105012

namespace A082043

/-- `A008619(A157528(n))²` -/
def P3538433953174105012.Spec : Prop :=
  ∀ n, P3538433953174105012.a n = A082043 n

end A082043

/-! ## A082043.P2869373958589522195

`A128139(A056943(n))²`
-/

namespace A082043.P2869373958589522195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A056943 n).toNat ^ 2

end

end A082043.P2869373958589522195

namespace A082043

/-- `A128139(A056943(n))²` -/
def P2869373958589522195.Spec : Prop :=
  ∀ n, P2869373958589522195.a n = A082043 n

end A082043

/-! ## A082043.P8723298596385308402

`A128139(A083920(n))²`
-/

namespace A082043.P8723298596385308402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A083920 n).toNat ^ 2

end

end A082043.P8723298596385308402

namespace A082043

/-- `A128139(A083920(n))²` -/
def P8723298596385308402.Spec : Prop :=
  ∀ n, P8723298596385308402.a n = A082043 n

end A082043

/-! ## A082043.P11512714370146980555

`A023444(A309555(n))²`
-/

namespace A082043.P11512714370146980555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A309555 n).toNat ^ 2

end

end A082043.P11512714370146980555

namespace A082043

/-- `A023444(A309555(n))²` -/
def P11512714370146980555.Spec : Prop :=
  ∀ n, P11512714370146980555.a n = A082043 n

end A082043

/-! ## A082043.P18213766142645103475

`A128139(A271439(n))²`
-/

namespace A082043.P18213766142645103475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A271439 n).toNat ^ 2

end

end A082043.P18213766142645103475

namespace A082043

/-- `A128139(A271439(n))²` -/
def P18213766142645103475.Spec : Prop :=
  ∀ n, P18213766142645103475.a n = A082043 n

end A082043

/-! ## A082043.P13413494796677534682

`A000290(A004247(n)+1)`
-/

namespace A082043.P13413494796677534682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A004247 n + 1).toNat

end

end A082043.P13413494796677534682

namespace A082043

/-- `A000290(A004247(n)+1)` -/
def P13413494796677534682.Spec : Prop :=
  ∀ n, P13413494796677534682.a n = A082043 n

end A082043

/-! ## A082043.P7638001745011214613

`A079097(A130154(n+1))`
-/

namespace A082043.P7638001745011214613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A130154 (n + 1)).toNat

end

end A082043.P7638001745011214613

namespace A082043

/-- `A079097(A130154(n+1))` -/
def P7638001745011214613.Spec : Prop :=
  ∀ n, P7638001745011214613.a n = A082043 n

end A082043

/-! ## A082043.P7458446532304289741

`A002620(2*A077028(n))`
-/

namespace A082043.P7458446532304289741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A077028 n).toNat

end

end A082043.P7458446532304289741

namespace A082043

/-- `A002620(2*A077028(n))` -/
def P7458446532304289741.Spec : Prop :=
  ∀ n, P7458446532304289741.a n = A082043 n

end A082043

/-! ## A082043.P5724121382818300333

`A082039(n)+A004247(n)`
-/

namespace A082043.P5724121382818300333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082039 n + A004247 n

end

end A082043.P5724121382818300333

namespace A082043

/-- `A082039(n)+A004247(n)` -/
def P5724121382818300333.Spec : Prop :=
  ∀ n, P5724121382818300333.a n = A082043 n

theorem P5724121382818300333.correct : P5724121382818300333.Spec := by
  intro n
  simp only [A082043, Nat.add_sub_cancel, A082043.P5724121382818300333.a, A082043.P1888788749395997436.a, A004247, A004247.P2751605162508615148.a, A082039, A082039.P10289297583619271704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082043

/-!
# A082044: Main diagonal of A082043: a(n) = n^4 + 2*n^2 + 1.

The programs for A082044, the canonical program `A082044.P12148917754316249360` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082044 has offset 0).

The definition of A082044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+2*n²+1` (program `A082044.P12148917754316249360`, by `A082044.P12148917754316249360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082044.P7522329940687138782

`(n²+1)²`
-/

namespace A082044.P7522329940687138782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) ^ 2

end

end A082044.P7522329940687138782

namespace A082044

/-- `(n²+1)²` -/
def P7522329940687138782.Spec : Prop :=
  ∀ n, (P7522329940687138782.a n : ℤ) = A082044 n

theorem P7522329940687138782.correct : P7522329940687138782.Spec := by
  intro n
  simp only [A082044, Nat.add_sub_cancel, A082044.P7522329940687138782.a, A082044.P12148917754316249360.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082044

/-! ## A082044.P12148917754316249360

`n^4+2*n²+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082044

/-- `n^4+2*n²+1` -/
def P12148917754316249360.Spec : Prop :=
  ∀ n, (P12148917754316249360.a n : ℤ) = A082044 n

theorem P12148917754316249360.correct : P12148917754316249360.Spec := by
  intro n
  simp only [A082044]

end A082044

/-!
# A082045: Diagonal sums of number array A082043.

The programs for A082045, the canonical program `A082045.P6271115322043612730` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082045 has offset 0).

The definition of A082045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082045.P6271115322043612730

`(n^5+10*n^3+19*n+30)/30`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082045

/-- `(n^5+10*n^3+19*n+30)/30` -/
def P6271115322043612730.Spec : Prop :=
  ∀ n, P6271115322043612730.a n = (A082045 n : ℚ)

end A082045

/-! ## A082045.P4363542377119618585

`∑[A006484(n)+(1-n)²]`
-/

namespace A082045.P4363542377119618585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P4363542377119618585

namespace A082045

/-- `∑[A006484(n)+(1-n)²]` -/
def P4363542377119618585.Spec : Prop :=
  ∀ n, P4363542377119618585.a n = A082045 n

end A082045

/-! ## A082045.P3375610126408113960

`A082107(n)-∑[n²-n]`
-/

namespace A082045.P3375610126408113960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082107 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P3375610126408113960

namespace A082045

/-- `A082107(n)-∑[n²-n]` -/
def P3375610126408113960.Spec : Prop :=
  ∀ n, P3375610126408113960.a n = A082045 n

end A082045

/-! ## A082045.P16238291565589637833

`∑[A103290(n)+C(n, 2)+1]`
-/

namespace A082045.P16238291565589637833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n + (Nat.choose n 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P16238291565589637833

namespace A082045

/-- `∑[A103290(n)+C(n, 2)+1]` -/
def P16238291565589637833.Spec : Prop :=
  ∀ n, P16238291565589637833.a n = A082045 n

end A082045

/-! ## A082045.P8839086765963427161

`A082114(n)-A135503(n)`
-/

namespace A082045.P8839086765963427161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082114 n - A135503 n

end

end A082045.P8839086765963427161

namespace A082045

/-- `A082114(n)-A135503(n)` -/
def P8839086765963427161.Spec : Prop :=
  ∀ n, P8839086765963427161.a n = A082045 n

end A082045

/-! ## A082045.P4605284795892809014

`∑[A006325(n)+A002061(n)]`
-/

namespace A082045.P4605284795892809014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n + A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P4605284795892809014

namespace A082045

/-- `∑[A006325(n)+A002061(n)]` -/
def P4605284795892809014.Spec : Prop :=
  ∀ n, P4605284795892809014.a n = A082045 n

end A082045

/-! ## A082045.P11779191717201110317

`A000125(n)+∑[A103290(n)]`
-/

namespace A082045.P11779191717201110317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P11779191717201110317

namespace A082045

/-- `A000125(n)+∑[A103290(n)]` -/
def P11779191717201110317.Spec : Prop :=
  ∀ n, P11779191717201110317.a n = A082045 n

end A082045

/-! ## A082045.P14278377910436274591

`A082047(n)-∑[A161680(n)]`
-/

namespace A082045.P14278377910436274591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082047 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P14278377910436274591

namespace A082045

/-- `A082047(n)-∑[A161680(n)]` -/
def P14278377910436274591.Spec : Prop :=
  ∀ n, P14278377910436274591.a n = A082045 n

end A082045

/-! ## A082045.P13157690716496638576

`A082114(n)-Δ[A050534(n)]`
-/

namespace A082045.P13157690716496638576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082114 n - (f1 (n + 1) - f1 n)

end

end A082045.P13157690716496638576

namespace A082045

/-- `A082114(n)-Δ[A050534(n)]` -/
def P13157690716496638576.Spec : Prop :=
  ∀ n, P13157690716496638576.a n = A082045 n

end A082045

/-! ## A082045.P16708861754068866926

`2*A082047(n)-A082107(n)`
-/

namespace A082045.P16708861754068866926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082047 n - A082107 n

end

end A082045.P16708861754068866926

namespace A082045

/-- `2*A082047(n)-A082107(n)` -/
def P16708861754068866926.Spec : Prop :=
  ∀ n, P16708861754068866926.a n = A082045 n

end A082045

/-! ## A082045.P4911237389220381226

`A082047(n)+n-A004006(n)`
-/

namespace A082045.P4911237389220381226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082047 n + ((n : ℤ) - A004006 n)

end

end A082045.P4911237389220381226

namespace A082045

/-- `A082047(n)+n-A004006(n)` -/
def P4911237389220381226.Spec : Prop :=
  ∀ n, P4911237389220381226.a n = A082045 n

end A082045

/-! ## A082045.P5854532696662030869

`∑[A006325(n)+A051890(n)/2]`
-/

namespace A082045.P5854532696662030869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006325 n : ℚ) + (A051890 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P5854532696662030869

namespace A082045

/-- `∑[A006325(n)+A051890(n)/2]` -/
def P5854532696662030869.Spec : Prop :=
  ∀ n, P5854532696662030869.a n = (A082045 n : ℚ)

end A082045

/-! ## A082045.P13661576341889605196

`∑[A002061(n)+A006484(n)-n]`
-/

namespace A082045.P13661576341889605196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + (A006484 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P13661576341889605196

namespace A082045

/-- `∑[A002061(n)+A006484(n)-n]` -/
def P13661576341889605196.Spec : Prop :=
  ∀ n, P13661576341889605196.a n = A082045 n

end A082045

/-! ## A082045.P210357130101432825

`∑[A000124(n)+A103290(n)-n]`
-/

namespace A082045.P210357130101432825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A103290 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P210357130101432825

namespace A082045

/-- `∑[A000124(n)+A103290(n)-n]` -/
def P210357130101432825.Spec : Prop :=
  ∀ n, P210357130101432825.a n = A082045 n

end A082045

/-! ## A082045.P17138610769887390457

`A082047(n)+A082107(n)-A082114(n)`
-/

namespace A082045.P17138610769887390457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082047 n + (A082107 n - A082114 n)

end

end A082045.P17138610769887390457

namespace A082045

/-- `A082047(n)+A082107(n)-A082114(n)` -/
def P17138610769887390457.Spec : Prop :=
  ∀ n, P17138610769887390457.a n = A082045 n

end A082045

/-! ## A082045.P2374168335899073465

`A154324(2*n)-A050534(n)`
-/

namespace A082045.P2374168335899073465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154324 (2 * n) - A050534 n

end

end A082045.P2374168335899073465

namespace A082045

/-- `A154324(2*n)-A050534(n)` -/
def P2374168335899073465.Spec : Prop :=
  ∀ n, P2374168335899073465.a n = A082045 n

end A082045

/-! ## A082045.P11674523569202250464

`A011842(2*n)+Δ[A011827(n+1)]`
-/

namespace A082045.P11674523569202250464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011842 (2 * n) + (f1 (n + 1) - f1 n)

end

end A082045.P11674523569202250464

namespace A082045

/-- `A011842(2*n)+Δ[A011827(n+1)]` -/
def P11674523569202250464.Spec : Prop :=
  ∀ n, P11674523569202250464.a n = A082045 n

end A082045

/-! ## A082045.P2776361160694496778

`∑[A027625((1-n)²+n)]`
-/

namespace A082045.P2776361160694496778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027625 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P2776361160694496778

namespace A082045

/-- `∑[A027625((1-n)²+n)]` -/
def P2776361160694496778.Spec : Prop :=
  ∀ n, P2776361160694496778.a n = A082045 n

end A082045

/-! ## A082045.P9111064232833232007

`∑[A301654((1-n)²+n+2)]`
-/

namespace A082045.P9111064232833232007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 ((1 - (n : ℤ)) ^ 2 + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P9111064232833232007

namespace A082045

/-- `∑[A301654((1-n)²+n+2)]` -/
def P9111064232833232007.Spec : Prop :=
  ∀ n, P9111064232833232007.a n = A082045 n

end A082045

/-! ## A082045.P511677392374505295

`∑[A339573((1-n)²+n+2)]`
-/

namespace A082045.P511677392374505295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339573 ((1 - (n : ℤ)) ^ 2 + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082045.P511677392374505295

namespace A082045

/-- `∑[A339573((1-n)²+n+2)]` -/
def P511677392374505295.Spec : Prop :=
  ∀ n, P511677392374505295.a n = A082045 n

end A082045

/-!
# A082046: Square array, A(n, k) = (k*n)^2 + 3*k*n + 1, read by antidiagonals.

The programs for A082046, the canonical program `A082046.P3826101076602898823` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082046 has offset 0).

The definition of A082046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)*(row(n)-col(n)))²+3*col(n)*(row(n)-col(n))+1` (program `A082046.P3826101076602898823`, by `A082046.P3826101076602898823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082046.P3826101076602898823

`(col(n)*(row(n)-col(n)))²+3*col(n)*(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082046

/-- `(col(n)*(row(n)-col(n)))²+3*col(n)*(row(n)-col(n))+1` -/
def P3826101076602898823.Spec : Prop :=
  ∀ n, P3826101076602898823.a n = A082046 n

theorem P3826101076602898823.correct : P3826101076602898823.Spec := by
  intro n
  simp only [A082046]

end A082046

/-! ## A082046.P1104864010251561111

`((row(n)-col(n))*col(n))²+3*(row(n)-col(n))*col(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082046.P1104864010251561111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) ^ 2 + 3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + 1

end

end A082046.P1104864010251561111

namespace A082046

/-- `((row(n)-col(n))*col(n))²+3*(row(n)-col(n))*col(n)+1` -/
def P1104864010251561111.Spec : Prop :=
  ∀ n, P1104864010251561111.a n = A082046 n

theorem P1104864010251561111.correct : P1104864010251561111.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P1104864010251561111.a, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082046

/-! ## A082046.P12276949597277932962

`2*A285192(n)+1`
-/

namespace A082046.P12276949597277932962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285192 n + 1

end

end A082046.P12276949597277932962

namespace A082046

/-- `2*A285192(n)+1` -/
def P12276949597277932962.Spec : Prop :=
  ∀ n, P12276949597277932962.a n = A082046 n

end A082046

/-! ## A082046.P17005605142776272219

`2*C(A077028(n)+1, 2)-1`
-/

namespace A082046.P17005605142776272219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A077028 n + 1).toNat 2 : ℤ) - 1

end

end A082046.P17005605142776272219

namespace A082046

/-- `2*C(A077028(n)+1, 2)-1` -/
def P17005605142776272219.Spec : Prop :=
  ∀ n, P17005605142776272219.a n = A082046 n

end A082046

/-! ## A082046.P17783360286869309044

`2*C(A004247(n)+2, 2)-1`
-/

namespace A082046.P17783360286869309044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A004247 n + 2).toNat 2 : ℤ) - 1

end

end A082046.P17783360286869309044

namespace A082046

/-- `2*C(A004247(n)+2, 2)-1` -/
def P17783360286869309044.Spec : Prop :=
  ∀ n, P17783360286869309044.a n = A082046 n

end A082046

/-! ## A082046.P650395058639397175

`A028387((n-C(∑[char[∑[n]]], 2))*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A082046.P650395058639397175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A082046.P650395058639397175

namespace A082046

/-- `A028387((n-C(∑[char[∑[n]]], 2))*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P650395058639397175.Spec : Prop :=
  ∀ n, P650395058639397175.a n = A082046 n

end A082046

/-! ## A082046.P18393624924839377337

`A028387(A004247(n))`
-/

namespace A082046.P18393624924839377337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A004247 n).toNat

end

end A082046.P18393624924839377337

namespace A082046

/-- `A028387(A004247(n))` -/
def P18393624924839377337.Spec : Prop :=
  ∀ n, P18393624924839377337.a n = A082046 n

end A082046

/-! ## A082046.P17579805977566531367

`A140144(A130154(n+1))`
-/

namespace A082046.P17579805977566531367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (A130154 (n + 1)).toNat

end

end A082046.P17579805977566531367

namespace A082046

/-- `A140144(A130154(n+1))` -/
def P17579805977566531367.Spec : Prop :=
  ∀ n, P17579805977566531367.a n = A082046 n

end A082046

/-! ## A082046.P4969022299110607380

`A002378(A077028(n))-1`
-/

namespace A082046.P4969022299110607380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A077028 n).toNat - 1

end

end A082046.P4969022299110607380

namespace A082046

/-- `A002378(A077028(n))-1` -/
def P4969022299110607380.Spec : Prop :=
  ∀ n, P4969022299110607380.a n = A082046 n

end A082046

/-! ## A082046.P10282283044498739744

`A082043(n)+A004247(n)`
-/

namespace A082046.P10282283044498739744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + A004247 n

end

end A082046.P10282283044498739744

namespace A082046

/-- `A082043(n)+A004247(n)` -/
def P10282283044498739744.Spec : Prop :=
  ∀ n, P10282283044498739744.a n = A082046 n

theorem P10282283044498739744.correct : P10282283044498739744.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P10282283044498739744.a, A082046.P3826101076602898823.a, A004247, A004247.P2751605162508615148.a, A082043, A082043.P1888788749395997436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P7768115138171092761

`A082105(n)-A004247(n)`
-/

namespace A082046.P7768115138171092761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082105 n - A004247 n

end

end A082046.P7768115138171092761

namespace A082046

/-- `A082105(n)-A004247(n)` -/
def P7768115138171092761.Spec : Prop :=
  ∀ n, P7768115138171092761.a n = A082046 n

theorem P7768115138171092761.correct : P7768115138171092761.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P7768115138171092761.a, A082046.P3826101076602898823.a, A004247, A004247.P2751605162508615148.a, A082105, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P12655886369343664121

`A004247(n)+A077028(n)²`
-/

namespace A082046.P12655886369343664121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A077028 n ^ 2

end

end A082046.P12655886369343664121

namespace A082046

/-- `A004247(n)+A077028(n)²` -/
def P12655886369343664121.Spec : Prop :=
  ∀ n, P12655886369343664121.a n = A082046 n

theorem P12655886369343664121.correct : P12655886369343664121.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P12655886369343664121.a, A082046.P3826101076602898823.a, A004247, A004247.P2751605162508615148.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P1107781128232120048

`A296180(n)+A004247(n)²`
-/

namespace A082046.P1107781128232120048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296180 n + A004247 n ^ 2

end

end A082046.P1107781128232120048

namespace A082046

/-- `A296180(n)+A004247(n)²` -/
def P1107781128232120048.Spec : Prop :=
  ∀ n, P1107781128232120048.a n = A082046 n

theorem P1107781128232120048.correct : P1107781128232120048.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P1107781128232120048.a, A082046.P3826101076602898823.a, A004247, A004247.P2751605162508615148.a, A296180, A296180.P14152267377895258393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P3109068448420112808

`A002378(A004247(n)+1)-1`
-/

namespace A082046.P3109068448420112808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A004247 n + 1).toNat - 1

end

end A082046.P3109068448420112808

namespace A082046

/-- `A002378(A004247(n)+1)-1` -/
def P3109068448420112808.Spec : Prop :=
  ∀ n, P3109068448420112808.a n = A082046 n

end A082046

/-! ## A082046.P17668510727006069188

`A002061(A077028(n)+1)-2`
-/

namespace A082046.P17668510727006069188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A077028 n + 1).toNat - 2

end

end A082046.P17668510727006069188

namespace A082046

/-- `A002061(A077028(n)+1)-2` -/
def P17668510727006069188.Spec : Prop :=
  ∀ n, P17668510727006069188.a n = A082046 n

end A082046

/-! ## A082046.P3224010548263900120

`A002061(A004247(n)+2)-2`
-/

namespace A082046.P3224010548263900120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A004247 n + 2).toNat - 2

end

end A082046.P3224010548263900120

namespace A082046

/-- `A002061(A004247(n)+2)-2` -/
def P3224010548263900120.Spec : Prop :=
  ∀ n, P3224010548263900120.a n = A082046 n

end A082046

/-! ## A082046.P17039922098130107711

`A082039(n)+2*A004247(n)`
-/

namespace A082046.P17039922098130107711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082039 n + 2 * A004247 n

end

end A082046.P17039922098130107711

namespace A082046

/-- `A082039(n)+2*A004247(n)` -/
def P17039922098130107711.Spec : Prop :=
  ∀ n, P17039922098130107711.a n = A082046 n

theorem P17039922098130107711.correct : P17039922098130107711.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P17039922098130107711.a, A082046.P3826101076602898823.a, A004247, A004247.P2751605162508615148.a, A082039, A082039.P10289297583619271704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P3561202864542311658

`A082110(n)-2*A004247(n)`
-/

namespace A082046.P3561202864542311658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082110 n - 2 * A004247 n

end

end A082046.P3561202864542311658

namespace A082046

/-- `A082110(n)-2*A004247(n)` -/
def P3561202864542311658.Spec : Prop :=
  ∀ n, P3561202864542311658.a n = A082046 n

theorem P3561202864542311658.correct : P3561202864542311658.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P3561202864542311658.a, A082046.P3826101076602898823.a, A004247, A004247.P2751605162508615148.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P14431274461847527932

`2*A082043(n)-A082039(n)`
-/

namespace A082046.P14431274461847527932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082043 n - A082039 n

end

end A082046.P14431274461847527932

namespace A082046

/-- `2*A082043(n)-A082039(n)` -/
def P14431274461847527932.Spec : Prop :=
  ∀ n, P14431274461847527932.a n = A082046 n

theorem P14431274461847527932.correct : P14431274461847527932.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P14431274461847527932.a, A082046.P3826101076602898823.a, A082039, A082039.P10289297583619271704.a, A082043, A082043.P1888788749395997436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-! ## A082046.P14960415262264726231

`(A082110(n)+A082039(n))/2`
-/

namespace A082046.P14960415262264726231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082110 n + A082039 n : ℚ) / 2

end

end A082046.P14960415262264726231

namespace A082046

/-- `(A082110(n)+A082039(n))/2` -/
def P14960415262264726231.Spec : Prop :=
  ∀ n, P14960415262264726231.a n = (A082046 n : ℚ)

theorem P14960415262264726231.correct : P14960415262264726231.Spec := by
  intro n
  simp only [A082046, Nat.add_sub_cancel, A082046.P14960415262264726231.a, A082046.P3826101076602898823.a, A082039, A082039.P10289297583619271704.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082046

/-!
# A082047: Diagonal sums of number array A082046.

The programs for A082047, the canonical program `A082047.P9786080861743806878` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082047 has offset 0).

The definition of A082047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082047.P9786080861743806878

`(n^5+15*n^3+14*n+30)/30`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082047

/-- `(n^5+15*n^3+14*n+30)/30` -/
def P9786080861743806878.Spec : Prop :=
  ∀ n, P9786080861743806878.a n = (A082047 n : ℚ)

end A082047

/-! ## A082047.P9647570055558145738

`A082114(n)-∑[n²-n]`
-/

namespace A082047.P9647570055558145738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082114 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082047.P9647570055558145738

namespace A082047

/-- `A082114(n)-∑[n²-n]` -/
def P9647570055558145738.Spec : Prop :=
  ∀ n, P9647570055558145738.a n = A082047 n

end A082047

/-! ## A082047.P8761777916298321725

`∑[A103290(n)+A002061(n)]`
-/

namespace A082047.P8761777916298321725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n + A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082047.P8761777916298321725

namespace A082047

/-- `∑[A103290(n)+A002061(n)]` -/
def P8761777916298321725.Spec : Prop :=
  ∀ n, P8761777916298321725.a n = A082047 n

end A082047

/-! ## A082047.P14923294783234583643

`A082045(n)+∑[A161680(n)]`
-/

namespace A082047.P14923294783234583643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082047.P14923294783234583643

namespace A082047

/-- `A082045(n)+∑[A161680(n)]` -/
def P14923294783234583643.Spec : Prop :=
  ∀ n, P14923294783234583643.a n = A082047 n

end A082047

/-! ## A082047.P15223556269260583862

`A082107(n)-∑[A161680(n)]`
-/

namespace A082047.P15223556269260583862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082107 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082047.P15223556269260583862

namespace A082047

/-- `A082107(n)-∑[A161680(n)]` -/
def P15223556269260583862.Spec : Prop :=
  ∀ n, P15223556269260583862.a n = A082047 n

end A082047

/-! ## A082047.P10994315624124686465

`∑[A132366(n)-A155965(n)]`
-/

namespace A082047.P10994315624124686465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n - A155965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082047.P10994315624124686465

namespace A082047

/-- `∑[A132366(n)-A155965(n)]` -/
def P10994315624124686465.Spec : Prop :=
  ∀ n, P10994315624124686465.a n = A082047 n

end A082047

/-! ## A082047.P346401460812869233

`2*A082107(n)-A082114(n)`
-/

namespace A082047.P346401460812869233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082107 n - A082114 n

end

end A082047.P346401460812869233

namespace A082047

/-- `2*A082107(n)-A082114(n)` -/
def P346401460812869233.Spec : Prop :=
  ∀ n, P346401460812869233.a n = A082047 n

end A082047

/-! ## A082047.P7207716719965992479

`A006003(n)+∑[A006325(n)]+1`
-/

namespace A082047.P7207716719965992479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082047.P7207716719965992479

namespace A082047

/-- `A006003(n)+∑[A006325(n)]+1` -/
def P7207716719965992479.Spec : Prop :=
  ∀ n, P7207716719965992479.a n = A082047 n

end A082047

/-! ## A082047.P13735769480568199454

`A082045(n)+A082114(n)-A082107(n)`
-/

namespace A082047.P13735769480568199454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082045 n + (A082114 n - A082107 n)

end

end A082047.P13735769480568199454

namespace A082047

/-- `A082045(n)+A082114(n)-A082107(n)` -/
def P13735769480568199454.Spec : Prop :=
  ∀ n, P13735769480568199454.a n = A082047 n

end A082047

/-! ## A082047.P14846791367370116972

`∑[4*A006522(n+1)+1]`
-/

namespace A082047.P14846791367370116972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006522 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082047.P14846791367370116972

namespace A082047

/-- `∑[4*A006522(n+1)+1]` -/
def P14846791367370116972.Spec : Prop :=
  ∀ n, P14846791367370116972.a n = A082047 n

end A082047

/-!
# A082048: a(n) = least number greater than n having greater smallest prime factor than that of n.

The programs for A082048, there is no canonical definition to state claims against.
-/

/-! ## A082048.P12728225703733161118

`or(A000035(A375073(n+4)), A126762(n+1))`
-/

namespace A082048.P12728225703733161118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A375073 (n + 4)).toNat) (A126762 (n + 1))

end

end A082048.P12728225703733161118

/-! ## A082048.P2915875519362110245

`or(A000035(A296603(n+2)), A126762(n+1))`
-/

namespace A082048.P2915875519362110245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A296603 (n + 2)).toNat) (A126762 (n + 1))

end

end A082048.P2915875519362110245

/-! ## A082048.P16499093107050368122

`or(A000035(A341454(3*(n+3))), A126762(n+1))`
-/

namespace A082048.P16499093107050368122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A341454 (3 * (n + 3))).toNat) (A126762 (n + 1))

end

end A082048.P16499093107050368122

/-! ## A082048.P9359043278971916248

`A126762(n+1)+A011655(A126801(3*n+5))`
-/

namespace A082048.P9359043278971916248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (n + 1) + A011655 (A126801 (3 * n + 5)).toNat

end

end A082048.P9359043278971916248

/-! ## A082048.P3830370310837295876

`A028310(n)+A020639(A015886(n))`
-/

namespace A082048.P3830370310837295876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A020639 (A015886 n).toNat

end

end A082048.P3830370310837295876

/-!
# A082050: Sum of divisors of n that are not of the form 3k+1.

The programs for A082050, the canonical program `A082050.P7404403862460474574` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082050 has offset 1).

The definition of A082050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082050.P7404403862460474574

`∑{d}[n+1, #*A011655(#-1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082050

/-- `∑{d}[n+1, #*A011655(#-1)]` -/
def P7404403862460474574.Spec : Prop :=
  ∀ n, P7404403862460474574.a n = A082050 (n + 1)

theorem P7404403862460474574.correct : P7404403862460474574.Spec := by
  intro n
  simp only [A082050, Nat.add_sub_cancel]

end A082050

/-! ## A082050.P14180323368521618203

`A000203(n+1)-A078181(n+1)`
-/

namespace A082050.P14180323368521618203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A078181 (n + 1)

end

end A082050.P14180323368521618203

namespace A082050

/-- `A000203(n+1)-A078181(n+1)` -/
def P14180323368521618203.Spec : Prop :=
  ∀ n, P14180323368521618203.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P9293327789273460134

`A082051(n+1)-A326503(n+1)`
-/

namespace A082050.P9293327789273460134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082051 (n + 1) - A326503 (n + 1)

end

end A082050.P9293327789273460134

namespace A082050

/-- `A082051(n+1)-A326503(n+1)` -/
def P9293327789273460134.Spec : Prop :=
  ∀ n, P9293327789273460134.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P6124930599914275990

`∑[A340793(n+1)]-A078181(n+1)`
-/

namespace A082050.P6124930599914275990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078181 (n + 1)

end

end A082050.P6124930599914275990

namespace A082050

/-- `∑[A340793(n+1)]-A078181(n+1)` -/
def P6124930599914275990.Spec : Prop :=
  ∀ n, P6124930599914275990.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P15445457706267475940

`A074400(n+1)/2-A078181(n+1)`
-/

namespace A082050.P15445457706267475940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A078181 (n + 1) : ℚ)

end

end A082050.P15445457706267475940

namespace A082050

/-- `A074400(n+1)/2-A078181(n+1)` -/
def P15445457706267475940.Spec : Prop :=
  ∀ n, P15445457706267475940.a n = (A082050 (n + 1) : ℚ)

end A082050

/-! ## A082050.P6296305507291711921

`A000203(n+1)+A078182(n+1)-A046913(n+1)`
-/

namespace A082050.P6296305507291711921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A078182 (n + 1) - A046913 (n + 1))

end

end A082050.P6296305507291711921

namespace A082050

/-- `A000203(n+1)+A078182(n+1)-A046913(n+1)` -/
def P6296305507291711921.Spec : Prop :=
  ∀ n, P6296305507291711921.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P6099541232458229112

`A050449(n+1)+A082052(n+1)-A078181(n+1)`
-/

namespace A082050.P6099541232458229112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A078181 (n + 1))

end

end A082050.P6099541232458229112

namespace A082050

/-- `A050449(n+1)+A082052(n+1)-A078181(n+1)` -/
def P6099541232458229112.Spec : Prop :=
  ∀ n, P6099541232458229112.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P17172140357803558856

`A050452(n+1)+A082053(n+1)-A078181(n+1)`
-/

namespace A082050.P17172140357803558856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (n + 1) + (A082053 (n + 1) - A078181 (n + 1))

end

end A082050.P17172140357803558856

namespace A082050

/-- `A050452(n+1)+A082053(n+1)-A078181(n+1)` -/
def P17172140357803558856.Spec : Prop :=
  ∀ n, P17172140357803558856.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P193944626053353663

`A078182(n+1)+A082051(n+1)-A078181(n+1)`
-/

namespace A082050.P193944626053353663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1) + (A082051 (n + 1) - A078181 (n + 1))

end

end A082050.P193944626053353663

namespace A082050

/-- `A078182(n+1)+A082051(n+1)-A078181(n+1)` -/
def P193944626053353663.Spec : Prop :=
  ∀ n, P193944626053353663.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P4107891332441338773

`A272027(n+1)-(A078181(n+1)+A074400(n+1))`
-/

namespace A082050.P4107891332441338773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - (A078181 (n + 1) + A074400 (n + 1))

end

end A082050.P4107891332441338773

namespace A082050

/-- `A272027(n+1)-(A078181(n+1)+A074400(n+1))` -/
def P4107891332441338773.Spec : Prop :=
  ∀ n, P4107891332441338773.a n = A082050 (n + 1)

end A082050

/-! ## A082050.P4724546152764885490

`∑{d}[n+1, #*A204418(#)]`
-/

namespace A082050.P4724546152764885490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A204418 d

end

end A082050.P4724546152764885490

namespace A082050

/-- `∑{d}[n+1, #*A204418(#)]` -/
def P4724546152764885490.Spec : Prop :=
  ∀ n, P4724546152764885490.a n = A082050 (n + 1)

end A082050

/-!
# A082051: Sum of divisors of n that are not of the form 3k+2.

The programs for A082051, the canonical program `A082051.P2858432596118488346` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082051 has offset 1).

The definition of A082051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082051.P10855456005580598364

`∑{d}[n+1, #*A204418(#-1)]`
-/

namespace A082051.P10855456005580598364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A204418 (d - 1)

end

end A082051.P10855456005580598364

namespace A082051

/-- `∑{d}[n+1, #*A204418(#-1)]` -/
def P10855456005580598364.Spec : Prop :=
  ∀ n, P10855456005580598364.a n = A082051 (n + 1)

end A082051

/-! ## A082051.P2858432596118488346

`∑{d}[n+1, #*A017450(#)%3]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082051

/-- `∑{d}[n+1, #*A017450(#)%3]` -/
def P2858432596118488346.Spec : Prop :=
  ∀ n, P2858432596118488346.a n = A082051 (n + 1)

theorem P2858432596118488346.correct : P2858432596118488346.Spec := by
  intro n
  simp only [A082051, Nat.add_sub_cancel]

end A082051

/-! ## A082051.P11693788111953564204

`A326503(n+1)+A082050(n+1)`
-/

namespace A082051.P11693788111953564204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326503 (n + 1) + A082050 (n + 1)

end

end A082051.P11693788111953564204

namespace A082051

/-- `A326503(n+1)+A082050(n+1)` -/
def P11693788111953564204.Spec : Prop :=
  ∀ n, P11693788111953564204.a n = A082051 (n + 1)

end A082051

/-! ## A082051.P9823592267614738328

`A000203(n+1)-A078182(n+1)`
-/

namespace A082051.P9823592267614738328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A078182 (n + 1)

end

end A082051.P9823592267614738328

namespace A082051

/-- `A000203(n+1)-A078182(n+1)` -/
def P9823592267614738328.Spec : Prop :=
  ∀ n, P9823592267614738328.a n = A082051 (n + 1)

end A082051

/-! ## A082051.P12525724048661788426

`A000203(n+1)+A078181(n+1)-A046913(n+1)`
-/

namespace A082051.P12525724048661788426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A078181 (n + 1) - A046913 (n + 1))

end

end A082051.P12525724048661788426

namespace A082051

/-- `A000203(n+1)+A078181(n+1)-A046913(n+1)` -/
def P12525724048661788426.Spec : Prop :=
  ∀ n, P12525724048661788426.a n = A082051 (n + 1)

end A082051

/-! ## A082051.P13302568491220903927

`A050449(n+1)+A082052(n+1)-A078182(n+1)`
-/

namespace A082051.P13302568491220903927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A078182 (n + 1))

end

end A082051.P13302568491220903927

namespace A082051

/-- `A050449(n+1)+A082052(n+1)-A078182(n+1)` -/
def P13302568491220903927.Spec : Prop :=
  ∀ n, P13302568491220903927.a n = A082051 (n + 1)

end A082051

/-! ## A082051.P16520769236986187913

`A050452(n+1)+A082053(n+1)-A078182(n+1)`
-/

namespace A082051.P16520769236986187913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (n + 1) + (A082053 (n + 1) - A078182 (n + 1))

end

end A082051.P16520769236986187913

namespace A082051

/-- `A050452(n+1)+A082053(n+1)-A078182(n+1)` -/
def P16520769236986187913.Spec : Prop :=
  ∀ n, P16520769236986187913.a n = A082051 (n + 1)

end A082051

/-! ## A082051.P13655267212339235858

`A078181(n+1)+A082050(n+1)-A078182(n+1)`
-/

namespace A082051.P13655267212339235858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) + (A082050 (n + 1) - A078182 (n + 1))

end

end A082051.P13655267212339235858

namespace A082051

/-- `A078181(n+1)+A082050(n+1)-A078182(n+1)` -/
def P13655267212339235858.Spec : Prop :=
  ∀ n, P13655267212339235858.a n = A082051 (n + 1)

end A082051

/-!
# A082052: Sum of divisors of n that are not of the form 4k+1.

The programs for A082052, the canonical program `A082052.P17956952017327585217` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082052 has offset 1).

The definition of A082052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082052.P16833392669569788632

`A326050(n+1)+1+n`
-/

namespace A082052.P16833392669569788632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326050 (n + 1) + 1 + (n : ℤ)

end

end A082052.P16833392669569788632

namespace A082052

/-- `A326050(n+1)+1+n` -/
def P16833392669569788632.Spec : Prop :=
  ∀ n, P16833392669569788632.a n = A082052 (n + 1)

theorem P16833392669569788632.correct : P16833392669569788632.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P16833392669569788632.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, A326050, A326050.P4515014402688933711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P6525373430895761192

`∑{d}[n+1, #]-A050449(n+1)`
-/

namespace A082052.P6525373430895761192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A050449 (n + 1)

end

end A082052.P6525373430895761192

namespace A082052

/-- `∑{d}[n+1, #]-A050449(n+1)` -/
def P6525373430895761192.Spec : Prop :=
  ∀ n, P6525373430895761192.a n = A082052 (n + 1)

theorem P6525373430895761192.correct : P6525373430895761192.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P6525373430895761192.f1, A082052.P6525373430895761192.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P17956952017327585217

`∑{d}[n+1, #*A166486(#-1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082052

/-- `∑{d}[n+1, #*A166486(#-1)]` -/
def P17956952017327585217.Spec : Prop :=
  ∀ n, P17956952017327585217.a n = A082052 (n + 1)

theorem P17956952017327585217.correct : P17956952017327585217.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel]

end A082052

/-! ## A082052.P7558770281820311217

`A146076(n+1)+A050452(n+1)`
-/

namespace A082052.P7558770281820311217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A050452 (n + 1)

end

end A082052.P7558770281820311217

namespace A082052

/-- `A146076(n+1)+A050452(n+1)` -/
def P7558770281820311217.Spec : Prop :=
  ∀ n, P7558770281820311217.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P6615656708322632761

`A326049(n+1)+A001065(n+1)`
-/

namespace A082052.P6615656708322632761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + A001065 (n + 1)

end

end A082052.P6615656708322632761

namespace A082052

/-- `A326049(n+1)+A001065(n+1)` -/
def P6615656708322632761.Spec : Prop :=
  ∀ n, P6615656708322632761.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P381550809955488179

`A000203(n+1)-A050449(n+1)`
-/

namespace A082052.P381550809955488179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A050449 (n + 1)

end

end A082052.P381550809955488179

namespace A082052

/-- `A000203(n+1)-A050449(n+1)` -/
def P381550809955488179.Spec : Prop :=
  ∀ n, P381550809955488179.a n = A082052 (n + 1)

theorem P381550809955488179.correct : P381550809955488179.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P381550809955488179.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P8580097958982162507

`A082053(n+1)-A050457(n+1)`
-/

namespace A082052.P8580097958982162507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - A050457 (n + 1)

end

end A082052.P8580097958982162507

namespace A082052

/-- `A082053(n+1)-A050457(n+1)` -/
def P8580097958982162507.Spec : Prop :=
  ∀ n, P8580097958982162507.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P4948201199172490378

`A215947(n+1)-A082053(n+1)`
-/

namespace A082052.P4948201199172490378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (n + 1) - A082053 (n + 1)

end

end A082052.P4948201199172490378

namespace A082052

/-- `A215947(n+1)-A082053(n+1)` -/
def P4948201199172490378.Spec : Prop :=
  ∀ n, P4948201199172490378.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P16752152753905675341

`A088580(n+1)-(A050449(n+1)+1)`
-/

namespace A082052.P16752152753905675341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A050449 (n + 1) + 1)

end

end A082052.P16752152753905675341

namespace A082052

/-- `A088580(n+1)-(A050449(n+1)+1)` -/
def P16752152753905675341.Spec : Prop :=
  ∀ n, P16752152753905675341.a n = A082052 (n + 1)

theorem P16752152753905675341.correct : P16752152753905675341.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P16752152753905675341.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A088580, A088580.P3089093194242277422.a, A166486, A166486.P13501783531280266850.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P3970186037018507191

`A326049(2*(n+1))-A033879(n+1)`
-/

namespace A082052.P3970186037018507191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (2 * (n + 1)) - A033879 (n + 1)

end

end A082052.P3970186037018507191

namespace A082052

/-- `A326049(2*(n+1))-A033879(n+1)` -/
def P3970186037018507191.Spec : Prop :=
  ∀ n, P3970186037018507191.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P18218099304099585077

`A001065(n+1)+1+n-A050449(n+1)`
-/

namespace A082052.P18218099304099585077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A050449 (n + 1)

end

end A082052.P18218099304099585077

namespace A082052

/-- `A001065(n+1)+1+n-A050449(n+1)` -/
def P18218099304099585077.Spec : Prop :=
  ∀ n, P18218099304099585077.a n = A082052 (n + 1)

theorem P18218099304099585077.correct : P18218099304099585077.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P18218099304099585077.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A001065, A001065.P4097147489331274860.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A166486, A166486.P13501783531280266850.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P7157335142671464739

`A155085(n+1)-(n+1)-A050449(n+1)`
-/

namespace A082052.P7157335142671464739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A050449 (n + 1)

end

end A082052.P7157335142671464739

namespace A082052

/-- `A155085(n+1)-(n+1)-A050449(n+1)` -/
def P7157335142671464739.Spec : Prop :=
  ∀ n, P7157335142671464739.a n = A082052 (n + 1)

theorem P7157335142671464739.correct : P7157335142671464739.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P7157335142671464739.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A155085, A155085.P2440965829929837208.a, A166486, A166486.P13501783531280266850.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P15179523111132861825

`A064987(n+1)/(n+1)-A050449(n+1)`
-/

namespace A082052.P15179523111132861825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A050449 (n + 1) : ℚ)

end

end A082052.P15179523111132861825

namespace A082052

/-- `A064987(n+1)/(n+1)-A050449(n+1)` -/
def P15179523111132861825.Spec : Prop :=
  ∀ n, P15179523111132861825.a n = (A082052 (n + 1) : ℚ)

theorem P15179523111132861825.correct : P15179523111132861825.Spec := by
  intro n
  simp only [A082052, Nat.add_sub_cancel, A082052.P15179523111132861825.a, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A064987, A064987.P14181610018234257040.a, A166486, A166486.P13501783531280266850.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082052

/-! ## A082052.P5590414878770184344

`2*(n+1)-A033879(n+1)-A050449(n+1)`
-/

namespace A082052.P5590414878770184344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A050449 (n + 1)

end

end A082052.P5590414878770184344

namespace A082052

/-- `2*(n+1)-A033879(n+1)-A050449(n+1)` -/
def P5590414878770184344.Spec : Prop :=
  ∀ n, P5590414878770184344.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P7932938608000851141

`A000203(n+1)+A050452(n+1)-A000593(n+1)`
-/

namespace A082052.P7932938608000851141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A050452 (n + 1) - A000593 (n + 1))

end

end A082052.P7932938608000851141

namespace A082052

/-- `A000203(n+1)+A050452(n+1)-A000593(n+1)` -/
def P7932938608000851141.Spec : Prop :=
  ∀ n, P7932938608000851141.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P3199327965090753631

`A034448(n+1)+A048146(n+1)-A050449(n+1)`
-/

namespace A082052.P3199327965090753631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A050449 (n + 1))

end

end A082052.P3199327965090753631

namespace A082052

/-- `A034448(n+1)+A048146(n+1)-A050449(n+1)` -/
def P3199327965090753631.Spec : Prop :=
  ∀ n, P3199327965090753631.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P14502695679020233162

`A050452(n+1)+A082053(n+1)-A050449(n+1)`
-/

namespace A082052.P14502695679020233162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (n + 1) + (A082053 (n + 1) - A050449 (n + 1))

end

end A082052.P14502695679020233162

namespace A082052

/-- `A050452(n+1)+A082053(n+1)-A050449(n+1)` -/
def P14502695679020233162.Spec : Prop :=
  ∀ n, P14502695679020233162.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P14316809516890407247

`A000593(n+1)+A146076(n+1)-A050449(n+1)`
-/

namespace A082052.P14316809516890407247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A050449 (n + 1))

end

end A082052.P14316809516890407247

namespace A082052

/-- `A000593(n+1)+A146076(n+1)-A050449(n+1)` -/
def P14316809516890407247.Spec : Prop :=
  ∀ n, P14316809516890407247.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P11488920113551499507

`A078181(n+1)+A082050(n+1)-A050449(n+1)`
-/

namespace A082052.P11488920113551499507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) + (A082050 (n + 1) - A050449 (n + 1))

end

end A082052.P11488920113551499507

namespace A082052

/-- `A078181(n+1)+A082050(n+1)-A050449(n+1)` -/
def P11488920113551499507.Spec : Prop :=
  ∀ n, P11488920113551499507.a n = A082052 (n + 1)

end A082052

/-! ## A082052.P12881994864529563461

`A078182(n+1)+A082051(n+1)-A050449(n+1)`
-/

namespace A082052.P12881994864529563461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1) + (A082051 (n + 1) - A050449 (n + 1))

end

end A082052.P12881994864529563461

namespace A082052

/-- `A078182(n+1)+A082051(n+1)-A050449(n+1)` -/
def P12881994864529563461.Spec : Prop :=
  ∀ n, P12881994864529563461.a n = A082052 (n + 1)

end A082052

/-!
# A082053: Sum of divisors of n that are not of the form 4k+3.

The programs for A082053, the canonical program `A082053.P6526383380561716117` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082053 has offset 1).

The definition of A082053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082053.P6526383380561716117

`∑{d}[n+1, #%or(3, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082053

/-- `∑{d}[n+1, #%or(3, #)]` -/
def P6526383380561716117.Spec : Prop :=
  ∀ n, (P6526383380561716117.a n : ℤ) = A082053 (n + 1)

theorem P6526383380561716117.correct : P6526383380561716117.Spec := by
  intro n
  simp only [A082053, Nat.add_sub_cancel]

end A082053

/-! ## A082053.P9952197596728997406

`∑{d}[n+1, #*A152822(#-1)]`
-/

namespace A082053.P9952197596728997406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A152822 (d - 1)

end

end A082053.P9952197596728997406

namespace A082053

/-- `∑{d}[n+1, #*A152822(#-1)]` -/
def P9952197596728997406.Spec : Prop :=
  ∀ n, P9952197596728997406.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P8236293192115791350

`A082052(n+1)+A050457(n+1)`
-/

namespace A082053.P8236293192115791350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) + A050457 (n + 1)

end

end A082053.P8236293192115791350

namespace A082053

/-- `A082052(n+1)+A050457(n+1)` -/
def P8236293192115791350.Spec : Prop :=
  ∀ n, P8236293192115791350.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P13966738374632787826

`A146076(n+1)+A050449(n+1)`
-/

namespace A082053.P13966738374632787826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A050449 (n + 1)

end

end A082053.P13966738374632787826

namespace A082053

/-- `A146076(n+1)+A050449(n+1)` -/
def P13966738374632787826.Spec : Prop :=
  ∀ n, P13966738374632787826.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P13633315203645706759

`A326052(n+1)+A001065(n+1)`
-/

namespace A082053.P13633315203645706759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1) + A001065 (n + 1)

end

end A082053.P13633315203645706759

namespace A082053

/-- `A326052(n+1)+A001065(n+1)` -/
def P13633315203645706759.Spec : Prop :=
  ∀ n, P13633315203645706759.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P14199650602204721171

`A000203(n+1)-A050452(n+1)`
-/

namespace A082053.P14199650602204721171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A050452 (n + 1)

end

end A082053.P14199650602204721171

namespace A082053

/-- `A000203(n+1)-A050452(n+1)` -/
def P14199650602204721171.Spec : Prop :=
  ∀ n, P14199650602204721171.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P4025859555642354858

`A215947(n+1)-A082052(n+1)`
-/

namespace A082053.P4025859555642354858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (n + 1) - A082052 (n + 1)

end

end A082053.P4025859555642354858

namespace A082053

/-- `A215947(n+1)-A082052(n+1)` -/
def P4025859555642354858.Spec : Prop :=
  ∀ n, P4025859555642354858.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P8488233974501176344

`A326052(2*(n+1))-A033879(n+1)`
-/

namespace A082053.P8488233974501176344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (2 * (n + 1)) - A033879 (n + 1)

end

end A082053.P8488233974501176344

namespace A082053

/-- `A326052(2*(n+1))-A033879(n+1)` -/
def P8488233974501176344.Spec : Prop :=
  ∀ n, P8488233974501176344.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P10916033095920867717

`A245092(2*n+1)-A082052(A000265(n+1))`
-/

namespace A082053.P10916033095920867717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A082052 (A000265 (n + 1)).toNat

end

end A082053.P10916033095920867717

namespace A082053

/-- `A245092(2*n+1)-A082052(A000265(n+1))` -/
def P10916033095920867717.Spec : Prop :=
  ∀ n, P10916033095920867717.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P11755664078055992774

`A050449(n+1)+A326052(n+1)+A326050(n+1)`
-/

namespace A082053.P11755664078055992774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A326052 (n + 1) + A326050 (n + 1))

end

end A082053.P11755664078055992774

namespace A082053

/-- `A050449(n+1)+A326052(n+1)+A326050(n+1)` -/
def P11755664078055992774.Spec : Prop :=
  ∀ n, P11755664078055992774.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P15034452328907950951

`A000203(n+1)+A050449(n+1)-A000593(n+1)`
-/

namespace A082053.P15034452328907950951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A050449 (n + 1) - A000593 (n + 1))

end

end A082053.P15034452328907950951

namespace A082053

/-- `A000203(n+1)+A050449(n+1)-A000593(n+1)` -/
def P15034452328907950951.Spec : Prop :=
  ∀ n, P15034452328907950951.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P17364162854269291463

`A034448(n+1)+A048146(n+1)-A050452(n+1)`
-/

namespace A082053.P17364162854269291463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A050452 (n + 1))

end

end A082053.P17364162854269291463

namespace A082053

/-- `A034448(n+1)+A048146(n+1)-A050452(n+1)` -/
def P17364162854269291463.Spec : Prop :=
  ∀ n, P17364162854269291463.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P6840315117050135920

`A050449(n+1)+A082052(n+1)-A050452(n+1)`
-/

namespace A082053.P6840315117050135920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A050452 (n + 1))

end

end A082053.P6840315117050135920

namespace A082053

/-- `A050449(n+1)+A082052(n+1)-A050452(n+1)` -/
def P6840315117050135920.Spec : Prop :=
  ∀ n, P6840315117050135920.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P12340685251680657225

`A078181(n+1)+A082050(n+1)-A050452(n+1)`
-/

namespace A082053.P12340685251680657225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) + (A082050 (n + 1) - A050452 (n + 1))

end

end A082053.P12340685251680657225

namespace A082053

/-- `A078181(n+1)+A082050(n+1)-A050452(n+1)` -/
def P12340685251680657225.Spec : Prop :=
  ∀ n, P12340685251680657225.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P11779253562797805384

`A078182(n+1)+A082051(n+1)-A050452(n+1)`
-/

namespace A082053.P11779253562797805384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1) + (A082051 (n + 1) - A050452 (n + 1))

end

end A082053.P11779253562797805384

namespace A082053

/-- `A078182(n+1)+A082051(n+1)-A050452(n+1)` -/
def P11779253562797805384.Spec : Prop :=
  ∀ n, P11779253562797805384.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P3824754061486504620

`A000203(n+1)+A146076(n+1)-A082052(n+1)`
-/

namespace A082053.P3824754061486504620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A146076 (n + 1) - A082052 (n + 1))

end

end A082053.P3824754061486504620

namespace A082053

/-- `A000203(n+1)+A146076(n+1)-A082052(n+1)` -/
def P3824754061486504620.Spec : Prop :=
  ∀ n, P3824754061486504620.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P15053527734950540389

`A082052(n+1)+A326052(n+1)-A326049(n+1)`
-/

namespace A082053.P15053527734950540389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) + (A326052 (n + 1) - A326049 (n + 1))

end

end A082053.P15053527734950540389

namespace A082053

/-- `A082052(n+1)+A326052(n+1)-A326049(n+1)` -/
def P15053527734950540389.Spec : Prop :=
  ∀ n, P15053527734950540389.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P1114749509709291498

`A146076(n+1)+A245092(2*n+1)-A082052(n+1)`
-/

namespace A082053.P1114749509709291498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + (A245092 (2 * n + 1) - A082052 (n + 1))

end

end A082053.P1114749509709291498

namespace A082053

/-- `A146076(n+1)+A245092(2*n+1)-A082052(n+1)` -/
def P1114749509709291498.Spec : Prop :=
  ∀ n, P1114749509709291498.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P5293098221868801095

`A146076(n+1)+A001065(n+1)+1+n-A082052(n+1)`
-/

namespace A082053.P5293098221868801095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + (A001065 (n + 1) + 1 + (n : ℤ) - A082052 (n + 1))

end

end A082053.P5293098221868801095

namespace A082053

/-- `A146076(n+1)+A001065(n+1)+1+n-A082052(n+1)` -/
def P5293098221868801095.Spec : Prop :=
  ∀ n, P5293098221868801095.a n = A082053 (n + 1)

end A082053

/-! ## A082053.P15614827181372446260

`A146076(n+1)+A155085(n+1)-(n+1)-A082052(n+1)`
-/

namespace A082053.P15614827181372446260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + (A155085 (n + 1) - (n + 1 : ℤ) - A082052 (n + 1))

end

end A082053.P15614827181372446260

namespace A082053

/-- `A146076(n+1)+A155085(n+1)-(n+1)-A082052(n+1)` -/
def P15614827181372446260.Spec : Prop :=
  ∀ n, P15614827181372446260.a n = A082053 (n + 1)

end A082053

/-!
# A082054: Sum of common prime divisors (without multiplicity) of sigma(n) and phi(n).

The programs for A082054, the canonical program `A082054.P15616235198643098512` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082054 has offset 1).

The definition of A082054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082054.P15616235198643098512

`A008472(A009223(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082054

/-- `A008472(A009223(n+1))` -/
def P15616235198643098512.Spec : Prop :=
  ∀ n, P15616235198643098512.a n = A082054 (n + 1)

theorem P15616235198643098512.correct : P15616235198643098512.Spec := by
  intro n
  simp only [A082054, Nat.add_sub_cancel]

end A082054

/-! ## A082054.P14374375407777426011

`∑{p}[A082055(n+1), #]`
-/

namespace A082054.P14374375407777426011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A082054.P14374375407777426011

namespace A082054

/-- `∑{p}[A082055(n+1), #]` -/
def P14374375407777426011.Spec : Prop :=
  ∀ n, (P14374375407777426011.a n : ℤ) = A082054 (n + 1)

end A082054

/-! ## A082054.P8723897361430239752

`A001414(A082055(n+1))`
-/

namespace A082054.P8723897361430239752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A082055 (n + 1)).toNat

end

end A082054.P8723897361430239752

namespace A082054

/-- `A001414(A082055(n+1))` -/
def P8723897361430239752.Spec : Prop :=
  ∀ n, P8723897361430239752.a n = A082054 (n + 1)

end A082054

/-! ## A082054.P9751455634843297070

`∑{p}[A062354(n+1)/A009286(n+1), #]`
-/

namespace A082054.P9751455634843297070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A082054.P9751455634843297070

namespace A082054

/-- `∑{p}[A062354(n+1)/A009286(n+1), #]` -/
def P9751455634843297070.Spec : Prop :=
  ∀ n, (P9751455634843297070.a n : ℤ) = A082054 (n + 1)

end A082054

/-! ## A082054.P1636457897158827438

`∑{p}[A000203(n+1)/A289336(n+1), #]`
-/

namespace A082054.P1636457897158827438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A289336 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A082054.P1636457897158827438

namespace A082054

/-- `∑{p}[A000203(n+1)/A289336(n+1), #]` -/
def P1636457897158827438.Spec : Prop :=
  ∀ n, (P1636457897158827438.a n : ℤ) = A082054 (n + 1)

end A082054

/-! ## A082054.P17024589596877796566

`A008472(gcd(∑{d}[n+1, #], A065387(n+1)))`
-/

namespace A082054.P17024589596877796566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A065387 (n + 1)))

end

end A082054.P17024589596877796566

namespace A082054

/-- `A008472(gcd(∑{d}[n+1, #], A065387(n+1)))` -/
def P17024589596877796566.Spec : Prop :=
  ∀ n, P17024589596877796566.a n = A082054 (n + 1)

end A082054

/-! ## A082054.P11891854840292238104

`∑{p}[gcd(A000010(n+1), A000203(n+1)), #]`
-/

namespace A082054.P11891854840292238104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A082054.P11891854840292238104

namespace A082054

/-- `∑{p}[gcd(A000010(n+1), A000203(n+1)), #]` -/
def P11891854840292238104.Spec : Prop :=
  ∀ n, (P11891854840292238104.a n : ℤ) = A082054 (n + 1)

end A082054

/-! ## A082054.P16019764740024977225

`A008472(gcd(A000203(n+1), A051612(n+1)))`
-/

namespace A082054.P16019764740024977225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.gcd (A000203 (n + 1)) (A051612 (n + 1)))

end

end A082054.P16019764740024977225

namespace A082054

/-- `A008472(gcd(A000203(n+1), A051612(n+1)))` -/
def P16019764740024977225.Spec : Prop :=
  ∀ n, P16019764740024977225.a n = A082054 (n + 1)

end A082054

/-! ## A082054.P189974933551779465

`A322590(A082055(n+1))-A082057(A082055(n+1)²)`
-/

namespace A082054.P189974933551779465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A082055 (n + 1)).toNat - A082057 (A082055 (n + 1) ^ 2).toNat

end

end A082054.P189974933551779465

namespace A082054

/-- `A322590(A082055(n+1))-A082057(A082055(n+1)²)` -/
def P189974933551779465.Spec : Prop :=
  ∀ n, P189974933551779465.a n = A082054 (n + 1)

end A082054

/-!
# A082055: Product of common prime-divisors (without multiplicity) of sigma(n) and phi(n).

The programs for A082055, the canonical program `A082055.P17660834440611057659` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082055 has offset 1).

The definition of A082055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082055.P17660834440611057659

`A007947(A009223(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082055

/-- `A007947(A009223(n+1))` -/
def P17660834440611057659.Spec : Prop :=
  ∀ n, P17660834440611057659.a n = A082055 (n + 1)

theorem P17660834440611057659.correct : P17660834440611057659.Spec := by
  intro n
  simp only [A082055, Nat.add_sub_cancel]

end A082055

/-! ## A082055.P16944057684175912533

`gcd(A000203(n+1), A080400(n+1))`
-/

namespace A082055.P16944057684175912533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A080400 (n + 1))

end

end A082055.P16944057684175912533

namespace A082055

/-- `gcd(A000203(n+1), A080400(n+1))` -/
def P16944057684175912533.Spec : Prop :=
  ∀ n, (P16944057684175912533.a n : ℤ) = A082055 (n + 1)

end A082055

/-! ## A082055.P1145079714488862685

`gcd(A002246(n+1), A080398(n+1))`
-/

namespace A082055.P1145079714488862685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002246 (n + 1)) (A080398 (n + 1))

end

end A082055.P1145079714488862685

namespace A082055

/-- `gcd(A002246(n+1), A080398(n+1))` -/
def P1145079714488862685.Spec : Prop :=
  ∀ n, (P1145079714488862685.a n : ℤ) = A082055 (n + 1)

end A082055

/-! ## A082055.P5424573919903942733

`A007947(A066087(n+1)+A066086(n+1))`
-/

namespace A082055.P5424573919903942733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A066087 (n + 1) + A066086 (n + 1)).toNat

end

end A082055.P5424573919903942733

namespace A082055

/-- `A007947(A066087(n+1)+A066086(n+1))` -/
def P5424573919903942733.Spec : Prop :=
  ∀ n, P5424573919903942733.a n = A082055 (n + 1)

end A082055

/-! ## A082055.P10920197980840182099

`gcd(A009223(n+1), A034386(2*A009223(n+1)))`
-/

namespace A082055.P10920197980840182099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009223 (n + 1)) (A034386 (2 * A009223 (n + 1)).toNat)

end

end A082055.P10920197980840182099

namespace A082055

/-- `gcd(A009223(n+1), A034386(2*A009223(n+1)))` -/
def P10920197980840182099.Spec : Prop :=
  ∀ n, (P10920197980840182099.a n : ℤ) = A082055 (n + 1)

end A082055

/-! ## A082055.P2557329758673776007

`gcd(A009223(n+1), A034386(n))`
-/

namespace A082055.P2557329758673776007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009223 (n + 1)) (A034386 n)

end

end A082055.P2557329758673776007

namespace A082055

/-- `gcd(A009223(n+1), A034386(n))` -/
def P2557329758673776007.Spec : Prop :=
  ∀ n, (P2557329758673776007.a n : ℤ) = A082055 (n + 1)

end A082055

/-! ## A082055.P6416561161051224656

`gcd(A077099(n+1), A330030(n))`
-/

namespace A082055.P6416561161051224656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077099 (n + 1)) (A330030 n)

end

end A082055.P6416561161051224656

namespace A082055

/-- `gcd(A077099(n+1), A330030(n))` -/
def P6416561161051224656.Spec : Prop :=
  ∀ n, (P6416561161051224656.a n : ℤ) = A082055 (n + 1)

end A082055

/-! ## A082055.P4801920328962908601

`A009223(n+1)²/A003557(A009223(n+1)²)`
-/

namespace A082055.P4801920328962908601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009223 (n + 1) ^ 2 : ℚ) / (A003557 (A009223 (n + 1) ^ 2).toNat : ℚ)

end

end A082055.P4801920328962908601

namespace A082055

/-- `A009223(n+1)²/A003557(A009223(n+1)²)` -/
def P4801920328962908601.Spec : Prop :=
  ∀ n, P4801920328962908601.a n = (A082055 (n + 1) : ℚ)

end A082055

/-!
# A082057: Least x=a(n) such that product of common prime-divisors [without multiplicity] of sigma(x) and phi(x) equals n; or 0 if n is not a squarefree number or if no such x exists. Among indices n only squarefree numbers arise because multiplicity of prime factors is ignored.

The programs for A082057, there is no canonical definition to state claims against.
-/

/-! ## A082057.P877184799058103993

`A073815(n+1)*A319367(A104429(n))`
-/

namespace A082057.P877184799058103993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073815 (n + 1) * A319367 (A104429 n).toNat

end

end A082057.P877184799058103993

/-! ## A082057.P18401789151607101285

`A073815(n+1)*A354034(A129123(n))`
-/

namespace A082057.P18401789151607101285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073815 (n + 1) * A354034 (A129123 n).toNat

end

end A082057.P18401789151607101285

/-! ## A082057.P2902955263477777816

`A073815(n+1)*A342005(A184949(n))`
-/

namespace A082057.P2902955263477777816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073815 (n + 1) * A342005 (A184949 n).toNat

end

end A082057.P2902955263477777816

/-!
# A082058: a(n) is the smallest k such that prime(k) contains the digits of n as a substring.

The programs for A082058, there is no canonical definition to state claims against.
-/

/-! ## A082058.P5386501519611207536

`A000720(A062584(n))`
-/

namespace A082058.P5386501519611207536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062584 n).toNat

end

end A082058.P5386501519611207536

/-! ## A082058.P6262802589594630522

`A066328(2*A062584(n)-A062584(n))`
-/

namespace A082058.P6262802589594630522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A062584 n - A062584 n).toNat

end

end A082058.P6262802589594630522

/-! ## A082058.P10566017307276284761

`A066328(A062584(n))^A001221(A062584(n+1))`
-/

namespace A082058.P10566017307276284761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066328 (A062584 n).toNat : ℚ) ^ (A001221 (A062584 (n + 1)).toNat : ℤ)

end

end A082058.P10566017307276284761

/-! ## A082058.P8735473273754334276

`A061395(2*A062584(n))`
-/

namespace A082058.P8735473273754334276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A062584 n).toNat

end

end A082058.P8735473273754334276

/-! ## A082058.P5650791872801573365

`A061395(lcm(2, A062584(n)))`
-/

namespace A082058.P5650791872801573365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A062584 n))

end

end A082058.P5650791872801573365

/-! ## A082058.P14501608689513423436

`A061395(A062584(n)+A062584(n))`
-/

namespace A082058.P14501608689513423436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A062584 n + A062584 n).toNat

end

end A082058.P14501608689513423436

/-! ## A082058.P5448869769072350591

`A290103(2*A062584(n))`
-/

namespace A082058.P5448869769072350591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A062584 n).toNat

end

end A082058.P5448869769072350591

/-! ## A082058.P5394075702773513192

`A075167(2*A062584(n))-1`
-/

namespace A082058.P5394075702773513192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (2 * A062584 n).toNat - 1

end

end A082058.P5394075702773513192

/-! ## A082058.P16442881469041984667

`A085608(A062584(2*n-n))`
-/

namespace A082058.P16442881469041984667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085608 (A062584 (2 * n - n)).toNat

end

end A082058.P16442881469041984667

/-! ## A082058.P10832297962202991513

`A290103(A062584(n)+A062584(n))`
-/

namespace A082058.P10832297962202991513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A062584 n + A062584 n).toNat

end

end A082058.P10832297962202991513

/-!
# A082059: Numbers k such that k, sigma(k) and phi(k) have the same decimal digits (ignoring multiplicity).

The programs for A082059, there is no canonical definition to state claims against.
-/

/-! ## A082059.P4775446072140017867

`∩[A082060(n+1), A249899(n+1)]`
-/

namespace A082059.P4775446072140017867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082059.P4775446072140017867

/-!
# A082060: Numbers k such that k and phi(k) have the same distinct decimal digits.

The programs for A082060, there is no canonical definition to state claims against.
-/

/-! ## A082060.P13388240147298714053

`or(A048785(10^n), A054486(n))`
-/

namespace A082060.P13388240147298714053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048785 (10 ^ n)) (A054486 n)

end

end A082060.P13388240147298714053

/-!
# A082061: Greatest common prime divisor of n and phi(n)=A000010(n); a(n)=1 if no common prime divisor exists.

The programs for A082061, the canonical program `A082061.P10175946465592589706` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082061 has offset 1).

The definition of A082061 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082061.P10175946465592589706

`A006530(A009195(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082061

/-- `A006530(A009195(n+1))` -/
def P10175946465592589706.Spec : Prop :=
  ∀ n, P10175946465592589706.a n = A082061 (n + 1)

theorem P10175946465592589706.correct : P10175946465592589706.Spec := by
  intro n
  simp only [A082061, Nat.add_sub_cancel]

end A082061

/-! ## A082061.P4154647670255660473

`A006530(gcd(A000010(n+1), n+1))`
-/

namespace A082061.P4154647670255660473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000010 (n + 1)) (n + 1 : ℤ))

end

end A082061.P4154647670255660473

namespace A082061

/-- `A006530(gcd(A000010(n+1), n+1))` -/
def P4154647670255660473.Spec : Prop :=
  ∀ n, P4154647670255660473.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P4483380881467964811

`A006530(A072994(n+1))`
-/

namespace A082061.P4483380881467964811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072994 (n + 1)).toNat

end

end A082061.P4483380881467964811

namespace A082061

/-- `A006530(A072994(n+1))` -/
def P4483380881467964811.Spec : Prop :=
  ∀ n, P4483380881467964811.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P7361797634950506613

`A006530(A327979(n+1))`
-/

namespace A082061.P7361797634950506613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A327979 (n + 1)).toNat

end

end A082061.P7361797634950506613

namespace A082061

/-- `A006530(A327979(n+1))` -/
def P7361797634950506613.Spec : Prop :=
  ∀ n, P7361797634950506613.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P14495095512265491527

`A002034(∏{p}[A327979(n+1), #])`
-/

namespace A082061.P14495095512265491527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A082061.P14495095512265491527

namespace A082061

/-- `A002034(∏{p}[A327979(n+1), #])` -/
def P14495095512265491527.Spec : Prop :=
  ∀ n, P14495095512265491527.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P6273565554301227468

`A006530(gcd(n+1, Δ[A002088(n)]))`
-/

namespace A082061.P6273565554301227468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A082061.P6273565554301227468

namespace A082061

/-- `A006530(gcd(n+1, Δ[A002088(n)]))` -/
def P6273565554301227468.Spec : Prop :=
  ∀ n, P6273565554301227468.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P8435119286726229104

`A006530((n+1)/A109395(n+1))`
-/

namespace A082061.P8435119286726229104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A109395 (n + 1) : ℚ))).toNat

end

end A082061.P8435119286726229104

namespace A082061

/-- `A006530((n+1)/A109395(n+1))` -/
def P8435119286726229104.Spec : Prop :=
  ∀ n, P8435119286726229104.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P14592632980717916073

`A006530(gcd(∏{p}[n+1, #], A051953(n+1)))`
-/

namespace A082061.P14592632980717916073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A051953 (n + 1)))

end

end A082061.P14592632980717916073

namespace A082061

/-- `A006530(gcd(∏{p}[n+1, #], A051953(n+1)))` -/
def P14592632980717916073.Spec : Prop :=
  ∀ n, P14592632980717916073.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P17233667045112254464

`A006530(gcd(A039649(n+1)+n, (n+1)²))`
-/

namespace A082061.P17233667045112254464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A039649 (n + 1) + (n : ℤ)) ((n + 1) ^ 2 : ℤ))

end

end A082061.P17233667045112254464

namespace A082061

/-- `A006530(gcd(A039649(n+1)+n, (n+1)²))` -/
def P17233667045112254464.Spec : Prop :=
  ∀ n, P17233667045112254464.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P18037727925447216823

`A006530(A002618(n+1)/A009262(n+1))`
-/

namespace A082061.P18037727925447216823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (A009262 (n + 1) : ℚ))).toNat

end

end A082061.P18037727925447216823

namespace A082061

/-- `A006530(A002618(n+1)/A009262(n+1))` -/
def P18037727925447216823.Spec : Prop :=
  ∀ n, P18037727925447216823.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P11595973517724069807

`A006530(gcd(A000027(n+1), A051953(n+1)))`
-/

namespace A082061.P11595973517724069807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000027 (n + 1)) (A051953 (n + 1)))

end

end A082061.P11595973517724069807

namespace A082061

/-- `A006530(gcd(A000027(n+1), A051953(n+1)))` -/
def P11595973517724069807.Spec : Prop :=
  ∀ n, P11595973517724069807.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P11240429834131257557

`A362414(2*A009195(n+1)²)`
-/

namespace A082061.P11240429834131257557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362414 (2 * A009195 (n + 1) ^ 2).toNat

end

end A082061.P11240429834131257557

namespace A082061

/-- `A362414(2*A009195(n+1)²)` -/
def P11240429834131257557.Spec : Prop :=
  ∀ n, P11240429834131257557.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P9642727408102547052

`A362414(A009195((n+1)*A009195(n+1)))`
-/

namespace A082061.P9642727408102547052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362414 (A009195 ((n + 1 : ℤ) * A009195 (n + 1)).toNat).toNat

end

end A082061.P9642727408102547052

namespace A082061

/-- `A362414(A009195((n+1)*A009195(n+1)))` -/
def P9642727408102547052.Spec : Prop :=
  ∀ n, P9642727408102547052.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P11639600757168609004

`A006530((n+1)/A378856(A007947(n+1)))`
-/

namespace A082061.P11639600757168609004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A378856 (A007947 (n + 1)).toNat : ℚ))).toNat

end

end A082061.P11639600757168609004

namespace A082061

/-- `A006530((n+1)/A378856(A007947(n+1)))` -/
def P11639600757168609004.Spec : Prop :=
  ∀ n, P11639600757168609004.a n = A082061 (n + 1)

end A082061

/-! ## A082061.P7093325279641298760

`A109395(A050399(A009195(A009195(A050399(n+1)))))`
-/

namespace A082061.P7093325279641298760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A050399 (A009195 (A009195 (A050399 (n + 1)).toNat).toNat).toNat).toNat

end

end A082061.P7093325279641298760

namespace A082061

/-- `A109395(A050399(A009195(A009195(A050399(n+1)))))` -/
def P7093325279641298760.Spec : Prop :=
  ∀ n, P7093325279641298760.a n = A082061 (n + 1)

end A082061

/-!
# A082062: Greatest common prime-divisor of n and sigma(n)=A000203(n); a(n)=1 if no common prime-divisor exists.

The programs for A082062, the canonical program `A082062.P16609852978023058169` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082062 has offset 1).

The definition of A082062 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082062.P16609852978023058169

`A006530(gcd(A000203(n+1), n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082062

/-- `A006530(gcd(A000203(n+1), n+1))` -/
def P16609852978023058169.Spec : Prop :=
  ∀ n, P16609852978023058169.a n = A082062 (n + 1)

theorem P16609852978023058169.correct : P16609852978023058169.Spec := by
  intro n
  simp only [A082062, Nat.add_sub_cancel]

end A082062

/-! ## A082062.P4474689263759568352

`A006530(gcd((n+1)², ∑{d}[n+1, #]))`
-/

namespace A082062.P4474689263759568352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd ((n + 1) ^ 2) (∑ d ∈ Nat.divisors (f1 n), d))

end

end A082062.P4474689263759568352

namespace A082062

/-- `A006530(gcd((n+1)², ∑{d}[n+1, #]))` -/
def P4474689263759568352.Spec : Prop :=
  ∀ n, P4474689263759568352.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P10542336791362097488

`A006530(A009194(n+1))`
-/

namespace A082062.P10542336791362097488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A009194 (n + 1)).toNat

end

end A082062.P10542336791362097488

namespace A082062

/-- `A006530(A009194(n+1))` -/
def P10542336791362097488.Spec : Prop :=
  ∀ n, P10542336791362097488.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P16204179363475860489

`A006530(A306682(n+1))`
-/

namespace A082062.P16204179363475860489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A306682 (n + 1)).toNat

end

end A082062.P16204179363475860489

namespace A082062

/-- `A006530(A306682(n+1))` -/
def P16204179363475860489.Spec : Prop :=
  ∀ n, P16204179363475860489.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P3674591704295103065

`A006530(gcd(n+1, Δ[A160664(n)]))`
-/

namespace A082062.P3674591704295103065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A082062.P3674591704295103065

namespace A082062

/-- `A006530(gcd(n+1, Δ[A160664(n)]))` -/
def P3674591704295103065.Spec : Prop :=
  ∀ n, P3674591704295103065.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P993195158081542834

`A006530((n+1)/A017666(n+1))`
-/

namespace A082062.P993195158081542834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A082062.P993195158081542834

namespace A082062

/-- `A006530((n+1)/A017666(n+1))` -/
def P993195158081542834.Spec : Prop :=
  ∀ n, P993195158081542834.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P18392317365612994863

`A006530(gcd(∏{p}[n+1, #], A326144(n+1)))`
-/

namespace A082062.P18392317365612994863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A326144 (n + 1)))

end

end A082062.P18392317365612994863

namespace A082062

/-- `A006530(gcd(∏{p}[n+1, #], A326144(n+1)))` -/
def P18392317365612994863.Spec : Prop :=
  ∀ n, P18392317365612994863.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P7327592208376699020

`A006530(A000203(n+1)/A017665(n+1))`
-/

namespace A082062.P7327592208376699020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A082062.P7327592208376699020

namespace A082062

/-- `A006530(A000203(n+1)/A017665(n+1))` -/
def P7327592208376699020.Spec : Prop :=
  ∀ n, P7327592208376699020.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P11570064326852931115

`A006530(gcd(A000027(n+1), A033879(n+1)))`
-/

namespace A082062.P11570064326852931115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000027 (n + 1)) (A033879 (n + 1)))

end

end A082062.P11570064326852931115

namespace A082062

/-- `A006530(gcd(A000027(n+1), A033879(n+1)))` -/
def P11570064326852931115.Spec : Prop :=
  ∀ n, P11570064326852931115.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P1919211339062136809

`A006530(gcd(A007947(n+1), A054024(n+1)))`
-/

namespace A082062.P1919211339062136809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A007947 (n + 1)) (A054024 (n + 1)))

end

end A082062.P1919211339062136809

namespace A082062

/-- `A006530(gcd(A007947(n+1), A054024(n+1)))` -/
def P1919211339062136809.Spec : Prop :=
  ∀ n, P1919211339062136809.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P3459781990079234705

`A006530(gcd(A064987(n+1), A235799(n+1)))`
-/

namespace A082062.P3459781990079234705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A064987 (n + 1)) (A235799 (n + 1)))

end

end A082062.P3459781990079234705

namespace A082062

/-- `A006530(gcd(A064987(n+1), A235799(n+1)))` -/
def P3459781990079234705.Spec : Prop :=
  ∀ n, P3459781990079234705.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P2614213700647126088

`A006530(gcd(A324046(n+1), A324047(n+1)))`
-/

namespace A082062.P2614213700647126088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A324046 (n + 1)) (A324047 (n + 1)))

end

end A082062.P2614213700647126088

namespace A082062

/-- `A006530(gcd(A324046(n+1), A324047(n+1)))` -/
def P2614213700647126088.Spec : Prop :=
  ∀ n, P2614213700647126088.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P15983978766389044011

`A006530(A324544(A250245(n+1)))`
-/

namespace A082062.P15983978766389044011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A324544 (A250245 (n + 1)).toNat).toNat

end

end A082062.P15983978766389044011

namespace A082062

/-- `A006530(A324544(A250245(n+1)))` -/
def P15983978766389044011.Spec : Prop :=
  ∀ n, P15983978766389044011.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P13010167077630677471

`A082061(A009194(n+1)²)`
-/

namespace A082062.P13010167077630677471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A009194 (n + 1) ^ 2).toNat

end

end A082062.P13010167077630677471

namespace A082062

/-- `A082061(A009194(n+1)²)` -/
def P13010167077630677471.Spec : Prop :=
  ∀ n, P13010167077630677471.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P1309806296728787216

`A006530(A004736(A286591(n+1)))`
-/

namespace A082062.P1309806296728787216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004736 (A286591 (n + 1)).toNat).toNat

end

end A082062.P1309806296728787216

namespace A082062

/-- `A006530(A004736(A286591(n+1)))` -/
def P1309806296728787216.Spec : Prop :=
  ∀ n, P1309806296728787216.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P1785556993032834128

`A082061(A009194(n+1)*A009194(n+1))`
-/

namespace A082062.P1785556993032834128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A009194 (n + 1) * A009194 (n + 1)).toNat

end

end A082062.P1785556993032834128

namespace A082062

/-- `A082061(A009194(n+1)*A009194(n+1))` -/
def P1785556993032834128.Spec : Prop :=
  ∀ n, P1785556993032834128.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P10791859341366108309

`A006530(A324396(A005940(n+2)))`
-/

namespace A082062.P10791859341366108309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A324396 (A005940 (n + 2)).toNat).toNat

end

end A082062.P10791859341366108309

namespace A082062

/-- `A006530(A324396(A005940(n+2)))` -/
def P10791859341366108309.Spec : Prop :=
  ∀ n, P10791859341366108309.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P14917275192167134115

`A094701(A009194(n+1)²)`
-/

namespace A082062.P14917275192167134115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094701 (A009194 (n + 1) ^ 2).toNat

end

end A082062.P14917275192167134115

namespace A082062

/-- `A094701(A009194(n+1)²)` -/
def P14917275192167134115.Spec : Prop :=
  ∀ n, P14917275192167134115.a n = A082062 (n + 1)

end A082062

/-! ## A082062.P17671249724829866847

`A009194(n+1)²/A009195(A009194(n+1)²)`
-/

namespace A082062.P17671249724829866847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) ^ 2 : ℚ) / (A009195 (A009194 (n + 1) ^ 2).toNat : ℚ)

end

end A082062.P17671249724829866847

namespace A082062

/-- `A009194(n+1)²/A009195(A009194(n+1)²)` -/
def P17671249724829866847.Spec : Prop :=
  ∀ n, P17671249724829866847.a n = (A082062 (n + 1) : ℚ)

end A082062

/-! ## A082062.P13928433968059987695

`A050399(A009194(n+1)²)/A009194(n+1)²`
-/

namespace A082062.P13928433968059987695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (A009194 (n + 1) ^ 2).toNat : ℚ) / (A009194 (n + 1) ^ 2 : ℚ)

end

end A082062.P13928433968059987695

namespace A082062

/-- `A050399(A009194(n+1)²)/A009194(n+1)²` -/
def P13928433968059987695.Spec : Prop :=
  ∀ n, P13928433968059987695.a n = (A082062 (n + 1) : ℚ)

end A082062

/-!
# A082063: Greatest common prime divisor of n and sigma_2(n) = A001157(n), or 1 if the two are relatively prime.

The programs for A082063, the canonical program `A082063.P10120746227278277568` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082063 has offset 1).

The definition of A082063 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A179930, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082063.P10120746227278277568

`A006530(A179930(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082063

/-- `A006530(A179930(n+1))` -/
def P10120746227278277568.Spec : Prop :=
  ∀ n, P10120746227278277568.a n = A082063 (n + 1)

theorem P10120746227278277568.correct : P10120746227278277568.Spec := by
  intro n
  simp only [A082063, Nat.add_sub_cancel]

end A082063

/-! ## A082063.P5940156682614703344

`A006530(gcd(n+1, ∑{d}[n+1, #²]))`
-/

namespace A082063.P5940156682614703344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d ^ 2))

end

end A082063.P5940156682614703344

namespace A082063

/-- `A006530(gcd(n+1, ∑{d}[n+1, #²]))` -/
def P5940156682614703344.Spec : Prop :=
  ∀ n, P5940156682614703344.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P13156733141143968641

`A006530(gcd(n+1, A001157(n+1)))`
-/

namespace A082063.P13156733141143968641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (A001157 (n + 1)))

end

end A082063.P13156733141143968641

namespace A082063

/-- `A006530(gcd(n+1, A001157(n+1)))` -/
def P13156733141143968641.Spec : Prop :=
  ∀ n, P13156733141143968641.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P7991246116923692489

`A006530(gcd(-xor(n, -1), A067558(n+1)))`
-/

namespace A082063.P7991246116923692489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (-Int.xor (n : ℤ) (-1)) (A067558 (n + 1)))

end

end A082063.P7991246116923692489

namespace A082063

/-- `A006530(gcd(-xor(n, -1), A067558(n+1)))` -/
def P7991246116923692489.Spec : Prop :=
  ∀ n, P7991246116923692489.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P8280426178082443911

`A006530(gcd(A000027(n+1), A067558(n+1)))`
-/

namespace A082063.P8280426178082443911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000027 (n + 1)) (A067558 (n + 1)))

end

end A082063.P8280426178082443911

namespace A082063

/-- `A006530(gcd(A000027(n+1), A067558(n+1)))` -/
def P8280426178082443911.Spec : Prop :=
  ∀ n, P8280426178082443911.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P13182963834777543317

`A006530(gcd((n+1)², A303384(n+1)))`
-/

namespace A082063.P13182963834777543317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd ((n + 1) ^ 2 : ℤ) (A303384 (n + 1)))

end

end A082063.P13182963834777543317

namespace A082063

/-- `A006530(gcd((n+1)², A303384(n+1)))` -/
def P13182963834777543317.Spec : Prop :=
  ∀ n, P13182963834777543317.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P13505546780915758133

`A006530(A001157(n+1)/A017667(n+1))`
-/

namespace A082063.P13505546780915758133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A001157 (n + 1) : ℚ) / (A017667 (n + 1) : ℚ))).toNat

end

end A082063.P13505546780915758133

namespace A082063

/-- `A006530(A001157(n+1)/A017667(n+1))` -/
def P13505546780915758133.Spec : Prop :=
  ∀ n, P13505546780915758133.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P5170737803725672798

`A082061(A179930(n+1)²)`
-/

namespace A082063.P5170737803725672798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A179930 (n + 1) ^ 2).toNat

end

end A082063.P5170737803725672798

namespace A082063

/-- `A082061(A179930(n+1)²)` -/
def P5170737803725672798.Spec : Prop :=
  ∀ n, P5170737803725672798.a n = A082063 (n + 1)

end A082063

/-! ## A082063.P10532267789667828631

`A082061(A179930(n+1)*A179930(n+1))`
-/

namespace A082063.P10532267789667828631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A179930 (n + 1) * A179930 (n + 1)).toNat

end

end A082063.P10532267789667828631

namespace A082063

/-- `A082061(A179930(n+1)*A179930(n+1))` -/
def P10532267789667828631.Spec : Prop :=
  ∀ n, P10532267789667828631.a n = A082063 (n + 1)

end A082063

/-!
# A082064: Greatest common prime-divisor of phi(n) and sigma(n) = A000203(n); a(n)=1 if no common prime-divisor exists.

The programs for A082064, the canonical program `A082064.P2877609420070187158` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082064 has offset 1).

The definition of A082064 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082064.P2877609420070187158

`A006530(A009223(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082064

/-- `A006530(A009223(n+1))` -/
def P2877609420070187158.Spec : Prop :=
  ∀ n, P2877609420070187158.a n = A082064 (n + 1)

theorem P2877609420070187158.correct : P2877609420070187158.Spec := by
  intro n
  simp only [A082064, Nat.add_sub_cancel]

end A082064

/-! ## A082064.P15540414831519012311

`A006530(gcd(A000010(n+1), A000203(n+1)))`
-/

namespace A082064.P15540414831519012311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000010 (n + 1)) (A000203 (n + 1)))

end

end A082064.P15540414831519012311

namespace A082064

/-- `A006530(gcd(A000010(n+1), A000203(n+1)))` -/
def P15540414831519012311.Spec : Prop :=
  ∀ n, P15540414831519012311.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P3374202139344984404

`A002034(A082055(n+1))`
-/

namespace A082064.P3374202139344984404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A082055 (n + 1)).toNat

end

end A082064.P3374202139344984404

namespace A082064

/-- `A002034(A082055(n+1))` -/
def P3374202139344984404.Spec : Prop :=
  ∀ n, P3374202139344984404.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P8263879965117830729

`A006530(A082055(n+1))%A040756(n)`
-/

namespace A082064.P8263879965117830729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A082055 (n + 1)).toNat) (A040756 n)

end

end A082064.P8263879965117830729

namespace A082064

/-- `A006530(A082055(n+1))%A040756(n)` -/
def P8263879965117830729.Spec : Prop :=
  ∀ n, P8263879965117830729.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P3924817925234381112

`A006530(A066087(n+1)+A066086(n+1))`
-/

namespace A082064.P3924817925234381112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066087 (n + 1) + A066086 (n + 1)).toNat

end

end A082064.P3924817925234381112

namespace A082064

/-- `A006530(A066087(n+1)+A066086(n+1))` -/
def P3924817925234381112.Spec : Prop :=
  ∀ n, P3924817925234381112.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P15458572104218113568

`A006530(A000203(n+1)/A289336(n+1))`
-/

namespace A082064.P15458572104218113568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A289336 (n + 1) : ℚ))).toNat

end

end A082064.P15458572104218113568

namespace A082064

/-- `A006530(A000203(n+1)/A289336(n+1))` -/
def P15458572104218113568.Spec : Prop :=
  ∀ n, P15458572104218113568.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P1534695397727378540

`A006530(A082055(n+1)%A000601(n+1))`
-/

namespace A082064.P1534695397727378540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A082055 (n + 1)) (A000601 (n + 1))).toNat

end

end A082064.P1534695397727378540

namespace A082064

/-- `A006530(A082055(n+1)%A000601(n+1))` -/
def P1534695397727378540.Spec : Prop :=
  ∀ n, P1534695397727378540.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P3015846399742626348

`A006530(A082055(n+1)²)`
-/

namespace A082064.P3015846399742626348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082055 (n + 1) ^ 2).toNat

end

end A082064.P3015846399742626348

namespace A082064

/-- `A006530(A082055(n+1)²)` -/
def P3015846399742626348.Spec : Prop :=
  ∀ n, P3015846399742626348.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P2793543649663987676

`A082061(A082055(n+1)²)`
-/

namespace A082064.P2793543649663987676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A082055 (n + 1) ^ 2).toNat

end

end A082064.P2793543649663987676

namespace A082064

/-- `A082061(A082055(n+1)²)` -/
def P2793543649663987676.Spec : Prop :=
  ∀ n, P2793543649663987676.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P8603621259493702720

`A082061(A082055(n+1)^A082070(n+1))`
-/

namespace A082064.P8603621259493702720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (SequenceMachineLib.roundAway ((A082055 (n + 1) : ℚ) ^ (A082070 (n + 1) : ℤ))).toNat

end

end A082064.P8603621259493702720

namespace A082064

/-- `A082061(A082055(n+1)^A082070(n+1))` -/
def P8603621259493702720.Spec : Prop :=
  ∀ n, P8603621259493702720.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P10639647321386493772

`A082061(A009223(n+1)²)`
-/

namespace A082064.P10639647321386493772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A009223 (n + 1) ^ 2).toNat

end

end A082064.P10639647321386493772

namespace A082064

/-- `A082061(A009223(n+1)²)` -/
def P10639647321386493772.Spec : Prop :=
  ∀ n, P10639647321386493772.a n = A082064 (n + 1)

end A082064

/-! ## A082064.P16444013043236192604

`A082061(A009223(n+1)*A009223(n+1))`
-/

namespace A082064.P16444013043236192604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A009223 (n + 1) * A009223 (n + 1)).toNat

end

end A082064.P16444013043236192604

namespace A082064

/-- `A082061(A009223(n+1)*A009223(n+1))` -/
def P16444013043236192604.Spec : Prop :=
  ∀ n, P16444013043236192604.a n = A082064 (n + 1)

end A082064

/-!
# A082065: Greatest common prime-divisor of phi(n)=A000010(n) and sigma(2,n) = A001157(n); a(n) = 1 if no common prime-divisor exists.

The programs for A082065, the canonical program `A082065.P6560568919401751915` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082065 has offset 1).

The definition of A082065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082065.P11240319164682169117

`A006530(gcd(A000010(n+1), ∑{d}[n+1, #²]))`
-/

namespace A082065.P11240319164682169117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000010 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ))

end

end A082065.P11240319164682169117

namespace A082065

/-- `A006530(gcd(A000010(n+1), ∑{d}[n+1, #²]))` -/
def P11240319164682169117.Spec : Prop :=
  ∀ n, P11240319164682169117.a n = A082065 (n + 1)

end A082065

/-! ## A082065.P1130578076513623234

`A006530(gcd(A000010(n+1), A001157(n+1)))`
-/

namespace A082065.P1130578076513623234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000010 (n + 1)) (A001157 (n + 1)))

end

end A082065.P1130578076513623234

namespace A082065

/-- `A006530(gcd(A000010(n+1), A001157(n+1)))` -/
def P1130578076513623234.Spec : Prop :=
  ∀ n, P1130578076513623234.a n = A082065 (n + 1)

end A082065

/-! ## A082065.P3364137503355380409

`A006530(gcd(A002322(n+1), A080399(n+1)))`
-/

namespace A082065.P3364137503355380409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A002322 (n + 1)) (A080399 (n + 1)))

end

end A082065.P3364137503355380409

namespace A082065

/-- `A006530(gcd(A002322(n+1), A080399(n+1)))` -/
def P3364137503355380409.Spec : Prop :=
  ∀ n, P3364137503355380409.a n = A082065 (n + 1)

end A082065

/-! ## A082065.P13338970476918133907

`A006530(gcd(A011773(n+1), A072779(n+1)))`
-/

namespace A082065.P13338970476918133907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A011773 (n + 1)) (A072779 (n + 1)))

end

end A082065.P13338970476918133907

namespace A082065

/-- `A006530(gcd(A011773(n+1), A072779(n+1)))` -/
def P13338970476918133907.Spec : Prop :=
  ∀ n, P13338970476918133907.a n = A082065 (n + 1)

end A082065

/-! ## A082065.P6560568919401751915

`A006530(gcd(A001157(n+1)², A002246(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082065

/-- `A006530(gcd(A001157(n+1)², A002246(n+1)))` -/
def P6560568919401751915.Spec : Prop :=
  ∀ n, P6560568919401751915.a n = A082065 (n + 1)

theorem P6560568919401751915.correct : P6560568919401751915.Spec := by
  intro n
  simp only [A082065, Nat.add_sub_cancel]

end A082065

/-!
# A082066: Greatest common prime-divisor of sigma_1(n)=A000203(n) and sigma_2(n)=A001157(n); a(n)=1 if no common prime-divisor exists.

The programs for A082066, the canonical program `A082066.P17745168815098447101` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082066 has offset 1).

The definition of A082066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A179931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082066.P17745168815098447101

`A006530(A179931(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A082066

/-- `A006530(A179931(n+1))` -/
def P17745168815098447101.Spec : Prop :=
  ∀ n, P17745168815098447101.a n = A082066 (n + 1)

theorem P17745168815098447101.correct : P17745168815098447101.Spec := by
  intro n
  simp only [A082066, Nat.add_sub_cancel]

end A082066

/-! ## A082066.P2532771019315392762

`A006530(gcd(A000203(n+1), ∑{d}[n+1, #²]))`
-/

namespace A082066.P2532771019315392762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000203 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ))

end

end A082066.P2532771019315392762

namespace A082066

/-- `A006530(gcd(A000203(n+1), ∑{d}[n+1, #²]))` -/
def P2532771019315392762.Spec : Prop :=
  ∀ n, P2532771019315392762.a n = A082066 (n + 1)

end A082066

/-! ## A082066.P8165499544227024191

`A006530(A000203(n+1)/A158275(n+1))`
-/

namespace A082066.P8165499544227024191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ))).toNat

end

end A082066.P8165499544227024191

namespace A082066

/-- `A006530(A000203(n+1)/A158275(n+1))` -/
def P8165499544227024191.Spec : Prop :=
  ∀ n, P8165499544227024191.a n = A082066 (n + 1)

end A082066

/-! ## A082066.P13434897154635515757

`A006530(gcd(A000203(n+1), A001157(n+1)))`
-/

namespace A082066.P13434897154635515757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A000203 (n + 1)) (A001157 (n + 1)))

end

end A082066.P13434897154635515757

namespace A082066

/-- `A006530(gcd(A000203(n+1), A001157(n+1)))` -/
def P13434897154635515757.Spec : Prop :=
  ∀ n, P13434897154635515757.a n = A082066 (n + 1)

end A082066

/-! ## A082066.P629449610429245855

`A007947(A345941(A179931(n+1))²)`
-/

namespace A082066.P629449610429245855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A345941 (A179931 (n + 1)).toNat ^ 2).toNat

end

end A082066.P629449610429245855

namespace A082066

/-- `A007947(A345941(A179931(n+1))²)` -/
def P629449610429245855.Spec : Prop :=
  ∀ n, P629449610429245855.a n = A082066 (n + 1)

end A082066

/-! ## A082066.P17589319071274584723

`A082061(A179931(n+1)²)`
-/

namespace A082066.P17589319071274584723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A179931 (n + 1) ^ 2).toNat

end

end A082066.P17589319071274584723

namespace A082066

/-- `A082061(A179931(n+1)²)` -/
def P17589319071274584723.Spec : Prop :=
  ∀ n, P17589319071274584723.a n = A082066 (n + 1)

end A082066

/-! ## A082066.P15164951758828357040

`A082061(A179931(n+1)*A179931(n+1))`
-/

namespace A082066.P15164951758828357040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A179931 (n + 1) * A179931 (n + 1)).toNat

end

end A082066.P15164951758828357040

namespace A082066

/-- `A082061(A179931(n+1)*A179931(n+1))` -/
def P15164951758828357040.Spec : Prop :=
  ∀ n, P15164951758828357040.a n = A082066 (n + 1)

end A082066

/-!
# A082067: Smallest prime that divides n and phi(n)=A000010(n), or 1 if n and phi(n) are relatively prime.

The programs for A082067, there is no canonical definition to state claims against.
-/

/-! ## A082067.P12432554184594013342

`A020639(A009195(n+1))`
-/

namespace A082067.P12432554184594013342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A009195 (n + 1)).toNat

end

end A082067.P12432554184594013342

/-! ## A082067.P17230401811800132606

`A020639(gcd(A000010(n+1), n+1))`
-/

namespace A082067.P17230401811800132606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000010 (n + 1)) (n + 1 : ℤ))

end

end A082067.P17230401811800132606

/-! ## A082067.P2441832137931711744

`A020639(A072994(n+1))`
-/

namespace A082067.P2441832137931711744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072994 (n + 1)).toNat

end

end A082067.P2441832137931711744

/-! ## A082067.P768405800482638508

`A020639(A327979(n+1))`
-/

namespace A082067.P768405800482638508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A327979 (n + 1)).toNat

end

end A082067.P768405800482638508

/-! ## A082067.P5356364904566108487

`A020639(gcd(n+1, Δ[A005728(n)]))`
-/

namespace A082067.P5356364904566108487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A082067.P5356364904566108487

/-! ## A082067.P8070567530853566060

`A020639((n+1)/A109395(n+1))`
-/

namespace A082067.P8070567530853566060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A109395 (n + 1) : ℚ))).toNat

end

end A082067.P8070567530853566060

/-! ## A082067.P13554300195411803518

`A020639(gcd(∏{p}[n+1, #], A051953(n+1)))`
-/

namespace A082067.P13554300195411803518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A051953 (n + 1)))

end

end A082067.P13554300195411803518

/-! ## A082067.P15937091861460138795

`A020639(A002618(n+1)/A009262(n+1))`
-/

namespace A082067.P15937091861460138795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (A009262 (n + 1) : ℚ))).toNat

end

end A082067.P15937091861460138795

/-! ## A082067.P7430470528946539723

`A020639(gcd(A000027(n+1), A051953(n+1)))`
-/

namespace A082067.P7430470528946539723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000027 (n + 1)) (A051953 (n + 1)))

end

end A082067.P7430470528946539723

/-! ## A082067.P18098022624273415661

`A020639(gcd(A277127(n+1), A277169(n+1)))`
-/

namespace A082067.P18098022624273415661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A277127 (n + 1)) (A277169 (n + 1)))

end

end A082067.P18098022624273415661

/-! ## A082067.P1984835123298181292

`A074828(A072994(n+1)²)`
-/

namespace A082067.P1984835123298181292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A072994 (n + 1) ^ 2).toNat

end

end A082067.P1984835123298181292

/-! ## A082067.P6964303860993877467

`gcd(A072994(n+1), A141056(n²))`
-/

namespace A082067.P6964303860993877467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072994 (n + 1)) (A141056 (n ^ 2))

end

end A082067.P6964303860993877467

/-!
# A082068: Smallest common prime-divisor of n and sigma(n) = A000203(n); a(n)=1 if no common prime-divisor exists.

The programs for A082068, there is no canonical definition to state claims against.
-/

/-! ## A082068.P2092205859796172219

`A020639(A009194(n+1))`
-/

namespace A082068.P2092205859796172219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A009194 (n + 1)).toNat

end

end A082068.P2092205859796172219

/-! ## A082068.P18361957227046719179

`A020639(gcd(A000203(n+1), n+1))`
-/

namespace A082068.P18361957227046719179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000203 (n + 1)) (n + 1 : ℤ))

end

end A082068.P18361957227046719179

/-! ## A082068.P15873684544622282022

`A020639(gcd((n+1)², ∑{d}[n+1, #]))`
-/

namespace A082068.P15873684544622282022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd ((n + 1) ^ 2) (∑ d ∈ Nat.divisors (f1 n), d))

end

end A082068.P15873684544622282022

/-! ## A082068.P11858759315141193983

`A020639(A306682(n+1))`
-/

namespace A082068.P11858759315141193983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306682 (n + 1)).toNat

end

end A082068.P11858759315141193983

/-! ## A082068.P17104743266917488416

`A020639((n+1)/A017666(n+1))`
-/

namespace A082068.P17104743266917488416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A082068.P17104743266917488416

/-! ## A082068.P5995585543355756565

`A020639(gcd(A007947(n+1), A054024(n+1)))`
-/

namespace A082068.P5995585543355756565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A007947 (n + 1)) (A054024 (n + 1)))

end

end A082068.P5995585543355756565

/-! ## A082068.P9828510788584703408

`A020639(gcd(A000027(n+1), A235799(n+1)))`
-/

namespace A082068.P9828510788584703408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000027 (n + 1)) (A235799 (n + 1)))

end

end A082068.P9828510788584703408

/-! ## A082068.P2685184861532967261

`A020639(gcd(A324046(n+1), A324047(n+1)))`
-/

namespace A082068.P2685184861532967261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A324046 (n + 1)) (A324047 (n + 1)))

end

end A082068.P2685184861532967261

/-! ## A082068.P10687792907633867675

`A020639(gcd(1-A088580(n+1), A326142(n+1)))`
-/

namespace A082068.P10687792907633867675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (1 - A088580 (n + 1)) (A326142 (n + 1)))

end

end A082068.P10687792907633867675

/-! ## A082068.P1047473417969467219

`A020639(A324544(A250245(n+1)))`
-/

namespace A082068.P1047473417969467219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A324544 (A250245 (n + 1)).toNat).toNat

end

end A082068.P1047473417969467219

/-! ## A082068.P5654021436136009537

`A014673(2*A306682(n+1))`
-/

namespace A082068.P5654021436136009537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A306682 (n + 1)).toNat

end

end A082068.P5654021436136009537

/-! ## A082068.P9496638046911384127

`A020639(gcd(A076721(n+1), A076722(n+1)))`
-/

namespace A082068.P9496638046911384127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A076721 (n + 1)) (A076722 (n + 1)))

end

end A082068.P9496638046911384127

/-! ## A082068.P4443659193214953908

`A082067(A009194(n+1)²)`
-/

namespace A082068.P4443659193214953908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A009194 (n + 1) ^ 2).toNat

end

end A082068.P4443659193214953908

/-! ## A082068.P13224154546244835642

`A325965(A009194(n+1)²)`
-/

namespace A082068.P13224154546244835642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (A009194 (n + 1) ^ 2).toNat

end

end A082068.P13224154546244835642

/-! ## A082068.P8017851495009031476

`A020639(A004736(A286591(n+1)))`
-/

namespace A082068.P8017851495009031476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004736 (A286591 (n + 1)).toNat).toNat

end

end A082068.P8017851495009031476

/-! ## A082068.P16816541864788710067

`A082067(A009194(n+1)*A009194(n+1))`
-/

namespace A082068.P16816541864788710067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A009194 (n + 1) * A009194 (n + 1)).toNat

end

end A082068.P16816541864788710067

/-! ## A082068.P11873701068029933750

`A020639(A324396(A005940(n+2)))`
-/

namespace A082068.P11873701068029933750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A324396 (A005940 (n + 2)).toNat).toNat

end

end A082068.P11873701068029933750

/-! ## A082068.P771448109456902744

`A007913(A032742(A009194(n+1)²))`
-/

namespace A082068.P771448109456902744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A032742 (A009194 (n + 1) ^ 2).toNat).toNat

end

end A082068.P771448109456902744

/-!
# A082069: Smallest common prime-divisor of n and Sigma_2(n) = A001157(n); a(n) = 1 if no common prime-divisor exists.

The programs for A082069, there is no canonical definition to state claims against.
-/

/-! ## A082069.P6042209589393972508

`A020639(A179930(n+1))`
-/

namespace A082069.P6042209589393972508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179930 (n + 1)).toNat

end

end A082069.P6042209589393972508

/-! ## A082069.P7937673315622314201

`A020639(gcd(n+1, ∑{d}[n+1, #²]))`
-/

namespace A082069.P7937673315622314201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d ^ 2))

end

end A082069.P7937673315622314201

/-! ## A082069.P4759272713148171040

`A020639(gcd(n+1, A001157(n+1)))`
-/

namespace A082069.P4759272713148171040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 1 : ℤ) (A001157 (n + 1)))

end

end A082069.P4759272713148171040

/-! ## A082069.P9709164038490470871

`A020639(gcd(A000027(n+1), A189835(n+1)))`
-/

namespace A082069.P9709164038490470871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000027 (n + 1)) (A189835 (n + 1)))

end

end A082069.P9709164038490470871

/-! ## A082069.P4500577655247754991

`A020639((n+1)²/A017668(n+1))`
-/

namespace A082069.P4500577655247754991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A017668 (n + 1) : ℚ))).toNat

end

end A082069.P4500577655247754991

/-! ## A082069.P1956255566998365766

`A020639(A001157(n+1)/A017667(n+1))`
-/

namespace A082069.P1956255566998365766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A001157 (n + 1) : ℚ) / (A017667 (n + 1) : ℚ))).toNat

end

end A082069.P1956255566998365766

/-! ## A082069.P13172918028069758437

`A082067(A179930(n+1)²)`
-/

namespace A082069.P13172918028069758437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A179930 (n + 1) ^ 2).toNat

end

end A082069.P13172918028069758437

/-! ## A082069.P11313389835133015896

`A082067(A179930(n+1)*A179930(n+1))`
-/

namespace A082069.P11313389835133015896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A179930 (n + 1) * A179930 (n + 1)).toNat

end

end A082069.P11313389835133015896

/-!
# A082070: Smallest prime that divides phi(n) and sigma(n) = A000203(n), or 1 if phi(n) and sigma(n) are relatively prime.

The programs for A082070, there is no canonical definition to state claims against.
-/

/-! ## A082070.P9447209678855774745

`A020639(A009223(n+1))`
-/

namespace A082070.P9447209678855774745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A009223 (n + 1)).toNat

end

end A082070.P9447209678855774745

/-! ## A082070.P1146436152036746496

`A020639(gcd(A000010(n+1), A000203(n+1)))`
-/

namespace A082070.P1146436152036746496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000010 (n + 1)) (A000203 (n + 1)))

end

end A082070.P1146436152036746496

/-! ## A082070.P821529802129483598

`A020639(A082055(n+1))`
-/

namespace A082070.P821529802129483598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082055 (n + 1)).toNat

end

end A082070.P821529802129483598

/-! ## A082070.P996991838224037689

`A020639(gcd(∑{d}[n+1, #], A002322(n+1)))`
-/

namespace A082070.P996991838224037689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A002322 (n + 1)))

end

end A082070.P996991838224037689

/-! ## A082070.P15194259387116185179

`A020639(A062354(n+1)/A009286(n+1))`
-/

namespace A082070.P15194259387116185179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ))).toNat

end

end A082070.P15194259387116185179

/-! ## A082070.P16538358001028610817

`A020639(A000203(n+1)/A289336(n+1))`
-/

namespace A082070.P16538358001028610817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A289336 (n + 1) : ℚ))).toNat

end

end A082070.P16538358001028610817

/-! ## A082070.P12769762665419027524

`A020639(gcd(1-A088580(n+1), A051612(n+1)))`
-/

namespace A082070.P12769762665419027524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (1 - A088580 (n + 1)) (A051612 (n + 1)))

end

end A082070.P12769762665419027524

/-! ## A082070.P178193757693153144

`A082067(A082055(n+1)²)`
-/

namespace A082070.P178193757693153144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A082055 (n + 1) ^ 2).toNat

end

end A082070.P178193757693153144

/-! ## A082070.P3023724272925770051

`A082067(A009223(n+1)²)`
-/

namespace A082070.P3023724272925770051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A009223 (n + 1) ^ 2).toNat

end

end A082070.P3023724272925770051

/-! ## A082070.P10723089711837834008

`A082067(A009223(n+1)*A009223(n+1))`
-/

namespace A082070.P10723089711837834008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A009223 (n + 1) * A009223 (n + 1)).toNat

end

end A082070.P10723089711837834008

/-! ## A082070.P8046217493003184526

`and(A082055(n+1), A305880(n+1))`
-/

namespace A082070.P8046217493003184526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A305880 (n + 1))

end

end A082070.P8046217493003184526

/-! ## A082070.P17489633083742756109

`and(A082055(n+1), A239679(n))`
-/

namespace A082070.P17489633083742756109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A239679 n)

end

end A082070.P17489633083742756109

/-! ## A082070.P14880129521778596766

`and(A082055(n+1), A265717(n))`
-/

namespace A082070.P14880129521778596766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A265717 n)

end

end A082070.P14880129521778596766

/-! ## A082070.P15301569173687130774

`and(A082055(n+1), A113854(n+1))`
-/

namespace A082070.P15301569173687130774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A113854 (n + 1))

end

end A082070.P15301569173687130774

/-! ## A082070.P16578674377066175545

`and(A082055(n+1), A188161(n))`
-/

namespace A082070.P16578674377066175545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A188161 n)

end

end A082070.P16578674377066175545

/-! ## A082070.P3731666153116177932

`and(A082055(n+1), A267802(n))`
-/

namespace A082070.P3731666153116177932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A267802 n)

end

end A082070.P3731666153116177932

/-! ## A082070.P1791402523867434530

`and(A082055(n+1), A282137(n))`
-/

namespace A082070.P1791402523867434530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A282137 n)

end

end A082070.P1791402523867434530

/-! ## A082070.P11279884763891602042

`and(A082055(n+1), A321421(n))`
-/

namespace A082070.P11279884763891602042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A321421 n)

end

end A082070.P11279884763891602042

/-! ## A082070.P1387766416528508799

`and(A082055(n+1), A112627(n+1))`
-/

namespace A082070.P1387766416528508799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A112627 (n + 1))

end

end A082070.P1387766416528508799

/-! ## A082070.P1545198723222354248

`and(A082055(n+1), A191341(n+1))`
-/

namespace A082070.P1545198723222354248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082055 (n + 1)) (A191341 (n + 1))

end

end A082070.P1545198723222354248

/-!
# A082071: Smallest common prime-divisor of phi(n) = A000010(n) and sigma_2(n) = A001157(n); a(n)=1 if no common prime-divisor exists.

The programs for A082071, there is no canonical definition to state claims against.
-/

/-! ## A082071.P4996778915300491735

`A020639(gcd(A000010(n+1), A001157(n+1)))`
-/

namespace A082071.P4996778915300491735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000010 (n + 1)) (A001157 (n + 1)))

end

end A082071.P4996778915300491735

/-! ## A082071.P15289217395038725037

`A020639(gcd(A001157(n+1)², A002618(n+1)))`
-/

namespace A082071.P15289217395038725037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A001157 (n + 1) ^ 2) (A002618 (n + 1)))

end

end A082071.P15289217395038725037

/-! ## A082071.P8857479584980422993

`A082067(A082065(n+1)²²*A082070(n+1))`
-/

namespace A082071.P8857479584980422993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 ((A082065 (n + 1) ^ 2) ^ 2 * A082070 (n + 1)).toNat

end

end A082071.P8857479584980422993

/-! ## A082071.P824891483052855901

`A082067(A082065(n+1)²²*A082072(n+1))`
-/

namespace A082071.P824891483052855901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 ((A082065 (n + 1) ^ 2) ^ 2 * A082072 (n + 1)).toNat

end

end A082071.P824891483052855901

/-! ## A082071.P3299899578946635263

`A082069(A127699(n+1))`
-/

namespace A082071.P3299899578946635263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082069 (A127699 (n + 1)).toNat

end

end A082071.P3299899578946635263

/-!
# A082072: Smallest prime that divides sigma(n) = A000203(n) and sigma_2(n) = A001157(n), or 1 if sigma(n) and sigma_2(n) are relatively prime.

The programs for A082072, there is no canonical definition to state claims against.
-/

/-! ## A082072.P15161086241456968703

`A020639(A179931(n+1))`
-/

namespace A082072.P15161086241456968703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179931 (n + 1)).toNat

end

end A082072.P15161086241456968703

/-! ## A082072.P5598820298180008688

`A020639(gcd(A000203(n+1), ∑{d}[n+1, #²]))`
-/

namespace A082072.P5598820298180008688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000203 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ))

end

end A082072.P5598820298180008688

/-! ## A082072.P5332398912430990037

`A020639(A000203(n+1)/A158275(n+1))`
-/

namespace A082072.P5332398912430990037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ))).toNat

end

end A082072.P5332398912430990037

/-! ## A082072.P12572101616252227327

`A020639(gcd(A000203(n+1), A001157(n+1)))`
-/

namespace A082072.P12572101616252227327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000203 (n + 1)) (A001157 (n + 1)))

end

end A082072.P12572101616252227327

/-! ## A082072.P79091634458782617

`A014673(2*A179931(n+1))`
-/

namespace A082072.P79091634458782617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A179931 (n + 1)).toNat

end

end A082072.P79091634458782617

/-! ## A082072.P2099089469655126428

`A082067(A179931(n+1)²)`
-/

namespace A082072.P2099089469655126428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A179931 (n + 1) ^ 2).toNat

end

end A082072.P2099089469655126428

/-! ## A082072.P7660955610783017734

`A082067(A179931(n+1)*A179931(n+1))`
-/

namespace A082072.P7660955610783017734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A179931 (n + 1) * A179931 (n + 1)).toNat

end

end A082072.P7660955610783017734

/-! ## A082072.P14642287455455796556

`A014673(A179931(n+1)²)`
-/

namespace A082072.P14642287455455796556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A179931 (n + 1) ^ 2).toNat

end

end A082072.P14642287455455796556

/-!
# A082073: First difference set of primes with 4k+1 form: A002144.

The programs for A082073, the canonical program `A082073.P5879360609513135698` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082073 has offset 1).

The definition of A082073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082073.P5879360609513135698

`A002144(n+2)-A002144(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082073

/-- `A002144(n+2)-A002144(n+1)` -/
def P5879360609513135698.Spec : Prop :=
  ∀ n, P5879360609513135698.a n = A082073 (n + 1)

theorem P5879360609513135698.correct : P5879360609513135698.Spec := by
  intro n
  simp only [A082073, Nat.add_sub_cancel]

end A082073

/-! ## A082073.P13423722651094982914

`4*A082074(n+1)`
-/

namespace A082073.P13423722651094982914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082074 (n + 1)

end

end A082073.P13423722651094982914

namespace A082073

/-- `4*A082074(n+1)` -/
def P13423722651094982914.Spec : Prop :=
  ∀ n, P13423722651094982914.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P3243844968929261949

`A008574(A082074(n+1))`
-/

namespace A082073.P3243844968929261949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A082074 (n + 1)).toNat

end

end A082073.P3243844968929261949

namespace A082073

/-- `A008574(A082074(n+1))` -/
def P3243844968929261949.Spec : Prop :=
  ∀ n, P3243844968929261949.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P7285669828213069638

`Δ[p?[4*n+1]]`
-/

namespace A082073.P7285669828213069638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082073.P7285669828213069638

namespace A082073

/-- `Δ[p?[4*n+1]]` -/
def P7285669828213069638.Spec : Prop :=
  ∀ n, P7285669828213069638.a n = A082073 (n + 1)

theorem P7285669828213069638.correct : P7285669828213069638.Spec := by
  intro n
  simp only [A082073, Nat.add_sub_cancel, A082073.P7285669828213069638.f2, A082073.P7285669828213069638.f1, A082073.P7285669828213069638.a, A082073.P5879360609513135698.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082073

/-! ## A082073.P3392792314101302699

`Δ[abs(p?[4*n-7]-1)]`
-/

namespace A082073.P3392792314101302699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P3392792314101302699

namespace A082073

/-- `Δ[abs(p?[4*n-7]-1)]` -/
def P3392792314101302699.Spec : Prop :=
  ∀ n, P3392792314101302699.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P2242508133301647450

`abs(Δ[p?[a(n-1)+4]])` with `a(0)=1`
-/

namespace A082073.P2242508133301647450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A082073.P2242508133301647450

namespace A082073

/-- `abs(Δ[p?[a(n-1)+4]])` -/
def P2242508133301647450.Spec : Prop :=
  ∀ n, P2242508133301647450.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P211655137675144371

`Δ[3*p?[or(1, 4*n)]]/3`
-/

namespace A082073.P211655137675144371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3

end

end A082073.P211655137675144371

namespace A082073

/-- `Δ[3*p?[or(1, 4*n)]]/3` -/
def P211655137675144371.Spec : Prop :=
  ∀ n, P211655137675144371.a n = (A082073 (n + 1) : ℚ)

end A082073

/-! ## A082073.P10480340867475615140

`Δ[A002144(n+1)]`
-/

namespace A082073.P10480340867475615140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P10480340867475615140

namespace A082073

/-- `Δ[A002144(n+1)]` -/
def P10480340867475615140.Spec : Prop :=
  ∀ n, P10480340867475615140.a n = A082073 (n + 1)

theorem P10480340867475615140.correct : P10480340867475615140.Spec := by
  intro n
  simp only [A082073, Nat.add_sub_cancel, A082073.P10480340867475615140.f1, A082073.P10480340867475615140.a, A082073.P5879360609513135698.a, SequenceMachineLib.memo_apply]

end A082073

/-! ## A082073.P7010249357694902705

`Δ[A152680(n+1)]`
-/

namespace A082073.P7010249357694902705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P7010249357694902705

namespace A082073

/-- `Δ[A152680(n+1)]` -/
def P7010249357694902705.Spec : Prop :=
  ∀ n, P7010249357694902705.a n = A082073 (n + 1)

theorem P7010249357694902705.correct : P7010249357694902705.Spec := by
  intro n
  simp only [A082073, Nat.add_sub_cancel, A082073.P7010249357694902705.f1, A082073.P7010249357694902705.a, A082073.P5879360609513135698.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A152680, A152680.P7400182187401258968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082073

/-! ## A082073.P292130574852643268

`Δ[A055131(n)/3]`
-/

namespace A082073.P292130574852643268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P292130574852643268

namespace A082073

/-- `Δ[A055131(n)/3]` -/
def P292130574852643268.Spec : Prop :=
  ∀ n, P292130574852643268.a n = (A082073 (n + 1) : ℚ)

theorem P292130574852643268.correct : P292130574852643268.Spec := by
  intro n
  simp only [A082073, Nat.add_sub_cancel, A082073.P292130574852643268.f1, A082073.P292130574852643268.a, A082073.P5879360609513135698.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082073

/-! ## A082073.P5050246018308410854

`Δ[sqrt(A080109(n+1))]`
-/

namespace A082073.P5050246018308410854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P5050246018308410854

namespace A082073

/-- `Δ[sqrt(A080109(n+1))]` -/
def P5050246018308410854.Spec : Prop :=
  ∀ n, P5050246018308410854.a n = (A082073 (n + 1) : ℝ)

end A082073

/-! ## A082073.P9822554006539728787

`Δ[2*A089255(n+1)]`
-/

namespace A082073.P9822554006539728787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P9822554006539728787

namespace A082073

/-- `Δ[2*A089255(n+1)]` -/
def P9822554006539728787.Spec : Prop :=
  ∀ n, P9822554006539728787.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P11686607381055197591

`Δ[2*A119681(n+1)]`
-/

namespace A082073.P11686607381055197591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P11686607381055197591

namespace A082073

/-- `Δ[2*A119681(n+1)]` -/
def P11686607381055197591.Spec : Prop :=
  ∀ n, P11686607381055197591.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P6786728507060294781

`Δ[4*A005098(n+1)]`
-/

namespace A082073.P6786728507060294781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P6786728507060294781

namespace A082073

/-- `Δ[4*A005098(n+1)]` -/
def P6786728507060294781.Spec : Prop :=
  ∀ n, P6786728507060294781.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P14130452921630535505

`Δ[4*A111215(n+1)]`
-/

namespace A082073.P14130452921630535505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P14130452921630535505

namespace A082073

/-- `Δ[4*A111215(n+1)]` -/
def P14130452921630535505.Spec : Prop :=
  ∀ n, P14130452921630535505.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P17406302031054673351

`A059558(Δ[A005098(n+1)])`
-/

namespace A082073.P17406302031054673351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (f1 (n + 1) - f1 n).toNat

end

end A082073.P17406302031054673351

namespace A082073

/-- `A059558(Δ[A005098(n+1)])` -/
def P17406302031054673351.Spec : Prop :=
  ∀ n, P17406302031054673351.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P569782302331861635

`A152680(n+2)-A152680(n+1)`
-/

namespace A082073.P569782302331861635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 2) - A152680 (n + 1)

end

end A082073.P569782302331861635

namespace A082073

/-- `A152680(n+2)-A152680(n+1)` -/
def P569782302331861635.Spec : Prop :=
  ∀ n, P569782302331861635.a n = A082073 (n + 1)

theorem P569782302331861635.correct : P569782302331861635.Spec := by
  intro n
  simp only [A082073, Nat.add_sub_cancel, A082073.P569782302331861635.a, A082073.P5879360609513135698.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A152680, A152680.P7400182187401258968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082073

/-! ## A082073.P1578944549527428267

`p?[A008846(n+2)]-A002313(n+2)`
-/

namespace A082073.P1578944549527428267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002313 (n + 2)

end

end A082073.P1578944549527428267

namespace A082073

/-- `p?[A008846(n+2)]-A002313(n+2)` -/
def P1578944549527428267.Spec : Prop :=
  ∀ n, P1578944549527428267.a n = A082073 (n + 1)

end A082073

/-! ## A082073.P17074776238826800996

`(A048630(n+2)-A048628(n+1))/A002145(n+2)`
-/

namespace A082073.P17074776238826800996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048630 (n + 2) - A048628 (n + 1) : ℚ) / (A002145 (n + 2) : ℚ)

end

end A082073.P17074776238826800996

namespace A082073

/-- `(A048630(n+2)-A048628(n+1))/A002145(n+2)` -/
def P17074776238826800996.Spec : Prop :=
  ∀ n, P17074776238826800996.a n = (A082073 (n + 1) : ℚ)

end A082073

/-! ## A082073.P5992524670310523291

`Δ[A002313(n+2)]`
-/

namespace A082073.P5992524670310523291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082073.P5992524670310523291

namespace A082073

/-- `Δ[A002313(n+2)]` -/
def P5992524670310523291.Spec : Prop :=
  ∀ n, P5992524670310523291.a n = A082073 (n + 1)

end A082073

/-!
# A082074: One quarter of first differences of primes of the form 4*k+1 (A002144).

The programs for A082074, the canonical program `A082074.P1610218011491718914` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082074 has offset 1).

The definition of A082074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082074.P1610218011491718914

`(A002144(n+2)-A002144(n+1))/4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082074

/-- `(A002144(n+2)-A002144(n+1))/4` -/
def P1610218011491718914.Spec : Prop :=
  ∀ n, P1610218011491718914.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P4123391024338054994

`A082073(n+1)/4`
-/

namespace A082074.P4123391024338054994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082073 (n + 1) : ℚ) / 4

end

end A082074.P4123391024338054994

namespace A082074

/-- `A082073(n+1)/4` -/
def P4123391024338054994.Spec : Prop :=
  ∀ n, P4123391024338054994.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P17397736678896590143

`A002265(A082073(n+1))`
-/

namespace A082074.P17397736678896590143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A082073 (n + 1)).toNat

end

end A082074.P17397736678896590143

namespace A082074

/-- `A002265(A082073(n+1))` -/
def P17397736678896590143.Spec : Prop :=
  ∀ n, P17397736678896590143.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P16770388177689490097

`A296030(C(A082073(n+1), 2))`
-/

namespace A082074.P16770388177689490097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (Nat.choose (A082073 (n + 1)).toNat 2)

end

end A082074.P16770388177689490097

namespace A082074

/-- `A296030(C(A082073(n+1), 2))` -/
def P16770388177689490097.Spec : Prop :=
  ∀ n, P16770388177689490097.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P15664820438288869508

`A111199(n+1)+2-A005098(n+1)`
-/

namespace A082074.P15664820438288869508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1) + (2 - A005098 (n + 1))

end

end A082074.P15664820438288869508

namespace A082074

/-- `A111199(n+1)+2-A005098(n+1)` -/
def P15664820438288869508.Spec : Prop :=
  ∀ n, P15664820438288869508.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P8796901974820525727

`Δ[p?[4*n+1]]/4`
-/

namespace A082074.P8796901974820525727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 4

end

end A082074.P8796901974820525727

namespace A082074

/-- `Δ[p?[4*n+1]]/4` -/
def P8796901974820525727.Spec : Prop :=
  ∀ n, P8796901974820525727.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P8510369299271448426

`Δ[A005098(n+1)]`
-/

namespace A082074.P8510369299271448426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P8510369299271448426

namespace A082074

/-- `Δ[A005098(n+1)]` -/
def P8510369299271448426.Spec : Prop :=
  ∀ n, P8510369299271448426.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P11801875700591639982

`Δ[A111215(n+1)]`
-/

namespace A082074.P11801875700591639982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P11801875700591639982

namespace A082074

/-- `Δ[A111215(n+1)]` -/
def P11801875700591639982.Spec : Prop :=
  ∀ n, P11801875700591639982.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P4891907363535592880

`Δ[A055131(n)/12]`
-/

namespace A082074.P4891907363535592880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P4891907363535592880

namespace A082074

/-- `Δ[A055131(n)/12]` -/
def P4891907363535592880.Spec : Prop :=
  ∀ n, P4891907363535592880.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P961270433009986215

`Δ[A089255(n+1)/2]`
-/

namespace A082074.P961270433009986215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089255 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P961270433009986215

namespace A082074

/-- `Δ[A089255(n+1)/2]` -/
def P961270433009986215.Spec : Prop :=
  ∀ n, P961270433009986215.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P1455628308275240289

`Δ[A119681(n+1)/2]`
-/

namespace A082074.P1455628308275240289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119681 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P1455628308275240289

namespace A082074

/-- `Δ[A119681(n+1)/2]` -/
def P1455628308275240289.Spec : Prop :=
  ∀ n, P1455628308275240289.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P15056016698052795033

`Δ[A002144(n+1)/4]`
-/

namespace A082074.P15056016698052795033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P15056016698052795033

namespace A082074

/-- `Δ[A002144(n+1)/4]` -/
def P15056016698052795033.Spec : Prop :=
  ∀ n, P15056016698052795033.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P705933000909353198

`Δ[A152680(n+1)/4]`
-/

namespace A082074.P705933000909353198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P705933000909353198

namespace A082074

/-- `Δ[A152680(n+1)/4]` -/
def P705933000909353198.Spec : Prop :=
  ∀ n, P705933000909353198.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P6531332568703228435

`A002265(Δ[A002144(n+1)])`
-/

namespace A082074.P6531332568703228435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A082074.P6531332568703228435

namespace A082074

/-- `A002265(Δ[A002144(n+1)])` -/
def P6531332568703228435.Spec : Prop :=
  ∀ n, P6531332568703228435.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P10708715479283625883

`A005098(n+2)-A005098(n+1)`
-/

namespace A082074.P10708715479283625883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 2) - A005098 (n + 1)

end

end A082074.P10708715479283625883

namespace A082074

/-- `A005098(n+2)-A005098(n+1)` -/
def P10708715479283625883.Spec : Prop :=
  ∀ n, P10708715479283625883.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P16922108028134822875

`A111215(n+2)-A111215(n+1)`
-/

namespace A082074.P16922108028134822875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 2) - A111215 (n + 1)

end

end A082074.P16922108028134822875

namespace A082074

/-- `A111215(n+2)-A111215(n+1)` -/
def P16922108028134822875.Spec : Prop :=
  ∀ n, P16922108028134822875.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P10729845622060965488

`Δ[A002313(n+2)/4]`
-/

namespace A082074.P10729845622060965488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002313 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P10729845622060965488

namespace A082074

/-- `Δ[A002313(n+2)/4]` -/
def P10729845622060965488.Spec : Prop :=
  ∀ n, P10729845622060965488.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P13611707295868565084

`Δ[A280084(n+2)/4]`
-/

namespace A082074.P13611707295868565084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280084 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P13611707295868565084

namespace A082074

/-- `Δ[A280084(n+2)/4]` -/
def P13611707295868565084.Spec : Prop :=
  ∀ n, P13611707295868565084.a n = (A082074 (n + 1) : ℚ)

end A082074

/-! ## A082074.P6999023553366259612

`A002265(Δ[A002313(n+2)])`
-/

namespace A082074.P6999023553366259612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A082074.P6999023553366259612

namespace A082074

/-- `A002265(Δ[A002313(n+2)])` -/
def P6999023553366259612.Spec : Prop :=
  ∀ n, P6999023553366259612.a n = A082074 (n + 1)

end A082074

/-! ## A082074.P11529104905107905730

`Δ[A075518(A080147(n+1))]`
-/

namespace A082074.P11529104905107905730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082074.P11529104905107905730

namespace A082074

/-- `Δ[A075518(A080147(n+1))]` -/
def P11529104905107905730.Spec : Prop :=
  ∀ n, P11529104905107905730.a n = A082074 (n + 1)

end A082074

/-!
# A082075: First differences of primes of the form 4*k+3 (A002145).

The programs for A082075, the canonical program `A082075.P3357822425675514285` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082075 has offset 1).

The definition of A082075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082075.P3357822425675514285

`A002145(n+2)-A002145(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082075

/-- `A002145(n+2)-A002145(n+1)` -/
def P3357822425675514285.Spec : Prop :=
  ∀ n, P3357822425675514285.a n = A082075 (n + 1)

theorem P3357822425675514285.correct : P3357822425675514285.Spec := by
  intro n
  simp only [A082075, Nat.add_sub_cancel]

end A082075

/-! ## A082075.P10503555614906036608

`4*A082076(n+1)`
-/

namespace A082075.P10503555614906036608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082076 (n + 1)

end

end A082075.P10503555614906036608

namespace A082075

/-- `4*A082076(n+1)` -/
def P10503555614906036608.Spec : Prop :=
  ∀ n, P10503555614906036608.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P6823226522959692131

`A008574(A082076(n+1))`
-/

namespace A082075.P6823226522959692131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A082076 (n + 1)).toNat

end

end A082075.P6823226522959692131

namespace A082075

/-- `A008574(A082076(n+1))` -/
def P6823226522959692131.Spec : Prop :=
  ∀ n, P6823226522959692131.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P14032230095625004954

`(A048628(n+1)-A048630(n+1))/A002144(n+1)`
-/

namespace A082075.P14032230095625004954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048628 (n + 1) - A048630 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A082075.P14032230095625004954

namespace A082075

/-- `(A048628(n+1)-A048630(n+1))/A002144(n+1)` -/
def P14032230095625004954.Spec : Prop :=
  ∀ n, P14032230095625004954.a n = (A082075 (n + 1) : ℚ)

end A082075

/-! ## A082075.P8381484821374171074

`Δ[p?[4*n-1]]`
-/

namespace A082075.P8381484821374171074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P8381484821374171074

namespace A082075

/-- `Δ[p?[4*n-1]]` -/
def P8381484821374171074.Spec : Prop :=
  ∀ n, P8381484821374171074.a n = A082075 (n + 1)

theorem P8381484821374171074.correct : P8381484821374171074.Spec := by
  intro n
  simp only [A082075, Nat.add_sub_cancel, A082075.P8381484821374171074.f2, A082075.P8381484821374171074.f1, A082075.P8381484821374171074.a, A082075.P3357822425675514285.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082075

/-! ## A082075.P17643375036484328872

`Δ[A002145(n+1)]`
-/

namespace A082075.P17643375036484328872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P17643375036484328872

namespace A082075

/-- `Δ[A002145(n+1)]` -/
def P17643375036484328872.Spec : Prop :=
  ∀ n, P17643375036484328872.a n = A082075 (n + 1)

theorem P17643375036484328872.correct : P17643375036484328872.Spec := by
  intro n
  simp only [A082075, Nat.add_sub_cancel, A082075.P17643375036484328872.f1, A082075.P17643375036484328872.a, A082075.P3357822425675514285.a, SequenceMachineLib.memo_apply]

end A082075

/-! ## A082075.P6800035950478295754

`Δ[A089217(n+1)]`
-/

namespace A082075.P6800035950478295754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P6800035950478295754

namespace A082075

/-- `Δ[A089217(n+1)]` -/
def P6800035950478295754.Spec : Prop :=
  ∀ n, P6800035950478295754.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P7782724761606655182

`Δ[A090658(n+1)]`
-/

namespace A082075.P7782724761606655182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P7782724761606655182

namespace A082075

/-- `Δ[A090658(n+1)]` -/
def P7782724761606655182.Spec : Prop :=
  ∀ n, P7782724761606655182.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P17514551123023835370

`Δ[A339900(Δ[n²])]`
-/

namespace A082075.P17514551123023835370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P17514551123023835370

namespace A082075

/-- `Δ[A339900(Δ[n²])]` -/
def P17514551123023835370.Spec : Prop :=
  ∀ n, P17514551123023835370.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P16875610358960362585

`Δ[sqrt(A087691(n+1))]`
-/

namespace A082075.P16875610358960362585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087691 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P16875610358960362585

namespace A082075

/-- `Δ[sqrt(A087691(n+1))]` -/
def P16875610358960362585.Spec : Prop :=
  ∀ n, P16875610358960362585.a n = (A082075 (n + 1) : ℝ)

end A082075

/-! ## A082075.P13687272724110848445

`Δ[2*A087915(n+1)]`
-/

namespace A082075.P13687272724110848445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P13687272724110848445

namespace A082075

/-- `Δ[2*A087915(n+1)]` -/
def P13687272724110848445.Spec : Prop :=
  ∀ n, P13687272724110848445.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P5619362637782129225

`Δ[2*A089193(n+1)]`
-/

namespace A082075.P5619362637782129225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P5619362637782129225

namespace A082075

/-- `Δ[2*A089193(n+1)]` -/
def P5619362637782129225.Spec : Prop :=
  ∀ n, P5619362637782129225.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P15492820119818427243

`Δ[2*A089257(n+1)]`
-/

namespace A082075.P15492820119818427243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P15492820119818427243

namespace A082075

/-- `Δ[2*A089257(n+1)]` -/
def P15492820119818427243.Spec : Prop :=
  ∀ n, P15492820119818427243.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P12960317504345094178

`Δ[2*A090670(n+1)]`
-/

namespace A082075.P12960317504345094178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P12960317504345094178

namespace A082075

/-- `Δ[2*A090670(n+1)]` -/
def P12960317504345094178.Spec : Prop :=
  ∀ n, P12960317504345094178.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P12457939893912742856

`Δ[2*A104635(n+1)]`
-/

namespace A082075.P12457939893912742856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P12457939893912742856

namespace A082075

/-- `Δ[2*A104635(n+1)]` -/
def P12457939893912742856.Spec : Prop :=
  ∀ n, P12457939893912742856.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P13242297236667008110

`Δ[4*A005099(n+1)]`
-/

namespace A082075.P13242297236667008110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P13242297236667008110

namespace A082075

/-- `Δ[4*A005099(n+1)]` -/
def P13242297236667008110.Spec : Prop :=
  ∀ n, P13242297236667008110.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P12189679290804934844

`Δ[4*A089986(n+1)]`
-/

namespace A082075.P12189679290804934844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P12189679290804934844

namespace A082075

/-- `Δ[4*A089986(n+1)]` -/
def P12189679290804934844.Spec : Prop :=
  ∀ n, P12189679290804934844.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P16404905439010314297

`Δ[4*A095278(n+1)]`
-/

namespace A082075.P16404905439010314297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P16404905439010314297

namespace A082075

/-- `Δ[4*A095278(n+1)]` -/
def P16404905439010314297.Spec : Prop :=
  ∀ n, P16404905439010314297.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P1509597820181990734

`Δ[4*A156287(n+1)]`
-/

namespace A082075.P1509597820181990734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A156287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082075.P1509597820181990734

namespace A082075

/-- `Δ[4*A156287(n+1)]` -/
def P1509597820181990734.Spec : Prop :=
  ∀ n, P1509597820181990734.a n = A082075 (n + 1)

end A082075

/-! ## A082075.P8073752875569750508

`A042948(Δ[A090670(n+1)])`
-/

namespace A082075.P8073752875569750508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (f1 (n + 1) - f1 n).toNat

end

end A082075.P8073752875569750508

namespace A082075

/-- `A042948(Δ[A090670(n+1)])` -/
def P8073752875569750508.Spec : Prop :=
  ∀ n, P8073752875569750508.a n = A082075 (n + 1)

end A082075

/-!
# A082076: First differences of primes of the form 4*k+3 (A002145), divided by 4.

The programs for A082076, the canonical program `A082076.P46094791616447460` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082076 has offset 1).

The definition of A082076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082076.P46094791616447460

`(A002145(n+2)-A002145(n+1))/4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082076

/-- `(A002145(n+2)-A002145(n+1))/4` -/
def P46094791616447460.Spec : Prop :=
  ∀ n, P46094791616447460.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P7885284445765850973

`A082075(n+1)/4`
-/

namespace A082076.P7885284445765850973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082075 (n + 1) : ℚ) / 4

end

end A082076.P7885284445765850973

namespace A082076

/-- `A082075(n+1)/4` -/
def P7885284445765850973.Spec : Prop :=
  ∀ n, P7885284445765850973.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P14725218971902961279

`A002265(A082075(n+1))`
-/

namespace A082076.P14725218971902961279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A082075 (n + 1)).toNat

end

end A082076.P14725218971902961279

namespace A082076

/-- `A002265(A082075(n+1))` -/
def P14725218971902961279.Spec : Prop :=
  ∀ n, P14725218971902961279.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P7217580879660715149

`A008621(A082075(n+1)-1)`
-/

namespace A082076.P7217580879660715149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A082075 (n + 1) - 1).toNat

end

end A082076.P7217580879660715149

namespace A082076

/-- `A008621(A082075(n+1)-1)` -/
def P7217580879660715149.Spec : Prop :=
  ∀ n, P7217580879660715149.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P6972071761005452811

`A296030(C(A082075(n+1), 2))`
-/

namespace A082076.P6972071761005452811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (Nat.choose (A082075 (n + 1)).toNat 2)

end

end A082076.P6972071761005452811

namespace A082076

/-- `A296030(C(A082075(n+1), 2))` -/
def P6972071761005452811.Spec : Prop :=
  ∀ n, P6972071761005452811.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P7841875774241282095

`Δ[p?[4*n-1]/4]`
-/

namespace A082076.P7841875774241282095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P7841875774241282095

namespace A082076

/-- `Δ[p?[4*n-1]/4]` -/
def P7841875774241282095.Spec : Prop :=
  ∀ n, P7841875774241282095.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P8110339716713721985

`Δ[A005099(n+1)]`
-/

namespace A082076.P8110339716713721985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P8110339716713721985

namespace A082076

/-- `Δ[A005099(n+1)]` -/
def P8110339716713721985.Spec : Prop :=
  ∀ n, P8110339716713721985.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P10775444997388400594

`Δ[A089986(n+1)]`
-/

namespace A082076.P10775444997388400594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P10775444997388400594

namespace A082076

/-- `Δ[A089986(n+1)]` -/
def P10775444997388400594.Spec : Prop :=
  ∀ n, P10775444997388400594.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P11692091318372010753

`Δ[A095278(n+1)]`
-/

namespace A082076.P11692091318372010753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P11692091318372010753

namespace A082076

/-- `Δ[A095278(n+1)]` -/
def P11692091318372010753.Spec : Prop :=
  ∀ n, P11692091318372010753.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P8936459785314532358

`Δ[A156287(n+1)]`
-/

namespace A082076.P8936459785314532358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P8936459785314532358

namespace A082076

/-- `Δ[A156287(n+1)]` -/
def P8936459785314532358.Spec : Prop :=
  ∀ n, P8936459785314532358.a n = A082076 (n + 1)

end A082076

/-! ## A082076.P6145057656434582434

`Δ[A087915(n+1)/2]`
-/

namespace A082076.P6145057656434582434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087915 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P6145057656434582434

namespace A082076

/-- `Δ[A087915(n+1)/2]` -/
def P6145057656434582434.Spec : Prop :=
  ∀ n, P6145057656434582434.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P12478217743182884159

`Δ[A089193(n+1)/2]`
-/

namespace A082076.P12478217743182884159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089193 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P12478217743182884159

namespace A082076

/-- `Δ[A089193(n+1)/2]` -/
def P12478217743182884159.Spec : Prop :=
  ∀ n, P12478217743182884159.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P9964635613812099155

`Δ[A089257(n+1)/2]`
-/

namespace A082076.P9964635613812099155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089257 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P9964635613812099155

namespace A082076

/-- `Δ[A089257(n+1)/2]` -/
def P9964635613812099155.Spec : Prop :=
  ∀ n, P9964635613812099155.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P6912216444090391225

`Δ[A090670(n+1)/2]`
-/

namespace A082076.P6912216444090391225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090670 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P6912216444090391225

namespace A082076

/-- `Δ[A090670(n+1)/2]` -/
def P6912216444090391225.Spec : Prop :=
  ∀ n, P6912216444090391225.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P6697091862657012956

`Δ[A104635(n+1)/2]`
-/

namespace A082076.P6697091862657012956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P6697091862657012956

namespace A082076

/-- `Δ[A104635(n+1)/2]` -/
def P6697091862657012956.Spec : Prop :=
  ∀ n, P6697091862657012956.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P367073535676322922

`Δ[A190105(n+1)/3]`
-/

namespace A082076.P367073535676322922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P367073535676322922

namespace A082076

/-- `Δ[A190105(n+1)/3]` -/
def P367073535676322922.Spec : Prop :=
  ∀ n, P367073535676322922.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P4755304763975707257

`Δ[A002145(n+1)/4]`
-/

namespace A082076.P4755304763975707257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P4755304763975707257

namespace A082076

/-- `Δ[A002145(n+1)/4]` -/
def P4755304763975707257.Spec : Prop :=
  ∀ n, P4755304763975707257.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P1325975607452694512

`Δ[A089217(n+1)/4]`
-/

namespace A082076.P1325975607452694512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P1325975607452694512

namespace A082076

/-- `Δ[A089217(n+1)/4]` -/
def P1325975607452694512.Spec : Prop :=
  ∀ n, P1325975607452694512.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P12150738330204838160

`Δ[A090658(n+1)/4]`
-/

namespace A082076.P12150738330204838160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082076.P12150738330204838160

namespace A082076

/-- `Δ[A090658(n+1)/4]` -/
def P12150738330204838160.Spec : Prop :=
  ∀ n, P12150738330204838160.a n = (A082076 (n + 1) : ℚ)

end A082076

/-! ## A082076.P932020073779557915

`A002265(Δ[A002145(n+1)])`
-/

namespace A082076.P932020073779557915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A082076.P932020073779557915

namespace A082076

/-- `A002265(Δ[A002145(n+1)])` -/
def P932020073779557915.Spec : Prop :=
  ∀ n, P932020073779557915.a n = A082076 (n + 1)

end A082076

/-!
# A082077: Balanced primes of order two.

The programs for A082077, there is no canonical definition to state claims against.
-/

/-! ## A082077.P16223081625407576784

`∩[A180455(n+1), A219478(n+1)]`
-/

namespace A082077.P16223081625407576784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082077.P16223081625407576784

/-! ## A082077.P3278375468678106965

`A151800(A151800(A293395(n+1)))`
-/

namespace A082077.P3278375468678106965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A293395 (n + 1)).toNat).toNat

end

end A082077.P3278375468678106965

/-! ## A082077.P12144362805943176671

`A000040(A000720(A293395(n+1))+2)`
-/

namespace A082077.P12144362805943176671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A293395 (n + 1)).toNat + 2).toNat

end

end A082077.P12144362805943176671

/-! ## A082077.P8211581954641246115

`A004139(∑{d}[A293395(n+1), A000720(#)])`
-/

namespace A082077.P8211581954641246115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A082077.P8211581954641246115

/-! ## A082077.P15912941889955817447

`A008578(∑{d}[A293395(n+1), A000720(#)]+3)`
-/

namespace A082077.P15912941889955817447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 3).toNat

end

end A082077.P15912941889955817447

/-! ## A082077.P17934202154777552622

`∩[A090403(n+1), A219505(n+1)]`
-/

namespace A082077.P17934202154777552622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082077.P17934202154777552622

/-! ## A082077.P17275400985784439032

`∩[A180455(n+1), A219505(n+1)]`
-/

namespace A082077.P17275400985784439032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082077.P17275400985784439032

/-!
# A082078: Balanced primes of order three.

The programs for A082078, the canonical program `A082078.P11842051904754166604` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082078 has offset 1).

The definition of A082078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082078.P11842051904754166604

`p?[gcd(A127334(n+3), A157996(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082078

/-- `p?[gcd(A127334(n+3), A157996(n+1))]` -/
def P11842051904754166604.Spec : Prop :=
  ∀ n, (P11842051904754166604.a n : ℤ) = A082078 (n + 1)

theorem P11842051904754166604.correct : P11842051904754166604.Spec := by
  intro n
  simp only [A082078, Nat.add_sub_cancel]

end A082078

/-! ## A082078.P1781348013419097267

`p?[gcd(A008578(n+5), A127334(n+1))]`
-/

namespace A082078.P1781348013419097267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 5)) (A127334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082078.P1781348013419097267

namespace A082078

/-- `p?[gcd(A008578(n+5), A127334(n+1))]` -/
def P1781348013419097267.Spec : Prop :=
  ∀ n, (P1781348013419097267.a n : ℤ) = A082078 (n + 1)

end A082078

/-! ## A082078.P12241079949945363017

`record[gcd(A008578(n+8), A127334(n+4))]`
-/

namespace A082078.P12241079949945363017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 8)) (A127334 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082078.P12241079949945363017

namespace A082078

/-- `record[gcd(A008578(n+8), A127334(n+4))]` -/
def P12241079949945363017.Spec : Prop :=
  ∀ n, (P12241079949945363017.a n : ℤ) = A082078 (n + 1)

end A082078

/-!
# A082080: Smallest balanced prime of order n.

The programs for A082080, there is no canonical definition to state claims against.
-/

/-! ## A082080.P3687737466526300484

`A000040(A364163(n))`
-/

namespace A082080.P3687737466526300484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A364163 n).toNat

end

end A082080.P3687737466526300484

/-! ## A082080.P544286916851429056

`A038500(n²+1)+A006093(A364163(n))`
-/

namespace A082080.P544286916851429056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n ^ 2 + 1) + A006093 (A364163 n).toNat

end

end A082080.P544286916851429056

/-!
# A082081: a(n) = fixed point reached when the pseudo-log function A008475 is iterated starting from n.

The programs for A082081, there is no canonical definition to state claims against.
-/

/-! ## A082081.P11030332885667228608

`A008475(A051703(A008475(A222416(A222416(n+1)))))`
-/

namespace A082081.P11030332885667228608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A051703 (A008475 (A222416 (A222416 (n + 1)).toNat).toNat).toNat).toNat

end

end A082081.P11030332885667228608

/-! ## A082081.P2982935667498651987

`A008475(A222416(n+1)%A162408(n+1))`
-/

namespace A082081.P2982935667498651987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.tmod (A222416 (n + 1)) (A162408 (n + 1))).toNat

end

end A082081.P2982935667498651987

/-! ## A082081.P12771819156429697004

`and(A211997(n+1), A222416(A222416(n+1)))`
-/

namespace A082081.P12771819156429697004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211997 (n + 1)) (A222416 (A222416 (n + 1)).toNat)

end

end A082081.P12771819156429697004

/-! ## A082081.P8308155829374520404

`A222416(A222416(n+1))%A278107(2*(n+1))`
-/

namespace A082081.P8308155829374520404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (A222416 (n + 1)).toNat) (A278107 (2 * (n + 1)))

end

end A082081.P8308155829374520404

/-!
# A082082: Number of steps to reach 1 in the process of expanding the interval (i1,i2) successively to right and left, such that i1 and i2 always stay coprime, starting with (n,n).

The programs for A082082, there is no canonical definition to state claims against.
-/

/-! ## A082082.P3993651905230883777

`A084426(n+2)/2`
-/

namespace A082082.P3993651905230883777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084426 (n + 2) : ℚ) / 2

end

end A082082.P3993651905230883777

/-! ## A082082.P3504999985078373521

`A001281(A084426(n+2))`
-/

namespace A082082.P3504999985078373521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A084426 (n + 2)).toNat

end

end A082082.P3504999985078373521

/-! ## A082082.P6224062859958267787

`A004524(A084426(n+2)+1)`
-/

namespace A082082.P6224062859958267787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A084426 (n + 2) + 1).toNat

end

end A082082.P6224062859958267787

/-! ## A082082.P1770638562824244707

`A004526(A084426(n+2)+1)`
-/

namespace A082082.P1770638562824244707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A084426 (n + 2) + 1).toNat

end

end A082082.P1770638562824244707

/-! ## A082082.P5246305696542474571

`A028242(A084426(n+2)+1)`
-/

namespace A082082.P5246305696542474571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A084426 (n + 2) + 1).toNat

end

end A082082.P5246305696542474571

/-! ## A082082.P13499299361589714022

`A000463(A084426(n+2)-1)`
-/

namespace A082082.P13499299361589714022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A084426 (n + 2) - 1).toNat

end

end A082082.P13499299361589714022

/-! ## A082082.P16657605239466522394

`A001057(A084426(n+2)-1)`
-/

namespace A082082.P16657605239466522394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A084426 (n + 2) - 1).toNat

end

end A082082.P16657605239466522394

/-! ## A082082.P12801786670243196681

`A003602(A084426(n+2)-1)`
-/

namespace A082082.P12801786670243196681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A084426 (n + 2) - 1).toNat

end

end A082082.P12801786670243196681

/-! ## A082082.P1117523416762504654

`A008619(A084426(n+2)-1)`
-/

namespace A082082.P1117523416762504654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A084426 (n + 2) - 1).toNat

end

end A082082.P1117523416762504654

/-! ## A082082.P4879651905288121491

`A274923(A084426(n+2)²)`
-/

namespace A082082.P4879651905288121491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A084426 (n + 2) ^ 2).toNat

end

end A082082.P4879651905288121491

/-!
# A082083: a(n) = A082081(n!) = A082081(A000142(n)); fixed points of iterated A008475 function initiated at factorials as initial values.

The programs for A082083, there is no canonical definition to state claims against.
-/

/-! ## A082083.P12358156090007188573

`A081402(n+1)%A000053(A304090(n+1))`
-/

namespace A082083.P12358156090007188573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081402 (n + 1)) (A000053 (A304090 (n + 1)).toNat)

end

end A082083.P12358156090007188573

/-! ## A082083.P14169293701457549934

`A008475(A074591(n+1)+A034699(n+1)!)`
-/

namespace A082083.P14169293701457549934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A074591 (n + 1) + (Nat.factorial (A034699 (n + 1)).toNat : ℤ)).toNat

end

end A082083.P14169293701457549934

/-! ## A082083.P4405052374824390558

`A008475(A100574(n+1)+A034699(n+1)!)`
-/

namespace A082083.P4405052374824390558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A100574 (n + 1) + (Nat.factorial (A034699 (n + 1)).toNat : ℤ)).toNat

end

end A082083.P4405052374824390558

/-! ## A082083.P5672849364119392428

`A008475(A100574(n+1)+A053585(n+1)!)`
-/

namespace A082083.P5672849364119392428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A100574 (n + 1) + (Nat.factorial (A053585 (n + 1)).toNat : ℤ)).toNat

end

end A082083.P5672849364119392428

/-!
# A082084: a(n) = A029908(n!) = A029908(A000142(n)); fixed points of iterated A001414 function if started at factorials as initial values.

The programs for A082084, there is no canonical definition to state claims against.
-/

/-! ## A082084.P9499348896604075872

`A029908(A025281(n+1)+floor(acot(n)))`
-/

namespace A082084.P9499348896604075872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (A025281 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A082084.P9499348896604075872

/-! ## A082084.P4693377649849480279

`A029908(record[A001414(n)+a(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A082084.P4693377649849480279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A001414 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082084.P4693377649849480279

/-! ## A082084.P7773463421550036571

`A029908(record[a(n-1)+n-A075255(n)])` with `a(0)=1, a(1)=0`
-/

namespace A082084.P7773463421550036571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - A075255 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082084.P7773463421550036571

/-! ## A082084.P10552934399809992377

`A029908(∑[A001414(n+1)+2]-A103517(n))`
-/

namespace A082084.P10552934399809992377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (∑ j ∈ Finset.range (n + 1), f1 j - A103517 n).toNat

end

end A082084.P10552934399809992377

/-! ## A082084.P1871322664901130519

`A029908(A111332(n)+∑[A001414(n+1)])`
-/

namespace A082084.P1871322664901130519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (A111332 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082084.P1871322664901130519

/-!
# A082085: Fixed points when A008475 is iterated started at factorials of prime numbers.

The programs for A082085, there is no canonical definition to state claims against.
-/

/-! ## A082085.P15107951623507125707

`A082083(p?[comp[n²]])`
-/

namespace A082085.P15107951623507125707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082083 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A082085.P15107951623507125707

/-! ## A082085.P17371176566626747118

`A082083(eq[1, ∑{e}[n, #]])`
-/

namespace A082085.P17371176566626747118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082083 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082085.P17371176566626747118

/-! ## A082085.P2562716006926521313

`A082083(record[p?[∑{p}[n+1, #]]])`
-/

namespace A082085.P2562716006926521313
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A082085.P2562716006926521313

/-! ## A082085.P18226489469999625135

`∑{d}[p?[xor(1, n)+1], A082083(#)]`
-/

namespace A082085.P18226489469999625135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082083 d

end

end A082085.P18226489469999625135

/-!
# A082086: Fixed points when A001414 is iterated and started at factorials of prime numbers.

The programs for A082086, there is no canonical definition to state claims against.
-/

/-! ## A082086.P12365407354174167008

`A082084(A000040(n+1))`
-/

namespace A082086.P12365407354174167008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082084 (A000040 (n + 1)).toNat

end

end A082086.P12365407354174167008

/-! ## A082086.P9810720217253360424

`A082084(A008578(n+2))`
-/

namespace A082086.P9810720217253360424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082084 (A008578 (n + 2)).toNat

end

end A082086.P9810720217253360424

/-! ## A082086.P14282360836056791144

`A082084(A182986(n+2))`
-/

namespace A082086.P14282360836056791144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082084 (A182986 (n + 2)).toNat

end

end A082086.P14282360836056791144

/-! ## A082086.P3874061511145160350

`A082084(A062234(n+1)+ceil(A100803(n+1)/2))`
-/

namespace A082086.P3874061511145160350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082084 (A062234 (n + 1) + ⌈(A100803 (n + 1) : ℚ) / 2⌉).toNat

end

end A082086.P3874061511145160350

/-! ## A082086.P10067935838592047952

`A082084(A062234(n+1)+A007504(n)-A166448(n+1))`
-/

namespace A082086.P10067935838592047952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082084 (A062234 (n + 1) + (A007504 n - A166448 (n + 1))).toNat

end

end A082086.P10067935838592047952

/-!
# A082087: a(n) is the fixed point if function A008472 is iterated when started at initial value n!.

The programs for A082087, there is no canonical definition to state claims against.
-/

/-! ## A082087.P14037866111113234865

`A082088(A000720(n+2))`
-/

namespace A082087.P14037866111113234865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (A000720 (n + 2)).toNat

end

end A082087.P14037866111113234865

/-! ## A082087.P15666598276727866278

`A082088(A230980(n+2))`
-/

namespace A082087.P15666598276727866278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (A230980 (n + 2)).toNat

end

end A082087.P15666598276727866278

/-! ## A082087.P16976157065266773393

`A082088(∑[A010051(n+2)])`
-/

namespace A082087.P16976157065266773393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082087.P16976157065266773393

/-! ## A082087.P14906232676869668825

`A082088(Δ[A046992(n+1)])`
-/

namespace A082087.P14906232676869668825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (f1 (n + 1) - f1 n).toNat

end

end A082087.P14906232676869668825

/-! ## A082087.P8670793201769152471

`A082088(A033270(n+2)+1)`
-/

namespace A082087.P8670793201769152471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (A033270 (n + 2) + 1).toNat

end

end A082087.P8670793201769152471

/-! ## A082087.P11034041056081352695

`A082088(A036234(n+2)-1)`
-/

namespace A082087.P11034041056081352695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (A036234 (n + 2) - 1).toNat

end

end A082087.P11034041056081352695

/-! ## A082087.P14104478232331658952

`A082088(A128913(n+2)/(n+2))`
-/

namespace A082087.P14104478232331658952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082088 (SequenceMachineLib.roundAway ((A128913 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A082087.P14104478232331658952

/-! ## A082087.P12090575609861196390

`A075860(A034387(n+2))`
-/

namespace A082087.P12090575609861196390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (A034387 (n + 2)).toNat

end

end A082087.P12090575609861196390

/-!
# A082088: a(n) is the fixed point if function A008472 is iterated when started at initial value prime[n]!.

The programs for A082088, there is no canonical definition to state claims against.
-/

/-! ## A082088.P1071489592721636151

`A082087(A000040(n+1))`
-/

namespace A082088.P1071489592721636151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A000040 (n + 1)).toNat

end

end A082088.P1071489592721636151

/-! ## A082088.P17620775481742633690

`A000040(A082089(n+2))`
-/

namespace A082088.P17620775481742633690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A082089 (n + 2)).toNat

end

end A082088.P17620775481742633690

/-! ## A082088.P14333440861264674605

`A082087(eq[1, A003415(n)])`
-/

namespace A082088.P14333440861264674605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082088.P14333440861264674605

/-! ## A082088.P8932069942705539094

`A008578(A082089(n+2)+1)`
-/

namespace A082088.P8932069942705539094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A082089 (n + 2) + 1).toNat

end

end A082088.P8932069942705539094

/-! ## A082088.P12504227501477736870

`A158611(A082089(n+2)+2)`
-/

namespace A082088.P12504227501477736870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A082089 (n + 2) + 2).toNat

end

end A082088.P12504227501477736870

/-! ## A082088.P18113750518925401780

`∑{d}[A082089(n+2), A007444(#)]`
-/

namespace A082088.P18113750518925401780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A082088.P18113750518925401780

/-! ## A082088.P11594993097783171805

`A082087(A033286(n+1)/(n+1))`
-/

namespace A082088.P11594993097783171805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A082088.P11594993097783171805

/-! ## A082088.P3294139664345322961

`A020639(A040976(A082089(n+2))+2)`
-/

namespace A082088.P3294139664345322961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A040976 (A082089 (n + 2)).toNat + 2).toNat

end

end A082088.P3294139664345322961

/-! ## A082088.P17050259262799508733

`A082087(A004789(n+1))`
-/

namespace A082088.P17050259262799508733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A004789 (n + 1)).toNat

end

end A082088.P17050259262799508733

/-! ## A082088.P12562082659498216913

`A082087(A078444(n+1))`
-/

namespace A082088.P12562082659498216913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A078444 (n + 1)).toNat

end

end A082088.P12562082659498216913

/-! ## A082088.P7156866786309733577

`A082087(A140785(n+1))`
-/

namespace A082088.P7156866786309733577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A140785 (n + 1)).toNat

end

end A082088.P7156866786309733577

/-! ## A082088.P10397989278860512190

`A082087(A157049(n+1))`
-/

namespace A082088.P10397989278860512190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A157049 (n + 1)).toNat

end

end A082088.P10397989278860512190

/-! ## A082088.P7788364815587421586

`A082087(A162800(n+1))`
-/

namespace A082088.P7788364815587421586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A162800 (n + 1)).toNat

end

end A082088.P7788364815587421586

/-! ## A082088.P4556164952457870056

`A082087(A006093(n+2))`
-/

namespace A082088.P4556164952457870056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082087 (A006093 (n + 2)).toNat

end

end A082088.P4556164952457870056

/-! ## A082088.P14616540369455692339

`A073846(2*A082089(n+2))`
-/

namespace A082088.P14616540369455692339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A082089 (n + 2)).toNat

end

end A082088.P14616540369455692339

/-!
# A082089: a(n)-th prime is the fixed point if function A008472 is iterated when started at factorial of n-th prime.

The programs for A082089, there is no canonical definition to state claims against.
-/

/-! ## A082089.P11231053930054712144

`A000720(A082088(n+1))`
-/

namespace A082089.P11231053930054712144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082088 (n + 1)).toNat

end

end A082089.P11231053930054712144

/-! ## A082089.P12444267817903386167

`A000720(A082087(A000040(n+1)))`
-/

namespace A082089.P12444267817903386167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082087 (A000040 (n + 1)).toNat).toNat

end

end A082089.P12444267817903386167

/-! ## A082089.P16557034711191913194

`A061395(A040001(n)*A082088(n+1))`
-/

namespace A082089.P16557034711191913194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A040001 n * A082088 (n + 1)).toNat

end

end A082089.P16557034711191913194

/-! ## A082089.P4355162491541573764

`A061395(A082088(n+1)%A114168(n+1))`
-/

namespace A082089.P4355162491541573764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A082088 (n + 1)) (A114168 (n + 1))).toNat

end

end A082089.P4355162491541573764

/-! ## A082089.P14676436816621094081

`A061395(A082088(n+1))%A143034(n+1)`
-/

namespace A082089.P14676436816621094081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A082088 (n + 1)).toNat) (A143034 (n + 1))

end

end A082089.P14676436816621094081

/-! ## A082089.P18203359212150967531

`A061395(A049710(2*(n+1))*A082088(n+1))`
-/

namespace A082089.P18203359212150967531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A049710 (2 * (n + 1)) * A082088 (n + 1)).toNat

end

end A082089.P18203359212150967531

/-! ## A082089.P16590558950285029003

`A061395(gcd(2, A160051(n))*A082088(n+1))`
-/

namespace A082089.P16590558950285029003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((Int.gcd 2 (A160051 n) : ℤ) * A082088 (n + 1)).toNat

end

end A082089.P16590558950285029003

/-! ## A082089.P3251610125400499452

`A061395(2*A082088(n+1))`
-/

namespace A082089.P3251610125400499452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A082088 (n + 1)).toNat

end

end A082089.P3251610125400499452

/-!
# A082090: Length of iteration sequence if function A056239, a pseudo-logarithm is iterated and started at n. Fixed point equals zero for all initial values.

The programs for A082090, the canonical program `A082090.P12813124670423497259` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082090 has offset 1).

The definition of A082090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082090.P18415806844560178058

`a(A056239(n+1)-1)+1` with `a(0)=2`
-/

namespace A082090.P18415806844560178058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A056239 (n + 1) - 1).toNat + 1

end

end A082090.P18415806844560178058

namespace A082090

/-- `a(A056239(n+1)-1)+1` -/
def P18415806844560178058.Spec : Prop :=
  ∀ n, (P18415806844560178058.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P9865583646298739980

`a(A316436(2*(n+1))-2)+1` with `a(0)=2`
-/

namespace A082090.P9865583646298739980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A316436 (2 * (n + 1)) - 2).toNat + 1

end

end A082090.P9865583646298739980

namespace A082090

/-- `a(A316436(2*(n+1))-2)+1` -/
def P9865583646298739980.Spec : Prop :=
  ∀ n, (P9865583646298739980.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P12813124670423497259

`a(∑{d}[n+1, A297109(#)]-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082090

/-- `a(∑{d}[n+1, A297109(#)]-1)+1` -/
def P12813124670423497259.Spec : Prop :=
  ∀ n, (P12813124670423497259.a n : ℤ) = A082090 (n + 1)

theorem P12813124670423497259.correct : P12813124670423497259.Spec := by
  intro n
  simp only [A082090, Nat.add_sub_cancel]

end A082090

/-! ## A082090.P11177437133042145590

`a(A023443(A056239(n+1)))+1` with `a(0)=2`
-/

namespace A082090.P11177437133042145590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A023443 (A056239 (n + 1)).toNat).toNat + 1

end

end A082090.P11177437133042145590

namespace A082090

/-- `a(A023443(A056239(n+1)))+1` -/
def P11177437133042145590.Spec : Prop :=
  ∀ n, (P11177437133042145590.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P7162523177197601832

`a(A304739(A064664(n+1))-1)+1` with `a(0)=2`
-/

namespace A082090.P7162523177197601832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A304739 (A064664 (n + 1)).toNat - 1).toNat + 1

end

end A082090.P7162523177197601832

namespace A082090

/-- `a(A304739(A064664(n+1))-1)+1` -/
def P7162523177197601832.Spec : Prop :=
  ∀ n, (P7162523177197601832.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P16623158128160476231

`a(A243503(n+1)-A278520(n+1)-1)+1` with `a(0)=2`
-/

namespace A082090.P16623158128160476231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A243503 (n + 1) - A278520 (n + 1) - 1).toNat + 1

end

end A082090.P16623158128160476231

namespace A082090

/-- `a(A243503(n+1)-A278520(n+1)-1)+1` -/
def P16623158128160476231.Spec : Prop :=
  ∀ n, (P16623158128160476231.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P2789675290991404973

`a(A325135(n+1)+A347381(n+1)+A347380(n+1)-1)+1` with `a(0)=2`
-/

namespace A082090.P2789675290991404973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A325135 (n + 1) + (A347381 (n + 1) + A347380 (n + 1)) - 1).toNat + 1

end

end A082090.P2789675290991404973

namespace A082090

/-- `a(A325135(n+1)+A347381(n+1)+A347380(n+1)-1)+1` -/
def P2789675290991404973.Spec : Prop :=
  ∀ n, (P2789675290991404973.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P8256973039171363891

`a(log2(A248692(n+1))-1)+1` with `a(0)=2`
-/

namespace A082090.P8256973039171363891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A248692 (n + 1) : ℝ) - 1)).toNat + 1

end

end A082090.P8256973039171363891

namespace A082090

/-- `a(log2(A248692(n+1))-1)+1` -/
def P8256973039171363891.Spec : Prop :=
  ∀ n, (P8256973039171363891.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P1578220447104114429

`a(floor(log2(A233249(2*(n+1))))-1)+1` with `a(0)=2`
-/

namespace A082090.P1578220447104114429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (Nat.log 2 (A233249 (2 * (n + 1))).toNat - 1) + 1

end

end A082090.P1578220447104114429

namespace A082090

/-- `a(floor(log2(A233249(2*(n+1))))-1)+1` -/
def P1578220447104114429.Spec : Prop :=
  ∀ n, (P1578220447104114429.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P6725137633737621939

`a(A346698((n+1)²)-1)+1` with `a(0)=2`
-/

namespace A082090.P6725137633737621939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A346698 ((n + 1) ^ 2) - 1).toNat + 1

end

end A082090.P6725137633737621939

namespace A082090

/-- `a(A346698((n+1)²)-1)+1` -/
def P6725137633737621939.Spec : Prop :=
  ∀ n, (P6725137633737621939.a n : ℤ) = A082090 (n + 1)

end A082090

/-! ## A082090.P4276180644352794380

`a(A346700((n+1)²)-1)+1` with `a(0)=2`
-/

namespace A082090.P4276180644352794380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A346700 ((n + 1) ^ 2) - 1).toNat + 1

end

end A082090.P4276180644352794380

namespace A082090

/-- `a(A346700((n+1)²)-1)+1` -/
def P4276180644352794380.Spec : Prop :=
  ∀ n, (P4276180644352794380.a n : ℤ) = A082090 (n + 1)

end A082090

/-!
# A082091: a(n) = one more than the number of iterations of A005361 needed to reach 1 from the starting value n.

The programs for A082091, the canonical program `A082091.P12026919801001082135` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082091 has offset 1).

The definition of A082091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082091.P12026919801001082135

`1+a(A005361(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082091

/-- `1+a(A005361(n+1)-1)` -/
def P12026919801001082135.Spec : Prop :=
  ∀ n, (P12026919801001082135.a n : ℤ) = A082091 (n + 1)

theorem P12026919801001082135.correct : P12026919801001082135.Spec := by
  intro n
  simp only [A082091, Nat.add_sub_cancel]

end A082091

/-! ## A082091.P17309951525627462836

`a(∏{e}[n+1, #]-1)+1` with `a(0)=1`
-/

namespace A082091.P17309951525627462836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p - 1) + 1

end

end A082091.P17309951525627462836

namespace A082091

/-- `a(∏{e}[n+1, #]-1)+1` -/
def P17309951525627462836.Spec : Prop :=
  ∀ n, (P17309951525627462836.a n : ℤ) = A082091 (n + 1)

end A082091

/-! ## A082091.P12143584205177213562

`a(∏{p}[n+1, val(n+1, #)]-1)+1` with `a(0)=1`
-/

namespace A082091.P12143584205177213562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p - 1) + 1

end

end A082091.P12143584205177213562

namespace A082091

/-- `a(∏{p}[n+1, val(n+1, #)]-1)+1` -/
def P12143584205177213562.Spec : Prop :=
  ∀ n, (P12143584205177213562.a n : ℤ) = A082091 (n + 1)

end A082091

/-! ## A082091.P14175298632457012892

`a(A183094(n+1))+1` with `a(0)=1`
-/

namespace A082091.P14175298632457012892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A183094 (n + 1)).toNat + 1

end

end A082091.P14175298632457012892

namespace A082091

/-- `a(A183094(n+1))+1` -/
def P14175298632457012892.Spec : Prop :=
  ∀ n, (P14175298632457012892.a n : ℤ) = A082091 (n + 1)

theorem P14175298632457012892.correct : P14175298632457012892.Spec := by
  intro n
  simp only [A082091, Nat.add_sub_cancel, A082091.P14175298632457012892.a, A082091.P12026919801001082135.a, A005361, A005361.P7238185687981551187.a, A183094, A183094.P2300528291682876645.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082091

/-! ## A082091.P5219981520351771121

`A291769(a(∏{e}[n+1, #]-1))` with `a(0)=1`
-/

namespace A082091.P5219981520351771121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291769 (a (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p - 1)).toNat

end

end A082091.P5219981520351771121

namespace A082091

/-- `A291769(a(∏{e}[n+1, #]-1))` -/
def P5219981520351771121.Spec : Prop :=
  ∀ n, P5219981520351771121.a n = A082091 (n + 1)

end A082091

/-! ## A082091.P13208811980577659545

`a(∑{d}[A003557(n+1), gcd(n, #)]-1)+1` with `a(0)=1`
-/

namespace A082091.P13208811980577659545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd n d - 1) + 1

end

end A082091.P13208811980577659545

namespace A082091

/-- `a(∑{d}[A003557(n+1), gcd(n, #)]-1)+1` -/
def P13208811980577659545.Spec : Prop :=
  ∀ n, (P13208811980577659545.a n : ℤ) = A082091 (n + 1)

end A082091

/-! ## A082091.P3894397090305850100

`a(A003963(A181819(n+1))-1)+1` with `a(0)=1`
-/

namespace A082091.P3894397090305850100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003963 (A181819 (n + 1)).toNat - 1).toNat + 1

end

end A082091.P3894397090305850100

namespace A082091

/-- `a(A003963(A181819(n+1))-1)+1` -/
def P3894397090305850100.Spec : Prop :=
  ∀ n, (P3894397090305850100.a n : ℤ) = A082091 (n + 1)

end A082091

/-!
# A082092: Composite k such that d(k) < d(sigma(k)), i.e., A000005(k) < A000005(A000203(k)).

The programs for A082092, the canonical program `A082092.P6243506660087546577` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082092 has offset 1).

The definition of A082092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082092.P1716130285402541488

`eq[C(A006530(n+1), n)+1, A295306(n+1)]+1`
-/

namespace A082092.P1716130285402541488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082092.P1716130285402541488

namespace A082092

/-- `eq[C(A006530(n+1), n)+1, A295306(n+1)]+1` -/
def P1716130285402541488.Spec : Prop :=
  ∀ n, (P1716130285402541488.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P6243506660087546577

`filter[A073803(n+1), A005171(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082092

/-- `filter[A073803(n+1), A005171(#)]` -/
def P6243506660087546577.Spec : Prop :=
  ∀ n, P6243506660087546577.a n = A082092 (n + 1)

theorem P6243506660087546577.correct : P6243506660087546577.Spec := by
  intro n
  simp only [A082092, Nat.add_sub_cancel]

end A082092

/-! ## A082092.P10728381540891806355

`filter[A073803(n+1), A066247(#)]`
-/

namespace A082092.P10728381540891806355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A082092.P10728381540891806355

namespace A082092

/-- `filter[A073803(n+1), A066247(#)]` -/
def P10728381540891806355.Spec : Prop :=
  ∀ n, P10728381540891806355.a n = A082092 (n + 1)

end A082092

/-! ## A082092.P1280450671531017903

`∩[A002808(n+1), A073803(n+1)]`
-/

namespace A082092.P1280450671531017903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P1280450671531017903

namespace A082092

/-- `∩[A002808(n+1), A073803(n+1)]` -/
def P1280450671531017903.Spec : Prop :=
  ∀ n, (P1280450671531017903.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P9968474358486172563

`∩[A018252(n+1), A073803(n+1)]`
-/

namespace A082092.P9968474358486172563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P9968474358486172563

namespace A082092

/-- `∩[A018252(n+1), A073803(n+1)]` -/
def P9968474358486172563.Spec : Prop :=
  ∀ n, (P9968474358486172563.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P5484268495520974290

`∩[A056653(n+1), A073803(n+1)]`
-/

namespace A082092.P5484268495520974290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P5484268495520974290

namespace A082092

/-- `∩[A056653(n+1), A073803(n+1)]` -/
def P5484268495520974290.Spec : Prop :=
  ∀ n, (P5484268495520974290.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P10151230974541217951

`∩[A065090(n+1), A073803(n+1)]`
-/

namespace A082092.P10151230974541217951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P10151230974541217951

namespace A082092

/-- `∩[A065090(n+1), A073803(n+1)]` -/
def P10151230974541217951.Spec : Prop :=
  ∀ n, (P10151230974541217951.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P18334962475116502487

`∩[A073803(n+1), A141468(n+1)]`
-/

namespace A082092.P18334962475116502487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P18334962475116502487

namespace A082092

/-- `∩[A073803(n+1), A141468(n+1)]` -/
def P18334962475116502487.Spec : Prop :=
  ∀ n, (P18334962475116502487.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P10921312748751624887

`∩[A073803(n+1), A343311(n+1)]`
-/

namespace A082092.P10921312748751624887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P10921312748751624887

namespace A082092

/-- `∩[A073803(n+1), A343311(n+1)]` -/
def P10921312748751624887.Spec : Prop :=
  ∀ n, (P10921312748751624887.a n : ℤ) = A082092 (n + 1)

end A082092

/-! ## A082092.P1719427104036475004

`A026234(p?[A026234(n+1)*A295306(n+1)])`
-/

namespace A082092.P1719427104036475004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1) * A295306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082092.P1719427104036475004

namespace A082092

/-- `A026234(p?[A026234(n+1)*A295306(n+1)])` -/
def P1719427104036475004.Spec : Prop :=
  ∀ n, P1719427104036475004.a n = A082092 (n + 1)

end A082092

/-! ## A082092.P2055657663867516830

`∩[A073803(n+1), A111774(n+1)]`
-/

namespace A082092.P2055657663867516830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082092.P2055657663867516830

namespace A082092

/-- `∩[A073803(n+1), A111774(n+1)]` -/
def P2055657663867516830.Spec : Prop :=
  ∀ n, (P2055657663867516830.a n : ℤ) = A082092 (n + 1)

end A082092

/-!
# A082094: A 2nd-order recursion: a(1)=a(2)=1; a(n) = prime(a(n-1)) + primepi(a(n-2)) = A000040(a(n-1)) + A000720(a(n-2)).

The programs for A082094, the canonical program `A082094.P9458574918407849658` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082094 has offset 1).

The definition of A082094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+A000720(a(n-2))` (program `A082094.P9458574918407849658`, by `A082094.P9458574918407849658.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082094.P9458574918407849658

`A000040(a(n-1))+A000720(a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082094

/-- `A000040(a(n-1))+A000720(a(n-2))` -/
def P9458574918407849658.Spec : Prop :=
  ∀ n, P9458574918407849658.a n = A082094 (n + 1)

theorem P9458574918407849658.correct : P9458574918407849658.Spec := by
  intro n
  simp only [A082094, Nat.add_sub_cancel]

end A082094

/-! ## A082094.P16946178144589104714

`∑[A332023(A060049(n))]`
-/

namespace A082094.P16946178144589104714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332023 (A060049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082094.P16946178144589104714

namespace A082094

/-- `∑[A332023(A060049(n))]` -/
def P16946178144589104714.Spec : Prop :=
  ∀ n, P16946178144589104714.a n = A082094 (n + 1)

end A082094

/-! ## A082094.P11692917839856003690

`A344420(A101901(n))+round(sqrt(n²+1))`
-/

namespace A082094.P11692917839856003690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A101901 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

end

end A082094.P11692917839856003690

namespace A082094

/-- `A344420(A101901(n))+round(sqrt(n²+1))` -/
def P11692917839856003690.Spec : Prop :=
  ∀ n, P11692917839856003690.a n = A082094 (n + 1)

end A082094

/-! ## A082094.P2205556535552792032

`A066339(A123421(n+1)+A020742(n))`
-/

namespace A082094.P2205556535552792032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A123421 (n + 1) + A020742 n).toNat

end

end A082094.P2205556535552792032

namespace A082094

/-- `A066339(A123421(n+1)+A020742(n))` -/
def P2205556535552792032.Spec : Prop :=
  ∀ n, P2205556535552792032.a n = A082094 (n + 1)

end A082094

/-!
# A082095: A 2nd order recursion: a(1)=a(2)=1, a(n) = prime(a(n-2)) + pi(a(n-1)) = A000040(a(n-2)) + A000720(a(n-1)).

The programs for A082095, the canonical program `A082095.P9373068488610990300` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082095 has offset 1).

The definition of A082095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-2))+A000720(a(n-1))` (program `A082095.P9373068488610990300`, by `A082095.P9373068488610990300.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082095.P9373068488610990300

`A000040(a(n-2))+A000720(a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082095

/-- `A000040(a(n-2))+A000720(a(n-1))` -/
def P9373068488610990300.Spec : Prop :=
  ∀ n, P9373068488610990300.a n = A082095 (n + 1)

theorem P9373068488610990300.correct : P9373068488610990300.Spec := by
  intro n
  simp only [A082095, Nat.add_sub_cancel]

end A082095

/-! ## A082095.P1407619780594235830

`A285054(A191792(n))`
-/

namespace A082095.P1407619780594235830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285054 (A191792 n).toNat

end

end A082095.P1407619780594235830

namespace A082095

/-- `A285054(A191792(n))` -/
def P1407619780594235830.Spec : Prop :=
  ∀ n, P1407619780594235830.a n = A082095 (n + 1)

end A082095

/-! ## A082095.P14232156840920699810

`A051661(A293671(n+1))`
-/

namespace A082095.P14232156840920699810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051661 (A293671 (n + 1)).toNat

end

end A082095.P14232156840920699810

namespace A082095

/-- `A051661(A293671(n+1))` -/
def P14232156840920699810.Spec : Prop :=
  ∀ n, P14232156840920699810.a n = A082095 (n + 1)

end A082095

/-! ## A082095.P17875785649637007476

`A130148(A003040(n+2))`
-/

namespace A082095.P17875785649637007476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A003040 (n + 2)).toNat

end

end A082095.P17875785649637007476

namespace A082095

/-- `A130148(A003040(n+2))` -/
def P17875785649637007476.Spec : Prop :=
  ∀ n, P17875785649637007476.a n = A082095 (n + 1)

end A082095

/-! ## A082095.P16921658645142992075

`A051661(A173434(n+2))`
-/

namespace A082095.P16921658645142992075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051661 (A173434 (n + 2)).toNat

end

end A082095.P16921658645142992075

namespace A082095

/-- `A051661(A173434(n+2))` -/
def P16921658645142992075.Spec : Prop :=
  ∀ n, P16921658645142992075.a n = A082095 (n + 1)

end A082095

/-!
# A082096: A 2nd order recursion: a(1)=a(2)=1; a(n) = prime(a(n-2)+a(n-1)) = A000040(a(n-2)+a(n-1)).

The programs for A082096, the canonical program `A082096.P9035175122493942486` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082096 has offset 1).

The definition of A082096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-2)+a(n-1))` (program `A082096.P9035175122493942486`, by `A082096.P9035175122493942486.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082096.P14950257233715833475

`A000040(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A082096.P14950257233715833475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 1) + a (n - 2)).toNat

end

end A082096.P14950257233715833475

namespace A082096

/-- `A000040(a(n-1)+a(n-2))` -/
def P14950257233715833475.Spec : Prop :=
  ∀ n, P14950257233715833475.a n = A082096 (n + 1)

end A082096

/-! ## A082096.P9035175122493942486

`A000040(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082096

/-- `A000040(a(n-2)+a(n-1))` -/
def P9035175122493942486.Spec : Prop :=
  ∀ n, P9035175122493942486.a n = A082096 (n + 1)

theorem P9035175122493942486.correct : P9035175122493942486.Spec := by
  intro n
  simp only [A082096, Nat.add_sub_cancel]

end A082096

/-! ## A082096.P10822983835341129935

`A001748(a(n-1)+a(n-2))/3` with `a(0)=1, a(1)=1`
-/

namespace A082096.P10822983835341129935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A001748 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))).toNat : ℚ) / 3

end

end A082096.P10822983835341129935

namespace A082096

/-- `A001748(a(n-1)+a(n-2))/3` -/
def P10822983835341129935.Spec : Prop :=
  ∀ n, P10822983835341129935.a n = (A082096 (n + 1) : ℚ)

end A082096

/-! ## A082096.P527002067978609043

`A001749(a(n-1)+a(n-2))/4` with `a(0)=1, a(1)=1`
-/

namespace A082096.P527002067978609043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A001749 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))).toNat : ℚ) / 4

end

end A082096.P527002067978609043

namespace A082096

/-- `A001749(a(n-1)+a(n-2))/4` -/
def P527002067978609043.Spec : Prop :=
  ∀ n, P527002067978609043.a n = (A082096 (n + 1) : ℚ)

end A082096

/-!
# A082097: a(n) = d(a(n-1)) + n = A000005(a(n-1)) + n, with a(1)=1.

The programs for A082097, the canonical program `A082097.P10250578790295888571` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082097 has offset 1).

The definition of A082097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(a(n-1))+n+1` (program `A082097.P10250578790295888571`, by `A082097.P10250578790295888571.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082097.P10250578790295888571

`A000005(a(n-1))+n+1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082097

/-- `A000005(a(n-1))+n+1` -/
def P10250578790295888571.Spec : Prop :=
  ∀ n, P10250578790295888571.a n = A082097 (n + 1)

theorem P10250578790295888571.correct : P10250578790295888571.Spec := by
  intro n
  simp only [A082097, Nat.add_sub_cancel]

end A082097

/-! ## A082097.P8858972731409509774

`A334954(a(n-1))+n` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082097.P8858972731409509774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A334954 (a (n - 1)).toNat + (n : ℤ)

end

end A082097.P8858972731409509774

namespace A082097

/-- `A334954(a(n-1))+n` -/
def P8858972731409509774.Spec : Prop :=
  ∀ n, P8858972731409509774.a n = A082097 (n + 1)

end A082097

/-! ## A082097.P17073062755164833362

`A032741(a(n-1))+n+2` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082097.P17073062755164833362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A032741 (a (n - 1)).toNat + (n + 2 : ℤ)

end

end A082097.P17073062755164833362

namespace A082097

/-- `A032741(a(n-1))+n+2` -/
def P17073062755164833362.Spec : Prop :=
  ∀ n, P17073062755164833362.a n = A082097 (n + 1)

end A082097

/-! ## A082097.P18221027831898284385

`A046951(a(n-1)²)+n+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082097.P18221027831898284385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A046951 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A082097.P18221027831898284385

namespace A082097

/-- `A046951(a(n-1)²)+n+1` -/
def P18221027831898284385.Spec : Prop :=
  ∀ n, P18221027831898284385.a n = A082097 (n + 1)

end A082097

/-! ## A082097.P9494492984115944116

`A322483(a(n-1)²)+n+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082097.P9494492984115944116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A322483 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A082097.P9494492984115944116

namespace A082097

/-- `A322483(a(n-1)²)+n+1` -/
def P9494492984115944116.Spec : Prop :=
  ∀ n, P9494492984115944116.a n = A082097 (n + 1)

end A082097

