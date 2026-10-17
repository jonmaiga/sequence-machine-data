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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A029702: Q(sqrt(n)) has class number 2.

The programs for A029702, there is no canonical definition to state claims against.
-/

/-! ## A029702.P18069502342501682921

`filter[A146209(n+1), A368281(#)]`
-/

namespace A029702.P18069502342501682921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368281 (f1 j).toNat = 1) n)

end

end A029702.P18069502342501682921

/-! ## A029702.P8295580232251730651

`A332671(A276985(n+1))+A146209(n+1)`
-/

namespace A029702.P8295580232251730651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A276985 (n + 1)).toNat + A146209 (n + 1)

end

end A029702.P8295580232251730651

/-! ## A029702.P2421213756918347330

`A146209(C(A005555(n), n))`
-/

namespace A029702.P2421213756918347330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (Nat.choose (A005555 n).toNat n)

end

end A029702.P2421213756918347330

/-! ## A029702.P18295579695227830679

`∏{p}[A146209(n+1), A111615(#)]`
-/

namespace A029702.P18295579695227830679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111615 p

end

end A029702.P18295579695227830679

/-! ## A029702.P7719355209609203180

`A146209(n+1)%A146205(n)²`
-/

namespace A029702.P7719355209609203180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146209 (n + 1)) (A146205 n ^ 2)

end

end A029702.P7719355209609203180

/-!
# A029704: Q(sqrt(n)) has class number 4.

The programs for A029704, there is no canonical definition to state claims against.
-/

/-! ## A029704.P4742740895566873675

`eq[A055642(A006567(n+1)), A202053(n+1)]+1`
-/

namespace A029704.P4742740895566873675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A006567 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A029704.P4742740895566873675

/-! ## A029704.P2756378412848468048

`eq[A055642(A124065(n+3)), A202053(n+1)]+1`
-/

namespace A029704.P2756378412848468048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A124065 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A029704.P2756378412848468048

/-!
# A029705: Squarefree n such that Q(sqrt(n)) has class number 5.

The programs for A029705, there is no canonical definition to state claims against.
-/

/-! ## A029705.P11037997380052578970

`eq[5, A202053(A233583(n+1))]`
-/

namespace A029705.P11037997380052578970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029705.P11037997380052578970

/-!
# A029706: Sum C(n,k)*b(k), k=1..n, where b(k) is given by A001861.

The programs for A029706, there is no canonical definition to state claims against.
-/

/-! ## A029706.P15490518746606296693

`∑[2*A355247(n)]`
-/

namespace A029706.P15490518746606296693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029706.P15490518746606296693

/-! ## A029706.P7714093292716009831

`A035009(n+2)-1`
-/

namespace A029706.P7714093292716009831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035009 (n + 2) - 1

end

end A029706.P7714093292716009831

/-! ## A029706.P17453599465902395066

`∑[abs(Δ[A035009(n+1)])]`
-/

namespace A029706.P17453599465902395066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035009 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029706.P17453599465902395066

/-! ## A029706.P13886473677985773399

`record[A260196(n)+A035009(n)]`
-/

namespace A029706.P13886473677985773399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A035009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029706.P13886473677985773399

/-! ## A029706.P6464876752864948290

`xor(A035009(n+2), A262681(n))`
-/

namespace A029706.P6464876752864948290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035009 (n + 2)) (A262681 n)

end

end A029706.P6464876752864948290

/-! ## A029706.P7055925660619665792

`A141416(Δ[A000523(n+1)])+A035009(n+2)`
-/

namespace A029706.P7055925660619665792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (f1 (n + 1) - f1 n).toNat + A035009 (n + 2)

end

end A029706.P7055925660619665792

/-! ## A029706.P11477926816489081162

`A335975(A027379(n+2))-1`
-/

namespace A029706.P11477926816489081162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (A027379 (n + 2)).toNat - 1

end

end A029706.P11477926816489081162

/-!
# A029707: Numbers k such that the k-th and the (k+1)-st primes are twin primes.

The programs for A029707, the canonical program `A029707.P9157915946838587551` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029707 has offset 1).

The definition of A029707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029707.P9008410581696676488

`A107770(n+1)-1`
-/

namespace A029707.P9008410581696676488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) - 1

end

end A029707.P9008410581696676488

namespace A029707

/-- `A107770(n+1)-1` -/
def P9008410581696676488.Spec : Prop :=
  ∀ n, P9008410581696676488.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P1241343204466263505

`A155752(n+1)+1`
-/

namespace A029707.P1241343204466263505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) + 1

end

end A029707.P1241343204466263505

namespace A029707

/-- `A155752(n+1)+1` -/
def P1241343204466263505.Spec : Prop :=
  ∀ n, P1241343204466263505.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P9157915946838587551

`∑[A242767(n+2)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029707

/-- `∑[A242767(n+2)]+1` -/
def P9157915946838587551.Spec : Prop :=
  ∀ n, P9157915946838587551.a n = A029707 (n + 1)

theorem P9157915946838587551.correct : P9157915946838587551.Spec := by
  intro n
  simp only [A029707, Nat.add_sub_cancel]

end A029707

/-! ## A029707.P17626137522058553033

`A027833(n)+a(n-1)` with `a(0)=2`
-/

namespace A029707.P17626137522058553033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A027833 n + a (n - 1)

end

end A029707.P17626137522058553033

namespace A029707

/-- `A027833(n)+a(n-1)` -/
def P17626137522058553033.Spec : Prop :=
  ∀ n, P17626137522058553033.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P7673767285044770026

`2*record[(n+1)/A001223(n+1)]`
-/

namespace A029707.P7673767285044770026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001223 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029707.P7673767285044770026

namespace A029707

/-- `2*record[(n+1)/A001223(n+1)]` -/
def P7673767285044770026.Spec : Prop :=
  ∀ n, P7673767285044770026.a n = (A029707 (n + 1) : ℚ)

end A029707

/-! ## A029707.P7339684877955494109

`A001359(n+1)-A169643(n+1)`
-/

namespace A029707.P7339684877955494109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A169643 (n + 1)

end

end A029707.P7339684877955494109

namespace A029707

/-- `A001359(n+1)-A169643(n+1)` -/
def P7339684877955494109.Spec : Prop :=
  ∀ n, P7339684877955494109.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P9885215812317682858

`eq[2, A001223(n+1)]+1`
-/

namespace A029707.P9885215812317682858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029707.P9885215812317682858

namespace A029707

/-- `eq[2, A001223(n+1)]+1` -/
def P9885215812317682858.Spec : Prop :=
  ∀ n, (P9885215812317682858.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P15779324082070251961

`A334142(A004277(n))`
-/

namespace A029707.P15779324082070251961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (A004277 n).toNat

end

end A029707.P15779324082070251961

namespace A029707

/-- `A334142(A004277(n))` -/
def P15779324082070251961.Spec : Prop :=
  ∀ n, P15779324082070251961.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P7787666752639649047

`A334142(A004275(n+1))`
-/

namespace A029707.P7787666752639649047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (A004275 (n + 1)).toNat

end

end A029707.P7787666752639649047

namespace A029707

/-- `A334142(A004275(n+1))` -/
def P7787666752639649047.Spec : Prop :=
  ∀ n, P7787666752639649047.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P5324288448876129840

`A334142(2*(n+1))-A027833(n+1)`
-/

namespace A029707.P5324288448876129840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - A027833 (n + 1)

end

end A029707.P5324288448876129840

namespace A029707

/-- `A334142(2*(n+1))-A027833(n+1)` -/
def P5324288448876129840.Spec : Prop :=
  ∀ n, P5324288448876129840.a n = A029707 (n + 1)

end A029707

/-! ## A029707.P15707887916837691990

`∩[A270192(n+1), A334142(n+1)]`
-/

namespace A029707.P15707887916837691990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029707.P15707887916837691990

namespace A029707

/-- `∩[A270192(n+1), A334142(n+1)]` -/
def P15707887916837691990.Spec : Prop :=
  ∀ n, (P15707887916837691990.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P8006864935085180214

`∩[A133677(n+1), A334142(n+1)]`
-/

namespace A029707.P8006864935085180214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029707.P8006864935085180214

namespace A029707

/-- `∩[A133677(n+1), A334142(n+1)]` -/
def P8006864935085180214.Spec : Prop :=
  ∀ n, (P8006864935085180214.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P8112830819554408778

`eq[2, A075526(n)]`
-/

namespace A029707.P8112830819554408778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P8112830819554408778

namespace A029707

/-- `eq[2, A075526(n)]` -/
def P8112830819554408778.Spec : Prop :=
  ∀ n, (P8112830819554408778.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P2616903221550337678

`eq[2, Δ[A028815(n)]]`
-/

namespace A029707.P2616903221550337678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P2616903221550337678

namespace A029707

/-- `eq[2, Δ[A028815(n)]]` -/
def P2616903221550337678.Spec : Prop :=
  ∀ n, (P2616903221550337678.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P15655898829899661406

`eq[1, A062301(n+1)]`
-/

namespace A029707.P15655898829899661406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P15655898829899661406

namespace A029707

/-- `eq[1, A062301(n+1)]` -/
def P15655898829899661406.Spec : Prop :=
  ∀ n, (P15655898829899661406.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P14393128074587105087

`eq[1, A237260(n+1)]`
-/

namespace A029707.P14393128074587105087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P14393128074587105087

namespace A029707

/-- `eq[1, A237260(n+1)]` -/
def P14393128074587105087.Spec : Prop :=
  ∀ n, (P14393128074587105087.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P702625111042734364

`eq[2, A125266(n+1)]`
-/

namespace A029707.P702625111042734364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P702625111042734364

namespace A029707

/-- `eq[2, A125266(n+1)]` -/
def P702625111042734364.Spec : Prop :=
  ∀ n, (P702625111042734364.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P15973493680036458031

`eq[3, A076368(n+1)]`
-/

namespace A029707.P15973493680036458031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P15973493680036458031

namespace A029707

/-- `eq[3, A076368(n+1)]` -/
def P15973493680036458031.Spec : Prop :=
  ∀ n, (P15973493680036458031.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P9292831207926513609

`eq[3, A230846(n+1)]`
-/

namespace A029707.P9292831207926513609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P9292831207926513609

namespace A029707

/-- `eq[3, A230846(n+1)]` -/
def P9292831207926513609.Spec : Prop :=
  ∀ n, (P9292831207926513609.a n : ℤ) = A029707 (n + 1)

end A029707

/-! ## A029707.P11600170110330693453

`eq[1, Δ[A162177(n+1)]]`
-/

namespace A029707.P11600170110330693453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029707.P11600170110330693453

namespace A029707

/-- `eq[1, Δ[A162177(n+1)]]` -/
def P11600170110330693453.Spec : Prop :=
  ∀ n, (P11600170110330693453.a n : ℤ) = A029707 (n + 1)

end A029707

/-!
# A029708: Numbers k such that k-2 and k+2 are consecutive primes.

The programs for A029708, there is no canonical definition to state claims against.
-/

/-! ## A029708.P6499607969040322283

`A029710(n+1)+2`
-/

namespace A029708.P6499607969040322283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) + 2

end

end A029708.P6499607969040322283

/-! ## A029708.P15288198853572677579

`A031505(n+1)-2`
-/

namespace A029708.P15288198853572677579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) - 2

end

end A029708.P15288198853572677579

/-! ## A029708.P6742836034425617259

`3*A157834(n+1)`
-/

namespace A029708.P6742836034425617259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157834 (n + 1)

end

end A029708.P6742836034425617259

/-! ## A029708.P5697827191537721294

`∑[A053320(n+1)]+5`
-/

namespace A029708.P5697827191537721294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A029708.P5697827191537721294

/-! ## A029708.P6578683844286914341

`2*A111981(n+1)+1`
-/

namespace A029708.P6578683844286914341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111981 (n + 1) + 1

end

end A029708.P6578683844286914341

/-! ## A029708.P13498462016202464228

`6*A056956(n+1)+3`
-/

namespace A029708.P13498462016202464228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056956 (n + 1) + 3

end

end A029708.P13498462016202464228

/-! ## A029708.P17267611566930112475

`A087679(n+1)+A053320(n+1)`
-/

namespace A029708.P17267611566930112475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) + A053320 (n + 1)

end

end A029708.P17267611566930112475

/-! ## A029708.P7915573296232755386

`A087679(n+2)`
-/

namespace A029708.P7915573296232755386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 2)

end

end A029708.P7915573296232755386

/-! ## A029708.P8981011167661896062

`A015913(n+2)+2`
-/

namespace A029708.P8981011167661896062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 2) + 2

end

end A029708.P8981011167661896062

/-! ## A029708.P10223359376777226167

`A046132(n+2)-2`
-/

namespace A029708.P10223359376777226167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 2) - 2

end

end A029708.P10223359376777226167

/-! ## A029708.P13000071299561045607

`ceil(sqrt(A143206(n+2)))`
-/

namespace A029708.P13000071299561045607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A143206 (n + 2) : ℝ)⌉

end

end A029708.P13000071299561045607

/-! ## A029708.P1719909650615566686

`Δ[A172112(n+1)]+2`
-/

namespace A029708.P1719909650615566686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A029708.P1719909650615566686

/-! ## A029708.P10453575398607877634

`2*A088762(n+2)+1`
-/

namespace A029708.P10453575398607877634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 2) + 1

end

end A029708.P10453575398607877634

/-! ## A029708.P8263354186924572211

`A165986(n+2)/2+2`
-/

namespace A029708.P8263354186924572211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 2) : ℚ) / 2 + 2

end

end A029708.P8263354186924572211

/-! ## A029708.P17644560947027485689

`2*(A047847(n+2)+1)+1`
-/

namespace A029708.P17644560947027485689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047847 (n + 2) + 1) + 1

end

end A029708.P17644560947027485689

/-! ## A029708.P7647459664596811122

`A143206(n+2)/A046132(n+2)+2`
-/

namespace A029708.P7647459664596811122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143206 (n + 2) : ℚ) / (A046132 (n + 2) : ℚ) + 2

end

end A029708.P7647459664596811122

/-! ## A029708.P993827959302079733

`A172238(n+3)+2`
-/

namespace A029708.P993827959302079733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 3) + 2

end

end A029708.P993827959302079733

/-! ## A029708.P11915996107551879463

`A067830(n+3)-2`
-/

namespace A029708.P11915996107551879463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 3) - 2

end

end A029708.P11915996107551879463

/-! ## A029708.P16020637678555453667

`p?[A056772(n+2)]+2`
-/

namespace A029708.P16020637678555453667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A029708.P16020637678555453667

/-! ## A029708.P1829736778548478811

`A111980(Δ[n²])+2`
-/

namespace A029708.P1829736778548478811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A029708.P1829736778548478811

/-!
# A029709: Numbers k such that k-th and (k+1)-th primes differ by 4.

The programs for A029709, the canonical program `A029709.P13486042084338906989` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029709 has offset 1).

The definition of A029709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029709.P13486042084338906989

`eq[4, A001223(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029709

/-- `eq[4, A001223(n+1)]+1` -/
def P13486042084338906989.Spec : Prop :=
  ∀ n, (P13486042084338906989.a n : ℤ) = A029709 (n + 1)

theorem P13486042084338906989.correct : P13486042084338906989.Spec := by
  intro n
  simp only [A029709, Nat.add_sub_cancel]

end A029709

/-! ## A029709.P1630477456279109538

`∩[A098015(n+1), A113451(n+1)]`
-/

namespace A029709.P1630477456279109538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029709.P1630477456279109538

namespace A029709

/-- `∩[A098015(n+1), A113451(n+1)]` -/
def P1630477456279109538.Spec : Prop :=
  ∀ n, (P1630477456279109538.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P15175409524613378235

`eq[4, A075526(n)]`
-/

namespace A029709.P15175409524613378235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P15175409524613378235

namespace A029709

/-- `eq[4, A075526(n)]` -/
def P15175409524613378235.Spec : Prop :=
  ∀ n, (P15175409524613378235.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P13473427269119387169

`eq[4, Δ[A028815(n)]]`
-/

namespace A029709.P13473427269119387169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P13473427269119387169

namespace A029709

/-- `eq[4, Δ[A028815(n)]]` -/
def P13473427269119387169.Spec : Prop :=
  ∀ n, (P13473427269119387169.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P12924113408153580639

`eq[4, A054541(n+1)]`
-/

namespace A029709.P12924113408153580639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P12924113408153580639

namespace A029709

/-- `eq[4, A054541(n+1)]` -/
def P12924113408153580639.Spec : Prop :=
  ∀ n, (P12924113408153580639.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P14892036285743463312

`eq[4, A125266(n+1)]`
-/

namespace A029709.P14892036285743463312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P14892036285743463312

namespace A029709

/-- `eq[4, A125266(n+1)]` -/
def P14892036285743463312.Spec : Prop :=
  ∀ n, (P14892036285743463312.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P9179435232773164268

`eq[4, A181346(n+1)]`
-/

namespace A029709.P9179435232773164268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P9179435232773164268

namespace A029709

/-- `eq[4, A181346(n+1)]` -/
def P9179435232773164268.Spec : Prop :=
  ∀ n, (P9179435232773164268.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P7931063200134779940

`eq[5, A076368(n+1)]`
-/

namespace A029709.P7931063200134779940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P7931063200134779940

namespace A029709

/-- `eq[5, A076368(n+1)]` -/
def P7931063200134779940.Spec : Prop :=
  ∀ n, (P7931063200134779940.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P2814776614739649006

`eq[5, A230846(n+1)]`
-/

namespace A029709.P2814776614739649006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P2814776614739649006

namespace A029709

/-- `eq[5, A230846(n+1)]` -/
def P2814776614739649006.Spec : Prop :=
  ∀ n, (P2814776614739649006.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P8015204564366649153

`eq[5, A230847(n+1)]`
-/

namespace A029709.P8015204564366649153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P8015204564366649153

namespace A029709

/-- `eq[5, A230847(n+1)]` -/
def P8015204564366649153.Spec : Prop :=
  ∀ n, (P8015204564366649153.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P4000314132401226258

`eq[4, Δ[A008578(n+1)]]`
-/

namespace A029709.P4000314132401226258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P4000314132401226258

namespace A029709

/-- `eq[4, Δ[A008578(n+1)]]` -/
def P4000314132401226258.Spec : Prop :=
  ∀ n, (P4000314132401226258.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P15287198270401983123

`eq[12, Δ[A112773(n+1)]]`
-/

namespace A029709.P15287198270401983123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P15287198270401983123

namespace A029709

/-- `eq[12, Δ[A112773(n+1)]]` -/
def P15287198270401983123.Spec : Prop :=
  ∀ n, (P15287198270401983123.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P3055783908882718077

`eq[2, A083269(n+1)]+1`
-/

namespace A029709.P3055783908882718077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029709.P3055783908882718077

namespace A029709

/-- `eq[2, A083269(n+1)]+1` -/
def P3055783908882718077.Spec : Prop :=
  ∀ n, (P3055783908882718077.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P13447791515427369108

`eq[2, A028334(n+2)]+2`
-/

namespace A029709.P13447791515427369108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A029709.P13447791515427369108

namespace A029709

/-- `eq[2, A028334(n+2)]+2` -/
def P13447791515427369108.Spec : Prop :=
  ∀ n, (P13447791515427369108.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P8070773967611169947

`eq[4, A230849(2*n+1)]`
-/

namespace A029709.P8070773967611169947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P8070773967611169947

namespace A029709

/-- `eq[4, A230849(2*n+1)]` -/
def P8070773967611169947.Spec : Prop :=
  ∀ n, (P8070773967611169947.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P14527206726422961408

`eq[1, Δ[A162177(n+1)]-2]`
-/

namespace A029709.P14527206726422961408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P14527206726422961408

namespace A029709

/-- `eq[1, Δ[A162177(n+1)]-2]` -/
def P14527206726422961408.Spec : Prop :=
  ∀ n, (P14527206726422961408.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P15180408635669502967

`eq[2, Δ[A000040(n+1)]-2]+1`
-/

namespace A029709.P15180408635669502967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029709.P15180408635669502967

namespace A029709

/-- `eq[2, Δ[A000040(n+1)]-2]+1` -/
def P15180408635669502967.Spec : Prop :=
  ∀ n, (P15180408635669502967.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P1003314023341047563

`eq[2, Δ[A000040(n+2)]/2]+2`
-/

namespace A029709.P1003314023341047563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A029709.P1003314023341047563

namespace A029709

/-- `eq[2, Δ[A000040(n+2)]/2]+2` -/
def P1003314023341047563.Spec : Prop :=
  ∀ n, (P1003314023341047563.a n : ℤ) = A029709 (n + 1)

end A029709

/-! ## A029709.P17954417353150548245

`A009056(eq[2, A028334(n+2)])`
-/

namespace A029709.P17954417353150548245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029709.P17954417353150548245

namespace A029709

/-- `A009056(eq[2, A028334(n+2)])` -/
def P17954417353150548245.Spec : Prop :=
  ∀ n, P17954417353150548245.a n = A029709 (n + 1)

end A029709

/-! ## A029709.P16467580164175660254

`eq[2, A001223(A028310(n))-2]`
-/

namespace A029709.P16467580164175660254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029709.P16467580164175660254

namespace A029709

/-- `eq[2, A001223(A028310(n))-2]` -/
def P16467580164175660254.Spec : Prop :=
  ∀ n, (P16467580164175660254.a n : ℤ) = A029709 (n + 1)

end A029709

/-!
# A029710: Primes such that next prime is 4 greater.

The programs for A029710, there is no canonical definition to state claims against.
-/

/-! ## A029710.P12770265218048956061

`A029708(n+1)-2`
-/

namespace A029710.P12770265218048956061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) - 2

end

end A029710.P12770265218048956061

/-! ## A029710.P1849771655600216941

`A031505(n+1)-4`
-/

namespace A029710.P1849771655600216941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) - 4

end

end A029710.P1849771655600216941

/-! ## A029710.P929442674706595682

`3*A157834(n+1)-2`
-/

namespace A029710.P929442674706595682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157834 (n + 1) - 2

end

end A029710.P929442674706595682

/-! ## A029710.P5388283574252739788

`∑[A053320(n+1)]+3`
-/

namespace A029710.P5388283574252739788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A029710.P5388283574252739788

/-! ## A029710.P13689854391839725615

`2*A111981(n+1)-1`
-/

namespace A029710.P13689854391839725615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111981 (n + 1) - 1

end

end A029710.P13689854391839725615

/-! ## A029710.P3372615474137759521

`A053320(n+1)+A015913(n+1)`
-/

namespace A029710.P3372615474137759521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053320 (n + 1) + A015913 (n + 1)

end

end A029710.P3372615474137759521

/-! ## A029710.P9152570331614004488

`A015913(n+2)`
-/

namespace A029710.P9152570331614004488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 2)

end

end A029710.P9152570331614004488

/-! ## A029710.P16129547350030615502

`Δ[A172112(n+1)]`
-/

namespace A029710.P16129547350030615502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029710.P16129547350030615502

/-! ## A029710.P12049686255992729994

`A087679(n+2)-2`
-/

namespace A029710.P12049686255992729994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 2) - 2

end

end A029710.P12049686255992729994

/-! ## A029710.P15138220325659996748

`A046132(n+2)-4`
-/

namespace A029710.P15138220325659996748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 2) - 4

end

end A029710.P15138220325659996748

/-! ## A029710.P5030590210910560833

`A165986(n+2)/2`
-/

namespace A029710.P5030590210910560833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 2) : ℚ) / 2

end

end A029710.P5030590210910560833

/-! ## A029710.P5174103475120694440

`2*A047847(n+2)+1`
-/

namespace A029710.P5174103475120694440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047847 (n + 2) + 1

end

end A029710.P5174103475120694440

/-! ## A029710.P10927673543723950409

`2*A088762(n+2)-1`
-/

namespace A029710.P10927673543723950409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 2) - 1

end

end A029710.P10927673543723950409

/-! ## A029710.P2891810258254361962

`ceil(sqrt(A143206(n+2)))-2`
-/

namespace A029710.P2891810258254361962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A143206 (n + 2) : ℝ)⌉ - 2

end

end A029710.P2891810258254361962

/-! ## A029710.P5146414036500223449

`A088762(n+2)+A047847(n+2)`
-/

namespace A029710.P5146414036500223449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 2) + A047847 (n + 2)

end

end A029710.P5146414036500223449

/-! ## A029710.P15280043153384675975

`A172112(n+2)-A172112(n+1)`
-/

namespace A029710.P15280043153384675975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 2) - A172112 (n + 1)

end

end A029710.P15280043153384675975

/-! ## A029710.P10808074636951422382

`A143206(n+2)/A031505(n+1)`
-/

namespace A029710.P10808074636951422382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143206 (n + 2) : ℚ) / (A031505 (n + 1) : ℚ)

end

end A029710.P10808074636951422382

/-! ## A029710.P12755702948676912192

`A143206(n+2)/A046132(n+2)`
-/

namespace A029710.P12755702948676912192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143206 (n + 2) : ℚ) / (A046132 (n + 2) : ℚ)

end

end A029710.P12755702948676912192

/-! ## A029710.P4536603829478716534

`A056956(n+1)+A157834(n+1)+A047847(n+2)`
-/

namespace A029710.P4536603829478716534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1) + (A157834 (n + 1) + A047847 (n + 2))

end

end A029710.P4536603829478716534

/-! ## A029710.P16940870471539184947

`A172238(n+3)`
-/

namespace A029710.P16940870471539184947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 3)

end

end A029710.P16940870471539184947

/-!
# A029711: a(n) = n^(n+1) + (n-1)^2.

The programs for A029711, the canonical program `A029711.P15920591540948397863` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029711 has offset 0).

The definition of A029711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)+(n-1)²` (program `A029711.P15920591540948397863`, by `A029711.P15920591540948397863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029711.P15920591540948397863

`n^(n+1)+(n-1)²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029711

/-- `n^(n+1)+(n-1)²` -/
def P15920591540948397863.Spec : Prop :=
  ∀ n, P15920591540948397863.a n = A029711 n

theorem P15920591540948397863.correct : P15920591540948397863.Spec := by
  intro n
  simp only [A029711]

end A029711

/-! ## A029711.P9766010309656197715

`abs(1-n*(2-A066068(n)))`
-/

namespace A029711.P9766010309656197715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) * (2 - A066068 n)|

end

end A029711.P9766010309656197715

namespace A029711

/-- `abs(1-n*(2-A066068(n)))` -/
def P9766010309656197715.Spec : Prop :=
  ∀ n, P9766010309656197715.a n = A029711 n

end A029711

/-! ## A029711.P3428984138631997762

`or(1, A007778(n)+(1-n)²-1)`
-/

namespace A029711.P3428984138631997762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007778 n + (1 - (n : ℤ)) ^ 2 - 1)

end

end A029711.P3428984138631997762

namespace A029711

/-- `or(1, A007778(n)+(1-n)²-1)` -/
def P3428984138631997762.Spec : Prop :=
  ∀ n, P3428984138631997762.a n = A029711 n

end A029711

/-! ## A029711.P14339027187352232400

`abs(A002061(n)+n^(n+1)-n)`
-/

namespace A029711.P14339027187352232400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002061 n + (n ^ (n + 1) : ℤ) - (n : ℤ)|

end

end A029711.P14339027187352232400

namespace A029711

/-- `abs(A002061(n)+n^(n+1)-n)` -/
def P14339027187352232400.Spec : Prop :=
  ∀ n, P14339027187352232400.a n = A029711 n

end A029711

/-! ## A029711.P4486780866640657326

`abs(A138748(n)-2*n-2*n-n)`
-/

namespace A029711.P4486780866640657326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138748 n - (2 * n : ℤ) - (2 * n : ℤ) - (n : ℤ)|

end

end A029711.P4486780866640657326

namespace A029711

/-- `abs(A138748(n)-2*n-2*n-n)` -/
def P4486780866640657326.Spec : Prop :=
  ∀ n, P4486780866640657326.a n = A029711 n

end A029711

/-! ## A029711.P10246442434420253499

`-(A302050(A020484(n))+n*(2-A066068(n)))`
-/

namespace A029711.P10246442434420253499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A302050 (A020484 n).toNat + (n : ℤ) * (2 - A066068 n))

end

end A029711.P10246442434420253499

namespace A029711

/-- `-(A302050(A020484(n))+n*(2-A066068(n)))` -/
def P10246442434420253499.Spec : Prop :=
  ∀ n, P10246442434420253499.a n = A029711 n

end A029711

/-!
# A029712: PDan numbers: numbers n of the form 3^A * 5^B * 7^C * 11^D with n+-2 and n+-4 prime.

The programs for A029712, there is no canonical definition to state claims against.
-/

/-! ## A029712.P15790813585095939871

`filter[A173037(n+1), A393834(#)]`
-/

namespace A029712.P15790813585095939871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393834 (f1 j).toNat = 1) n)

end

end A029712.P15790813585095939871

/-! ## A029712.P12813543540503316021

`A173037(eq[A280586(n), A338868(n+1)])`
-/

namespace A029712.P12813543540503316021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029712.P12813543540503316021

/-! ## A029712.P11389189546867944273

`A173037(A005117(n+1)%A270038(n+5))`
-/

namespace A029712.P11389189546867944273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (Int.tmod (A005117 (n + 1)) (A270038 (n + 5))).toNat

end

end A029712.P11389189546867944273

/-!
# A029713: Theta series of 6-dimensional 8-modular lattice of minimal norm 4.

The programs for A029713, there is no canonical definition to state claims against.
-/

/-! ## A029713.P14681154425357992723

`and(A101418(2*n+1), A101418(A101399(n)))`
-/

namespace A029713.P14681154425357992723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101418 (2 * n + 1)) (A101418 (A101399 n).toNat)

end

end A029713.P14681154425357992723

/-!
# A029714: a(n) = Sum_{k divides 3^n} S(k), where S is the Kempner function A002034.

The programs for A029714, the canonical program `A029714.P5145015103366028874` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029714 has offset 0).

The definition of A029714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029714.P5145015103366028874

`∑[A007844(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029714

/-- `∑[A007844(n)]` -/
def P5145015103366028874.Spec : Prop :=
  ∀ n, P5145015103366028874.a n = A029714 n

theorem P5145015103366028874.correct : P5145015103366028874.Spec := by
  intro n
  simp only [A029714]

end A029714

/-! ## A029714.P1919280715716938724

`∑[A080579(n+1)-n]-n`
-/

namespace A029714.P1919280715716938724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A029714.P1919280715716938724

namespace A029714

/-- `∑[A080579(n+1)-n]-n` -/
def P1919280715716938724.Spec : Prop :=
  ∀ n, P1919280715716938724.a n = A029714 n

end A029714

/-! ## A029714.P8613027408556077055

`a(n-1)+3*A120503(n)` with `a(0)=1`
-/

namespace A029714.P8613027408556077055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A120503 n

end

end A029714.P8613027408556077055

namespace A029714

/-- `a(n-1)+3*A120503(n)` -/
def P8613027408556077055.Spec : Prop :=
  ∀ n, P8613027408556077055.a n = A029714 n

end A029714

/-! ## A029714.P18376307716895000722

`A007844(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029714.P18376307716895000722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007844 n + a (A023443 n).toNat

end

end A029714.P18376307716895000722

namespace A029714

/-- `A007844(n)+a(A023443(n))` -/
def P18376307716895000722.Spec : Prop :=
  ∀ n, P18376307716895000722.a n = A029714 n

end A029714

/-! ## A029714.P13631701307526323206

`a(n-1)-A007844(n)*A057428(n)` with `a(0)=1`
-/

namespace A029714.P13631701307526323206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A007844 n * A057428 n

end

end A029714.P13631701307526323206

namespace A029714

/-- `a(n-1)-A007844(n)*A057428(n)` -/
def P13631701307526323206.Spec : Prop :=
  ∀ n, P13631701307526323206.a n = A029714 n

end A029714

/-! ## A029714.P18155763686659343111

`A327625(a(n-1))+A007844(n)` with `a(0)=1`
-/

namespace A029714.P18155763686659343111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327625 (a (n - 1)).toNat + A007844 n

end

end A029714.P18155763686659343111

namespace A029714

/-- `A327625(a(n-1))+A007844(n)` -/
def P18155763686659343111.Spec : Prop :=
  ∀ n, P18155763686659343111.a n = A029714 n

end A029714

/-! ## A029714.P907016268536145209

`A007844(n)+a(A002262(A027379(n)))` with `a(0)=1`
-/

namespace A029714.P907016268536145209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007844 n + a (A002262 (A027379 n).toNat).toNat

end

end A029714.P907016268536145209

namespace A029714

/-- `A007844(n)+a(A002262(A027379(n)))` -/
def P907016268536145209.Spec : Prop :=
  ∀ n, P907016268536145209.a n = A029714 n

end A029714

/-!
# A029715: a(n) = Sum_{k divides 2^n} S(k), where S is the Kempner function A002034.

The programs for A029715, the canonical program `A029715.P4140309927833293615` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029715 has offset 0).

The definition of A029715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029715.P18140537989591454154

`∑[comp[a(floor(n/2))+n]+1-n]` with `a(0)=1, a(1)=1`
-/

namespace A029715.P18140537989591454154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P18140537989591454154

namespace A029715

/-- `∑[comp[a(floor(n/2))+n]+1-n]` -/
def P18140537989591454154.Spec : Prop :=
  ∀ n, P18140537989591454154.a n = A029715 n

end A029715

/-! ## A029715.P14897778658826302127

`∑[comp[a(n-1)+val(n, 2)]-n]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A029715.P14897778658826302127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  f2 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P14897778658826302127

namespace A029715

/-- `∑[comp[a(n-1)+val(n, 2)]-n]` -/
def P14897778658826302127.Spec : Prop :=
  ∀ n, P14897778658826302127.a n = A029715 n

end A029715

/-! ## A029715.P4140309927833293615

`∑[A007843(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029715

/-- `∑[A007843(n)]` -/
def P4140309927833293615.Spec : Prop :=
  ∀ n, P4140309927833293615.a n = A029715 n

theorem P4140309927833293615.correct : P4140309927833293615.Spec := by
  intro n
  simp only [A029715]

end A029715

/-! ## A029715.P15714692758986978669

`∑[2*A046699(n+1)]-1`
-/

namespace A029715.P15714692758986978669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A029715.P15714692758986978669

namespace A029715

/-- `∑[2*A046699(n+1)]-1` -/
def P15714692758986978669.Spec : Prop :=
  ∀ n, P15714692758986978669.a n = A029715 n

end A029715

/-! ## A029715.P2244880216337888261

`∑[A080578(n+1)-n]-n`
-/

namespace A029715.P2244880216337888261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A029715.P2244880216337888261

namespace A029715

/-- `∑[A080578(n+1)-n]-n` -/
def P2244880216337888261.Spec : Prop :=
  ∀ n, P2244880216337888261.a n = A029715 n

end A029715

/-! ## A029715.P13053442949050696891

`a(n-1)+A100661(n)+n` with `a(0)=1`
-/

namespace A029715.P13053442949050696891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A100661 n + (n : ℤ))

end

end A029715.P13053442949050696891

namespace A029715

/-- `a(n-1)+A100661(n)+n` -/
def P13053442949050696891.Spec : Prop :=
  ∀ n, P13053442949050696891.a n = A029715 n

end A029715

/-! ## A029715.P17241834647312595829

`∑[A005843(A046699(n+1))]-1`
-/

namespace A029715.P17241834647312595829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A029715.P17241834647312595829

namespace A029715

/-- `∑[A005843(A046699(n+1))]-1` -/
def P17241834647312595829.Spec : Prop :=
  ∀ n, P17241834647312595829.a n = A029715 n

end A029715

/-! ## A029715.P1873205787930445980

`∑[A080578(n+1)]-A000096(n)`
-/

namespace A029715.P1873205787930445980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000096 n

end

end A029715.P1873205787930445980

namespace A029715

/-- `∑[A080578(n+1)]-A000096(n)` -/
def P1873205787930445980.Spec : Prop :=
  ∀ n, P1873205787930445980.a n = A029715 n

end A029715

/-! ## A029715.P849300175961523610

`∑[A046699(A080578(n+1))]`
-/

namespace A029715.P849300175961523610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A080578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P849300175961523610

namespace A029715

/-- `∑[A046699(A080578(n+1))]` -/
def P849300175961523610.Spec : Prop :=
  ∀ n, P849300175961523610.a n = A029715 n

end A029715

/-! ## A029715.P11507032630335985803

`∑[record[1-A213714(n)+n]-n]`
-/

namespace A029715.P11507032630335985803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213714 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P11507032630335985803

namespace A029715

/-- `∑[record[1-A213714(n)+n]-n]` -/
def P11507032630335985803.Spec : Prop :=
  ∀ n, P11507032630335985803.a n = A029715 n

end A029715

/-! ## A029715.P9306877404549513340

`A004273(∑[A046699(n+1)])`
-/

namespace A029715.P9306877404549513340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029715.P9306877404549513340

namespace A029715

/-- `A004273(∑[A046699(n+1)])` -/
def P9306877404549513340.Spec : Prop :=
  ∀ n, P9306877404549513340.a n = A029715 n

end A029715

/-!
# A029716: Partial sums of Kempner numbers A002034.

The programs for A029716, there is no canonical definition to state claims against.
-/

/-! ## A029716.P10688610280617715433

`∑[A002034(n+1)]`
-/

namespace A029716.P10688610280617715433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P10688610280617715433

/-! ## A029716.P358345929236308971

`∑[A064760(n+1)]+1`
-/

namespace A029716.P358345929236308971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029716.P358345929236308971

/-! ## A029716.P237515160884898783

`∑[A122416(n+1)-1]`
-/

namespace A029716.P237515160884898783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P237515160884898783

/-! ## A029716.P14964170270283531297

`∑[A061243(n+1)-(n+1)]`
-/

namespace A029716.P14964170270283531297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P14964170270283531297

/-! ## A029716.P2248303013330836194

`∑[A029717(n)+a(n-1)]` with `a(0)=1`
-/

namespace A029716.P2248303013330836194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029717 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P2248303013330836194

/-! ## A029716.P7571639728936359725

`∑[1-A072480(n+1)+n]+1`
-/

namespace A029716.P7571639728936359725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072480 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029716.P7571639728936359725

/-! ## A029716.P14375906662397520206

`∑[∑[A029717(A028310(n))]]`
-/

namespace A029716.P14375906662397520206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P14375906662397520206

/-! ## A029716.P9198570538419117174

`∑[A057108(n+1)+A006530(n+1)]`
-/

namespace A029716.P9198570538419117174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 1) + A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P9198570538419117174

/-! ## A029716.P15593806835054264444

`∑[A034699(n+1)-A057110(n+1)]`
-/

namespace A029716.P15593806835054264444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A057110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P15593806835054264444

/-! ## A029716.P16292967586737112592

`∑[A345931(n+1)*A345932(n+1)]`
-/

namespace A029716.P16292967586737112592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1) * A345932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P16292967586737112592

/-! ## A029716.P4184139800713608866

`a(n-1)+A002034(n+1)-A007814(A007843(n)+1)` with `a(0)=1`
-/

namespace A029716.P4184139800713608866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A002034 (n + 1) - A007814 (A007843 n + 1).toNat)

end

end A029716.P4184139800713608866

/-! ## A029716.P13210915334480956090

`∑[A002260(A061243(n+1)+∑[n])]`
-/

namespace A029716.P13210915334480956090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A061243 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P13210915334480956090

/-! ## A029716.P5831287281274900055

`∑[A002024(C(A122416(n+1), 2))]`
-/

namespace A029716.P5831287281274900055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A122416 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029716.P5831287281274900055

/-!
# A029717: First differences of Kempner numbers A002034.

The programs for A029717, there is no canonical definition to state claims against.
-/

/-! ## A029717.P9293118242188126960

`Δ[A028310(n)-A072480(n+1)]`
-/

namespace A029717.P9293118242188126960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A072480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029717.P9293118242188126960

/-! ## A029717.P15232135396463463651

`Δ[A057108(n+1)+A006530(n+1)]`
-/

namespace A029717.P15232135396463463651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 1) + A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029717.P15232135396463463651

/-! ## A029717.P17254740503671777778

`Δ[A034699(n+1)-A057110(n+1)]`
-/

namespace A029717.P17254740503671777778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A057110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029717.P17254740503671777778

/-! ## A029717.P362413219292535930

`Δ[A002034(n+1)]`
-/

namespace A029717.P362413219292535930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029717.P362413219292535930

/-! ## A029717.P18051316478949840887

`Δ[A122416(n+1)]`
-/

namespace A029717.P18051316478949840887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029717.P18051316478949840887

/-! ## A029717.P5412630269497911606

`Δ[A061243(n+1)]-1`
-/

namespace A029717.P5412630269497911606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A029717.P5412630269497911606

/-! ## A029717.P13642890882194193334

`A002034(n+2)-A002034(n+1)`
-/

namespace A029717.P13642890882194193334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 2) - A002034 (n + 1)

end

end A029717.P13642890882194193334

/-! ## A029717.P13222785865436801027

`A122416(n+2)-A122416(n+1)`
-/

namespace A029717.P13222785865436801027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 2) - A122416 (n + 1)

end

end A029717.P13222785865436801027

/-! ## A029717.P16495866552633621364

`A061243(n+2)-(A061243(n+1)+1)`
-/

namespace A029717.P16495866552633621364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 2) - (A061243 (n + 1) + 1)

end

end A029717.P16495866552633621364

/-! ## A029717.P3153141625478313365

`A061243(n+2)-A020725(A061243(n+1))`
-/

namespace A029717.P3153141625478313365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 2) - A020725 (A061243 (n + 1)).toNat

end

end A029717.P3153141625478313365

/-!
# A029718: Numbers of form 2x^2 + 2xy + 3y^2.

The programs for A029718, there is no canonical definition to state claims against.
-/

/-! ## A029718.P10410368403854858137

`lt[0, A028586(n)]`
-/

namespace A029718.P10410368403854858137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029718.P10410368403854858137

/-! ## A029718.P9518968900334590382

`eq[0, A000038(A028586(n)²)]`
-/

namespace A029718.P9518968900334590382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028586 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029718.P9518968900334590382

/-! ## A029718.P9996153315994115836

`eq[0, A028586(A028586(n)²)]`
-/

namespace A029718.P9996153315994115836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (A028586 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029718.P9996153315994115836

/-! ## A029718.P16371332837436364901

`eq[2, A040001(2*A028586(n))]`
-/

namespace A029718.P16371332837436364901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * A028586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029718.P16371332837436364901

/-! ## A029718.P16932718980793950306

`eq[A000007(n+1), A000007(A028586(n))]`
-/

namespace A029718.P16932718980793950306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A028586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P16932718980793950306

/-! ## A029718.P4501586208007270890

`eq[A000038(n+1), A000038(A028586(n))]`
-/

namespace A029718.P4501586208007270890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P4501586208007270890

/-! ## A029718.P14072290163720088271

`eq[n*A000007(n), A000007(A028586(n))]`
-/

namespace A029718.P14072290163720088271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A028586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P14072290163720088271

/-! ## A029718.P821335956425525319

`eq[n*A000038(n), A000038(A028586(n))]`
-/

namespace A029718.P821335956425525319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P821335956425525319

/-! ## A029718.P5039507702571377379

`lt[0, A033718(2*n)]`
-/

namespace A029718.P5039507702571377379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029718.P5039507702571377379

/-! ## A029718.P4500940493203943158

`record[A025480(A020669(n+1))]`
-/

namespace A029718.P4500940493203943158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029718.P4500940493203943158

/-! ## A029718.P6760978514231462059

`eq[A046698(A033718(2*n)²), A046698(n+1)]`
-/

namespace A029718.P6760978514231462059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A033718 (2 * n) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P6760978514231462059

/-! ## A029718.P3718721125242060694

`eq[A107393(A033718(2*n)²), A107393(2*n)]`
-/

namespace A029718.P3718721125242060694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A033718 (2 * n) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P3718721125242060694

/-! ## A029718.P2853993614181989657

`eq[A046698(A033718(3*n)), A046698(n+1)]`
-/

namespace A029718.P2853993614181989657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A033718 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P2853993614181989657

/-! ## A029718.P7002214854180602003

`eq[A107393(A033718(3*n)), A107393(2*n)]`
-/

namespace A029718.P7002214854180602003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A033718 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029718.P7002214854180602003

/-!
# A029720: Theta series of 8-dimensional strongly 6-modular lattice O(6) with minimal norm 3.

The programs for A029720, there is no canonical definition to state claims against.
-/

/-! ## A029720.P1366793882470460395

`∑{d}[A135806(n), #%4]`
-/

namespace A029720.P1366793882470460395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 4

end

end A029720.P1366793882470460395

/-! ## A029720.P16826893334788029376

`and(A151217(n)², A083787(n+1))`
-/

namespace A029720.P16826893334788029376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151217 n ^ 2) (A083787 (n + 1))

end

end A029720.P16826893334788029376

/-! ## A029720.P10755156602458271979

`record[A000005(A190152(n))]*A190165(n)`
-/

namespace A029720.P10755156602458271979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A190152 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A190165 n

end

end A029720.P10755156602458271979

/-!
# A029724: Odd numbers congruent to 7 mod 8 such that (2^(h(-n)+2)-n) is a square, where h(-n) is the class number.

The programs for A029724, there is no canonical definition to state claims against.
-/

/-! ## A029724.P8876539625059012226

`4*∑[A005811(A045780(n+1))]+3`
-/

namespace A029724.P8876539625059012226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A045780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A029724.P8876539625059012226

/-! ## A029724.P2548883318470247250

`A004767(∑[A005811(A045780(n+1))])`
-/

namespace A029724.P2548883318470247250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A045780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029724.P2548883318470247250

/-! ## A029724.P10219749153971952930

`A004771(eq[A000523(n+1), A261104(n)])`
-/

namespace A029724.P10219749153971952930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029724.P10219749153971952930

/-! ## A029724.P8958018916508187271

`A004771(lt[A166100(n+1), A047451(3*n+5)])`
-/

namespace A029724.P8958018916508187271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029724.P8958018916508187271

/-! ## A029724.P13209264455985475827

`record[or(7, A000005(A338520(n+1)))]`
-/

namespace A029724.P13209264455985475827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A000005 (A338520 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029724.P13209264455985475827

/-!
# A029725: Number of distinct subgroups of alternating group A_n, counting conjugates as distinct.

The programs for A029725, there is no canonical definition to state claims against.
-/

/-! ## A029725.P6876129051019526108

`∏{p}[(1-A007146(n+1))², #]`
-/

namespace A029725.P6876129051019526108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A007146 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A029725.P6876129051019526108

/-! ## A029725.P5346617725520509584

`A124156(∑{d}[A294293(n), #])`
-/

namespace A029725.P5346617725520509584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A029725.P5346617725520509584

/-! ## A029725.P3069033010115313460

`A248610(∏[∑[A005916(n)]])`
-/

namespace A029725.P3069033010115313460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029725.P3069033010115313460

/-!
# A029727: Complete list of solutions to y^2 = x^3 + 17; sequence gives y values.

The programs for A029727, there is no canonical definition to state claims against.
-/

/-! ## A029727.P1795455493320556122

`A124451(C(2, C(3, n²))+n)`
-/

namespace A029727.P1795455493320556122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124451 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A029727.P1795455493320556122

/-! ## A029727.P15932854429103332014

`record[A124451(ceil(xor(1, n)/2)+1)]`
-/

namespace A029727.P15932854429103332014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124451 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029727.P15932854429103332014

/-! ## A029727.P7924624633531604719

`A124451(n+1)+floor(acot(n-1))`
-/

namespace A029727.P7924624633531604719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124451 (n + 1) + ⌊SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌋

end

end A029727.P7924624633531604719

/-! ## A029727.P5065869185198581288

`record[A124451(Δ[ceil(n²/12)]+1)]`
-/

namespace A029727.P5065869185198581288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124451 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029727.P5065869185198581288

/-!
# A029728: Complete list of solutions to y^2 = x^3 + 17; sequence gives x values.

The programs for A029728, there is no canonical definition to state claims against.
-/

/-! ## A029728.P16743341463753927120

`A124439(C(2, C(3, n²))+n)`
-/

namespace A029728.P16743341463753927120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124439 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A029728.P16743341463753927120

/-! ## A029728.P17498292088264504138

`xor(char[n^5], A124439(n+1))`
-/

namespace A029728.P17498292088264504138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124439 (n + 1))

end

end A029728.P17498292088264504138

/-! ## A029728.P16177337819781532834

`record[A124439(ceil(xor(1, n)/2)+1)]`
-/

namespace A029728.P16177337819781532834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124439 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029728.P16177337819781532834

/-! ## A029728.P15254450663699054683

`record[A124439(Δ[ceil(n²/12)]+1)]`
-/

namespace A029728.P15254450663699054683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124439 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029728.P15254450663699054683

/-!
# A029730: Numbers that are palindromic in base 16.

The programs for A029730, there is no canonical definition to state claims against.
-/

/-! ## A029730.P15694185555731892638

`eq[0, A055965(n)]`
-/

namespace A029730.P15694185555731892638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029730.P15694185555731892638

/-! ## A029730.P6456221268203998756

`eq[n, A056962(n)]`
-/

namespace A029730.P6456221268203998756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029730.P6456221268203998756

/-! ## A029730.P16973565729473142544

`eq[2*n, A055964(n)]`
-/

namespace A029730.P16973565729473142544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029730.P16973565729473142544

/-! ## A029730.P4106731047790098410

`lt[(A005408(n)-A055964(n))², 2]`
-/

namespace A029730.P4106731047790098410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A055964 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029730.P4106731047790098410

/-! ## A029730.P9244763876409813887

`lt[A000010(abs(n-A056962(n))+1), 2]`
-/

namespace A029730.P9244763876409813887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|(n : ℤ) - A056962 n| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029730.P9244763876409813887

/-! ## A029730.P15551830671220501990

`lt[(n-A056962(n))², A000010(n+1)]`
-/

namespace A029730.P15551830671220501990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A056962 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029730.P15551830671220501990

/-! ## A029730.P8530688863571700425

`eq[n, A055964(A004525(n))]/2`
-/

namespace A029730.P8530688863571700425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 (A004525 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A029730.P8530688863571700425

/-! ## A029730.P11795461608603641971

`eq[n, A004525(A055964(n))]`
-/

namespace A029730.P11795461608603641971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A055964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029730.P11795461608603641971

/-! ## A029730.P10645278446230208070

`eq[A004277(n), A004277(A055964(n)-n)]`
-/

namespace A029730.P10645278446230208070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029730.P10645278446230208070

/-! ## A029730.P11949417282354233002

`A297289(A028310(n))%A024537(n)`
-/

namespace A029730.P11949417282354233002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297289 (A028310 n).toNat) (A024537 n)

end

end A029730.P11949417282354233002

/-! ## A029730.P7992985530653356437

`A297289(A028310(n))-A065803(A293514(n+1))`
-/

namespace A029730.P7992985530653356437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297289 (A028310 n).toNat - A065803 (A293514 (n + 1)).toNat

end

end A029730.P7992985530653356437

/-!
# A029731: Palindromic in bases 10 and 16.

The programs for A029731, there is no canonical definition to state claims against.
-/

/-! ## A029731.P3463022580486667035

`∩[A002113(n+1), A029730(n+1)]`
-/

namespace A029731.P3463022580486667035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029731.P3463022580486667035

/-! ## A029731.P13078902665648462842

`eq[n, A056962(A004086(n))]`
-/

namespace A029731.P13078902665648462842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029731.P13078902665648462842

/-! ## A029731.P15476407489203728275

`eq[n, A261423(A056962(n))]`
-/

namespace A029731.P15476407489203728275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029731.P15476407489203728275

/-! ## A029731.P18213243424104560101

`eq[n, A056962(A262038(n))]`
-/

namespace A029731.P18213243424104560101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A262038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029731.P18213243424104560101

/-! ## A029731.P2399964002540333178

`eq[n, A056962(A331472(n))]`
-/

namespace A029731.P2399964002540333178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A331472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029731.P2399964002540333178

/-!
# A029732: Palindromic primes in base 16 (or hexadecimal), but written here in base 10.

The programs for A029732, there is no canonical definition to state claims against.
-/

/-! ## A029732.P2729444449616040472

`p?[A029730(n+1)]`
-/

namespace A029732.P2729444449616040472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029732.P2729444449616040472

/-! ## A029732.P12400487545732458292

`∩[A029730(n+1), A049569(n+1)]`
-/

namespace A029732.P12400487545732458292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029732.P12400487545732458292

/-! ## A029732.P9455672102976780817

`∩[A029730(n+1), A216885(n+1)]`
-/

namespace A029732.P9455672102976780817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029732.P9455672102976780817

/-! ## A029732.P13816839399854599041

`∩[A000040(n+1), A029730(n+1)]`
-/

namespace A029732.P13816839399854599041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029732.P13816839399854599041

/-! ## A029732.P8117973788837661725

`filter[A029730(n+2), A010051(#)]`
-/

namespace A029732.P8117973788837661725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029732.P8117973788837661725

/-!
# A029733: Numbers k such that k^2 is palindromic in base 16.

The programs for A029733, there is no canonical definition to state claims against.
-/

/-! ## A029733.P5677239253199151811

`sqrt(A029734(n+1))`
-/

namespace A029733.P5677239253199151811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029734 (n + 1) : ℝ)

end

end A029733.P5677239253199151811

/-! ## A029733.P5087962491391227171

`record[sqrt(A029734(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029733.P5087962491391227171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029734 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029733.P5087962491391227171

/-! ## A029733.P605293489044588166

`A029734(A000027(n+1))^(1/2)`
-/

namespace A029733.P605293489044588166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A029733.P605293489044588166

/-! ## A029733.P4900812018939387112

`A029734(A028242(2*n))^(1/2)`
-/

namespace A029733.P4900812018939387112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (A028242 (2 * n)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A029733.P4900812018939387112

/-! ## A029733.P9022786011622143021

`A029734(n+1)^(1/A000034(2*n+1))`
-/

namespace A029733.P9022786011622143021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℚ) : ℝ)

end

end A029733.P9022786011622143021

/-! ## A029733.P8526566259557152176

`A029734(n+1)^(A000124(n)/A014206(n))`
-/

namespace A029733.P8526566259557152176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (n + 1) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ)

end

end A029733.P8526566259557152176

/-! ## A029733.P178789918851862201

`A029734(n+1)^(1/A047988(A047985(n+1)))`
-/

namespace A029733.P178789918851862201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (n + 1) : ℝ) ^ (1 / (A047988 (A047985 (n + 1)).toNat : ℚ) : ℝ)

end

end A029733.P178789918851862201

/-! ## A029733.P9563587816313122571

`A029734(n+1)^(A061142(n+1)/A061142(2*(n+1)))`
-/

namespace A029733.P9563587816313122571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (n + 1) : ℝ) ^ ((A061142 (n + 1) : ℚ) / (A061142 (2 * (n + 1)) : ℚ) : ℝ)

end

end A029733.P9563587816313122571

/-! ## A029733.P15729644282550969792

`A029734(n+1)^2^A008683(A002148(n))`
-/

namespace A029733.P15729644282550969792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029734 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) : ℝ)

end

end A029733.P15729644282550969792

/-!
# A029734: Palindromic squares in base 16.

The programs for A029734, there is no canonical definition to state claims against.
-/

/-! ## A029734.P8810592106559465408

`A029733(n+1)²`
-/

namespace A029734.P8810592106559465408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (n + 1) ^ 2

end

end A029734.P8810592106559465408

/-! ## A029734.P12192799860643739169

`record[A029733(A126759(n))²]`
-/

namespace A029734.P12192799860643739169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029734.P12192799860643739169

/-! ## A029734.P13518538249938787612

`record[A029733(A152271(n))²]`
-/

namespace A029734.P13518538249938787612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029734.P13518538249938787612

/-! ## A029734.P9533425354495026917

`A029733(A000027(n+1))^2`
-/

namespace A029734.P9533425354495026917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A000027 (n + 1)).toNat ^ 2

end

end A029734.P9533425354495026917

/-! ## A029734.P1054344465175963213

`A029733(A003602(2*n+1))^2`
-/

namespace A029734.P1054344465175963213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A003602 (2 * n + 1)).toNat ^ 2

end

end A029734.P1054344465175963213

/-! ## A029734.P15106921460560124005

`A029733(A078898(2*n)+1)^2`
-/

namespace A029734.P15106921460560124005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A078898 (2 * n) + 1).toNat ^ 2

end

end A029734.P15106921460560124005

/-! ## A029734.P4409779361074754709

`A029733(n+1)^(A054977(n)+1)`
-/

namespace A029734.P4409779361074754709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A054977 n + 1 : ℤ)

end

end A029734.P4409779361074754709

/-! ## A029734.P3556342256878176184

`A029733(n+1)^(A000007(n)+2)`
-/

namespace A029734.P3556342256878176184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029734.P3556342256878176184

/-! ## A029734.P13819500772316517764

`A029733(n+1)^(2%A141759(n))`
-/

namespace A029734.P13819500772316517764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (Int.tmod 2 (A141759 n) : ℤ)

end

end A029734.P13819500772316517764

/-! ## A029734.P11383455327553174376

`A029733(n+1)^gcd(2, A008458(n))`
-/

namespace A029734.P11383455327553174376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (n + 1) ^ Int.gcd 2 (A008458 n)

end

end A029734.P11383455327553174376

/-! ## A029734.P15396747369846724876

`A029733(n+1)^A020639(2*(n+1))`
-/

namespace A029734.P15396747369846724876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029734.P15396747369846724876

/-! ## A029734.P6410560797010362919

`A029733(n+1)^A000032(C(2, n+2))`
-/

namespace A029734.P6410560797010362919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A029734.P6410560797010362919

/-! ## A029734.P9763231253788001404

`A029733(n+1)^A000040(gcd(n, n+1))`
-/

namespace A029734.P9763231253788001404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A029734.P9763231253788001404

/-! ## A029734.P5674636040022687148

`A029733(n+1)^A000032(floor(1/(n+1)))`
-/

namespace A029734.P5674636040022687148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A029734.P5674636040022687148

/-! ## A029734.P2289877066191043749

`A029733(n+1)^A014963(A001316(n))`
-/

namespace A029734.P2289877066191043749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A029734.P2289877066191043749

/-! ## A029734.P7167803139526590339

`A029733(n+1)^A000005(A126715(n))`
-/

namespace A029734.P7167803139526590339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A000005 (A126715 n).toNat : ℤ)

end

end A029734.P7167803139526590339

/-! ## A029734.P5718251232357944638

`record[A029733(A152271(n))]*A029733(n+1)`
-/

namespace A029734.P5718251232357944638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029733 (n + 1)

end

end A029734.P5718251232357944638

/-! ## A029734.P2923648425416479099

`A029733(A000027(n+1))*A029733(n+1)`
-/

namespace A029734.P2923648425416479099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029733 (A000027 (n + 1)).toNat * A029733 (n + 1)

end

end A029734.P2923648425416479099

/-! ## A029734.P511676643398477943

`A029733(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A029734.P511676643398477943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029733 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A029734.P511676643398477943

/-!
# A029735: Numbers k such that k^3 is palindromic in base 16.

The programs for A029735, there is no canonical definition to state claims against.
-/

/-! ## A029735.P4311476734928920882

`A029736(n+1)^(1/3)`
-/

namespace A029735.P4311476734928920882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029736 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029735.P4311476734928920882

/-! ## A029735.P2163517149560133813

`A102489(A256495(n+1))`
-/

namespace A029735.P2163517149560133813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A256495 (n + 1)).toNat

end

end A029735.P2163517149560133813

/-! ## A029735.P1176566975376704383

`A102489(∩[A002113(n+1), A265747(n)])`
-/

namespace A029735.P1176566975376704383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A029735.P1176566975376704383

/-!
# A029736: Palindromic cubes in base 16.

The programs for A029736, there is no canonical definition to state claims against.
-/

/-! ## A029736.P10366872832750428515

`A029735(n+1)^3`
-/

namespace A029736.P10366872832750428515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029735 (n + 1) ^ 3

end

end A029736.P10366872832750428515

/-! ## A029736.P13407561630912176872

`A000578(A029735(n+1))`
-/

namespace A029736.P13407561630912176872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029735 (n + 1)).toNat

end

end A029736.P13407561630912176872

/-! ## A029736.P5355981721595977579

`A102489(A256495(n+1))^3`
-/

namespace A029736.P5355981721595977579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A256495 (n + 1)).toNat ^ 3

end

end A029736.P5355981721595977579

/-!
# A029737: Numbers whose square is palindromic in base 12.

The programs for A029737, there is no canonical definition to state claims against.
-/

/-! ## A029737.P18008951036975336577

`sqrt(A029738(n+1))`
-/

namespace A029737.P18008951036975336577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029738 (n + 1) : ℝ)

end

end A029737.P18008951036975336577

/-! ## A029737.P15335007818772946664

`record[sqrt(A029738(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029737.P15335007818772946664
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029738 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029737.P15335007818772946664

/-! ## A029737.P3059509087848996388

`A029738(A028242(2*n))^(1-1/2)`
-/

namespace A029737.P3059509087848996388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029738 (A028242 (2 * n)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)

end

end A029737.P3059509087848996388

/-! ## A029737.P324912329717431945

`A029738(n+1)^2^A008683(A109833(n+2))`
-/

namespace A029737.P324912329717431945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029738 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A109833 (n + 2)).toNat : ℤ) : ℝ)

end

end A029737.P324912329717431945

/-!
# A029738: Palindromic squares in base 12.

The programs for A029738, there is no canonical definition to state claims against.
-/

/-! ## A029738.P14672177960917015271

`A029737(n+1)²`
-/

namespace A029738.P14672177960917015271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029737 (n + 1) ^ 2

end

end A029738.P14672177960917015271

/-! ## A029738.P2853048725403775943

`record[A029737(A126759(n))²]`
-/

namespace A029738.P2853048725403775943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029737 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029738.P2853048725403775943

/-! ## A029738.P7516234866268816865

`A029737(A000027(n+1))^2`
-/

namespace A029738.P7516234866268816865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029737 (A000027 (n + 1)).toNat ^ 2

end

end A029738.P7516234866268816865

/-! ## A029738.P11213331228266252764

`A029737(A025480(2*(n+1)))^2`
-/

namespace A029738.P11213331228266252764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029737 (A025480 (2 * (n + 1))).toNat ^ 2

end

end A029738.P11213331228266252764

/-! ## A029738.P6570841543185765372

`A029737(n+1)^(A000007(n)+2)`
-/

namespace A029738.P6570841543185765372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029737 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029738.P6570841543185765372

/-! ## A029738.P14067050506181883952

`A029737(n+1)^A100063(3*n)`
-/

namespace A029738.P14067050506181883952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029737 (n + 1) : ℚ) ^ (A100063 (3 * n) : ℤ)

end

end A029738.P14067050506181883952

/-! ## A029738.P7966487447988068595

`A029737(n+1)^abs(A138034(3*n))`
-/

namespace A029738.P7966487447988068595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029737 (n + 1) : ℚ) ^ (|A138034 (3 * n)| : ℤ)

end

end A029738.P7966487447988068595

/-! ## A029738.P17871418398522676929

`A029737(n+1)^A000034(2*n+1)`
-/

namespace A029738.P17871418398522676929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029737 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A029738.P17871418398522676929

/-! ## A029738.P18245659538680838564

`A029737(n+1)^A020639(2*(n+1))`
-/

namespace A029738.P18245659538680838564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029737 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029738.P18245659538680838564

/-! ## A029738.P5436617341872395580

`A029737(n+1)^A000032(C(2, n+1))`
-/

namespace A029738.P5436617341872395580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029737 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 1)) : ℤ)

end

end A029738.P5436617341872395580

/-!
# A029739: Numbers that are congruent to {1, 3, 4} mod 6.

The programs for A029739, the canonical program `A029739.P13820620008039963941` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029739 has offset 1).

The definition of A029739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029739.P13820620008039963941

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029739

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P13820620008039963941.Spec : Prop :=
  ∀ n, P13820620008039963941.a n = A029739 (n + 1)

theorem P13820620008039963941.correct : P13820620008039963941.Spec := by
  intro n
  simp only [A029739, Nat.add_sub_cancel]

end A029739

/-! ## A029739.P5173455955551001272

`comp[∑[n%3]+n]`
-/

namespace A029739.P5173455955551001272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A029739.P5173455955551001272

namespace A029739

/-- `comp[∑[n%3]+n]` -/
def P5173455955551001272.Spec : Prop :=
  ∀ n, (P5173455955551001272.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P8136223578921416264

`comp[n*(n-1)%3]`
-/

namespace A029739.P8136223578921416264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((n : ℤ) - 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029739.P8136223578921416264

namespace A029739

/-- `comp[n*(n-1)%3]` -/
def P8136223578921416264.Spec : Prop :=
  ∀ n, (P8136223578921416264.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P8583365624000263003

`Δ[n²-floor(n/3)]`
-/

namespace A029739.P8583365624000263003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029739.P8583365624000263003

namespace A029739

/-- `Δ[n²-floor(n/3)]` -/
def P8583365624000263003.Spec : Prop :=
  ∀ n, P8583365624000263003.a n = A029739 (n + 1)

end A029739

/-! ## A029739.P4455426542539082877

`a(n-3)+6` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A029739.P4455426542539082877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 3) + 6

end

end A029739.P4455426542539082877

namespace A029739

/-- `a(n-3)+6` -/
def P4455426542539082877.Spec : Prop :=
  ∀ n, (P4455426542539082877.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P3879085208949563543

`∑[dr(6*n)/3]+1`
-/

namespace A029739.P3879085208949563543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (6 * n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029739.P3879085208949563543

namespace A029739

/-- `∑[dr(6*n)/3]+1` -/
def P3879085208949563543.Spec : Prop :=
  ∀ n, P3879085208949563543.a n = (A029739 (n + 1) : ℚ)

end A029739

/-! ## A029739.P9999196917014312979

`record[xor(n+1, n²%3)]`
-/

namespace A029739.P9999196917014312979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029739.P9999196917014312979

namespace A029739

/-- `record[xor(n+1, n²%3)]` -/
def P9999196917014312979.Spec : Prop :=
  ∀ n, (P9999196917014312979.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P9173133924450035452

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A029739.P9173133924450035452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P9173133924450035452

namespace A029739

/-- `∑[abs(a(n-3))]` -/
def P9173133924450035452.Spec : Prop :=
  ∀ n, (P9173133924450035452.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P6614511379049593304

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A029739.P6614511379049593304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P6614511379049593304

namespace A029739

/-- `∑[dr(a(n-3))]` -/
def P6614511379049593304.Spec : Prop :=
  ∀ n, (P6614511379049593304.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P10949233678011439204

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A029739.P10949233678011439204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P10949233678011439204

namespace A029739

/-- `∑[floor(a(n-3))]` -/
def P10949233678011439204.Spec : Prop :=
  ∀ n, (P10949233678011439204.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P2796357565986184715

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A029739.P2796357565986184715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P2796357565986184715

namespace A029739

/-- `∑[ceil(a(n-3))]` -/
def P2796357565986184715.Spec : Prop :=
  ∀ n, (P2796357565986184715.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P16795980828211183222

`∑[round(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A029739.P16795980828211183222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P16795980828211183222

namespace A029739

/-- `∑[round(a(n-3))]` -/
def P16795980828211183222.Spec : Prop :=
  ∀ n, (P16795980828211183222.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P8711947680498032965

`∑[3-(n+3)%3]-2`
-/

namespace A029739.P8711947680498032965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 3) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A029739.P8711947680498032965

namespace A029739

/-- `∑[3-(n+3)%3]-2` -/
def P8711947680498032965.Spec : Prop :=
  ∀ n, P8711947680498032965.a n = A029739 (n + 1)

end A029739

/-! ## A029739.P2592157867741612529

`(n+1)²%3+2*n`
-/

namespace A029739.P2592157867741612529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3 + 2 * n

end

end A029739.P2592157867741612529

namespace A029739

/-- `(n+1)²%3+2*n` -/
def P2592157867741612529.Spec : Prop :=
  ∀ n, (P2592157867741612529.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P15036866514908461553

`or(2*n, (2-n)²%3)`
-/

namespace A029739.P15036866514908461553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (Int.tmod ((2 - (n : ℤ)) ^ 2) 3)

end

end A029739.P15036866514908461553

namespace A029739

/-- `or(2*n, (2-n)²%3)` -/
def P15036866514908461553.Spec : Prop :=
  ∀ n, P15036866514908461553.a n = A029739 (n + 1)

end A029739

/-! ## A029739.P8439761479944247406

`comp[lcm(n+2, (n+1)%3)]`
-/

namespace A029739.P8439761479944247406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((n + 1) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A029739.P8439761479944247406

namespace A029739

/-- `comp[lcm(n+2, (n+1)%3)]` -/
def P8439761479944247406.Spec : Prop :=
  ∀ n, (P8439761479944247406.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P176339363868665410

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A029739.P176339363868665410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P176339363868665410

namespace A029739

/-- `∑[and(3, a(n-3))]` -/
def P176339363868665410.Spec : Prop :=
  ∀ n, (P176339363868665410.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P1398441080966646609

`∑[a(n-3)%n]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A029739.P1398441080966646609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P1398441080966646609

namespace A029739

/-- `∑[a(n-3)%n]` -/
def P1398441080966646609.Spec : Prop :=
  ∀ n, (P1398441080966646609.a n : ℤ) = A029739 (n + 1)

end A029739

/-! ## A029739.P15187633422281435208

`∑[4-a(a(n-2))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A029739.P15187633422281435208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  4 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029739.P15187633422281435208

namespace A029739

/-- `∑[4-a(a(n-2))]` -/
def P15187633422281435208.Spec : Prop :=
  ∀ n, P15187633422281435208.a n = A029739 (n + 1)

end A029739

/-! ## A029739.P1231450079982467714

`2*n+1-C(n, 2)%3`
-/

namespace A029739.P1231450079982467714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A029739.P1231450079982467714

namespace A029739

/-- `2*n+1-C(n, 2)%3` -/
def P1231450079982467714.Spec : Prop :=
  ∀ n, P1231450079982467714.a n = A029739 (n + 1)

end A029739

/-!
# A029740: Odd numbers with distinct digits.

The programs for A029740, the canonical program `A029740.P619217809888464575` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029740 has offset 1).

The definition of A029740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029740.P619217809888464575

`∩[2*n+1, A010784(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029740

/-- `∩[2*n+1, A010784(n+1)]` -/
def P619217809888464575.Spec : Prop :=
  ∀ n, (P619217809888464575.a n : ℤ) = A029740 (n + 1)

theorem P619217809888464575.correct : P619217809888464575.Spec := by
  intro n
  simp only [A029740, Nat.add_sub_cancel]

end A029740

/-! ## A029740.P7368108883269692543

`∩[A010784(n+1), A060747(n)]`
-/

namespace A029740.P7368108883269692543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029740.P7368108883269692543

namespace A029740

/-- `∩[A010784(n+1), A060747(n)]` -/
def P7368108883269692543.Spec : Prop :=
  ∀ n, (P7368108883269692543.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P15807480273821837277

`∩[A010784(n+1), A005843(n)+1]`
-/

namespace A029740.P15807480273821837277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029740.P15807480273821837277

namespace A029740

/-- `∩[A010784(n+1), A005843(n)+1]` -/
def P15807480273821837277.Spec : Prop :=
  ∀ n, (P15807480273821837277.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P14307754474739142595

`record[A137564(or(1, n))]`
-/

namespace A029740.P14307754474739142595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029740.P14307754474739142595

namespace A029740

/-- `record[A137564(or(1, n))]` -/
def P14307754474739142595.Spec : Prop :=
  ∀ n, P14307754474739142595.a n = A029740 (n + 1)

end A029740

/-! ## A029740.P5369708524304202444

`record[A320485(or(1, n))]`
-/

namespace A029740.P5369708524304202444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029740.P5369708524304202444

namespace A029740

/-- `record[A320485(or(1, n))]` -/
def P5369708524304202444.Spec : Prop :=
  ∀ n, P5369708524304202444.a n = A029740 (n + 1)

end A029740

/-! ## A029740.P3489300678629809159

`record[A320486(or(1, n))]`
-/

namespace A029740.P3489300678629809159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029740.P3489300678629809159

namespace A029740

/-- `record[A320486(or(1, n))]` -/
def P3489300678629809159.Spec : Prop :=
  ∀ n, P3489300678629809159.a n = A029740 (n + 1)

end A029740

/-! ## A029740.P4320622784578372108

`record[A137564(Δ[n²])]`
-/

namespace A029740.P4320622784578372108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029740.P4320622784578372108

namespace A029740

/-- `record[A137564(Δ[n²])]` -/
def P4320622784578372108.Spec : Prop :=
  ∀ n, P4320622784578372108.a n = A029740 (n + 1)

end A029740

/-! ## A029740.P12894652749457987949

`record[A320485(Δ[n²])]`
-/

namespace A029740.P12894652749457987949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029740.P12894652749457987949

namespace A029740

/-- `record[A320485(Δ[n²])]` -/
def P12894652749457987949.Spec : Prop :=
  ∀ n, P12894652749457987949.a n = A029740 (n + 1)

end A029740

/-! ## A029740.P6464162657297328889

`eq[gcd(2, n), A178788(n)]`
-/

namespace A029740.P6464162657297328889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029740.P6464162657297328889

namespace A029740

/-- `eq[gcd(2, n), A178788(n)]` -/
def P6464162657297328889.Spec : Prop :=
  ∀ n, (P6464162657297328889.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P129545515784650032

`eq[or(1, n), A137564(n)]`
-/

namespace A029740.P129545515784650032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029740.P129545515784650032

namespace A029740

/-- `eq[or(1, n), A137564(n)]` -/
def P129545515784650032.Spec : Prop :=
  ∀ n, (P129545515784650032.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P896231024138372744

`record[A320486(2*n+1)]`
-/

namespace A029740.P896231024138372744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029740.P896231024138372744

namespace A029740

/-- `record[A320486(2*n+1)]` -/
def P896231024138372744.Spec : Prop :=
  ∀ n, P896231024138372744.a n = A029740 (n + 1)

end A029740

/-! ## A029740.P7409935405420022873

`filter[2*n+1, A178788(#)]`
-/

namespace A029740.P7409935405420022873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j) = 1) n)

end

end A029740.P7409935405420022873

namespace A029740

/-- `filter[2*n+1, A178788(#)]` -/
def P7409935405420022873.Spec : Prop :=
  ∀ n, (P7409935405420022873.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P12548246412832626655

`eq[A027656(n), A107846(n)]`
-/

namespace A029740.P12548246412832626655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P12548246412832626655

namespace A029740

/-- `eq[A027656(n), A107846(n)]` -/
def P12548246412832626655.Spec : Prop :=
  ∀ n, (P12548246412832626655.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P4488679813025548279

`eq[A035363(n), A107846(n)]`
-/

namespace A029740.P4488679813025548279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P4488679813025548279

namespace A029740

/-- `eq[A035363(n), A107846(n)]` -/
def P4488679813025548279.Spec : Prop :=
  ∀ n, (P4488679813025548279.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P14788680172560831005

`eq[A035385(n), A107846(n)]`
-/

namespace A029740.P14788680172560831005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P14788680172560831005

namespace A029740

/-- `eq[A035385(n), A107846(n)]` -/
def P14788680172560831005.Spec : Prop :=
  ∀ n, (P14788680172560831005.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P10727752262942259477

`eq[A035457(n), A107846(n)]`
-/

namespace A029740.P10727752262942259477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P10727752262942259477

namespace A029740

/-- `eq[A035457(n), A107846(n)]` -/
def P10727752262942259477.Spec : Prop :=
  ∀ n, (P10727752262942259477.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P1522213198248097790

`eq[A010123(n), A178788(n)]`
-/

namespace A029740.P1522213198248097790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P1522213198248097790

namespace A029740

/-- `eq[A010123(n), A178788(n)]` -/
def P1522213198248097790.Spec : Prop :=
  ∀ n, (P1522213198248097790.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P11429245032489703626

`eq[A010127(n), A178788(n)]`
-/

namespace A029740.P11429245032489703626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P11429245032489703626

namespace A029740

/-- `eq[A010127(n), A178788(n)]` -/
def P11429245032489703626.Spec : Prop :=
  ∀ n, (P11429245032489703626.a n : ℤ) = A029740 (n + 1)

end A029740

/-! ## A029740.P9967342356141764958

`eq[A010131(n), A178788(n)]`
-/

namespace A029740.P9967342356141764958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029740.P9967342356141764958

namespace A029740

/-- `eq[A010131(n), A178788(n)]` -/
def P9967342356141764958.Spec : Prop :=
  ∀ n, (P9967342356141764958.a n : ℤ) = A029740 (n + 1)

end A029740

/-!
# A029741: Even numbers with distinct digits.

The programs for A029741, the canonical program `A029741.P12647028783667257905` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029741 has offset 1).

The definition of A029741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029741.P12647028783667257905

`∩[2*n, A010784(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029741

/-- `∩[2*n, A010784(n+1)]` -/
def P12647028783667257905.Spec : Prop :=
  ∀ n, (P12647028783667257905.a n : ℤ) = A029741 (n + 1)

theorem P12647028783667257905.correct : P12647028783667257905.Spec := by
  intro n
  simp only [A029741, Nat.add_sub_cancel]

end A029741

/-! ## A029741.P10898323269836255416

`∩[A010784(n+1), A005843(n)]`
-/

namespace A029741.P10898323269836255416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029741.P10898323269836255416

namespace A029741

/-- `∩[A010784(n+1), A005843(n)]` -/
def P10898323269836255416.Spec : Prop :=
  ∀ n, (P10898323269836255416.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P11554380759004473542

`record[A137564(2*n)]`
-/

namespace A029741.P11554380759004473542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029741.P11554380759004473542

namespace A029741

/-- `record[A137564(2*n)]` -/
def P11554380759004473542.Spec : Prop :=
  ∀ n, P11554380759004473542.a n = A029741 (n + 1)

end A029741

/-! ## A029741.P7971441870822234424

`record[A320485(2*n)]`
-/

namespace A029741.P7971441870822234424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029741.P7971441870822234424

namespace A029741

/-- `record[A320485(2*n)]` -/
def P7971441870822234424.Spec : Prop :=
  ∀ n, P7971441870822234424.a n = A029741 (n + 1)

end A029741

/-! ## A029741.P15145015589671514740

`record[A320486(2*n)]`
-/

namespace A029741.P15145015589671514740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029741.P15145015589671514740

namespace A029741

/-- `record[A320486(2*n)]` -/
def P15145015589671514740.Spec : Prop :=
  ∀ n, P15145015589671514740.a n = A029741 (n + 1)

end A029741

/-! ## A029741.P3488078299396900968

`filter[2*n, A178788(#)]`
-/

namespace A029741.P3488078299396900968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j) = 1) n)

end

end A029741.P3488078299396900968

namespace A029741

/-- `filter[2*n, A178788(#)]` -/
def P3488078299396900968.Spec : Prop :=
  ∀ n, (P3488078299396900968.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P12629543280597764414

`eq[lcm(2, n), A137564(n)]`
-/

namespace A029741.P12629543280597764414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029741.P12629543280597764414

namespace A029741

/-- `eq[lcm(2, n), A137564(n)]` -/
def P12629543280597764414.Spec : Prop :=
  ∀ n, (P12629543280597764414.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P737765905141255497

`2*eq[1, A178788(2*n)]`
-/

namespace A029741.P737765905141255497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029741.P737765905141255497

namespace A029741

/-- `2*eq[1, A178788(2*n)]` -/
def P737765905141255497.Spec : Prop :=
  ∀ n, (P737765905141255497.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P13487444336326590713

`2*lt[A107846(2*n), 1]`
-/

namespace A029741.P13487444336326590713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029741.P13487444336326590713

namespace A029741

/-- `2*lt[A107846(2*n), 1]` -/
def P13487444336326590713.Spec : Prop :=
  ∀ n, (P13487444336326590713.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P12214179863522153836

`eq[6*n%2, A107846(n)]`
-/

namespace A029741.P12214179863522153836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029741.P12214179863522153836

namespace A029741

/-- `eq[6*n%2, A107846(n)]` -/
def P12214179863522153836.Spec : Prop :=
  ∀ n, (P12214179863522153836.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P14305756749919150565

`eq[n, A137564(and(n, n+1))]`
-/

namespace A029741.P14305756749919150565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029741.P14305756749919150565

namespace A029741

/-- `eq[n, A137564(and(n, n+1))]` -/
def P14305756749919150565.Spec : Prop :=
  ∀ n, (P14305756749919150565.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P16333592621796668170

`eq[abs(a(n-2)), A178788(n)]` with `a(0)=1, a(1)=2`
-/

namespace A029741.P16333592621796668170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029741.P16333592621796668170

namespace A029741

/-- `eq[abs(a(n-2)), A178788(n)]` -/
def P16333592621796668170.Spec : Prop :=
  ∀ n, (P16333592621796668170.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P16580612589785398062

`eq[A010675(n), A107846(n)]`
-/

namespace A029741.P16580612589785398062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P16580612589785398062

namespace A029741

/-- `eq[A010675(n), A107846(n)]` -/
def P16580612589785398062.Spec : Prop :=
  ∀ n, (P16580612589785398062.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P3060731415600264324

`eq[A010676(n), A107846(n)]`
-/

namespace A029741.P3060731415600264324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P3060731415600264324

namespace A029741

/-- `eq[A010676(n), A107846(n)]` -/
def P3060731415600264324.Spec : Prop :=
  ∀ n, (P3060731415600264324.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P1142883318390317859

`eq[A010677(n), A107846(n)]`
-/

namespace A029741.P1142883318390317859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P1142883318390317859

namespace A029741

/-- `eq[A010677(n), A107846(n)]` -/
def P1142883318390317859.Spec : Prop :=
  ∀ n, (P1142883318390317859.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P470914084773405842

`eq[A010678(n), A107846(n)]`
-/

namespace A029741.P470914084773405842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P470914084773405842

namespace A029741

/-- `eq[A010678(n), A107846(n)]` -/
def P470914084773405842.Spec : Prop :=
  ∀ n, (P470914084773405842.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P1031231924018448015

`eq[A010679(n), A107846(n)]`
-/

namespace A029741.P1031231924018448015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P1031231924018448015

namespace A029741

/-- `eq[A010679(n), A107846(n)]` -/
def P1031231924018448015.Spec : Prop :=
  ∀ n, (P1031231924018448015.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P2312655541766564138

`eq[A010681(n), A107846(n)]`
-/

namespace A029741.P2312655541766564138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P2312655541766564138

namespace A029741

/-- `eq[A010681(n), A107846(n)]` -/
def P2312655541766564138.Spec : Prop :=
  ∀ n, (P2312655541766564138.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P5220572791407742957

`eq[n, A038608(A137564(n))]`
-/

namespace A029741.P5220572791407742957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029741.P5220572791407742957

namespace A029741

/-- `eq[n, A038608(A137564(n))]` -/
def P5220572791407742957.Spec : Prop :=
  ∀ n, (P5220572791407742957.a n : ℤ) = A029741 (n + 1)

end A029741

/-! ## A029741.P836976046670651488

`eq[A000034(n), A178788(n)]`
-/

namespace A029741.P836976046670651488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029741.P836976046670651488

namespace A029741

/-- `eq[A000034(n), A178788(n)]` -/
def P836976046670651488.Spec : Prop :=
  ∀ n, (P836976046670651488.a n : ℤ) = A029741 (n + 1)

end A029741

/-!
# A029742: Nonpalindromic numbers.

The programs for A029742, there is no canonical definition to state claims against.
-/

/-! ## A029742.P17002244535673821540

`comp[A082216(n)]`
-/

namespace A029742.P17002244535673821540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029742.P17002244535673821540

/-! ## A029742.P4209688148007679328

`comp[A261914(n)]`
-/

namespace A029742.P4209688148007679328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029742.P4209688148007679328

/-! ## A029742.P3061367471795338590

`comp[A330420(n)]`
-/

namespace A029742.P3061367471795338590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029742.P3061367471795338590

/-! ## A029742.P3323641404056682551

`lt[0, A261424(n)]`
-/

namespace A029742.P3323641404056682551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P3323641404056682551

/-! ## A029742.P8932863110937958350

`sqrt(A319440(n+1))`
-/

namespace A029742.P8932863110937958350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319440 (n + 1) : ℝ)

end

end A029742.P8932863110937958350

/-! ## A029742.P7961064989067623473

`comp[A002113(n+1)]`
-/

namespace A029742.P7961064989067623473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029742.P7961064989067623473

/-! ## A029742.P15859020371620706464

`comp[eq[n, A004086(n)]]`
-/

namespace A029742.P15859020371620706464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A029742.P15859020371620706464

/-! ## A029742.P17615160879397502346

`A319441(n+1)/A319440(n+1)`
-/

namespace A029742.P17615160879397502346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319441 (n + 1) : ℚ) / (A319440 (n + 1) : ℚ)

end

end A029742.P17615160879397502346

/-! ## A029742.P8549892530839260901

`lt[0, A256756(n)]`
-/

namespace A029742.P8549892530839260901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P8549892530839260901

/-! ## A029742.P2734561779991434703

`lt[0, A319387(n)]`
-/

namespace A029742.P2734561779991434703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P2734561779991434703

/-! ## A029742.P1945116386426431085

`lt[0, A338827(n)]`
-/

namespace A029742.P1945116386426431085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P1945116386426431085

/-! ## A029742.P12966041812767716487

`lt[A047813(n), n]`
-/

namespace A029742.P12966041812767716487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029742.P12966041812767716487

/-! ## A029742.P6096752586160130100

`lt[0, A262038(n)-n]`
-/

namespace A029742.P6096752586160130100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P6096752586160130100

/-! ## A029742.P1328494050691293414

`eq[A260254(n), A319468(n)]`
-/

namespace A029742.P1328494050691293414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029742.P1328494050691293414

/-! ## A029742.P13279930002430002511

`lt[0, A241173(n)]`
-/

namespace A029742.P13279930002430002511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P13279930002430002511

/-! ## A029742.P17829631310023281566

`lt[1, ∑[n]*A262257(n)]`
-/

namespace A029742.P17829631310023281566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A262257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029742.P17829631310023281566

/-! ## A029742.P15618802939648331557

`lt[char[n²], A056965(n)²]`
-/

namespace A029742.P15618802939648331557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A029742.P15618802939648331557

/-! ## A029742.P14400647235736025858

`eq[A052036(n), A052037(n)]`
-/

namespace A029742.P14400647235736025858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029742.P14400647235736025858

/-!
# A029743: Primes with distinct digits.

The programs for A029743, there is no canonical definition to state claims against.
-/

/-! ## A029743.P15644453105144951494

`∩[A050757(n+1), A052085(n+1)]`
-/

namespace A029743.P15644453105144951494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P15644453105144951494

/-! ## A029743.P14935992260995463204

`p?[A010784(n+1)]`
-/

namespace A029743.P14935992260995463204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029743.P14935992260995463204

/-! ## A029743.P14904100263793762914

`record[A006530(A010784(n+3))]`
-/

namespace A029743.P14904100263793762914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A010784 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029743.P14904100263793762914

/-! ## A029743.P13064334163684298989

`filter[A010784(n+2), A010051(#)]`
-/

namespace A029743.P13064334163684298989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029743.P13064334163684298989

/-! ## A029743.P15538659530226641754

`∩[A000040(n+1), A010784(n+1)]`
-/

namespace A029743.P15538659530226641754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P15538659530226641754

/-! ## A029743.P5566634116868056724

`∩[A010784(n+1), A050757(n+1)]`
-/

namespace A029743.P5566634116868056724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P5566634116868056724

/-! ## A029743.P9832059397975584945

`∩[A010784(n+1), A052085(n+1)]`
-/

namespace A029743.P9832059397975584945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P9832059397975584945

/-! ## A029743.P4011583522737470508

`∩[A010784(n+1), A082646(n+1)]`
-/

namespace A029743.P4011583522737470508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P4011583522737470508

/-! ## A029743.P3403379883428916919

`∩[A010784(n+1), A106118(n+1)]`
-/

namespace A029743.P3403379883428916919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P3403379883428916919

/-! ## A029743.P17170829652207389721

`∩[A050757(n+1), A266279(n+1)]`
-/

namespace A029743.P17170829652207389721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P17170829652207389721

/-! ## A029743.P13257482445230627558

`∩[A106118(n+1), A266279(n+1)]`
-/

namespace A029743.P13257482445230627558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P13257482445230627558

/-! ## A029743.P12126189987684329803

`∩[A043096(n+1), A052085(n+1)]`
-/

namespace A029743.P12126189987684329803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P12126189987684329803

/-! ## A029743.P4377396883742680602

`∩[A043096(n+1), A082646(n+1)]`
-/

namespace A029743.P4377396883742680602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P4377396883742680602

/-! ## A029743.P12198926704780524414

`∩[A082646(n+1), A160542(n+1)]`
-/

namespace A029743.P12198926704780524414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P12198926704780524414

/-! ## A029743.P14650203307493761248

`∩[A082646(n+1), A241157(n+1)]`
-/

namespace A029743.P14650203307493761248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P14650203307493761248

/-! ## A029743.P6295368150538859216

`∩[A082646(n+1), A241158(n+1)]`
-/

namespace A029743.P6295368150538859216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029743.P6295368150538859216

/-! ## A029743.P5537784195644659024

`p?[record[A137564(n)]]`
-/

namespace A029743.P5537784195644659024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029743.P5537784195644659024

/-! ## A029743.P6240055054617495036

`p?[record[A320485(n)]]`
-/

namespace A029743.P6240055054617495036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029743.P6240055054617495036

/-! ## A029743.P15937856496788481581

`p?[record[A320486(n)]]`
-/

namespace A029743.P15937856496788481581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029743.P15937856496788481581

/-! ## A029743.P6679118030703972912

`p?[n*A178788(n)]`
-/

namespace A029743.P6679118030703972912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029743.P6679118030703972912

/-!
# A029744: Numbers of the form 2^k or 3*2^k.

The programs for A029744, the canonical program `A029744.P1115822501332250061` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029744 has offset 1).

The definition of A029744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029744.P1115822501332250061

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029744

/-- `2*a(n-2)` -/
def P1115822501332250061.Spec : Prop :=
  ∀ n, (P1115822501332250061.a n : ℤ) = A029744 (n + 1)

theorem P1115822501332250061.correct : P1115822501332250061.Spec := by
  intro n
  simp only [A029744, Nat.add_sub_cancel]

end A029744

/-! ## A029744.P3884112080944504870

`2*A000029(n)-A000031(n)`
-/

namespace A029744.P3884112080944504870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000029 n - A000031 n

end

end A029744.P3884112080944504870

namespace A029744

/-- `2*A000029(n)-A000031(n)` -/
def P3884112080944504870.Spec : Prop :=
  ∀ n, P3884112080944504870.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P10368890534572825039

`∑[2^∑[char[2*(n+2)]]]`
-/

namespace A029744.P10368890534572825039
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029744.P10368890534572825039

namespace A029744

/-- `∑[2^∑[char[2*(n+2)]]]` -/
def P10368890534572825039.Spec : Prop :=
  ∀ n, (P10368890534572825039.a n : ℤ) = A029744 (n + 1)

end A029744

/-! ## A029744.P11945459564923898161

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A029744.P11945459564923898161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + a (n - 2)

end

end A029744.P11945459564923898161

namespace A029744

/-- `a(n-2)+a(n-2)` -/
def P11945459564923898161.Spec : Prop :=
  ∀ n, (P11945459564923898161.a n : ℤ) = A029744 (n + 1)

theorem P11945459564923898161.correct : P11945459564923898161.Spec := by
  intro n
  simp only [A029744, Nat.add_sub_cancel, A029744.P11945459564923898161.a, A029744.P1115822501332250061.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A029744

/-! ## A029744.P17156309591452443952

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A029744.P17156309591452443952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A029744.P17156309591452443952

namespace A029744

/-- `a(n-2)/(1-1/2)` -/
def P17156309591452443952.Spec : Prop :=
  ∀ n, P17156309591452443952.a n = (A029744 (n + 1) : ℚ)

end A029744

/-! ## A029744.P11762814478086960602

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A029744.P11762814478086960602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A029744.P11762814478086960602

namespace A029744

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P11762814478086960602.Spec : Prop :=
  ∀ n, P11762814478086960602.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P8501600444181740359

`∑[A158780(n)]+1`
-/

namespace A029744.P8501600444181740359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029744.P8501600444181740359

namespace A029744

/-- `∑[A158780(n)]+1` -/
def P8501600444181740359.Spec : Prop :=
  ∀ n, P8501600444181740359.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P86082792881888035

`A029750(A004271(n+1))`
-/

namespace A029744.P86082792881888035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A004271 (n + 1)).toNat

end

end A029744.P86082792881888035

namespace A029744

/-- `A029750(A004271(n+1))` -/
def P86082792881888035.Spec : Prop :=
  ∀ n, P86082792881888035.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P10941159548720189513

`A029750(A004278(n+1))`
-/

namespace A029744.P10941159548720189513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A004278 (n + 1)).toNat

end

end A029744.P10941159548720189513

namespace A029744

/-- `A029750(A004278(n+1))` -/
def P10941159548720189513.Spec : Prop :=
  ∀ n, P10941159548720189513.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P17231623630486411187

`A000034(n)*A074323(n)`
-/

namespace A029744.P17231623630486411187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A074323 n

end

end A029744.P17231623630486411187

namespace A029744

/-- `A000034(n)*A074323(n)` -/
def P17231623630486411187.Spec : Prop :=
  ∀ n, P17231623630486411187.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P15359332634513158088

`lcm(A072345(n), A074323(n))`
-/

namespace A029744.P15359332634513158088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072345 n) (A074323 n)

end

end A029744.P15359332634513158088

namespace A029744

/-- `lcm(A072345(n), A074323(n))` -/
def P15359332634513158088.Spec : Prop :=
  ∀ n, (P15359332634513158088.a n : ℤ) = A029744 (n + 1)

end A029744

/-! ## A029744.P2221533929871869979

`∪[A058764(n), A077552(n)]`
-/

namespace A029744.P2221533929871869979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029744.P2221533929871869979

namespace A029744

/-- `∪[A058764(n), A077552(n)]` -/
def P2221533929871869979.Spec : Prop :=
  ∀ n, (P2221533929871869979.a n : ℤ) = A029744 (n + 1)

end A029744

/-! ## A029744.P9953039493710364296

`A029747(A133223(n+1)-1)`
-/

namespace A029744.P9953039493710364296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A133223 (n + 1) - 1).toNat

end

end A029744.P9953039493710364296

namespace A029744

/-- `A029747(A133223(n+1)-1)` -/
def P9953039493710364296.Spec : Prop :=
  ∀ n, P9953039493710364296.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P546065707481898087

`A158780(n+1)+A131572(n)`
-/

namespace A029744.P546065707481898087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1) + A131572 n

end

end A029744.P546065707481898087

namespace A029744

/-- `A158780(n+1)+A131572(n)` -/
def P546065707481898087.Spec : Prop :=
  ∀ n, P546065707481898087.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P6292757865180167053

`(A000035(n)+1)*A074323(n)`
-/

namespace A029744.P6292757865180167053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A074323 n

end

end A029744.P6292757865180167053

namespace A029744

/-- `(A000035(n)+1)*A074323(n)` -/
def P6292757865180167053.Spec : Prop :=
  ∀ n, P6292757865180167053.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P3055412100751933654

`∪[A042950(n), A151821(n+1)]`
-/

namespace A029744.P3055412100751933654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029744.P3055412100751933654

namespace A029744

/-- `∪[A042950(n), A151821(n+1)]` -/
def P3055412100751933654.Spec : Prop :=
  ∀ n, (P3055412100751933654.a n : ℤ) = A029744 (n + 1)

end A029744

/-! ## A029744.P14102950701072102123

`∪[2*A063759(n), A063759(n)]`
-/

namespace A029744.P14102950701072102123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029744.P14102950701072102123

namespace A029744

/-- `∪[2*A063759(n), A063759(n)]` -/
def P14102950701072102123.Spec : Prop :=
  ∀ n, (P14102950701072102123.a n : ℤ) = A029744 (n + 1)

end A029744

/-! ## A029744.P13913680677206446402

`A016116(n+1)+A074323(n)-A016116(n)`
-/

namespace A029744.P13913680677206446402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A074323 n - A016116 n)

end

end A029744.P13913680677206446402

namespace A029744

/-- `A016116(n+1)+A074323(n)-A016116(n)` -/
def P13913680677206446402.Spec : Prop :=
  ∀ n, P13913680677206446402.a n = A029744 (n + 1)

end A029744

/-! ## A029744.P17730049262320496109

`A016116(n)+A060546(n)-A158780(n+1)`
-/

namespace A029744.P17730049262320496109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A060546 n - A158780 (n + 1))

end

end A029744.P17730049262320496109

namespace A029744

/-- `A016116(n)+A060546(n)-A158780(n+1)` -/
def P17730049262320496109.Spec : Prop :=
  ∀ n, P17730049262320496109.a n = A029744 (n + 1)

end A029744

/-!
# A029745: Expansion of (1 + 2x + 6x^2 + x^3)/(1 - 2x^2).

The programs for A029745, the canonical program `A029745.P17968957235829768865` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029745 has offset 1).

The definition of A029745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029745.P17968957235829768865

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029745

/-- `2*a(n-2)` -/
def P17968957235829768865.Spec : Prop :=
  ∀ n, (P17968957235829768865.a n : ℤ) = A029745 (n + 1)

theorem P17968957235829768865.correct : P17968957235829768865.Spec := by
  intro n
  simp only [A029745, Nat.add_sub_cancel]

end A029745

/-! ## A029745.P12923087502172366175

`a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=5`
-/

namespace A029745.P12923087502172366175
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 8, 5] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A029745.P12923087502172366175

namespace A029745

/-- `a(n-2)/sqrt(1/4)` -/
def P12923087502172366175.Spec : Prop :=
  ∀ n, P12923087502172366175.a n = (A029745 (n + 1) : ℝ)

end A029745

/-! ## A029745.P12405896334710423370

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=5`
-/

namespace A029745.P12405896334710423370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 5] fun n a =>
  a (n - 2) + a (n - 2)

end

end A029745.P12405896334710423370

namespace A029745

/-- `a(n-2)+a(n-2)` -/
def P12405896334710423370.Spec : Prop :=
  ∀ n, (P12405896334710423370.a n : ℤ) = A029745 (n + 1)

theorem P12405896334710423370.correct : P12405896334710423370.Spec := by
  intro n
  simp only [A029745, Nat.add_sub_cancel, A029745.P12405896334710423370.a, A029745.P17968957235829768865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A029745

/-! ## A029745.P549931585724050659

`A040001(n)*A094958(n+1)`
-/

namespace A029745.P549931585724050659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A094958 (n + 1)

end

end A029745.P549931585724050659

namespace A029745

/-- `A040001(n)*A094958(n+1)` -/
def P549931585724050659.Spec : Prop :=
  ∀ n, P549931585724050659.a n = A029745 (n + 1)

end A029745

/-!
# A029746: Numbers of the form 2^k or 7*2^k.

The programs for A029746, the canonical program `A029746.P3582207995524018342` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029746 has offset 0).

The definition of A029746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029746.P3582207995524018342

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029746

/-- `2*a(n-2)` -/
def P3582207995524018342.Spec : Prop :=
  ∀ n, (P3582207995524018342.a n : ℤ) = A029746 n

theorem P3582207995524018342.correct : P3582207995524018342.Spec := by
  intro n
  simp only [A029746]

end A029746

/-! ## A029746.P9179045490899126365

`a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A029746.P9179045490899126365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A029746.P9179045490899126365

namespace A029746

/-- `a(n-2)/sqrt(1/4)` -/
def P9179045490899126365.Spec : Prop :=
  ∀ n, P9179045490899126365.a n = (A029746 n : ℝ)

end A029746

/-! ## A029746.P9776419732740051291

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A029746.P9776419732740051291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  a (n - 2) + a (n - 2)

end

end A029746.P9776419732740051291

namespace A029746

/-- `a(n-2)+a(n-2)` -/
def P9776419732740051291.Spec : Prop :=
  ∀ n, (P9776419732740051291.a n : ℤ) = A029746 n

theorem P9776419732740051291.correct : P9776419732740051291.Spec := by
  intro n
  simp only [A029746, Nat.add_sub_cancel, A029746.P9776419732740051291.a, A029746.P3582207995524018342.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A029746

/-! ## A029746.P2201031178907115938

`A029749(comp[Δ[A029714(n)]])`
-/

namespace A029746.P2201031178907115938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A029746.P2201031178907115938

namespace A029746

/-- `A029749(comp[Δ[A029714(n)]])` -/
def P2201031178907115938.Spec : Prop :=
  ∀ n, P2201031178907115938.a n = A029746 n

end A029746

/-! ## A029746.P8922241565783603616

`∩[A029748(n), A029749(n)]`
-/

namespace A029746.P8922241565783603616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P8922241565783603616

namespace A029746

/-- `∩[A029748(n), A029749(n)]` -/
def P8922241565783603616.Spec : Prop :=
  ∀ n, (P8922241565783603616.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P6284223828150465529

`∪[2*A133600(n+1), A133600(n+1)]`
-/

namespace A029746.P6284223828150465529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P6284223828150465529

namespace A029746

/-- `∪[2*A133600(n+1), A133600(n+1)]` -/
def P6284223828150465529.Spec : Prop :=
  ∀ n, (P6284223828150465529.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P985815500354103669

`record[gcd(A029748(2*n+1), A029748(n))]`
-/

namespace A029746.P985815500354103669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029748 (2 * n + 1)) (A029748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029746.P985815500354103669

namespace A029746

/-- `record[gcd(A029748(2*n+1), A029748(n))]` -/
def P985815500354103669.Spec : Prop :=
  ∀ n, (P985815500354103669.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P9908780695331806414

`∩[A003591(n+1), A023758(n+1)]`
-/

namespace A029746.P9908780695331806414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P9908780695331806414

namespace A029746

/-- `∩[A003591(n+1), A023758(n+1)]` -/
def P9908780695331806414.Spec : Prop :=
  ∀ n, (P9908780695331806414.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P13867876989973134851

`∩[A003591(n+1), A175326(n+1)]`
-/

namespace A029746.P13867876989973134851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P13867876989973134851

namespace A029746

/-- `∩[A003591(n+1), A175326(n+1)]` -/
def P13867876989973134851.Spec : Prop :=
  ∀ n, (P13867876989973134851.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P14142479898617172304

`∩[A003591(n+1), A246075(n+1)]`
-/

namespace A029746.P14142479898617172304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P14142479898617172304

namespace A029746

/-- `∩[A003591(n+1), A246075(n+1)]` -/
def P14142479898617172304.Spec : Prop :=
  ∀ n, (P14142479898617172304.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P15028469879365510856

`∩[A003591(n+1), A246074(n+1)]`
-/

namespace A029746.P15028469879365510856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P15028469879365510856

namespace A029746

/-- `∩[A003591(n+1), A246074(n+1)]` -/
def P15028469879365510856.Spec : Prop :=
  ∀ n, (P15028469879365510856.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P5223558511712742612

`∩[A003591(n+1), A129523(n+1)]`
-/

namespace A029746.P5223558511712742612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P5223558511712742612

namespace A029746

/-- `∩[A003591(n+1), A129523(n+1)]` -/
def P5223558511712742612.Spec : Prop :=
  ∀ n, (P5223558511712742612.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P12023696924184365544

`∩[A003591(n+1), A103969(n+1)]`
-/

namespace A029746.P12023696924184365544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P12023696924184365544

namespace A029746

/-- `∩[A003591(n+1), A103969(n+1)]` -/
def P12023696924184365544.Spec : Prop :=
  ∀ n, (P12023696924184365544.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P2264611394764389892

`∩[A003591(n+1), A246077(n+1)]`
-/

namespace A029746.P2264611394764389892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P2264611394764389892

namespace A029746

/-- `∩[A003591(n+1), A246077(n+1)]` -/
def P2264611394764389892.Spec : Prop :=
  ∀ n, (P2264611394764389892.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P12281849142900084603

`∩[A003591(n+1), A054784(n+1)]`
-/

namespace A029746.P12281849142900084603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P12281849142900084603

namespace A029746

/-- `∩[A003591(n+1), A054784(n+1)]` -/
def P12281849142900084603.Spec : Prop :=
  ∀ n, (P12281849142900084603.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P11884385994400722951

`∩[A003591(n+1), A029750(n+1)]`
-/

namespace A029746.P11884385994400722951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P11884385994400722951

namespace A029746

/-- `∩[A003591(n+1), A029750(n+1)]` -/
def P11884385994400722951.Spec : Prop :=
  ∀ n, (P11884385994400722951.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P17490397130424130680

`∩[A003591(n+1), A029748(n)]`
-/

namespace A029746.P17490397130424130680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P17490397130424130680

namespace A029746

/-- `∩[A003591(n+1), A029748(n)]` -/
def P17490397130424130680.Spec : Prop :=
  ∀ n, (P17490397130424130680.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P5741264314451389873

`∩[A003591(n+1), A029749(n)]`
-/

namespace A029746.P5741264314451389873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P5741264314451389873

namespace A029746

/-- `∩[A003591(n+1), A029749(n)]` -/
def P5741264314451389873.Spec : Prop :=
  ∀ n, (P5741264314451389873.a n : ℤ) = A029746 n

end A029746

/-! ## A029746.P12384169776081149490

`∩[A023758(n+1), A108513(n+1)]`
-/

namespace A029746.P12384169776081149490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029746.P12384169776081149490

namespace A029746

/-- `∩[A023758(n+1), A108513(n+1)]` -/
def P12384169776081149490.Spec : Prop :=
  ∀ n, (P12384169776081149490.a n : ℤ) = A029746 n

end A029746

/-!
# A029747: Numbers of the form 2^k times 1, 3 or 5.

The programs for A029747, the canonical program `A029747.P10564958797820143106` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029747 has offset 1).

The definition of A029747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029747.P10564958797820143106

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029747

/-- `2*a(n-3)` -/
def P10564958797820143106.Spec : Prop :=
  ∀ n, (P10564958797820143106.a n : ℤ) = A029747 (n + 1)

theorem P10564958797820143106.correct : P10564958797820143106.Spec := by
  intro n
  simp only [A029747, Nat.add_sub_cancel]

end A029747

/-! ## A029747.P2430917332992829668

`∑[∏[char[3*(n+2)]+1]]`
-/

namespace A029747.P2430917332992829668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029747.P2430917332992829668

namespace A029747

/-- `∑[∏[char[3*(n+2)]+1]]` -/
def P2430917332992829668.Spec : Prop :=
  ∀ n, (P2430917332992829668.a n : ℤ) = A029747 (n + 1)

end A029747

/-! ## A029747.P2680467536117696675

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A029747.P2680467536117696675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  a (n - 3) + a (n - 3)

end

end A029747.P2680467536117696675

namespace A029747

/-- `a(n-3)+a(n-3)` -/
def P2680467536117696675.Spec : Prop :=
  ∀ n, (P2680467536117696675.a n : ℤ) = A029747 (n + 1)

theorem P2680467536117696675.correct : P2680467536117696675.Spec := by
  intro n
  simp only [A029747, Nat.add_sub_cancel, A029747.P2680467536117696675.a, A029747.P10564958797820143106.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A029747

/-! ## A029747.P10943639372470319866

`∑[A158780(floor(comp[2*n]/3))]+1`
-/

namespace A029747.P10943639372470319866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 ⌊(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029747.P10943639372470319866

namespace A029747

/-- `∑[A158780(floor(comp[2*n]/3))]+1` -/
def P10943639372470319866.Spec : Prop :=
  ∀ n, P10943639372470319866.a n = A029747 (n + 1)

end A029747

/-! ## A029747.P12455497053645604239

`A246074(A004279(n))`
-/

namespace A029747.P12455497053645604239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (A004279 n).toNat

end

end A029747.P12455497053645604239

namespace A029747

/-- `A246074(A004279(n))` -/
def P12455497053645604239.Spec : Prop :=
  ∀ n, P12455497053645604239.a n = A029747 (n + 1)

end A029747

/-! ## A029747.P15953987969102325257

`A029750(A107750(n)+1)`
-/

namespace A029747.P15953987969102325257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A107750 n + 1).toNat

end

end A029747.P15953987969102325257

namespace A029747

/-- `A029750(A107750(n)+1)` -/
def P15953987969102325257.Spec : Prop :=
  ∀ n, P15953987969102325257.a n = A029747 (n + 1)

end A029747

/-! ## A029747.P7352636015641378439

`A246074(A004272(n+1))`
-/

namespace A029747.P7352636015641378439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (A004272 (n + 1)).toNat

end

end A029747.P7352636015641378439

namespace A029747

/-- `A246074(A004272(n+1))` -/
def P7352636015641378439.Spec : Prop :=
  ∀ n, P7352636015641378439.a n = A029747 (n + 1)

end A029747

/-! ## A029747.P1703139206407021104

`∪[A094958(n+1), A063759(n)]`
-/

namespace A029747.P1703139206407021104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029747.P1703139206407021104

namespace A029747

/-- `∪[A094958(n+1), A063759(n)]` -/
def P1703139206407021104.Spec : Prop :=
  ∀ n, (P1703139206407021104.a n : ℤ) = A029747 (n + 1)

end A029747

/-! ## A029747.P12653510860551313961

`A320674(n+1)/2`
-/

namespace A029747.P12653510860551313961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320674 (n + 1) : ℚ) / 2

end

end A029747.P12653510860551313961

namespace A029747

/-- `A320674(n+1)/2` -/
def P12653510860551313961.Spec : Prop :=
  ∀ n, P12653510860551313961.a n = (A029747 (n + 1) : ℚ)

end A029747

/-! ## A029747.P350152520723118730

`A246074(2*(n+1))/2`
-/

namespace A029747.P350152520723118730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246074 (2 * (n + 1)) : ℚ) / 2

end

end A029747.P350152520723118730

namespace A029747

/-- `A246074(2*(n+1))/2` -/
def P350152520723118730.Spec : Prop :=
  ∀ n, P350152520723118730.a n = (A029747 (n + 1) : ℚ)

end A029747

/-! ## A029747.P11058562817120332967

`(A200672(n+1)+A158799(n))/2`
-/

namespace A029747.P11058562817120332967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200672 (n + 1) + A158799 n : ℚ) / 2

end

end A029747.P11058562817120332967

namespace A029747

/-- `(A200672(n+1)+A158799(n))/2` -/
def P11058562817120332967.Spec : Prop :=
  ∀ n, P11058562817120332967.a n = (A029747 (n + 1) : ℚ)

end A029747

/-! ## A029747.P4841750094787666510

`and(A076970(n+1), A152829(n+1))`
-/

namespace A029747.P4841750094787666510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076970 (n + 1)) (A152829 (n + 1))

end

end A029747.P4841750094787666510

namespace A029747

/-- `and(A076970(n+1), A152829(n+1))` -/
def P4841750094787666510.Spec : Prop :=
  ∀ n, P4841750094787666510.a n = A029747 (n + 1)

end A029747

/-! ## A029747.P17539467519053539027

`∩[A003401(n+1), A246075(n+1)]`
-/

namespace A029747.P17539467519053539027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029747.P17539467519053539027

namespace A029747

/-- `∩[A003401(n+1), A246075(n+1)]` -/
def P17539467519053539027.Spec : Prop :=
  ∀ n, (P17539467519053539027.a n : ℤ) = A029747 (n + 1)

end A029747

/-! ## A029747.P14332751575468599002

`∩[A003401(n+1), A029750(n+1)]`
-/

namespace A029747.P14332751575468599002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029747.P14332751575468599002

namespace A029747

/-- `∩[A003401(n+1), A029750(n+1)]` -/
def P14332751575468599002.Spec : Prop :=
  ∀ n, (P14332751575468599002.a n : ℤ) = A029747 (n + 1)

end A029747

/-! ## A029747.P13202028488497402993

`∩[A029750(n+1), A064390(n+1)]`
-/

namespace A029747.P13202028488497402993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029747.P13202028488497402993

namespace A029747

/-- `∩[A029750(n+1), A064390(n+1)]` -/
def P13202028488497402993.Spec : Prop :=
  ∀ n, (P13202028488497402993.a n : ℤ) = A029747 (n + 1)

end A029747

/-!
# A029748: Numbers of the form 2^k times 1, 3 or 7.

The programs for A029748, the canonical program `A029748.P11017937729132809984` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029748 has offset 0).

The definition of A029748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029748.P11017937729132809984

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029748

/-- `2*a(n-3)` -/
def P11017937729132809984.Spec : Prop :=
  ∀ n, (P11017937729132809984.a n : ℤ) = A029748 n

theorem P11017937729132809984.correct : P11017937729132809984.Spec := by
  intro n
  simp only [A029748]

end A029748

/-! ## A029748.P14503048552608531535

`∑[A076736(∑[n²%3]+1)]`
-/

namespace A029748.P14503048552608531535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029748.P14503048552608531535

namespace A029748

/-- `∑[A076736(∑[n²%3]+1)]` -/
def P14503048552608531535.Spec : Prop :=
  ∀ n, P14503048552608531535.a n = A029748 n

end A029748

/-! ## A029748.P4757506598290541820

`∑[A076736(round((2*n+1)/3)+1)]`
-/

namespace A029748.P4757506598290541820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029748.P4757506598290541820

namespace A029748

/-- `∑[A076736(round((2*n+1)/3)+1)]` -/
def P4757506598290541820.Spec : Prop :=
  ∀ n, P4757506598290541820.a n = A029748 n

end A029748

/-! ## A029748.P1814155689972325214

`A029750(A319371(n+1))`
-/

namespace A029748.P1814155689972325214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A319371 (n + 1)).toNat

end

end A029748.P1814155689972325214

namespace A029748

/-- `A029750(A319371(n+1))` -/
def P1814155689972325214.Spec : Prop :=
  ∀ n, P1814155689972325214.a n = A029748 n

end A029748

/-! ## A029748.P7571876707542679311

`∪[A029746(n), A063759(n)]`
-/

namespace A029748.P7571876707542679311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P7571876707542679311

namespace A029748

/-- `∪[A029746(n), A063759(n)]` -/
def P7571876707542679311.Spec : Prop :=
  ∀ n, (P7571876707542679311.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P14141343562993997220

`A029750(∑[A107751(n+1)])`
-/

namespace A029748.P14141343562993997220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029748.P14141343562993997220

namespace A029748

/-- `A029750(∑[A107751(n+1)])` -/
def P14141343562993997220.Spec : Prop :=
  ∀ n, P14141343562993997220.a n = A029748 n

end A029748

/-! ## A029748.P17360035009681043199

`A029750(A004772(n+1)+A000007(n))`
-/

namespace A029748.P17360035009681043199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A004772 (n + 1) + A000007 n).toNat

end

end A029748.P17360035009681043199

namespace A029748

/-- `A029750(A004772(n+1)+A000007(n))` -/
def P17360035009681043199.Spec : Prop :=
  ∀ n, P17360035009681043199.a n = A029748 n

end A029748

/-! ## A029748.P10603869097760644320

`A029749(n)-A158780(A004523(n))`
-/

namespace A029748.P10603869097760644320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n - A158780 (A004523 n).toNat

end

end A029748.P10603869097760644320

namespace A029748

/-- `A029749(n)-A158780(A004523(n))` -/
def P10603869097760644320.Spec : Prop :=
  ∀ n, P10603869097760644320.a n = A029748 n

end A029748

/-! ## A029748.P1405791841235765105

`record[A000959(A002260(n+1))*A130321(n)]`
-/

namespace A029748.P1405791841235765105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A002260 (n + 1)).toNat * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029748.P1405791841235765105

namespace A029748

/-- `record[A000959(A002260(n+1))*A130321(n)]` -/
def P1405791841235765105.Spec : Prop :=
  ∀ n, P1405791841235765105.a n = A029748 n

end A029748

/-! ## A029748.P481447971602531259

`record[A002061(A002262(n))*A057728(n+1)]`
-/

namespace A029748.P481447971602531259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002262 n).toNat * A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029748.P481447971602531259

namespace A029748

/-- `record[A002061(A002262(n))*A057728(n+1)]` -/
def P481447971602531259.Spec : Prop :=
  ∀ n, P481447971602531259.a n = A029748 n

end A029748

/-! ## A029748.P8910752976770354045

`∩[A023758(n+1), A246075(n+1)]`
-/

namespace A029748.P8910752976770354045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P8910752976770354045

namespace A029748

/-- `∩[A023758(n+1), A246075(n+1)]` -/
def P8910752976770354045.Spec : Prop :=
  ∀ n, (P8910752976770354045.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P4246271419578182811

`∩[A023758(n+1), A029750(n+1)]`
-/

namespace A029748.P4246271419578182811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P4246271419578182811

namespace A029748

/-- `∩[A023758(n+1), A029750(n+1)]` -/
def P4246271419578182811.Spec : Prop :=
  ∀ n, (P4246271419578182811.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P18201529588313157322

`∩[A108319(n+1), A191281(n+1)]`
-/

namespace A029748.P18201529588313157322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P18201529588313157322

namespace A029748

/-- `∩[A108319(n+1), A191281(n+1)]` -/
def P18201529588313157322.Spec : Prop :=
  ∀ n, (P18201529588313157322.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P9940922863695368815

`∩[A191281(n+1), A342950(n+1)]`
-/

namespace A029748.P9940922863695368815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P9940922863695368815

namespace A029748

/-- `∩[A191281(n+1), A342950(n+1)]` -/
def P9940922863695368815.Spec : Prop :=
  ∀ n, (P9940922863695368815.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P15123767974410550160

`∩[A023758(n+1), A191282(n+1)]`
-/

namespace A029748.P15123767974410550160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P15123767974410550160

namespace A029748

/-- `∩[A023758(n+1), A191282(n+1)]` -/
def P15123767974410550160.Spec : Prop :=
  ∀ n, (P15123767974410550160.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P2490124947311843827

`∩[A129523(n+1), A191282(n+1)]`
-/

namespace A029748.P2490124947311843827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P2490124947311843827

namespace A029748

/-- `∩[A129523(n+1), A191282(n+1)]` -/
def P2490124947311843827.Spec : Prop :=
  ∀ n, (P2490124947311843827.a n : ℤ) = A029748 n

end A029748

/-! ## A029748.P9534773757640913566

`∩[A002473(n+1), A191281(n+1)]`
-/

namespace A029748.P9534773757640913566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029748.P9534773757640913566

namespace A029748

/-- `∩[A002473(n+1), A191281(n+1)]` -/
def P9534773757640913566.Spec : Prop :=
  ∀ n, (P9534773757640913566.a n : ℤ) = A029748 n

end A029748

/-!
# A029749: Numbers of the form 2^k times 1, 5 or 7.

The programs for A029749, the canonical program `A029749.P3177627627170957820` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029749 has offset 0).

The definition of A029749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029749.P3177627627170957820

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029749

/-- `2*a(n-3)` -/
def P3177627627170957820.Spec : Prop :=
  ∀ n, (P3177627627170957820.a n : ℤ) = A029749 n

theorem P3177627627170957820.correct : P3177627627170957820.Spec := by
  intro n
  simp only [A029749]

end A029749

/-! ## A029749.P2964389225534771273

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A029749.P2964389225534771273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 7] fun n a =>
  a (n - 3) + a (n - 3)

end

end A029749.P2964389225534771273

namespace A029749

/-- `a(n-3)+a(n-3)` -/
def P2964389225534771273.Spec : Prop :=
  ∀ n, (P2964389225534771273.a n : ℤ) = A029749 n

theorem P2964389225534771273.correct : P2964389225534771273.Spec := by
  intro n
  simp only [A029749, Nat.add_sub_cancel, A029749.P2964389225534771273.a, A029749.P3177627627170957820.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A029749

/-! ## A029749.P7687148709424753492

`∪[A094958(n+1), A029746(n)]`
-/

namespace A029749.P7687148709424753492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029749.P7687148709424753492

namespace A029749

/-- `∪[A094958(n+1), A029746(n)]` -/
def P7687148709424753492.Spec : Prop :=
  ∀ n, (P7687148709424753492.a n : ℤ) = A029749 n

end A029749

/-! ## A029749.P10847114992945576925

`∑[A000079((n+1)%A086161(n))]`
-/

namespace A029749.P10847114992945576925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (n + 1 : ℤ) (A086161 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029749.P10847114992945576925

namespace A029749

/-- `∑[A000079((n+1)%A086161(n))]` -/
def P10847114992945576925.Spec : Prop :=
  ∀ n, P10847114992945576925.a n = A029749 n

end A029749

/-! ## A029749.P8844537821753212394

`∑[abs(A117575(A173773(n)%(n+2)+1))]`
-/

namespace A029749.P8844537821753212394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 (Int.tmod (A173773 n) (n + 2 : ℤ) + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029749.P8844537821753212394

namespace A029749

/-- `∑[abs(A117575(A173773(n)%(n+2)+1))]` -/
def P8844537821753212394.Spec : Prop :=
  ∀ n, P8844537821753212394.a n = A029749 n

end A029749

/-! ## A029749.P6528448592887513078

`A158780(A004523(n))+A029748(n)`
-/

namespace A029749.P6528448592887513078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A004523 n).toNat + A029748 n

end

end A029749.P6528448592887513078

namespace A029749

/-- `A158780(A004523(n))+A029748(n)` -/
def P6528448592887513078.Spec : Prop :=
  ∀ n, P6528448592887513078.a n = A029749 n

end A029749

/-! ## A029749.P4449926021203995476

`3*A029747(n)-a(n-1)` with `a(0)=1`
-/

namespace A029749.P4449926021203995476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A029747 n - a (n - 1)

end

end A029749.P4449926021203995476

namespace A029749

/-- `3*A029747(n)-a(n-1)` -/
def P4449926021203995476.Spec : Prop :=
  ∀ n, P4449926021203995476.a n = A029749 n

end A029749

/-! ## A029749.P13489043572197364740

`∑[A059268(lt[A059268(n+4), 5])]`
-/

namespace A029749.P13489043572197364740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029749.P13489043572197364740

namespace A029749

/-- `∑[A059268(lt[A059268(n+4), 5])]` -/
def P13489043572197364740.Spec : Prop :=
  ∀ n, P13489043572197364740.a n = A029749 n

end A029749

/-! ## A029749.P3253718899010060625

`record[gcd(A029750(3*n+1), A029750(n+1))]`
-/

namespace A029749.P3253718899010060625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029750 (3 * n + 1)) (A029750 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029749.P3253718899010060625

namespace A029749

/-- `record[gcd(A029750(3*n+1), A029750(n+1))]` -/
def P3253718899010060625.Spec : Prop :=
  ∀ n, (P3253718899010060625.a n : ℤ) = A029749 n

end A029749

/-! ## A029749.P8420568784018004442

`∩[A108513(n+1), A129523(n+1)]`
-/

namespace A029749.P8420568784018004442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029749.P8420568784018004442

namespace A029749

/-- `∩[A108513(n+1), A129523(n+1)]` -/
def P8420568784018004442.Spec : Prop :=
  ∀ n, (P8420568784018004442.a n : ℤ) = A029749 n

end A029749

/-! ## A029749.P2513061784299682118

`∩[A108513(n+1), A246075(n+1)]`
-/

namespace A029749.P2513061784299682118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029749.P2513061784299682118

namespace A029749

/-- `∩[A108513(n+1), A246075(n+1)]` -/
def P2513061784299682118.Spec : Prop :=
  ∀ n, (P2513061784299682118.a n : ℤ) = A029749 n

end A029749

/-! ## A029749.P4511855530337005004

`∩[A108513(n+1), A246074(n+1)]`
-/

namespace A029749.P4511855530337005004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029749.P4511855530337005004

namespace A029749

/-- `∩[A108513(n+1), A246074(n+1)]` -/
def P4511855530337005004.Spec : Prop :=
  ∀ n, (P4511855530337005004.a n : ℤ) = A029749 n

end A029749

/-! ## A029749.P14500618831985770740

`∩[A103969(n+1), A108513(n+1)]`
-/

namespace A029749.P14500618831985770740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029749.P14500618831985770740

namespace A029749

/-- `∩[A103969(n+1), A108513(n+1)]` -/
def P14500618831985770740.Spec : Prop :=
  ∀ n, (P14500618831985770740.a n : ℤ) = A029749 n

end A029749

/-! ## A029749.P2011815541618444369

`record[lcm(3, A257727(n+1))/3]`
-/

namespace A029749.P2011815541618444369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A257727 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029749.P2011815541618444369

namespace A029749

/-- `record[lcm(3, A257727(n+1))/3]` -/
def P2011815541618444369.Spec : Prop :=
  ∀ n, P2011815541618444369.a n = (A029749 n : ℚ)

end A029749

/-!
# A029750: List of numbers of the form 2^k times 1, 3, 5 or 7.

The programs for A029750, the canonical program `A029750.P3814528908333376430` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029750 has offset 1).

The definition of A029750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029750.P3814528908333376430

`2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029750

/-- `2*a(n-4)` -/
def P3814528908333376430.Spec : Prop :=
  ∀ n, (P3814528908333376430.a n : ℤ) = A029750 (n + 1)

theorem P3814528908333376430.correct : P3814528908333376430.Spec := by
  intro n
  simp only [A029750, Nat.add_sub_cancel]

end A029750

/-! ## A029750.P17274854575333746717

`∑[round(2^(floor(n/4)-1))]`
-/

namespace A029750.P17274854575333746717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029750.P17274854575333746717

namespace A029750

/-- `∑[round(2^(floor(n/4)-1))]` -/
def P17274854575333746717.Spec : Prop :=
  ∀ n, P17274854575333746717.a n = A029750 (n + 1)

end A029750

/-! ## A029750.P11675650161639988130

`A385396(n+1)+1`
-/

namespace A029750.P11675650161639988130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (n + 1) + 1

end

end A029750.P11675650161639988130

namespace A029750

/-- `A385396(n+1)+1` -/
def P11675650161639988130.Spec : Prop :=
  ∀ n, P11675650161639988130.a n = A029750 (n + 1)

end A029750

/-! ## A029750.P11351353645765932568

`∪[A029748(n), A029749(n)]`
-/

namespace A029750.P11351353645765932568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029750.P11351353645765932568

namespace A029750

/-- `∪[A029748(n), A029749(n)]` -/
def P11351353645765932568.Spec : Prop :=
  ∀ n, (P11351353645765932568.a n : ℤ) = A029750 (n + 1)

end A029750

/-! ## A029750.P12773919654610791332

`A011782(A002265(n))+a(n-1)` with `a(0)=1`
-/

namespace A029750.P12773919654610791332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (A002265 n).toNat + a (n - 1)

end

end A029750.P12773919654610791332

namespace A029750

/-- `A011782(A002265(n))+a(n-1)` -/
def P12773919654610791332.Spec : Prop :=
  ∀ n, P12773919654610791332.a n = A029750 (n + 1)

end A029750

/-! ## A029750.P8660267615640958870

`A166444(A047201(n+1)-n)+a(n-1)` with `a(0)=1`
-/

namespace A029750.P8660267615640958870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A166444 (A047201 (n + 1) - (n : ℤ)).toNat + a (n - 1)

end

end A029750.P8660267615640958870

namespace A029750

/-- `A166444(A047201(n+1)-n)+a(n-1)` -/
def P8660267615640958870.Spec : Prop :=
  ∀ n, P8660267615640958870.a n = A029750 (n + 1)

end A029750

/-! ## A029750.P12459495204591263016

`∪[A029746(n), A029747(A114119(n))]`
-/

namespace A029750.P12459495204591263016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A114119 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029750.P12459495204591263016

namespace A029750

/-- `∪[A029746(n), A029747(A114119(n))]` -/
def P12459495204591263016.Spec : Prop :=
  ∀ n, (P12459495204591263016.a n : ℤ) = A029750 (n + 1)

end A029750

/-! ## A029750.P14155379742704052662

`record[A257727(n+1)]`
-/

namespace A029750.P14155379742704052662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029750.P14155379742704052662

namespace A029750

/-- `record[A257727(n+1)]` -/
def P14155379742704052662.Spec : Prop :=
  ∀ n, P14155379742704052662.a n = A029750 (n + 1)

end A029750

/-! ## A029750.P14616925166170808965

`record[A246377(A257730(n+1))]`
-/

namespace A029750.P14616925166170808965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A257730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029750.P14616925166170808965

namespace A029750

/-- `record[A246377(A257730(n+1))]` -/
def P14616925166170808965.Spec : Prop :=
  ∀ n, P14616925166170808965.a n = A029750 (n + 1)

end A029750

/-! ## A029750.P11712962402081402127

`record[A257725(A257801(n+1))]`
-/

namespace A029750.P11712962402081402127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029750.P11712962402081402127

namespace A029750

/-- `record[A257725(A257801(n+1))]` -/
def P11712962402081402127.Spec : Prop :=
  ∀ n, P11712962402081402127.a n = A029750 (n + 1)

end A029750

/-!
# A029752: Theta series of any of the 5 extremal odd unimodular 32-dimensional lattices (with minimal norm 4).

The programs for A029752, there is no canonical definition to state claims against.
-/

/-! ## A029752.P11943277168165943764

`A000122(n)*A098542(A294365(n))`
-/

namespace A029752.P11943277168165943764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A098542 (A294365 n).toNat

end

end A029752.P11943277168165943764

/-!
# A029757: a(n) = 5^n mod 2^n.

The programs for A029757, the canonical program `A029757.P15189150904944241081` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029757 has offset 0).

The definition of A029757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029757.P15189150904944241081

`A139735(n)/2^n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029757

/-- `A139735(n)/2^n` -/
def P15189150904944241081.Spec : Prop :=
  ∀ n, P15189150904944241081.a n = (A029757 n : ℚ)

end A029757

/-! ## A029757.P8850646003334306508

`A138589(n)%A000079(n)`
-/

namespace A029757.P8850646003334306508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138589 n) (A000079 n)

end

end A029757.P8850646003334306508

namespace A029757

/-- `A138589(n)%A000079(n)` -/
def P8850646003334306508.Spec : Prop :=
  ∀ n, P8850646003334306508.a n = A029757 n

end A029757

/-! ## A029757.P4268817618054596725

`and(A000225(n), A138589(n))`
-/

namespace A029757.P4268817618054596725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A138589 n)

end

end A029757.P4268817618054596725

namespace A029757

/-- `and(A000225(n), A138589(n))` -/
def P4268817618054596725.Spec : Prop :=
  ∀ n, P4268817618054596725.a n = A029757 n

end A029757

/-! ## A029757.P9724468012751002746

`and(A036563(n), A138589(n))`
-/

namespace A029757.P9724468012751002746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036563 n) (A138589 n)

end

end A029757.P9724468012751002746

namespace A029757

/-- `and(A036563(n), A138589(n))` -/
def P9724468012751002746.Spec : Prop :=
  ∀ n, P9724468012751002746.a n = A029757 n

end A029757

/-! ## A029757.P2621978362361051072

`and(A099393(n), A138589(n))`
-/

namespace A029757.P2621978362361051072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099393 n) (A138589 n)

end

end A029757.P2621978362361051072

namespace A029757

/-- `and(A099393(n), A138589(n))` -/
def P2621978362361051072.Spec : Prop :=
  ∀ n, P2621978362361051072.a n = A029757 n

end A029757

/-! ## A029757.P16477057796175469723

`and(A138589(n), A166956(n))`
-/

namespace A029757.P16477057796175469723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138589 n) (A166956 n)

end

end A029757.P16477057796175469723

namespace A029757

/-- `and(A138589(n), A166956(n))` -/
def P16477057796175469723.Spec : Prop :=
  ∀ n, P16477057796175469723.a n = A029757 n

end A029757

/-! ## A029757.P14605912302192042127

`and(A138589(n), A255047(n))`
-/

namespace A029757.P14605912302192042127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138589 n) (A255047 n)

end

end A029757.P14605912302192042127

namespace A029757

/-- `and(A138589(n), A255047(n))` -/
def P14605912302192042127.Spec : Prop :=
  ∀ n, P14605912302192042127.a n = A029757 n

end A029757

/-! ## A029757.P9233160841001895783

`and(A000918(n)+1, A138589(n))`
-/

namespace A029757.P9233160841001895783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n + 1) (A138589 n)

end

end A029757.P9233160841001895783

namespace A029757

/-- `and(A000918(n)+1, A138589(n))` -/
def P9233160841001895783.Spec : Prop :=
  ∀ n, P9233160841001895783.a n = A029757 n

end A029757

/-! ## A029757.P1574323549511140376

`and(A092431(n+1), A138589(n))`
-/

namespace A029757.P1574323549511140376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092431 (n + 1)) (A138589 n)

end

end A029757.P1574323549511140376

namespace A029757

/-- `and(A092431(n+1), A138589(n))` -/
def P1574323549511140376.Spec : Prop :=
  ∀ n, P1574323549511140376.a n = A029757 n

end A029757

/-! ## A029757.P11747235013291575974

`(5^n)%(2^n)`
-/

namespace A029757.P11747235013291575974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n % 2 ^ n

end

end A029757.P11747235013291575974

namespace A029757

/-- `(5^n)%(2^n)` -/
def P11747235013291575974.Spec : Prop :=
  ∀ n, (P11747235013291575974.a n : ℤ) = A029757 n

end A029757

/-! ## A029757.P514858334037993033

`and(2^n-1, 5^n)`
-/

namespace A029757.P514858334037993033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 1) (5 ^ n : ℤ)

end

end A029757.P514858334037993033

namespace A029757

/-- `and(2^n-1, 5^n)` -/
def P514858334037993033.Spec : Prop :=
  ∀ n, P514858334037993033.a n = A029757 n

end A029757

/-!
# A029758: Number of AVL trees of height n.

The programs for A029758, the canonical program `A029758.P8138977406896934418` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029758 has offset 0).

The definition of A029758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029758.P8138977406896934418

`a(n-1)*(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029758

/-- `a(n-1)*(a(n-1)+2*a(n-2))` -/
def P8138977406896934418.Spec : Prop :=
  ∀ n, (P8138977406896934418.a n : ℤ) = A029758 n

theorem P8138977406896934418.correct : P8138977406896934418.Spec := by
  intro n
  simp only [A029758]

end A029758

/-! ## A029758.P8621983659408405878

`(a(n-1)+a(n-2))²-a(n-2)²` with `a(0)=1, a(1)=1`
-/

namespace A029758.P8621983659408405878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) ^ 2 - a (n - 2) ^ 2

end

end A029758.P8621983659408405878

namespace A029758

/-- `(a(n-1)+a(n-2))²-a(n-2)²` -/
def P8621983659408405878.Spec : Prop :=
  ∀ n, P8621983659408405878.a n = A029758 n

end A029758

/-! ## A029758.P10815060719487517476

`(2-(2*(1-a(n-2))-a(n-1)))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A029758.P10815060719487517476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 - (2 * (1 - a (n - 2)) - a (n - 1))) * a (n - 1)

end

end A029758.P10815060719487517476

namespace A029758

/-- `(2-(2*(1-a(n-2))-a(n-1)))*a(n-1)` -/
def P10815060719487517476.Spec : Prop :=
  ∀ n, P10815060719487517476.a n = A029758 n

end A029758

/-! ## A029758.P15254080166331784792

`floor(ratio[A029846(n+1)])`
-/

namespace A029758.P15254080166331784792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A029758.P15254080166331784792

namespace A029758

/-- `floor(ratio[A029846(n+1)])` -/
def P15254080166331784792.Spec : Prop :=
  ∀ n, P15254080166331784792.a n = A029758 n

end A029758

/-!
# A029759: Number of permutations which are the union of an increasing and a decreasing subsequence.

The programs for A029759, the canonical program `A029759.P11279605090538466212` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029759 has offset 0).

The definition of A029759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029759.P12226599410356748804

`(A126966(n)+A000984(n))/2`
-/

namespace A029759.P12226599410356748804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126966 n + A000984 n : ℚ) / 2

end

end A029759.P12226599410356748804

namespace A029759

/-- `(A126966(n)+A000984(n))/2` -/
def P12226599410356748804.Spec : Prop :=
  ∀ n, P12226599410356748804.a n = (A029759 n : ℚ)

end A029759

/-! ## A029759.P11279605090538466212

`A000984(n)+A000984(n)-A188622(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029759

/-- `A000984(n)+A000984(n)-A188622(n)` -/
def P11279605090538466212.Spec : Prop :=
  ∀ n, P11279605090538466212.a n = A029759 n

theorem P11279605090538466212.correct : P11279605090538466212.Spec := by
  intro n
  simp only [A029759]

end A029759

/-! ## A029759.P14138912094742245737

`A126966(n)-(A000984(n)-A188622(n))`
-/

namespace A029759.P14138912094742245737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n - (A000984 n - A188622 n)

end

end A029759.P14138912094742245737

namespace A029759

/-- `A126966(n)-(A000984(n)-A188622(n))` -/
def P14138912094742245737.Spec : Prop :=
  ∀ n, P14138912094742245737.a n = A029759 n

end A029759

/-! ## A029759.P13186341030016419584

`A028329(n)-A188622(n)`
-/

namespace A029759.P13186341030016419584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A188622 n

end

end A029759.P13186341030016419584

namespace A029759

/-- `A028329(n)-A188622(n)` -/
def P13186341030016419584.Spec : Prop :=
  ∀ n, P13186341030016419584.a n = A029759 n

end A029759

/-! ## A029759.P18428145621192551416

`2*A000984(n)-A188622(n)`
-/

namespace A029759.P18428145621192551416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A188622 n

end

end A029759.P18428145621192551416

namespace A029759

/-- `2*A000984(n)-A188622(n)` -/
def P18428145621192551416.Spec : Prop :=
  ∀ n, P18428145621192551416.a n = A029759 n

theorem P18428145621192551416.correct : P18428145621192551416.Spec := by
  intro n
  simp only [A029759, Nat.add_sub_cancel, A029759.P18428145621192551416.a, A029759.P11279605090538466212.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A029759

/-! ## A029759.P4684233955982783288

`2*A082590(n)-A372611(n)`
-/

namespace A029759.P4684233955982783288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082590 n - A372611 n

end

end A029759.P4684233955982783288

namespace A029759

/-- `2*A082590(n)-A372611(n)` -/
def P4684233955982783288.Spec : Prop :=
  ∀ n, P4684233955982783288.a n = A029759 n

end A029759

/-! ## A029759.P6408429399261890254

`2*A188622(n)-A372420(n)`
-/

namespace A029759.P6408429399261890254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188622 n - A372420 n

end

end A029759.P6408429399261890254

namespace A029759

/-- `2*A188622(n)-A372420(n)` -/
def P6408429399261890254.Spec : Prop :=
  ∀ n, P6408429399261890254.a n = A029759 n

end A029759

/-! ## A029759.P17370226748125397610

`A063886(2*n+1)-A188622(n)`
-/

namespace A029759.P17370226748125397610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1) - A188622 n

end

end A029759.P17370226748125397610

namespace A029759

/-- `A063886(2*n+1)-A188622(n)` -/
def P17370226748125397610.Spec : Prop :=
  ∀ n, P17370226748125397610.a n = A029759 n

end A029759

/-! ## A029759.P9763890594159099093

`A082590(n)+A126966(n)-A188622(n)`
-/

namespace A029759.P9763890594159099093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A126966 n - A188622 n)

end

end A029759.P9763890594159099093

namespace A029759

/-- `A082590(n)+A126966(n)-A188622(n)` -/
def P9763890594159099093.Spec : Prop :=
  ∀ n, P9763890594159099093.a n = A029759 n

end A029759

/-! ## A029759.P13001956492771855677

`A126966(n)+A372420(n)-A082590(n)`
-/

namespace A029759.P13001956492771855677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + (A372420 n - A082590 n)

end

end A029759.P13001956492771855677

namespace A029759

/-- `A126966(n)+A372420(n)-A082590(n)` -/
def P13001956492771855677.Spec : Prop :=
  ∀ n, P13001956492771855677.a n = A029759 n

end A029759

/-! ## A029759.P13376225737309125353

`A082590(n)+A188622(n)-A372239(n)`
-/

namespace A029759.P13376225737309125353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A188622 n - A372239 n)

end

end A029759.P13376225737309125353

namespace A029759

/-- `A082590(n)+A188622(n)-A372239(n)` -/
def P13376225737309125353.Spec : Prop :=
  ∀ n, P13376225737309125353.a n = A029759 n

end A029759

/-! ## A029759.P6154678403366680504

`A000984(n)+A372420(n)-A372239(n)`
-/

namespace A029759.P6154678403366680504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372420 n - A372239 n)

end

end A029759.P6154678403366680504

namespace A029759

/-- `A000984(n)+A372420(n)-A372239(n)` -/
def P6154678403366680504.Spec : Prop :=
  ∀ n, P6154678403366680504.a n = A029759 n

end A029759

/-! ## A029759.P11381142619350719587

`A000984(n)+A372239(n)-A372611(n)`
-/

namespace A029759.P11381142619350719587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372239 n - A372611 n)

end

end A029759.P11381142619350719587

namespace A029759

/-- `A000984(n)+A372239(n)-A372611(n)` -/
def P11381142619350719587.Spec : Prop :=
  ∀ n, P11381142619350719587.a n = A029759 n

end A029759

/-! ## A029759.P14440973952928682746

`A126966(n)+A372611(n)-A372239(n)`
-/

namespace A029759.P14440973952928682746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + (A372611 n - A372239 n)

end

end A029759.P14440973952928682746

namespace A029759

/-- `A126966(n)+A372611(n)-A372239(n)` -/
def P14440973952928682746.Spec : Prop :=
  ∀ n, P14440973952928682746.a n = A029759 n

end A029759

/-! ## A029759.P8638561686386781305

`A188622(n)+A372420(n)-A372611(n)`
-/

namespace A029759.P8638561686386781305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 n + (A372420 n - A372611 n)

end

end A029759.P8638561686386781305

namespace A029759

/-- `A188622(n)+A372420(n)-A372611(n)` -/
def P8638561686386781305.Spec : Prop :=
  ∀ n, P8638561686386781305.a n = A029759 n

end A029759

/-! ## A029759.P9710220974776468676

`A000984(n)-(A082590(n)-A188622(n))`
-/

namespace A029759.P9710220974776468676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A082590 n - A188622 n)

end

end A029759.P9710220974776468676

namespace A029759

/-- `A000984(n)-(A082590(n)-A188622(n))` -/
def P9710220974776468676.Spec : Prop :=
  ∀ n, P9710220974776468676.a n = A029759 n

end A029759

/-! ## A029759.P3257189220176229727

`A028270(n+1)+A188622(n)-A188622(n+1)`
-/

namespace A029759.P3257189220176229727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 (n + 1) + (A188622 n - A188622 (n + 1))

end

end A029759.P3257189220176229727

namespace A029759

/-- `A028270(n+1)+A188622(n)-A188622(n+1)` -/
def P3257189220176229727.Spec : Prop :=
  ∀ n, P3257189220176229727.a n = A029759 n

end A029759

/-! ## A029759.P3504373866953587930

`A000984(n+1)-(A372611(n)+A126966(n+1))`
-/

namespace A029759.P3504373866953587930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (A372611 n + A126966 (n + 1))

end

end A029759.P3504373866953587930

namespace A029759

/-- `A000984(n+1)-(A372611(n)+A126966(n+1))` -/
def P3504373866953587930.Spec : Prop :=
  ∀ n, P3504373866953587930.a n = A029759 n

end A029759

/-! ## A029759.P9536972867306630959

`A082590(n+1)-(A372611(n)+A000984(n+1))`
-/

namespace A029759.P9536972867306630959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 (n + 1) - (A372611 n + A000984 (n + 1))

end

end A029759.P9536972867306630959

namespace A029759

/-- `A082590(n+1)-(A372611(n)+A000984(n+1))` -/
def P9536972867306630959.Spec : Prop :=
  ∀ n, P9536972867306630959.a n = A029759 n

end A029759

/-! ## A029759.P1225224272868016352

`A028322(n+1)+A372611(n)-A372420(n+1)`
-/

namespace A029759.P1225224272868016352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028322 (n + 1) + (A372611 n - A372420 (n + 1))

end

end A029759.P1225224272868016352

namespace A029759

/-- `A028322(n+1)+A372611(n)-A372420(n+1)` -/
def P1225224272868016352.Spec : Prop :=
  ∀ n, P1225224272868016352.a n = A029759 n

end A029759

/-!
# A029760: A sum with next-to-central binomial coefficients of even order, Catalan related.

The programs for A029760, the canonical program `A029760.P12701853743882014842` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029760 has offset 0).

The definition of A029760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029760.P10650776044778854295

`A139262(n+2)`
-/

namespace A029760.P10650776044778854295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (n + 2)

end

end A029760.P10650776044778854295

namespace A029760

/-- `A139262(n+2)` -/
def P10650776044778854295.Spec : Prop :=
  ∀ n, P10650776044778854295.a n = A029760 n

end A029760

/-! ## A029760.P17170354560951982870

`A191309(2*(n+2))`
-/

namespace A029760.P17170354560951982870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * (n + 2))

end

end A029760.P17170354560951982870

namespace A029760

/-- `A191309(2*(n+2))` -/
def P17170354560951982870.Spec : Prop :=
  ∀ n, P17170354560951982870.a n = A029760 n

end A029760

/-! ## A029760.P8866176049787945831

`record[A139262(abs(2-n))]`
-/

namespace A029760.P8866176049787945831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029760.P8866176049787945831

namespace A029760

/-- `record[A139262(abs(2-n))]` -/
def P8866176049787945831.Spec : Prop :=
  ∀ n, P8866176049787945831.a n = A029760 n

end A029760

/-! ## A029760.P11910317071394122734

`A002011(n)-A038602(n)`
-/

namespace A029760.P11910317071394122734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 n - A038602 n

end

end A029760.P11910317071394122734

namespace A029760

/-- `A002011(n)-A038602(n)` -/
def P11910317071394122734.Spec : Prop :=
  ∀ n, P11910317071394122734.a n = A029760 n

end A029760

/-! ## A029760.P7029342276703685956

`record[A056040(n)-A294175(n+1)]`
-/

namespace A029760.P7029342276703685956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A294175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029760.P7029342276703685956

namespace A029760

/-- `record[A056040(n)-A294175(n+1)]` -/
def P7029342276703685956.Spec : Prop :=
  ∀ n, P7029342276703685956.a n = A029760 n

end A029760

/-! ## A029760.P12701853743882014842

`A002457(n+1)-A000346(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029760

/-- `A002457(n+1)-A000346(n+1)` -/
def P12701853743882014842.Spec : Prop :=
  ∀ n, P12701853743882014842.a n = A029760 n

theorem P12701853743882014842.correct : P12701853743882014842.Spec := by
  intro n
  simp only [A029760]

end A029760

/-! ## A029760.P14078378757480052258

`A172060(n+1)-A008549(n+1)`
-/

namespace A029760.P14078378757480052258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172060 (n + 1) - A008549 (n + 1)

end

end A029760.P14078378757480052258

namespace A029760

/-- `A172060(n+1)-A008549(n+1)` -/
def P14078378757480052258.Spec : Prop :=
  ∀ n, P14078378757480052258.a n = A029760 n

end A029760

/-! ## A029760.P9057242421706890033

`A116078(n+2)-A000984(n+2)`
-/

namespace A029760.P9057242421706890033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 (n + 2) - A000984 (n + 2)

end

end A029760.P9057242421706890033

namespace A029760

/-- `A116078(n+2)-A000984(n+2)` -/
def P9057242421706890033.Spec : Prop :=
  ∀ n, P9057242421706890033.a n = A029760 n

end A029760

/-! ## A029760.P14239263351487140424

`A394529(n+2)-A008549(n+2)`
-/

namespace A029760.P14239263351487140424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 (n + 2) - A008549 (n + 2)

end

end A029760.P14239263351487140424

namespace A029760

/-- `A394529(n+2)-A008549(n+2)` -/
def P14239263351487140424.Spec : Prop :=
  ∀ n, P14239263351487140424.a n = A029760 n

end A029760

/-! ## A029760.P17790883211694235279

`A097070(n+3)-A081294(n+2)`
-/

namespace A029760.P17790883211694235279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 3) - A081294 (n + 2)

end

end A029760.P17790883211694235279

namespace A029760

/-- `A097070(n+3)-A081294(n+2)` -/
def P17790883211694235279.Spec : Prop :=
  ∀ n, P17790883211694235279.a n = A029760 n

end A029760

/-! ## A029760.P2016393010924477980

`A340568(2*n+3)-A191389(2*n+3)`
-/

namespace A029760.P2016393010924477980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * n + 3) - A191389 (2 * n + 3)

end

end A029760.P2016393010924477980

namespace A029760

/-- `A340568(2*n+3)-A191389(2*n+3)` -/
def P2016393010924477980.Spec : Prop :=
  ∀ n, P2016393010924477980.a n = A029760 n

end A029760

/-! ## A029760.P15330023723951766801

`A001700(n+1)+A000917(n)-A000346(n+1)`
-/

namespace A029760.P15330023723951766801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) + (A000917 n - A000346 (n + 1))

end

end A029760.P15330023723951766801

namespace A029760

/-- `A001700(n+1)+A000917(n)-A000346(n+1)` -/
def P15330023723951766801.Spec : Prop :=
  ∀ n, P15330023723951766801.a n = A029760 n

end A029760

/-! ## A029760.P12482386592381256384

`A000917(n)-A008549(n+1)-A008549(n+1)`
-/

namespace A029760.P12482386592381256384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A008549 (n + 1) - A008549 (n + 1)

end

end A029760.P12482386592381256384

namespace A029760

/-- `A000917(n)-A008549(n+1)-A008549(n+1)` -/
def P12482386592381256384.Spec : Prop :=
  ∀ n, P12482386592381256384.a n = A029760 n

end A029760

/-! ## A029760.P13154351841335158828

`A296770(n+1)-(A008549(n+1)+A001700(n+1))`
-/

namespace A029760.P13154351841335158828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296770 (n + 1) - (A008549 (n + 1) + A001700 (n + 1))

end

end A029760.P13154351841335158828

namespace A029760

/-- `A296770(n+1)-(A008549(n+1)+A001700(n+1))` -/
def P13154351841335158828.Spec : Prop :=
  ∀ n, P13154351841335158828.a n = A029760 n

end A029760

/-! ## A029760.P8122018781947993855

`A191309(Δ[(n+2)²])/2`
-/

namespace A029760.P8122018781947993855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A029760.P8122018781947993855

namespace A029760

/-- `A191309(Δ[(n+2)²])/2` -/
def P8122018781947993855.Spec : Prop :=
  ∀ n, P8122018781947993855.a n = (A029760 n : ℚ)

end A029760

/-! ## A029760.P12865227469400618254

`A000531(n+2)-A002457(n+1)`
-/

namespace A029760.P12865227469400618254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000531 (n + 2) - A002457 (n + 1)

end

end A029760.P12865227469400618254

namespace A029760

/-- `A000531(n+2)-A002457(n+1)` -/
def P12865227469400618254.Spec : Prop :=
  ∀ n, P12865227469400618254.a n = A029760 n

end A029760

/-! ## A029760.P1434331600516653451

`A000531(n+2)-A046212(2*(n+2))`
-/

namespace A029760.P1434331600516653451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000531 (n + 2) - A046212 (2 * (n + 2))

end

end A029760.P1434331600516653451

namespace A029760

/-- `A000531(n+2)-A046212(2*(n+2))` -/
def P1434331600516653451.Spec : Prop :=
  ∀ n, P1434331600516653451.a n = A029760 n

end A029760

/-! ## A029760.P8742755962997212717

`A000531(n+2)-(A172060(n+1)+A000302(n+1))`
-/

namespace A029760.P8742755962997212717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000531 (n + 2) - (A172060 (n + 1) + A000302 (n + 1))

end

end A029760.P8742755962997212717

namespace A029760

/-- `A000531(n+2)-(A172060(n+1)+A000302(n+1))` -/
def P8742755962997212717.Spec : Prop :=
  ∀ n, P8742755962997212717.a n = A029760 n

end A029760

/-! ## A029760.P448038875131004992

`A018218(n+1)-A210064(n+2)`
-/

namespace A029760.P448038875131004992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 (n + 1) - A210064 (n + 2)

end

end A029760.P448038875131004992

namespace A029760

/-- `A018218(n+1)-A210064(n+2)` -/
def P448038875131004992.Spec : Prop :=
  ∀ n, P448038875131004992.a n = A029760 n

end A029760

/-! ## A029760.P12431163255686869402

`2*A018218(n+1)-A038806(n+1)`
-/

namespace A029760.P12431163255686869402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018218 (n + 1) - A038806 (n + 1)

end

end A029760.P12431163255686869402

namespace A029760

/-- `2*A018218(n+1)-A038806(n+1)` -/
def P12431163255686869402.Spec : Prop :=
  ∀ n, P12431163255686869402.a n = A029760 n

end A029760

/-!
# A029761: Partial sums of A005001.

The programs for A029761, there is no canonical definition to state claims against.
-/

/-! ## A029761.P798493814232172976

`∑[∑[A000110(n)]]`
-/

namespace A029761.P798493814232172976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P798493814232172976

/-! ## A029761.P3536502541593228800

`∑[A005001(n+1)]`
-/

namespace A029761.P3536502541593228800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P3536502541593228800

/-! ## A029761.P791161652582928855

`∑[∑[abs(A292935(n))]]`
-/

namespace A029761.P791161652582928855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P791161652582928855

/-! ## A029761.P12896852432903135355

`∑[∑[A011971(∑[n])]]`
-/

namespace A029761.P12896852432903135355
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P12896852432903135355

/-! ## A029761.P1273270653395811666

`∑[∑[A095149(∑[n])]]`
-/

namespace A029761.P1273270653395811666
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P1273270653395811666

/-! ## A029761.P6405574900872025632

`∑[∑[A108087(∑[n])]]`
-/

namespace A029761.P6405574900872025632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P6405574900872025632

/-! ## A029761.P3167786939003130025

`∑[∑[A123081(∑[n])]]`
-/

namespace A029761.P3167786939003130025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P3167786939003130025

/-! ## A029761.P3200868270166699520

`∑[∑[A186020(∑[n])]]`
-/

namespace A029761.P3200868270166699520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P3200868270166699520

/-! ## A029761.P12037611821183532140

`∑[∑[A212431(∑[n])]]`
-/

namespace A029761.P12037611821183532140
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P12037611821183532140

/-! ## A029761.P1960939855220836791

`∑[∑[A259691(∑[n])]]`
-/

namespace A029761.P1960939855220836791
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029761.P1960939855220836791

/-!
# A029763: Denominator of Bernoulli(2n+2) - Bernoulli(2n).

The programs for A029763, the canonical program `A029763.P9262175537561063165` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029763 has offset 0).

The definition of A029763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029763.P12691815443190013612

`A029765(n)/A122553(n)`
-/

namespace A029763.P12691815443190013612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029765 n : ℚ) / (A122553 n : ℚ)

end

end A029763.P12691815443190013612

namespace A029763

/-- `A029765(n)/A122553(n)` -/
def P12691815443190013612.Spec : Prop :=
  ∀ n, P12691815443190013612.a n = (A029763 n : ℚ)

end A029763

/-! ## A029763.P15125767851086256786

`A002445(n+1)/A020793(n)*A177735(n)`
-/

namespace A029763.P15125767851086256786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) : ℚ) / (A020793 n : ℚ) * (A177735 n : ℚ)

end

end A029763.P15125767851086256786

namespace A029763

/-- `A002445(n+1)/A020793(n)*A177735(n)` -/
def P15125767851086256786.Spec : Prop :=
  ∀ n, P15125767851086256786.a n = (A029763 n : ℚ)

end A029763

/-! ## A029763.P9262175537561063165

`A027762(n+1)/A020793(n)*A177735(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029763

/-- `A027762(n+1)/A020793(n)*A177735(n)` -/
def P9262175537561063165.Spec : Prop :=
  ∀ n, P9262175537561063165.a n = (A029763 n : ℚ)

end A029763

/-! ## A029763.P10867611065368182925

`A027762(n+1)/A002445(n)*A177735(n)²`
-/

namespace A029763.P10867611065368182925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027762 (n + 1) : ℚ) / (A002445 n : ℚ) * (A177735 n ^ 2 : ℚ)

end

end A029763.P10867611065368182925

namespace A029763

/-- `A027762(n+1)/A002445(n)*A177735(n)²` -/
def P10867611065368182925.Spec : Prop :=
  ∀ n, P10867611065368182925.a n = (A029763 n : ℚ)

end A029763

/-! ## A029763.P13002740685323880088

`A029765(n)/A014963(A048883(n))`
-/

namespace A029763.P13002740685323880088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029765 n : ℚ) / (A014963 (A048883 n).toNat : ℚ)

end

end A029763.P13002740685323880088

namespace A029763

/-- `A029765(n)/A014963(A048883(n))` -/
def P13002740685323880088.Spec : Prop :=
  ∀ n, P13002740685323880088.a n = (A029763 n : ℚ)

end A029763

/-!
# A029765: Denominator of |Bernoulli(2n+2)| - |Bernoulli(2n)|.

The programs for A029765, the canonical program `A029765.P12397679119740762320` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029765 has offset 0).

The definition of A029765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029765.P12397679119740762320

`lcm(3, A029763(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029765

/-- `lcm(3, A029763(n))` -/
def P12397679119740762320.Spec : Prop :=
  ∀ n, (P12397679119740762320.a n : ℤ) = A029765 n

theorem P12397679119740762320.correct : P12397679119740762320.Spec := by
  intro n
  simp only [A029765]

end A029765

/-! ## A029765.P12417032647385651780

`A029763(n)*A122553(n)`
-/

namespace A029765.P12417032647385651780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029763 n * A122553 n

end

end A029765.P12417032647385651780

namespace A029765

/-- `A029763(n)*A122553(n)` -/
def P12417032647385651780.Spec : Prop :=
  ∀ n, P12417032647385651780.a n = A029765 n

end A029765

/-! ## A029765.P9310201996887401536

`A029763(n)*A062069(A008578(n+1))`
-/

namespace A029765.P9310201996887401536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029763 n * A062069 (A008578 (n + 1)).toNat

end

end A029765.P9310201996887401536

namespace A029765

/-- `A029763(n)*A062069(A008578(n+1))` -/
def P9310201996887401536.Spec : Prop :=
  ∀ n, P9310201996887401536.a n = A029765 n

end A029765

/-! ## A029765.P720927685985638140

`lcm(A001897(n+1), A306821(2*n))`
-/

namespace A029765.P720927685985638140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001897 (n + 1)) (A306821 (2 * n))

end

end A029765.P720927685985638140

namespace A029765

/-- `lcm(A001897(n+1), A306821(2*n))` -/
def P720927685985638140.Spec : Prop :=
  ∀ n, (P720927685985638140.a n : ℤ) = A029765 n

end A029765

/-! ## A029765.P1572708781593795321

`A014963(A048883(n))*A029763(n)`
-/

namespace A029765.P1572708781593795321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048883 n).toNat * A029763 n

end

end A029765.P1572708781593795321

namespace A029765

/-- `A014963(A048883(n))*A029763(n)` -/
def P1572708781593795321.Spec : Prop :=
  ∀ n, P1572708781593795321.a n = A029765 n

end A029765

/-! ## A029765.P16766758297446699415

`A051721(2*n)+A000038(n)`
-/

namespace A029765.P16766758297446699415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051721 (2 * n) + A000038 n

end

end A029765.P16766758297446699415

namespace A029765

/-- `A051721(2*n)+A000038(n)` -/
def P16766758297446699415.Spec : Prop :=
  ∀ n, P16766758297446699415.a n = A029765 n

end A029765

/-! ## A029765.P1091598808206527162

`A051721(2*n)+A000122(2*n+1)*A000122(2*n)`
-/

namespace A029765.P1091598808206527162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051721 (2 * n) + A000122 (2 * n + 1) * A000122 (2 * n)

end

end A029765.P1091598808206527162

namespace A029765

/-- `A051721(2*n)+A000122(2*n+1)*A000122(2*n)` -/
def P1091598808206527162.Spec : Prop :=
  ∀ n, P1091598808206527162.a n = A029765 n

end A029765

/-! ## A029765.P9988408442936710163

`A029763(n)*A062069(A190222(n+1))`
-/

namespace A029765.P9988408442936710163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029763 n * A062069 (A190222 (n + 1)).toNat

end

end A029765.P9988408442936710163

namespace A029765

/-- `A029763(n)*A062069(A190222(n+1))` -/
def P9988408442936710163.Spec : Prop :=
  ∀ n, P9988408442936710163.a n = A029765 n

end A029765

/-! ## A029765.P6608117077504739090

`or(A000034(A053799(n)), A051721(2*n))`
-/

namespace A029765.P6608117077504739090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (A053799 n).toNat) (A051721 (2 * n))

end

end A029765.P6608117077504739090

namespace A029765

/-- `or(A000034(A053799(n)), A051721(2*n))` -/
def P6608117077504739090.Spec : Prop :=
  ∀ n, P6608117077504739090.a n = A029765 n

end A029765

/-! ## A029765.P11613833781511044314

`A051721(2*n)+A000122(n²+1)`
-/

namespace A029765.P11613833781511044314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051721 (2 * n) + A000122 (n ^ 2 + 1)

end

end A029765.P11613833781511044314

namespace A029765

/-- `A051721(2*n)+A000122(n²+1)` -/
def P11613833781511044314.Spec : Prop :=
  ∀ n, P11613833781511044314.a n = A029765 n

end A029765

/-!
# A029766: Unary-binary rooted trees with n nodes.

The programs for A029766, there is no canonical definition to state claims against.
-/

/-! ## A029766.P13158496233094235425

`n!*A004526(Δ[A000123(n)])`
-/

namespace A029766.P13158496233094235425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A004526 (f1 (n + 1) - f1 n).toNat

end

end A029766.P13158496233094235425

/-! ## A029766.P13880501396739788672

`A000142(n)*A004526(Δ[A000123(n)])`
-/

namespace A029766.P13880501396739788672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A004526 (f1 (n + 1) - f1 n).toNat

end

end A029766.P13880501396739788672

/-! ## A029766.P7257787644485876582

`A000142(n)*A029578(Δ[A000123(n)])`
-/

namespace A029766.P7257787644485876582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A029578 (f1 (n + 1) - f1 n).toNat

end

end A029766.P7257787644485876582

/-! ## A029766.P4507858737526209841

`A000142(n)*A246277(Δ[A000123(n)])`
-/

namespace A029766.P4507858737526209841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A246277 (f1 (n + 1) - f1 n).toNat

end

end A029766.P4507858737526209841

/-! ## A029766.P6036887271035530033

`A000142(n)*A004526(A018819(n+1))`
-/

namespace A029766.P6036887271035530033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A004526 (A018819 (n + 1)).toNat

end

end A029766.P6036887271035530033

/-!
# A029767: a(n) = (n-1)!*(2^n-1) for n>=1, a(0)=0.

The programs for A029767, there is no canonical definition to state claims against.
-/

/-! ## A029767.P2773081963625563030

`(2^n-1)*abs(1-n)!`
-/

namespace A029767.P2773081963625563030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A029767.P2773081963625563030

/-! ## A029767.P14757014070786632416

`(n-1)!+(abs(2-n)+n)*a(n-1)` with `a(0)=0`
-/

namespace A029767.P14757014070786632416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (|2 - (n : ℤ)| + (n : ℤ)) * a (n - 1)

end

end A029767.P14757014070786632416

/-! ## A029767.P6694511926690707905

`A131222(∑[n]+1)`
-/

namespace A029767.P6694511926690707905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A029767.P6694511926690707905

/-! ## A029767.P14407666561801266835

`A199660(2*n)-n!`
-/

namespace A029767.P14407666561801266835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n) - (Nat.factorial n : ℤ)

end

end A029767.P14407666561801266835

/-! ## A029767.P10715306000797343216

`A052840(n+1)/(n+1)`
-/

namespace A029767.P10715306000797343216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052840 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A029767.P10715306000797343216

/-! ## A029767.P4562964070888085055

`(2^n-1)*A104150(n)`
-/

namespace A029767.P4562964070888085055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A104150 n

end

end A029767.P4562964070888085055

/-! ## A029767.P9914538751197547087

`abs(1-n)!*A000225(n)`
-/

namespace A029767.P9914538751197547087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * A000225 n

end

end A029767.P9914538751197547087

/-! ## A029767.P943325932224240714

`(2^n-1)*∏[A007318(C(n, 2)+1)]`
-/

namespace A029767.P943325932224240714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A029767.P943325932224240714

/-! ## A029767.P532118432420006632

`A199660(2*n)-A000142(n)`
-/

namespace A029767.P532118432420006632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n) - A000142 n

end

end A029767.P532118432420006632

/-! ## A029767.P10516812749150335756

`record[A199660(n)-A199660(n+1)]`
-/

namespace A029767.P10516812749150335756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n - A199660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029767.P10516812749150335756

/-!
# A029768: Number of increasing mobiles with n elements.

The programs for A029768, there is no canonical definition to state claims against.
-/

/-! ## A029768.P7004328541716191430

`Δ[A174632(log2(A011782(n)))]`
-/

namespace A029768.P7004328541716191430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P7004328541716191430

/-! ## A029768.P13895437765298695648

`Δ[A174632(A289207(n+1))]`
-/

namespace A029768.P13895437765298695648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P13895437765298695648

/-! ## A029768.P14808665807824530326

`Δ[A174632(A057428(n)+n)]`
-/

namespace A029768.P14808665807824530326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P14808665807824530326

/-! ## A029768.P13678314244658247656

`Δ[A174632(n-A057427(n))]`
-/

namespace A029768.P13678314244658247656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P13678314244658247656

/-! ## A029768.P7034091482435105532

`Δ[A174632(n-A178334(n))]`
-/

namespace A029768.P7034091482435105532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P7034091482435105532

/-! ## A029768.P4189175773666237085

`Δ[A174632(n-A057428(n)²)]`
-/

namespace A029768.P4189175773666237085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P4189175773666237085

/-! ## A029768.P5276820412906693828

`Δ[A174632(A289207(2*n)/2)]`
-/

namespace A029768.P5276820412906693828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029768.P5276820412906693828

/-! ## A029768.P4530257223766516540

`A174632(n)-A174632(log2(A011782(n)))`
-/

namespace A029768.P4530257223766516540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 n - A174632 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A029768.P4530257223766516540

/-! ## A029768.P10430468816572513021

`A174632(n)-A174632(A289207(n+1))`
-/

namespace A029768.P10430468816572513021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 n - A174632 (A289207 (n + 1)).toNat

end

end A029768.P10430468816572513021

/-! ## A029768.P2168863880407088942

`A174632(n)-A174632(A057428(n)+n)`
-/

namespace A029768.P2168863880407088942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174632 n - A174632 (A057428 n + (n : ℤ)).toNat

end

end A029768.P2168863880407088942

/-!
# A029770: Theta series of 10-dimensional lattice (C6 X SU(4,2)):C2 with minimal norm 4.

The programs for A029770, there is no canonical definition to state claims against.
-/

/-! ## A029770.P11390964057404305601

`A306434(Δ[n²])`
-/

namespace A029770.P11390964057404305601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029770.P11390964057404305601

/-! ## A029770.P14712332183739339249

`A306434(2*n+1)+char[19]`
-/

namespace A029770.P14712332183739339249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306434 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A029770.P14712332183739339249

/-! ## A029770.P15903705779255567916

`lcm(A007318(n), A306434(2*n+1))`
-/

namespace A029770.P15903705779255567916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A306434 (2 * n + 1))

end

end A029770.P15903705779255567916

/-! ## A029770.P4221614858000835644

`A306383(n)!*A306434(2*n+1)`
-/

namespace A029770.P4221614858000835644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A306383 n).toNat : ℤ) * A306434 (2 * n + 1)

end

end A029770.P4221614858000835644

/-! ## A029770.P10138361181505583480

`A007318(∑[n])*A306434(2*n+1)`
-/

namespace A029770.P10138361181505583480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A306434 (2 * n + 1)

end

end A029770.P10138361181505583480

/-!
# A029772: Every digit that appears in k also appears at least once in k^2.

The programs for A029772, there is no canonical definition to state claims against.
-/

/-! ## A029772.P3794350146281810080

`sqrt(A029773(n+1))`
-/

namespace A029772.P3794350146281810080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029773 (n + 1) : ℝ)

end

end A029772.P3794350146281810080

/-! ## A029772.P5769285898628793774

`A029773(n+1)^(A028310(n)/A004277(n))`
-/

namespace A029772.P5769285898628793774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029773 (n + 1) : ℝ) ^ ((A028310 n : ℚ) / (A004277 n : ℚ) : ℝ)

end

end A029772.P5769285898628793774

/-! ## A029772.P4412215914793601442

`eq[0, A109072(n)]`
-/

namespace A029772.P4412215914793601442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029772.P4412215914793601442

/-! ## A029772.P3639076018535928467

`eq[2, A373203(n)]`
-/

namespace A029772.P3639076018535928467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029772.P3639076018535928467

/-! ## A029772.P12680331472255382180

`eq[A107846(n)+A076493(n), A055642(n)]`
-/

namespace A029772.P12680331472255382180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + A076493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029772.P12680331472255382180

/-! ## A029772.P8271510250293679938

`A029773(n+1)^(A233583(n+1)/A004277(n))`
-/

namespace A029772.P8271510250293679938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029773 (n + 1) : ℝ) ^ ((A233583 (n + 1) : ℚ) / (A004277 n : ℚ) : ℝ)

end

end A029772.P8271510250293679938

/-!
# A029773: Squares k^2 in which the digits of k appear.

The programs for A029773, there is no canonical definition to state claims against.
-/

/-! ## A029773.P3687464335488552168

`A029772(n+1)²`
-/

namespace A029773.P3687464335488552168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1) ^ 2

end

end A029773.P3687464335488552168

/-! ## A029773.P17114334244911091132

`A029772(n+1)^A020639(comp[2*n]+1)`
-/

namespace A029773.P17114334244911091132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029772 (n + 1) : ℚ) ^ (A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℤ)

end

end A029773.P17114334244911091132

/-! ## A029773.P6918737089159903977

`(A029772(n+1)+A000007(n))*A029772(n+1)`
-/

namespace A029773.P6918737089159903977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029772 (n + 1) + A000007 n) * A029772 (n + 1)

end

end A029773.P6918737089159903977

/-! ## A029773.P1291839991889339659

`A029772(n+1)^A293514(A084127(n+1))`
-/

namespace A029773.P1291839991889339659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029772 (n + 1) : ℚ) ^ (A293514 (A084127 (n + 1)).toNat : ℤ)

end

end A029773.P1291839991889339659

/-! ## A029773.P6082510494513521547

`A029772(n+1)^A083952(2*n+1)`
-/

namespace A029773.P6082510494513521547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029772 (n + 1) : ℚ) ^ (A083952 (2 * n + 1) : ℤ)

end

end A029773.P6082510494513521547

/-! ## A029773.P14069011049802883453

`A029772(n+1)^A058764(A100050(3*(n+1)))`
-/

namespace A029773.P14069011049802883453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029772 (n + 1) : ℚ) ^ (A058764 (A100050 (3 * (n + 1))).toNat : ℤ)

end

end A029773.P14069011049802883453

/-! ## A029773.P8061089388038331504

`eq[0, A109072(n)]²`
-/

namespace A029773.P8061089388038331504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A029773.P8061089388038331504

/-! ## A029773.P13827714615067910016

`eq[2, A373203(n)]²`
-/

namespace A029773.P13827714615067910016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A029773.P13827714615067910016

/-! ## A029773.P6698556210620585719

`eq[A107846(n)+A076493(n), A055642(n)]²`
-/

namespace A029773.P6698556210620585719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + A076493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A029773.P6698556210620585719

/-! ## A029773.P6918276228344396375

`A000290(2*A029772(n+1)-A029772(n+1))`
-/

namespace A029773.P6918276228344396375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A029772 (n + 1) - A029772 (n + 1)).toNat

end

end A029773.P6918276228344396375

/-!
# A029774: Numbers k in which the digits of k^2 appear.

The programs for A029774, there is no canonical definition to state claims against.
-/

/-! ## A029774.P10560855252886609592

`sqrt(A029775(n+1))`
-/

namespace A029774.P10560855252886609592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029775 (n + 1) : ℝ)

end

end A029774.P10560855252886609592

/-! ## A029774.P5614188003080250565

`A029775(A000027(n+1))^(1/2)`
-/

namespace A029774.P5614188003080250565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029775 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A029774.P5614188003080250565

/-! ## A029774.P15086599514858392847

`A029775(n+1)^(A008486(n)/A008458(n))`
-/

namespace A029774.P15086599514858392847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029775 (n + 1) : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

end

end A029774.P15086599514858392847

/-! ## A029774.P14244586151656618747

`A029775(n+1)^(1-2^A008683(A020484(n)))`
-/

namespace A029774.P14244586151656618747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029775 (n + 1) : ℝ) ^ (1 - (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) : ℝ)

end

end A029774.P14244586151656618747

/-!
# A029775: Squares k^2 whose digits appear in k.

The programs for A029775, there is no canonical definition to state claims against.
-/

/-! ## A029775.P105364944297606720

`A029774(n+1)²`
-/

namespace A029775.P105364944297606720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (n + 1) ^ 2

end

end A029775.P105364944297606720

/-! ## A029775.P1694347190366237744

`record[A029774(A291769(n))²]`
-/

namespace A029775.P1694347190366237744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029775.P1694347190366237744

/-! ## A029775.P6408235649514528231

`record[A029774(A328396(n))²]`
-/

namespace A029775.P6408235649514528231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A328396 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029775.P6408235649514528231

/-! ## A029775.P2583790326873200441

`record[A029774(A329048(n))²]`
-/

namespace A029775.P2583790326873200441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A329048 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029775.P2583790326873200441

/-! ## A029775.P4674498072093181794

`A029774(n+1)^(A000007(n)+2)`
-/

namespace A029775.P4674498072093181794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029775.P4674498072093181794

/-! ## A029775.P6200991707888316395

`record[A029774(A291769(n))]*A029774(n+1)`
-/

namespace A029775.P6200991707888316395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029774 (n + 1)

end

end A029775.P6200991707888316395

/-! ## A029775.P5562927957216775610

`record[A029774(A328396(n))]*A029774(n+1)`
-/

namespace A029775.P5562927957216775610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029774 (n + 1)

end

end A029775.P5562927957216775610

/-! ## A029775.P17704139849582964100

`record[A029774(A329048(n))]*A029774(n+1)`
-/

namespace A029775.P17704139849582964100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029774 (n + 1)

end

end A029775.P17704139849582964100

/-! ## A029775.P4464788783734424599

`A029774(n+1)^A020639(A000010(n+2))`
-/

namespace A029775.P4464788783734424599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A020639 (A000010 (n + 2)).toNat : ℤ)

end

end A029775.P4464788783734424599

/-! ## A029775.P10331824783487657478

`A029774(n+1)^A000005(Δ[A007504(n)])`
-/

namespace A029775.P10331824783487657478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A000005 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A029775.P10331824783487657478

/-! ## A029775.P3298863584513078965

`A029774(n+1)^A020639(A006093(n+1))`
-/

namespace A029775.P3298863584513078965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A020639 (A006093 (n + 1)).toNat : ℤ)

end

end A029775.P3298863584513078965

/-! ## A029775.P4295456412134032171

`A029774(n+1)^A000005(eq[1, A003415(n)])`
-/

namespace A029775.P4295456412134032171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ)

end

end A029775.P4295456412134032171

/-! ## A029775.P7102039455576091494

`A029774(n+1)^(A000035(A000040(n+1))+1)`
-/

namespace A029775.P7102039455576091494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A000035 (A000040 (n + 1)).toNat + 1 : ℤ)

end

end A029775.P7102039455576091494

/-! ## A029775.P12506342424417072741

`A029774(n+1)^A055874(A100484(n+1))`
-/

namespace A029775.P12506342424417072741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℚ) ^ (A055874 (A100484 (n + 1)).toNat : ℤ)

end

end A029775.P12506342424417072741

/-! ## A029775.P4272793286979080140

`A029774(n+1)^ratio[A000079(n)]`
-/

namespace A029775.P4272793286979080140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A029775.P4272793286979080140

/-! ## A029775.P359129624035822454

`A029774(n+1)^ratio[A007283(n)]`
-/

namespace A029775.P359129624035822454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029774 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A029775.P359129624035822454

/-!
# A029776: Digits of n appear in n^3.

The programs for A029776, there is no canonical definition to state claims against.
-/

/-! ## A029776.P5183719934001303823

`A029777(n+1)^(1/3)`
-/

namespace A029776.P5183719934001303823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029777 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029776.P5183719934001303823

/-! ## A029776.P14204426980390604858

`A100196(ceil(sqrt(A029777(n+1))))`
-/

namespace A029776.P14204426980390604858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A029777 (n + 1) : ℝ)⌉.toNat

end

end A029776.P14204426980390604858

/-! ## A029776.P3219453012319065737

`A064931(A028310(n))%A161138(n+1)`
-/

namespace A029776.P3219453012319065737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064931 (A028310 n).toNat) (A161138 (n + 1))

end

end A029776.P3219453012319065737

/-! ## A029776.P5605857667650288878

`A064931(A233583(n+1))%A161138(n+1)`
-/

namespace A029776.P5605857667650288878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064931 (A233583 (n + 1)).toNat) (A161138 (n + 1))

end

end A029776.P5605857667650288878

/-! ## A029776.P6006731602427736922

`A064931(A007318(∑[n]+1))%A161138(n+1)`
-/

namespace A029776.P6006731602427736922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064931 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat) (A161138 (n + 1))

end

end A029776.P6006731602427736922

/-!
# A029777: Cubes k such that digits of cube root of k appear in k.

The programs for A029777, there is no canonical definition to state claims against.
-/

/-! ## A029777.P5392378017296019468

`A029776(n+1)^3`
-/

namespace A029777.P5392378017296019468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1) ^ 3

end

end A029777.P5392378017296019468

/-! ## A029777.P3599420800171396316

`record[A029776(A291769(n))^3]`
-/

namespace A029777.P3599420800171396316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (A291769 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029777.P3599420800171396316

/-! ## A029777.P4677852874288360741

`record[A029776(A331742(n))^3]`
-/

namespace A029777.P4677852874288360741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (A331742 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029777.P4677852874288360741

/-! ## A029777.P5870844865026552447

`A000578(A029776(n+1))`
-/

namespace A029777.P5870844865026552447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029776 (n + 1)).toNat

end

end A029777.P5870844865026552447

/-! ## A029777.P15530683619971402545

`A034828(2*A029776(n+1))`
-/

namespace A029777.P15530683619971402545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A029776 (n + 1)).toNat

end

end A029777.P15530683619971402545

/-!
# A029778: Digits of n^3 appear in n.

The programs for A029778, there is no canonical definition to state claims against.
-/

/-! ## A029778.P5828749885976164989

`A029779(n+1)^(1/3)`
-/

namespace A029778.P5828749885976164989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029779 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029778.P5828749885976164989

/-!
# A029779: Numbers n such that digits of n appear in cube root of n.

The programs for A029779, there is no canonical definition to state claims against.
-/

/-! ## A029779.P8093448920968112827

`A029778(n+1)^3`
-/

namespace A029779.P8093448920968112827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (n + 1) ^ 3

end

end A029779.P8093448920968112827

/-! ## A029779.P11281348170568990033

`record[A029778(A152271(n))^3]`
-/

namespace A029779.P11281348170568990033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A152271 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029779.P11281348170568990033

/-! ## A029779.P16254937759215091468

`A029778(n+1)²*A029778(A187829(n+1))`
-/

namespace A029779.P16254937759215091468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (n + 1) ^ 2 * A029778 (A187829 (n + 1)).toNat

end

end A029779.P16254937759215091468

/-! ## A029779.P9291964398787330172

`A029778(n+1)²*A029778(A032559(n+1))`
-/

namespace A029779.P9291964398787330172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (n + 1) ^ 2 * A029778 (A032559 (n + 1)).toNat

end

end A029779.P9291964398787330172

/-!
# A029780: Numbers k such that every digit that appears in k also appears at least once in both k^2 and k^3.

The programs for A029780, there is no canonical definition to state claims against.
-/

/-! ## A029780.P10287702991720138577

`sqrt(A029781(n+1))`
-/

namespace A029780.P10287702991720138577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029781 (n + 1) : ℝ)

end

end A029780.P10287702991720138577

/-! ## A029780.P13399381109095566540

`A029782(n+1)^(1/3)`
-/

namespace A029780.P13399381109095566540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029782 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029780.P13399381109095566540

/-! ## A029780.P15866261578125855629

`A029781(n+1)^(A004277(n)/A008574(n))`
-/

namespace A029780.P15866261578125855629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029781 (n + 1) : ℝ) ^ ((A004277 n : ℚ) / (A008574 n : ℚ) : ℝ)

end

end A029780.P15866261578125855629

/-! ## A029780.P6982206514709994851

`∩[A029772(n+1), A029776(n+1)]`
-/

namespace A029780.P6982206514709994851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029780.P6982206514709994851

/-! ## A029780.P17293005311461459933

`A029781(n+1)^(A014963(A008458(n))/2)`
-/

namespace A029780.P17293005311461459933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029781 (n + 1) : ℝ) ^ ((A014963 (A008458 n).toNat : ℚ) / 2 : ℝ)

end

end A029780.P17293005311461459933

/-!
# A029781: Squares such that digits of sqrt(n) appear in both n and n^(3/2).

The programs for A029781, there is no canonical definition to state claims against.
-/

/-! ## A029781.P159523269168226374

`A029780(n+1)²`
-/

namespace A029781.P159523269168226374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1) ^ 2

end

end A029781.P159523269168226374

/-! ## A029781.P9546020560061490574

`A029782(n+1)^(2/3)`
-/

namespace A029781.P9546020560061490574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029782 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A029781.P9546020560061490574

/-! ## A029781.P14687171882810331514

`A029780(n+1)^A000032(C(2, n+1))`
-/

namespace A029781.P14687171882810331514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029780 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 1)) : ℤ)

end

end A029781.P14687171882810331514

/-! ## A029781.P6163059967855110702

`A029780(n+1)^A020639(A000010(n+1))`
-/

namespace A029781.P6163059967855110702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029780 (n + 1) : ℚ) ^ (A020639 (A000010 (n + 1)).toNat : ℤ)

end

end A029781.P6163059967855110702

/-! ## A029781.P10217789629690972235

`A029780(n+1)^A020639(2*A018252(n+1))`
-/

namespace A029781.P10217789629690972235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029780 (n + 1) : ℚ) ^ (A020639 (2 * A018252 (n + 1)).toNat : ℤ)

end

end A029781.P10217789629690972235

/-! ## A029781.P9969913423512024953

`∩[A029772(n+1), A029776(n+1)]²`
-/

namespace A029781.P9969913423512024953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A029781.P9969913423512024953

/-! ## A029781.P10775119880882960238

`A029780(n+1)^ratio[A000079(n)]`
-/

namespace A029781.P10775119880882960238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029780 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A029781.P10775119880882960238

/-!
# A029782: Cubes such that digits of cube root of n appear in both n^(2/3) and n.

The programs for A029782, there is no canonical definition to state claims against.
-/

/-! ## A029782.P6626263580878177539

`A029780(n+1)^3`
-/

namespace A029782.P6626263580878177539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1) ^ 3

end

end A029782.P6626263580878177539

/-! ## A029782.P7324198156935384431

`sqrt(A029781(n+1)^3)`
-/

namespace A029782.P7324198156935384431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029781 (n + 1) ^ 3 : ℝ)

end

end A029782.P7324198156935384431

/-! ## A029782.P12186344374378172744

`A029780(n+1)*A029781(n+1)`
-/

namespace A029782.P12186344374378172744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1) * A029781 (n + 1)

end

end A029782.P12186344374378172744

/-! ## A029782.P5289094177511102577

`A029781(n+1)^3^2^A008683(A151800(n))`
-/

namespace A029782.P5289094177511102577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029781 (n + 1) ^ 3 : ℝ) ^ ((2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) : ℝ)

end

end A029782.P5289094177511102577

/-! ## A029782.P1840558299331380796

`A000578(A029780(n+1))`
-/

namespace A029782.P1840558299331380796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029780 (n + 1)).toNat

end

end A029782.P1840558299331380796

/-!
# A029783: Exclusionary squares: numbers n such that no digit of n is present in n^2.

The programs for A029783, there is no canonical definition to state claims against.
-/

/-! ## A029783.P4526460090159888746

`sqrt(A029784(n+1))`
-/

namespace A029783.P4526460090159888746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029784 (n + 1) : ℝ)

end

end A029783.P4526460090159888746

/-! ## A029783.P4530995370731685940

`root(A029784(n+1), A001316(A001316(n)))`
-/

namespace A029783.P4530995370731685940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029784 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A029783.P4530995370731685940

/-! ## A029783.P5017207003890019018

`eq[0, A076493(n)]`
-/

namespace A029783.P5017207003890019018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029783.P5017207003890019018

/-! ## A029783.P18002113154251361605

`lt[2, A253600(n)]`
-/

namespace A029783.P18002113154251361605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029783.P18002113154251361605

/-! ## A029783.P10659103523403608769

`lt[∑[n], A258682(n)]`
-/

namespace A029783.P10659103523403608769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A029783.P10659103523403608769

/-! ## A029783.P8308520667777597187

`record[A258682(n+2)/(n+2)]`
-/

namespace A029783.P8308520667777597187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258682 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029783.P8308520667777597187

/-! ## A029783.P17895978055398527556

`eq[(n+1)², A258682(n+1)]+1`
-/

namespace A029783.P17895978055398527556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029783.P17895978055398527556

/-! ## A029783.P10121302393441593746

`eq[A055642(n), A109072(n)]`
-/

namespace A029783.P10121302393441593746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029783.P10121302393441593746

/-! ## A029783.P4203108076268335180

`eq[A253909(n), A258682(n)]`
-/

namespace A029783.P4203108076268335180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029783.P4203108076268335180

/-! ## A029783.P3623817338115025966

`eq[A253909(n), A387070(n)]`
-/

namespace A029783.P3623817338115025966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029783.P3623817338115025966

/-!
# A029784: Squares such that digits of sqrt(n) are not present in n.

The programs for A029784, there is no canonical definition to state claims against.
-/

/-! ## A029784.P8230048963736759646

`A029783(n+1)²`
-/

namespace A029784.P8230048963736759646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1) ^ 2

end

end A029784.P8230048963736759646

/-! ## A029784.P9916009509716263645

`record[A029783(A324346(n))²]`
-/

namespace A029784.P9916009509716263645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (A324346 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029784.P9916009509716263645

/-! ## A029784.P16932947966311266513

`record[A029783(A324346(n))]*A029783(n+1)`
-/

namespace A029784.P16932947966311266513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029783 (n + 1)

end

end A029784.P16932947966311266513

/-! ## A029784.P8264232838654838296

`A029783(A000027(n+1))*A029783(n+1)`
-/

namespace A029784.P8264232838654838296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (A000027 (n + 1)).toNat * A029783 (n + 1)

end

end A029784.P8264232838654838296

/-! ## A029784.P6436997985261288761

`A029783(n+1)^A008472(A053644(n+2))`
-/

namespace A029784.P6436997985261288761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029783 (n + 1) : ℚ) ^ (A008472 (A053644 (n + 2)).toNat : ℤ)

end

end A029784.P6436997985261288761

/-! ## A029784.P13821648099266889230

`A029783(A008619(2*n+1))*A029783(n+1)`
-/

namespace A029784.P13821648099266889230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (A008619 (2 * n + 1)).toNat * A029783 (n + 1)

end

end A029784.P13821648099266889230

/-! ## A029784.P10426005896249393226

`eq[0, A076493(n)]²`
-/

namespace A029784.P10426005896249393226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A029784.P10426005896249393226

/-! ## A029784.P14441015558695130799

`lt[2, A253600(n)]²`
-/

namespace A029784.P14441015558695130799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A029784.P14441015558695130799

/-! ## A029784.P2381787927648050012

`lt[∑[n], A258682(n)]²`
-/

namespace A029784.P2381787927648050012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n ^ 2

end

end A029784.P2381787927648050012

/-! ## A029784.P17908189765573089370

`record[A258682(n+2)/(n+2)]²`
-/

namespace A029784.P17908189765573089370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258682 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A029784.P17908189765573089370

/-! ## A029784.P4928359543578678281

`eq[A055642(n), A109072(n)]²`
-/

namespace A029784.P4928359543578678281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A029784.P4928359543578678281

/-! ## A029784.P6342872635896115581

`eq[A253909(n), A258682(n)]²`
-/

namespace A029784.P6342872635896115581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A029784.P6342872635896115581

/-! ## A029784.P18400520833834217688

`A258682(lt[∑[n], A258682(n)])`
-/

namespace A029784.P18400520833834217688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A029784.P18400520833834217688

/-! ## A029784.P12315407032543316628

`A258682(xor(1, xor(1, A029783(n+1))))`
-/

namespace A029784.P12315407032543316628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 (Int.xor 1 (Int.xor 1 (A029783 (n + 1)))).toNat

end

end A029784.P12315407032543316628

/-! ## A029784.P3250678081110593301

`A258682(A029783(2*n+1-n))`
-/

namespace A029784.P3250678081110593301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 (A029783 (2 * n + 1 - n)).toNat

end

end A029784.P3250678081110593301

/-! ## A029784.P15037487671502024465

`lt[2, A253600(n)]*A029783(n+1)`
-/

namespace A029784.P15037487671502024465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) * A029783 (n + 1)

end

end A029784.P15037487671502024465

/-! ## A029784.P17764976731729545732

`A253909(eq[A253909(n), A258682(n)])`
-/

namespace A029784.P17764976731729545732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029784.P17764976731729545732

/-! ## A029784.P17839026882982511011

`A000290(2*A029783(n+1)-A029783(n+1))`
-/

namespace A029784.P17839026882982511011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A029783 (n + 1) - A029783 (n + 1)).toNat

end

end A029784.P17839026882982511011

/-! ## A029784.P12678666512354500116

`A000463(2*A029783(n+1))`
-/

namespace A029784.P12678666512354500116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A029783 (n + 1)).toNat

end

end A029784.P12678666512354500116

/-! ## A029784.P17523769299312041837

`A258682(A029783(n+1))+A076493(A112736(n+1))`
-/

namespace A029784.P17523769299312041837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 (A029783 (n + 1)).toNat + A076493 (A112736 (n + 1)).toNat

end

end A029784.P17523769299312041837

/-!
# A029785: Numbers k whose cube k^3 has no digit in common with k.

The programs for A029785, there is no canonical definition to state claims against.
-/

/-! ## A029785.P16953992449666621166

`root(A029786(n+1), 3)`
-/

namespace A029785.P16953992449666621166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029786 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A029785.P16953992449666621166

/-! ## A029785.P3872910287396100146

`A029786(n+1)^3^A004174(gcd(n, n+1))`
-/

namespace A029785.P3872910287396100146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029786 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A004174 (Nat.gcd n (n + 1)) : ℤ) : ℝ)

end

end A029785.P3872910287396100146

/-! ## A029785.P15393311112166442800

`A029786(n+1)^(A014963(A008458(n))/3)`
-/

namespace A029785.P15393311112166442800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029786 (n + 1) : ℝ) ^ ((A014963 (A008458 n).toNat : ℚ) / 3 : ℝ)

end

end A029785.P15393311112166442800

/-!
# A029786: Cubes such that digits of cube root of n are not present in n.

The programs for A029786, there is no canonical definition to state claims against.
-/

/-! ## A029786.P5852606013911480119

`A029785(n+1)^3`
-/

namespace A029786.P5852606013911480119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1) ^ 3

end

end A029786.P5852606013911480119

/-! ## A029786.P3433423045938017925

`record[A029785(A133310(n))^3]`
-/

namespace A029786.P3433423045938017925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A133310 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029786.P3433423045938017925

/-! ## A029786.P7602664886555079834

`record[A029785(A291766(n))^3]`
-/

namespace A029786.P7602664886555079834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A291766 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029786.P7602664886555079834

/-! ## A029786.P2104813066381702416

`A029785(n+1)²*record[A029785(A133310(n))]`
-/

namespace A029786.P2104813066381702416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029786.P2104813066381702416

/-! ## A029786.P4656137070371794573

`A029785(n+1)²*record[A029785(A291766(n))]`
-/

namespace A029786.P4656137070371794573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029786.P4656137070371794573

/-! ## A029786.P16717422956719165682

`A029785(A000027(n+1))²*A029785(n+1)`
-/

namespace A029786.P16717422956719165682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A000027 (n + 1)).toNat ^ 2 * A029785 (n + 1)

end

end A029786.P16717422956719165682

/-! ## A029786.P4916564090456029234

`record[A029785(A134478(n))^3]`
-/

namespace A029786.P4916564090456029234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A134478 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029786.P4916564090456029234

/-! ## A029786.P12345652635575297589

`A029785(n+1)²*record[A029785(A134478(n))]`
-/

namespace A029786.P12345652635575297589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029786.P12345652635575297589

/-! ## A029786.P12883488878641345147

`A000578(A029785(n+1))`
-/

namespace A029786.P12883488878641345147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029785 (n + 1)).toNat

end

end A029786.P12883488878641345147

/-! ## A029786.P16614372094471979480

`A109816(3*A029785(n+1))`
-/

namespace A029786.P16614372094471979480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (3 * A029785 (n + 1)).toNat

end

end A029786.P16614372094471979480

/-!
# A029787: Numbers k such that k^2 and k^3 do not have any common digits.

The programs for A029787, there is no canonical definition to state claims against.
-/

/-! ## A029787.P2203588415625855834

`sqrt(A029788(n+1))`
-/

namespace A029787.P2203588415625855834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029788 (n + 1) : ℝ)

end

end A029787.P2203588415625855834

/-! ## A029787.P9815717867451419589

`root(A029789(n+1), 3)`
-/

namespace A029787.P9815717867451419589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029789 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A029787.P9815717867451419589

/-! ## A029787.P3898325761232185897

`A029789(n+1)/A029788(n+1)`
-/

namespace A029787.P3898325761232185897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029789 (n + 1) : ℚ) / (A029788 (n + 1) : ℚ)

end

end A029787.P3898325761232185897

/-! ## A029787.P4766308009558681640

`∑{d}[root(A029788(n+1), 2), A000010(#)]`
-/

namespace A029787.P4766308009558681640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029788 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A029787.P4766308009558681640

/-! ## A029787.P3977406760217596221

`root(A029788(n+1), 2)*A007318(∑[n])`
-/

namespace A029787.P3977406760217596221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029788 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A029787.P3977406760217596221

/-!
# A029788: Squares such that digits of sqrt(n) are not present in n^(3/2).

The programs for A029788, there is no canonical definition to state claims against.
-/

/-! ## A029788.P2468110490367585437

`A029787(n+1)²`
-/

namespace A029788.P2468110490367585437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (n + 1) ^ 2

end

end A029788.P2468110490367585437

/-! ## A029788.P15725080110859975554

`root(A029789(n+1), 3)²`
-/

namespace A029788.P15725080110859975554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A029789 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2

end

end A029788.P15725080110859975554

/-! ## A029788.P17482009642906179633

`A029787(gcd(n, n+1)+n)^2`
-/

namespace A029788.P17482009642906179633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (Nat.gcd n (n + 1) + n) ^ 2

end

end A029788.P17482009642906179633

/-! ## A029788.P7454870317324703419

`record[A029787(A020986(n))²]`
-/

namespace A029788.P7454870317324703419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029788.P7454870317324703419

/-! ## A029788.P4783838599221364099

`record[A029787(A351080(n))²]`
-/

namespace A029788.P4783838599221364099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (A351080 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029788.P4783838599221364099

/-!
# A029789: Cubes such that digits of n^(2/3) are not present in n.

The programs for A029789, there is no canonical definition to state claims against.
-/

/-! ## A029789.P8807899591440338715

`A029787(n+1)^3`
-/

namespace A029789.P8807899591440338715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (n + 1) ^ 3

end

end A029789.P8807899591440338715

/-! ## A029789.P13770132051586874892

`sqrt(A029788(n+1)^3)`
-/

namespace A029789.P13770132051586874892
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029788 (n + 1) ^ 3 : ℝ)

end

end A029789.P13770132051586874892

/-! ## A029789.P17438746459379224662

`A029787(n+1)*A029788(n+1)`
-/

namespace A029789.P17438746459379224662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (n + 1) * A029788 (n + 1)

end

end A029789.P17438746459379224662

/-! ## A029789.P5246798699105581471

`record[A029787(A020986(n))²]*A029787(n+1)`
-/

namespace A029789.P5246798699105581471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029787 (n + 1)

end

end A029789.P5246798699105581471

/-! ## A029789.P5426221334621837074

`A029787(n+1)²*A029787(A000027(n+1))`
-/

namespace A029789.P5426221334621837074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029787 (n + 1) ^ 2 * A029787 (A000027 (n + 1)).toNat

end

end A029789.P5426221334621837074

/-!
# A029790: None of the digits in k is present in k^2 or k^3.

The programs for A029790, there is no canonical definition to state claims against.
-/

/-! ## A029790.P11955255233789473356

`sqrt(A029791(n+1))`
-/

namespace A029790.P11955255233789473356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029791 (n + 1) : ℝ)

end

end A029790.P11955255233789473356

/-! ## A029790.P2932991468380558983

`root(A029792(n+1), 3)`
-/

namespace A029790.P2932991468380558983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029792 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A029790.P2932991468380558983

/-! ## A029790.P12245928749052562862

`root(A029791(n+1), ratio[A000079(n)])`
-/

namespace A029790.P12245928749052562862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029791 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A029790.P12245928749052562862

/-! ## A029790.P9559326757506835710

`root(A029791(n+1), ratio[A007283(n)])`
-/

namespace A029790.P9559326757506835710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029791 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A029790.P9559326757506835710

/-! ## A029790.P7997294104639970602

`A029792(n+1)/A029791(n+1)`
-/

namespace A029790.P7997294104639970602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029792 (n + 1) : ℚ) / (A029791 (n + 1) : ℚ)

end

end A029790.P7997294104639970602

/-!
# A029791: Squares k such that digits of sqrt(k) are not present in k or k^(3/2).

The programs for A029791, there is no canonical definition to state claims against.
-/

/-! ## A029791.P6345378399330673676

`A029790(n+1)²`
-/

namespace A029791.P6345378399330673676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (n + 1) ^ 2

end

end A029791.P6345378399330673676

/-! ## A029791.P17615399734030630969

`A029790(gcd(n, n+1)+n)^2`
-/

namespace A029791.P17615399734030630969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (Nat.gcd n (n + 1) + n) ^ 2

end

end A029791.P17615399734030630969

/-! ## A029791.P15763208699459150143

`record[A029790(A141256(n))²]`
-/

namespace A029791.P15763208699459150143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (A141256 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029791.P15763208699459150143

/-! ## A029791.P16800175145534622467

`record[A029790(A236858(n))²]`
-/

namespace A029791.P16800175145534622467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (A236858 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029791.P16800175145534622467

/-! ## A029791.P13757825810115938077

`A029790(A000027(n+1))^2`
-/

namespace A029791.P13757825810115938077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (A000027 (n + 1)).toNat ^ 2

end

end A029791.P13757825810115938077

/-!
# A029792: Cubes k such that digits of cube root of k are not present in k^(2/3) or k.

The programs for A029792, there is no canonical definition to state claims against.
-/

/-! ## A029792.P552595459344852784

`A029790(n+1)^3`
-/

namespace A029792.P552595459344852784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (n + 1) ^ 3

end

end A029792.P552595459344852784

/-! ## A029792.P7308106285207784520

`sqrt(A029791(n+1)^3)`
-/

namespace A029792.P7308106285207784520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029791 (n + 1) ^ 3 : ℝ)

end

end A029792.P7308106285207784520

/-! ## A029792.P14124307460221287048

`record[A029790(A141256(n))^3]`
-/

namespace A029792.P14124307460221287048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (A141256 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029792.P14124307460221287048

/-! ## A029792.P1876150987187832457

`record[A029790(A236858(n))^3]`
-/

namespace A029792.P1876150987187832457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (A236858 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029792.P1876150987187832457

/-! ## A029792.P17824813646753281066

`A029790(n+1)*A029791(n+1)`
-/

namespace A029792.P17824813646753281066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (n + 1) * A029791 (n + 1)

end

end A029792.P17824813646753281066

/-!
# A029793: Numbers k such that k and k^2 have the same set of digits.

The programs for A029793, there is no canonical definition to state claims against.
-/

/-! ## A029793.P10349868753753652695

`sqrt(A029794(n+1))`
-/

namespace A029793.P10349868753753652695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029794 (n + 1) : ℝ)

end

end A029793.P10349868753753652695

/-! ## A029793.P7540119119772331730

`A029794(n+1)^abs(A070748(n+1)/2)`
-/

namespace A029793.P7540119119772331730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029794 (n + 1) : ℝ) ^ (|(A070748 (n + 1) : ℚ) / 2| : ℝ)

end

end A029793.P7540119119772331730

/-! ## A029793.P4423480602409203907

`A029794(n+1)^2^A008683(A133410(n))`
-/

namespace A029793.P4423480602409203907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029794 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A133410 n).toNat : ℤ) : ℝ)

end

end A029793.P4423480602409203907

/-! ## A029793.P4282007169812606120

`A029794(n+1)^(A008486(n)/A008458(n))`
-/

namespace A029793.P4282007169812606120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029794 (n + 1) : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

end

end A029793.P4282007169812606120

/-! ## A029793.P3334573772621411586

`A029794(n+1)^(A014963(A000217(n+8))/2)`
-/

namespace A029793.P3334573772621411586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029794 (n + 1) : ℝ) ^ ((A014963 (A000217 (n + 8)).toNat : ℚ) / 2 : ℝ)

end

end A029793.P3334573772621411586

/-!
# A029794: Squares n such that sqrt(n) and n have the same set of digits.

The programs for A029794, there is no canonical definition to state claims against.
-/

/-! ## A029794.P14885349688271401340

`A029793(n+1)²`
-/

namespace A029794.P14885349688271401340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (n + 1) ^ 2

end

end A029794.P14885349688271401340

/-! ## A029794.P8416475017471362480

`A029793(A000027(n+1))^2`
-/

namespace A029794.P8416475017471362480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (A000027 (n + 1)).toNat ^ 2

end

end A029794.P8416475017471362480

/-! ## A029794.P7236651816290739744

`A029793(A000027(n+1))*A029793(n+1)`
-/

namespace A029794.P7236651816290739744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (A000027 (n + 1)).toNat * A029793 (n + 1)

end

end A029794.P7236651816290739744

/-! ## A029794.P12156428564297093466

`A029793(n+1)^A001222(A001358(n+1))`
-/

namespace A029794.P12156428564297093466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029793 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A029794.P12156428564297093466

/-! ## A029794.P9470875972160310307

`A029793(n+1)^A046523(A039650(n+1))`
-/

namespace A029794.P9470875972160310307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029793 (n + 1) : ℚ) ^ (A046523 (A039650 (n + 1)).toNat : ℤ)

end

end A029794.P9470875972160310307

/-! ## A029794.P15026271242228042166

`A029793(n+1)^A085082(A006530(n+1))`
-/

namespace A029794.P15026271242228042166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029793 (n + 1) : ℚ) ^ (A085082 (A006530 (n + 1)).toNat : ℤ)

end

end A029794.P15026271242228042166

/-! ## A029794.P9608523141740481891

`A029793(n+1)^A141310(A248101(n+1))`
-/

namespace A029794.P9608523141740481891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029793 (n + 1) : ℚ) ^ (A141310 (A248101 (n + 1)).toNat : ℤ)

end

end A029794.P9608523141740481891

/-! ## A029794.P11805941227832191657

`(A029793(n+1)+A000007(n))*A029793(n+1)`
-/

namespace A029794.P11805941227832191657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029793 (n + 1) + A000007 n) * A029793 (n + 1)

end

end A029794.P11805941227832191657

/-! ## A029794.P338740728456371253

`A029793(n+1)%A029793(n+2)*A029793(n+1)`
-/

namespace A029794.P338740728456371253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029793 (n + 1)) (A029793 (n + 2)) * A029793 (n + 1)

end

end A029794.P338740728456371253

/-! ## A029794.P7223592696142786575

`A029793(A004525(2*(n+1)))*A029793(n+1)`
-/

namespace A029794.P7223592696142786575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (A004525 (2 * (n + 1))).toNat * A029793 (n + 1)

end

end A029794.P7223592696142786575

/-! ## A029794.P12934031242413728761

`A029793(n+1)^A000005(A104824(n+1))`
-/

namespace A029794.P12934031242413728761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029793 (n + 1) : ℚ) ^ (A000005 (A104824 (n + 1)).toNat : ℤ)

end

end A029794.P12934031242413728761

/-!
# A029795: Numbers k such that k and k^3 have the same set of digits.

The programs for A029795, there is no canonical definition to state claims against.
-/

/-! ## A029795.P6243453391419743103

`record[gcd(A029778(n+1), A282133(n+1))]`
-/

namespace A029795.P6243453391419743103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029778 (n + 1)) (A282133 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029795.P6243453391419743103

/-! ## A029795.P1099784307818424081

`A029778(A243759(n)+A032559(n+1))`
-/

namespace A029795.P1099784307818424081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A243759 n + A032559 (n + 1)).toNat

end

end A029795.P1099784307818424081

/-! ## A029795.P18257874639128807871

`A029778(A035684(n+1)+A032559(n+1))`
-/

namespace A029795.P18257874639128807871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A035684 (n + 1) + A032559 (n + 1)).toNat

end

end A029795.P18257874639128807871

/-! ## A029795.P1527198120633853846

`A029778(A324421(n+1)+A032559(n+1))`
-/

namespace A029795.P1527198120633853846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A324421 (n + 1) + A032559 (n + 1)).toNat

end

end A029795.P1527198120633853846

/-!
# A029796: Cubes k such that cube root of k and k have the same set of digits.

The programs for A029796, there is no canonical definition to state claims against.
-/

/-! ## A029796.P5640561292770586111

`A029795(n+1)^3`
-/

namespace A029796.P5640561292770586111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029795 (n + 1) ^ 3

end

end A029796.P5640561292770586111

/-! ## A029796.P2283571132067992635

`record[gcd(A029779(n+1), A282133(n+1))]`
-/

namespace A029796.P2283571132067992635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029779 (n + 1)) (A282133 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029796.P2283571132067992635

/-! ## A029796.P10761361825709797562

`A029779(A243759(n)+A032559(n+1))`
-/

namespace A029796.P10761361825709797562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029779 (A243759 n + A032559 (n + 1)).toNat

end

end A029796.P10761361825709797562

/-! ## A029796.P2803191306958538873

`A029779(A035684(n+1)+A032559(n+1))`
-/

namespace A029796.P2803191306958538873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029779 (A035684 (n + 1) + A032559 (n + 1)).toNat

end

end A029796.P2803191306958538873

/-! ## A029796.P434377779547412696

`A029778(A243759(n)+A032559(n+1))^3`
-/

namespace A029796.P434377779547412696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A243759 n + A032559 (n + 1)).toNat ^ 3

end

end A029796.P434377779547412696

/-!
# A029797: Numbers k such that k^2 and k^3 have the same set of digits.

The programs for A029797, there is no canonical definition to state claims against.
-/

/-! ## A029797.P12431673326724754711

`sqrt(A029798(n+1))`
-/

namespace A029797.P12431673326724754711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029798 (n + 1) : ℝ)

end

end A029797.P12431673326724754711

/-! ## A029797.P16711413655902388726

`A029799(n+1)^(1/3)`
-/

namespace A029797.P16711413655902388726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029799 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029797.P16711413655902388726

/-!
# A029798: Squares k such that k and k^(3/2) have the same set of digits.

The programs for A029798, there is no canonical definition to state claims against.
-/

/-! ## A029798.P9590975627940298585

`A029797(n+1)²`
-/

namespace A029798.P9590975627940298585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029797 (n + 1) ^ 2

end

end A029798.P9590975627940298585

/-! ## A029798.P96689363954952644

`A029799(n+1)^(2/3)`
-/

namespace A029798.P96689363954952644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029799 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A029798.P96689363954952644

/-! ## A029798.P17675355235753455777

`A029797(n+1)^(A000007(n)+2)`
-/

namespace A029798.P17675355235753455777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029797 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029798.P17675355235753455777

/-! ## A029798.P4097978338528053526

`A029797(n+1)^A020639(2*(n+1))`
-/

namespace A029798.P4097978338528053526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029797 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029798.P4097978338528053526

/-! ## A029798.P7305275481509087283

`A029797(A000027(n+1))*A029797(n+1)`
-/

namespace A029798.P7305275481509087283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029797 (A000027 (n + 1)).toNat * A029797 (n + 1)

end

end A029798.P7305275481509087283

/-! ## A029798.P11321640970057433637

`A029797(n+1)^A001222(3*A000040(n+1))`
-/

namespace A029798.P11321640970057433637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029797 (n + 1) : ℚ) ^ (A001222 (3 * A000040 (n + 1)).toNat : ℤ)

end

end A029798.P11321640970057433637

/-! ## A029798.P12604892121572929552

`A029797(n+1)^A000005(A031388(n+1))`
-/

namespace A029798.P12604892121572929552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029797 (n + 1) : ℚ) ^ (A000005 (A031388 (n + 1)).toNat : ℤ)

end

end A029798.P12604892121572929552

/-! ## A029798.P16499949071198215664

`A029797(n+1)^ratio[A000079(n)]`
-/

namespace A029798.P16499949071198215664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029797 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A029798.P16499949071198215664

/-!
# A029799: Cubes k such that k^(2/3) and k have same digits.

The programs for A029799, there is no canonical definition to state claims against.
-/

/-! ## A029799.P4837124830291507656

`A029797(n+1)^3`
-/

namespace A029799.P4837124830291507656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029797 (n + 1) ^ 3

end

end A029799.P4837124830291507656

/-! ## A029799.P3243117625207379003

`sqrt(A029798(n+1)^3)`
-/

namespace A029799.P3243117625207379003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029798 (n + 1) ^ 3 : ℝ)

end

end A029799.P3243117625207379003

/-! ## A029799.P2037753025310478386

`A029797(n+1)*A029798(n+1)`
-/

namespace A029799.P2037753025310478386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029797 (n + 1) * A029798 (n + 1)

end

end A029799.P2037753025310478386

/-! ## A029799.P4997568049468852863

`A029797(A000027(n+1))²*A029797(n+1)`
-/

namespace A029799.P4997568049468852863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029797 (A000027 (n + 1)).toNat ^ 2 * A029797 (n + 1)

end

end A029799.P4997568049468852863

/-! ## A029799.P17456829138589688775

`A000578(A029797(n+1))`
-/

namespace A029799.P17456829138589688775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029797 (n + 1)).toNat

end

end A029799.P17456829138589688775

