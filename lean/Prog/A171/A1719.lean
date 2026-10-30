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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171900: Backwards van Eck transform of A010060.

The programs for A171900, the canonical program `A171900.P13555337317607652516` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171900 has offset 1).

The definition of A171900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171900.P3522040096998887977

`Δ[A026491(floor(n-atan(n))+1)]`
-/

namespace A171900.P3522040096998887977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P3522040096998887977

namespace A171900

/-- `Δ[A026491(floor(n-atan(n))+1)]` -/
def P3522040096998887977.Spec : Prop :=
  ∀ n, P3522040096998887977.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P13555337317607652516

`Δ[A026491(C(2, n+1)+n-1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A171900

/-- `Δ[A026491(C(2, n+1)+n-1)]` -/
def P13555337317607652516.Spec : Prop :=
  ∀ n, P13555337317607652516.a n = A171900 (n + 1)

theorem P13555337317607652516.correct : P13555337317607652516.Spec := by
  intro n
  simp only [A171900, Nat.add_sub_cancel]

end A171900

/-! ## A171900.P14263041227636861382

`A336173(and(n, a(n-1)-(n+1)))` with `a(0)=0, a(1)=0`
-/

namespace A171900.P14263041227636861382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A336173 (Int.land (n : ℤ) (a (n - 1) - (n + 1 : ℤ))).toNat

end

end A171900.P14263041227636861382

namespace A171900

/-- `A336173(and(n, a(n-1)-(n+1)))` -/
def P14263041227636861382.Spec : Prop :=
  ∀ n, P14263041227636861382.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P10525702290369150253

`A336173(and(n, a(n-1)-1-n))` with `a(0)=0, a(1)=0`
-/

namespace A171900.P10525702290369150253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A336173 (Int.land (n : ℤ) (a (n - 1) - 1 - (n : ℤ))).toNat

end

end A171900.P10525702290369150253

namespace A171900

/-- `A336173(and(n, a(n-1)-1-n))` -/
def P10525702290369150253.Spec : Prop :=
  ∀ n, P10525702290369150253.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P17771293831233235860

`Δ[A026491(abs(n-A060576(n)))]`
-/

namespace A171900.P17771293831233235860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 |(n : ℤ) - A060576 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P17771293831233235860

namespace A171900

/-- `Δ[A026491(abs(n-A060576(n)))]` -/
def P17771293831233235860.Spec : Prop :=
  ∀ n, P17771293831233235860.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P8443876482543789494

`Δ[A026491(A233583(n+1)-1)]`
-/

namespace A171900.P8443876482543789494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P8443876482543789494

namespace A171900

/-- `Δ[A026491(A233583(n+1)-1)]` -/
def P8443876482543789494.Spec : Prop :=
  ∀ n, P8443876482543789494.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P4054412734375056880

`Δ[A026491(abs(n-(A004275(n)+1)))]`
-/

namespace A171900.P4054412734375056880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 |(n : ℤ) - (A004275 n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P4054412734375056880

namespace A171900

/-- `Δ[A026491(abs(n-(A004275(n)+1)))]` -/
def P4054412734375056880.Spec : Prop :=
  ∀ n, P4054412734375056880.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P2017022492442054143

`Δ[A026491(abs(n-1-A004275(n)))]`
-/

namespace A171900.P2017022492442054143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 |(n : ℤ) - 1 - A004275 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P2017022492442054143

namespace A171900

/-- `Δ[A026491(abs(n-1-A004275(n)))]` -/
def P2017022492442054143.Spec : Prop :=
  ∀ n, P2017022492442054143.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P1379679226734479410

`A026491(n)%A026491((n-1)%(n+1))`
-/

namespace A171900.P1379679226734479410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026491 n) (A026491 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat)

end

end A171900.P1379679226734479410

namespace A171900

/-- `A026491(n)%A026491((n-1)%(n+1))` -/
def P1379679226734479410.Spec : Prop :=
  ∀ n, P1379679226734479410.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P9189864100669009351

`Δ[A026491(A065033(A004275(n)))]`
-/

namespace A171900.P9189864100669009351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A065033 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P9189864100669009351

namespace A171900

/-- `Δ[A026491(A065033(A004275(n)))]` -/
def P9189864100669009351.Spec : Prop :=
  ∀ n, P9189864100669009351.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P6322196680151701310

`Δ[A026491(A344838(A000124(n)))]`
-/

namespace A171900.P6322196680151701310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A344838 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P6322196680151701310

namespace A171900

/-- `Δ[A026491(A344838(A000124(n)))]` -/
def P6322196680151701310.Spec : Prop :=
  ∀ n, P6322196680151701310.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P738123411975555970

`Δ[A026491(A004525(A004278(n+1)))]`
-/

namespace A171900.P738123411975555970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A004525 (A004278 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P738123411975555970

namespace A171900

/-- `Δ[A026491(A004525(A004278(n+1)))]` -/
def P738123411975555970.Spec : Prop :=
  ∀ n, P738123411975555970.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P16656638195933559938

`Δ[A026491(A023443(A233583(n+1)))]`
-/

namespace A171900.P16656638195933559938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A023443 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P16656638195933559938

namespace A171900

/-- `Δ[A026491(A023443(A233583(n+1)))]` -/
def P16656638195933559938.Spec : Prop :=
  ∀ n, P16656638195933559938.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P9316909892249408718

`A026491(n)%A026491(log2(A011782(n)))`
-/

namespace A171900.P9316909892249408718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026491 n) (A026491 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat)

end

end A171900.P9316909892249408718

namespace A171900

/-- `A026491(n)%A026491(log2(A011782(n)))` -/
def P9316909892249408718.Spec : Prop :=
  ∀ n, P9316909892249408718.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P10552685224840861290

`Δ[A026491(A004760(n+1))]%A004277(n)`
-/

namespace A171900.P10552685224840861290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A004760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004277 n)

end

end A171900.P10552685224840861290

namespace A171900

/-- `Δ[A026491(A004760(n+1))]%A004277(n)` -/
def P10552685224840861290.Spec : Prop :=
  ∀ n, P10552685224840861290.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P17684057619427434726

`A026491(n)-A026491(A110654(A004275(n)))`
-/

namespace A171900.P17684057619427434726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n - A026491 (A110654 (A004275 n).toNat).toNat

end

end A171900.P17684057619427434726

namespace A171900

/-- `A026491(n)-A026491(A110654(A004275(n)))` -/
def P17684057619427434726.Spec : Prop :=
  ∀ n, P17684057619427434726.a n = A171900 (n + 1)

end A171900

/-! ## A171900.P16467536719622405250

`Δ[A026491(A000196(A002061(n)))]`
-/

namespace A171900.P16467536719622405250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A000196 (A002061 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P16467536719622405250

namespace A171900

/-- `Δ[A026491(A000196(A002061(n)))]` -/
def P16467536719622405250.Spec : Prop :=
  ∀ n, P16467536719622405250.a n = A171900 (n + 1)

end A171900

/-!
# A171901: Numbers with at least two identical neighboring digits in their decimal representation.

The programs for A171901, there is no canonical definition to state claims against.
-/

/-! ## A171901.P15162994911010382494

`A171902(n)+a(n-1)` with `a(0)=11`
-/

namespace A171901.P15162994911010382494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A171902 n + a (n - 1)

end

end A171901.P15162994911010382494

/-! ## A171901.P12919175630585691564

`A297148(n+10)`
-/

namespace A171901.P12919175630585691564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297148 (n + 10)

end

end A171901.P12919175630585691564

/-! ## A171901.P16413001375898775355

`comp[A043096(n+1)]`
-/

namespace A171901.P16413001375898775355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171901.P16413001375898775355

/-! ## A171901.P815051043447805808

`eq[1, A217157(n+2)]+2`
-/

namespace A171901.P815051043447805808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217157 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A171901.P815051043447805808

/-! ## A171901.P2863858982626619485

`eq[1, A055796(A215236(n+2))]+2`
-/

namespace A171901.P2863858982626619485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 (A215236 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A171901.P2863858982626619485

/-! ## A171901.P26453763755958149

`eq[0, A196368(n)]`
-/

namespace A171901.P26453763755958149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171901.P26453763755958149

/-! ## A171901.P11327407767143775098

`lt[A321801(n), n]`
-/

namespace A171901.P11327407767143775098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171901.P11327407767143775098

/-! ## A171901.P7662669146460440872

`lt[A321802(n), n]`
-/

namespace A171901.P7662669146460440872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171901.P7662669146460440872

/-! ## A171901.P16715060548928815880

`lt[A337864(n), n]`
-/

namespace A171901.P16715060548928815880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171901.P16715060548928815880

/-! ## A171901.P1335822387383891756

`lt[A351868(n), n]`
-/

namespace A171901.P1335822387383891756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171901.P1335822387383891756

/-! ## A171901.P815273433347552445

`lt[1, A043284(n+1)]+1`
-/

namespace A171901.P815273433347552445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A171901.P815273433347552445

/-! ## A171901.P5763091420945991980

`lt[A306494(n+1), 1]+1`
-/

namespace A171901.P5763091420945991980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306494 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171901.P5763091420945991980

/-! ## A171901.P18143884032967882861

`eq[1, A165706(A306305(n+1))]+1`
-/

namespace A171901.P18143884032967882861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 (A306305 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171901.P18143884032967882861

/-! ## A171901.P1621519227569247376

`eq[1, A003634(A306494(n+1)+1)]+1`
-/

namespace A171901.P1621519227569247376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (A306494 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171901.P1621519227569247376

/-! ## A171901.P5162923651946836810

`comp[A337864(n)]`
-/

namespace A171901.P5162923651946836810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171901.P5162923651946836810

/-!
# A171902: First differences of consecutive numbers having at least two identical neighboring digits in decimal representation.

The programs for A171902, there is no canonical definition to state claims against.
-/

/-! ## A171902.P4057869072788756335

`Δ[A171901(n+1)]`
-/

namespace A171902.P4057869072788756335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171902.P4057869072788756335

/-! ## A171902.P2161440115155842556

`A171901(n+2)-A171901(n+1)`
-/

namespace A171902.P2161440115155842556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 2) - A171901 (n + 1)

end

end A171902.P2161440115155842556

/-! ## A171902.P9770724853976856144

`Δ[∩[A109303(n+1), A297148(n+1)]]`
-/

namespace A171902.P9770724853976856144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P9770724853976856144

/-! ## A171902.P13151717671237178966

`Δ[∩[A228709(n+1), A297148(n+1)]]`
-/

namespace A171902.P13151717671237178966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228709 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P13151717671237178966

/-! ## A171902.P522014487037421485

`Δ[eq[1, A217157(n+2)]]`
-/

namespace A171902.P522014487037421485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217157 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P522014487037421485

/-! ## A171902.P12347595192741685981

`Δ[eq[1, A215236(n+2)+1]]`
-/

namespace A171902.P12347595192741685981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215236 (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P12347595192741685981

/-! ## A171902.P14933895258836502588

`Δ[eq[1, A055796(A215236(n+2))]]`
-/

namespace A171902.P14933895258836502588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 (A215236 (n + 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P14933895258836502588

/-! ## A171902.P13944932060396122332

`Δ[eq[0, A196368(n)]]`
-/

namespace A171902.P13944932060396122332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P13944932060396122332

/-! ## A171902.P16636403364673512203

`Δ[lt[A321802(n), n]]`
-/

namespace A171902.P16636403364673512203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P16636403364673512203

/-! ## A171902.P2067790596738035149

`Δ[eq[0, A306305(n+1)]]`
-/

namespace A171902.P2067790596738035149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306305 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P2067790596738035149

/-! ## A171902.P11591571059351591970

`Δ[lt[1, A043284(n+1)]]`
-/

namespace A171902.P11591571059351591970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P11591571059351591970

/-! ## A171902.P13377201283475788726

`Δ[lt[A306494(n+1), 1]]`
-/

namespace A171902.P13377201283475788726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306494 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171902.P13377201283475788726

/-!
# A171903: Numbers m such that m and m+1 have at least two identical neighboring digits in their decimal representations.

The programs for A171903, there is no canonical definition to state claims against.
-/

/-! ## A171903.P10421148546327308512

`A171901(eq[1, A171902(n+1)]+1)`
-/

namespace A171903.P10421148546327308512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171903.P10421148546327308512

/-! ## A171903.P2919024271107976300

`record[A171901(n+9)/A171902(n+9)]`
-/

namespace A171903.P2919024271107976300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171901 (n + 9) : ℚ) / (A171902 (n + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171903.P2919024271107976300

/-! ## A171903.P11044119571449730653

`∩[A171901(n+1)-1, A171901(n+1)]`
-/

namespace A171903.P11044119571449730653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171903.P11044119571449730653

/-! ## A171903.P15992606018964347723

`A171901(eq[1, A171901(n+2)-A171901(n+1)]+1)`
-/

namespace A171903.P15992606018964347723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 2) - A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171903.P15992606018964347723

/-! ## A171903.P13246363796034167992

`eq[sin(A196368(n+1)), A196368(n)]`
-/

namespace A171903.P13246363796034167992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A196368 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A171903.P13246363796034167992

/-! ## A171903.P8642449003219217965

`eq[atan(A306305(n+1)), A196368(n)]`
-/

namespace A171903.P8642449003219217965
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A306305 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A171903.P8642449003219217965

/-! ## A171903.P10581886275977911671

`eq[A196368(n+1)/A034856(n+2), A196368(n)]`
-/

namespace A171903.P10581886275977911671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196368 (n + 1) : ℚ) / (A034856 (n + 2) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A171903.P10581886275977911671

/-!
# A171905: a(1) = 1 and a(2) = 2, a(n) = |(sum of previous terms) - n|.

The programs for A171905, the canonical program `A171905.P5529540469387381030` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171905 has offset 1).

The definition of A171905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(0)` (program `A171905.P5529540469387381030`, by `A171905.P5529540469387381030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171905.P5529540469387381030

`a(0)` with `a(0)=1, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171905

/-- `a(0)` -/
def P5529540469387381030.Spec : Prop :=
  ∀ n, (P5529540469387381030.a n : ℤ) = A171905 (n + 1)

theorem P5529540469387381030.correct : P5529540469387381030.Spec := by
  intro n
  simp only [A171905, Nat.add_sub_cancel]

end A171905

/-!
# A171911: Van Eck's sequence (cf. A181391), but starting with a(1) = 1.

The programs for A171911, there is no canonical definition to state claims against.
-/

/-! ## A171911.P15705440608477944541

`A121654((n+1)*gcd(2, ∏{p}[n, #]))%4`
-/

namespace A171911.P15705440608477944541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121654 ((n + 1) * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p))) 4

end

end A171911.P15705440608477944541

/-! ## A171911.P10354002703179062938

`and(record[A091943(n+2)], A091935(3*n+1))`
-/

namespace A171911.P10354002703179062938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A091935 (3 * n + 1))

end

end A171911.P10354002703179062938

/-! ## A171911.P15390613672915569689

`A245188(A223379(n+1)+∑[∑[9*n-2]+3])`
-/

namespace A171911.P15390613672915569689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 (A223379 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171911.P15390613672915569689

/-! ## A171911.P8733105287716734497

`A327500(A327448(n)+A046622(n+4))`
-/

namespace A171911.P8733105287716734497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A327448 (n + 23) + A046622 (n + 4)).toNat

end

end A171911.P8733105287716734497

/-! ## A171911.P6691480406577965471

`A178692(A048138(n+2)*A171487(n+1))`
-/

namespace A171911.P6691480406577965471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A048138 (n + 2) * A171487 (n + 1)).toNat

end

end A171911.P6691480406577965471

/-!
# A171913: Van Eck sequence (cf. A181391) starting with a(1) = 3.

The programs for A171913, there is no canonical definition to state claims against.
-/

/-! ## A171913.P2924550925311641865

`A171917(n+1)%(A076907(n)+2)`
-/

namespace A171913.P2924550925311641865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171917 (n + 1)) (A076907 n + 2)

end

end A171913.P2924550925311641865

/-! ## A171913.P2200457332102941146

`A171918(n+1)%(A076907(n)+3)`
-/

namespace A171913.P2200457332102941146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171918 (n + 1)) (A076907 n + 3)

end

end A171913.P2200457332102941146

/-! ## A171913.P11320349706787524056

`A171917(n+1)%A007536(A000041(n))`
-/

namespace A171913.P11320349706787524056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171917 (n + 1)) (A007536 (A000041 n).toNat)

end

end A171913.P11320349706787524056

/-! ## A171913.P3591019969645210943

`A171918(n+1)%A016789(A008293(n))`
-/

namespace A171913.P3591019969645210943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171918 (n + 1)) (A016789 (A008293 n).toNat)

end

end A171913.P3591019969645210943

/-! ## A171913.P12438286437519952145

`and(A115374(A060444(n)), A171917(n+1))`
-/

namespace A171913.P12438286437519952145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115374 (A060444 n).toNat) (A171917 (n + 1))

end

end A171913.P12438286437519952145

/-!
# A171914: Van Eck sequence (cf. A181391) starting with a(1) = 4.

The programs for A171914, there is no canonical definition to state claims against.
-/

/-! ## A171914.P18231242169153184011

`A171913(n+1)+A019590(A054566(n))`
-/

namespace A171914.P18231242169153184011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171913 (n + 1) + A019590 (A054566 n).toNat

end

end A171914.P18231242169153184011

/-! ## A171914.P9274744826933715921

`A209229(A002445(n))+A171913(n+1)`
-/

namespace A171914.P9274744826933715921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A002445 n).toNat + A171913 (n + 1)

end

end A171914.P9274744826933715921

/-! ## A171914.P13769924292392933462

`A171913(n+1)+A000035(A353795(3*n+1))`
-/

namespace A171914.P13769924292392933462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171913 (n + 1) + A000035 (A353795 (3 * n + 1)).toNat

end

end A171914.P13769924292392933462

/-! ## A171914.P2154353215053803516

`A278169(A228452(3*(n+1)))+A171913(n+1)`
-/

namespace A171914.P2154353215053803516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (A228452 (3 * (n + 1))).toNat + A171913 (n + 1)

end

end A171914.P2154353215053803516

/-! ## A171914.P8826697522571842289

`(A171913(n+1)+A000007(n))%A169865(n+4)`
-/

namespace A171914.P8826697522571842289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171913 (n + 1) + A000007 n) (A169865 (n + 4))

end

end A171914.P8826697522571842289

/-!
# A171915: Van Eck sequence (cf. A181391) starting with a(1) = 5.

The programs for A171915, there is no canonical definition to state claims against.
-/

/-! ## A171915.P18106715520299168508

`A171913((n+1)*gcd(13, n))`
-/

namespace A171915.P18106715520299168508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171913 ((n + 1) * Nat.gcd 13 n)

end

end A171915.P18106715520299168508

/-! ## A171915.P5661418942866478317

`A171914(n+1)+A000007(A000081(n))`
-/

namespace A171915.P5661418942866478317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171914 (n + 1) + A000007 (A000081 n).toNat

end

end A171915.P5661418942866478317

/-! ## A171915.P11876885918149654716

`A171913(n+1)+A000038(A000081(n))`
-/

namespace A171915.P11876885918149654716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171913 (n + 1) + A000038 (A000081 n).toNat

end

end A171915.P11876885918149654716

/-! ## A171915.P14011484133098080517

`A171914(n+1)+A010057(A004119(n))`
-/

namespace A171915.P14011484133098080517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171914 (n + 1) + A010057 (A004119 n).toNat

end

end A171915.P14011484133098080517

/-! ## A171915.P13924874960228492524

`A198632(A000217(n))+A171914(n+1)`
-/

namespace A171915.P13924874960228492524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (A000217 n).toNat + A171914 (n + 1)

end

end A171915.P13924874960228492524

/-!
# A171917: Van Eck sequence (cf. A181391) starting with a(1) = 7.

The programs for A171917, there is no canonical definition to state claims against.
-/

/-! ## A171917.P12994225759327264080

`A171918(n+1)-A000007(A022266(n))`
-/

namespace A171917.P12994225759327264080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (n + 1) - A000007 (A022266 n).toNat

end

end A171917.P12994225759327264080

/-! ## A171917.P349937445844595040

`A171918(n+1)-A000007(A022267(n))`
-/

namespace A171917.P349937445844595040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (n + 1) - A000007 (A022267 n).toNat

end

end A171917.P349937445844595040

/-! ## A171917.P17104586735904292228

`A171918(n+1)-A000007(A062741(n))`
-/

namespace A171917.P17104586735904292228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (n + 1) - A000007 (A062741 n).toNat

end

end A171917.P17104586735904292228

/-! ## A171917.P9433311109232099577

`A171918(n+1)-A010057(A117625(n))`
-/

namespace A171917.P9433311109232099577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (n + 1) - A010057 (A117625 n).toNat

end

end A171917.P9433311109232099577

/-! ## A171917.P11251008866168014879

`A171918(n+1)+A121373(A002327(n+1))`
-/

namespace A171917.P11251008866168014879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (n + 1) + A121373 (A002327 (n + 1)).toNat

end

end A171917.P11251008866168014879

/-!
# A171918: Van Eck sequence (cf. A181391) starting with a(1) = 8.

The programs for A171918, there is no canonical definition to state claims against.
-/

/-! ## A171918.P13751934686770661845

`A171917(n+1)+A000007(A022266(n))`
-/

namespace A171918.P13751934686770661845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (n + 1) + A000007 (A022266 n).toNat

end

end A171918.P13751934686770661845

/-! ## A171918.P15120769152582392385

`A171917(n+1)+A000007(A022267(n))`
-/

namespace A171918.P15120769152582392385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (n + 1) + A000007 (A022267 n).toNat

end

end A171918.P15120769152582392385

/-! ## A171918.P9467114141134328740

`A171917(n+1)+A000007(A062741(n))`
-/

namespace A171918.P9467114141134328740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (n + 1) + A000007 (A062741 n).toNat

end

end A171918.P9467114141134328740

/-! ## A171918.P15271792988284319546

`A171917(n+1)+A010057(A117625(n))`
-/

namespace A171918.P15271792988284319546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (n + 1) + A010057 (A117625 n).toNat

end

end A171918.P15271792988284319546

/-! ## A171918.P4342253255903677127

`A171917(n+1)+A008683(A183688(n+1))`
-/

namespace A171918.P4342253255903677127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (n + 1) + A008683 (A183688 (n + 1)).toNat

end

end A171918.P4342253255903677127

/-!
# A171919: Number of solutions to n=x*y*z, x+y-z=1 with ordered triples (x,y,z), x,y,z>=1.

The programs for A171919, there is no canonical definition to state claims against.
-/

/-! ## A171919.P14874793745103396474

`C(A000089(n+2), A020639(A337820(3*n+5)))`
-/

namespace A171919.P14874793745103396474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000089 (n + 2)).toNat (A020639 (A337820 (3 * n + 5)).toNat).toNat

end

end A171919.P14874793745103396474

/-! ## A171919.P16848781151317196747

`A115363(A100587(n+1)%A310454(n))`
-/

namespace A171919.P16848781151317196747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115363 (Int.tmod (A100587 (n + 1)) (A310454 n)).toNat

end

end A171919.P16848781151317196747

/-! ## A171919.P18387028378155386973

`A245964(n)%A105778(A328571(n)*A328572(n))`
-/

namespace A171919.P18387028378155386973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245964 n) (A105778 (A328571 n * A328572 n).toNat)

end

end A171919.P18387028378155386973

/-! ## A171919.P5184569381374745826

`A091453(gcd(A063647(n+1), A293365(n+3)))`
-/

namespace A171919.P5184569381374745826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (Int.gcd (A063647 (n + 1)) (A293365 (n + 3)))

end

end A171919.P5184569381374745826

/-! ## A171919.P795019745588518689

`A119339(A119332(n))*A119346(A119347(n+1))`
-/

namespace A171919.P795019745588518689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119339 (A119332 n).toNat * A119346 (A119347 (n + 1)).toNat

end

end A171919.P795019745588518689

/-!
# A171920: Numbers n with at least one solution to n=x*y*z, x+y-z=1 with ordered triples (x,y,z), x,y,z>=1.

The programs for A171920, there is no canonical definition to state claims against.
-/

/-! ## A171920.P15366982161718699933

`lt[0, A171919(n+1)]+1`
-/

namespace A171920.P15366982161718699933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A171920.P15366982161718699933

/-! ## A171920.P94208493075810590

`A225870(∑[A134975(n)+1])`
-/

namespace A171920.P94208493075810590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134975 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225870 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171920.P94208493075810590

/-! ## A171920.P12456519303626389958

`A225870(A077342(n+1)+1)`
-/

namespace A171920.P12456519303626389958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225870 (A077342 (n + 1) + 1).toNat

end

end A171920.P12456519303626389958

/-! ## A171920.P10784587335509272844

`A225870(A242474(n+1)+1)`
-/

namespace A171920.P10784587335509272844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225870 (A242474 (n + 1) + 1).toNat

end

end A171920.P10784587335509272844

/-! ## A171920.P12804507567463804540

`A225870(A351374(n+1)+1)`
-/

namespace A171920.P12804507567463804540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225870 (A351374 (n + 1) + 1).toNat

end

end A171920.P12804507567463804540

/-!
# A171921: New numbers in A171922 in order of appearance.

The programs for A171921, there is no canonical definition to state claims against.
-/

/-! ## A171921.P9975234141411722419

`A171922(A171926(n+1))`
-/

namespace A171921.P9975234141411722419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (A171926 (n + 1)).toNat

end

end A171921.P9975234141411722419

/-! ## A171921.P8323119291622008913

`A171922(comp[A171922(n+1)+1+n]+1)`
-/

namespace A171921.P8323119291622008913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171921.P8323119291622008913

/-! ## A171921.P18035666775501510162

`A171922(eq[0, A171933(n+1)]+1)`
-/

namespace A171921.P18035666775501510162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171921.P18035666775501510162

/-! ## A171921.P686404034693682486

`A171922(lt[A171933(n+1), 1]+1)`
-/

namespace A171921.P686404034693682486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171933 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A171921.P686404034693682486

/-!
# A171923: Records in A031883 (values).

The programs for A171923, there is no canonical definition to state claims against.
-/

/-! ## A171923.P17329093187890594019

`A031883(A171924(n+1))`
-/

namespace A171923.P17329093187890594019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (A171924 (n + 1)).toNat

end

end A171923.P17329093187890594019

/-! ## A171923.P13203446468553043528

`record[A057700(n)]`
-/

namespace A171923.P13203446468553043528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171923.P13203446468553043528

/-! ## A171923.P1084516051584300109

`record[A031883(A045954(n+1)-A236335(n+1))]`
-/

namespace A171923.P1084516051584300109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (A045954 (n + 1) - A236335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171923.P1084516051584300109

/-! ## A171923.P3954961919378262864

`∑[A328706(A042185(n)+1)]`
-/

namespace A171923.P3954961919378262864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328706 (A042185 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171923.P3954961919378262864

/-! ## A171923.P12674863654636425295

`record[A031883(A078972(n+1)+1)]`
-/

namespace A171923.P12674863654636425295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (A078972 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171923.P12674863654636425295

/-!
# A171924: Records in A031883 (positions).

The programs for A171924, there is no canonical definition to state claims against.
-/

/-! ## A171924.P6677999665332582535

`A181558(record[A057700(n)/2])`
-/

namespace A171924.P6677999665332582535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057700 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181558 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A171924.P6677999665332582535

/-! ## A171924.P12113354362381319093

`A181558(A171923(n+1)/2)`
-/

namespace A171924.P12113354362381319093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181558 (SequenceMachineLib.roundAway ((A171923 (n + 1) : ℚ) / 2)).toNat

end

end A171924.P12113354362381319093

/-! ## A171924.P270538804379788529

`A109497(A118126(n+1))`
-/

namespace A171924.P270538804379788529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A118126 (n + 1)).toNat

end

end A171924.P270538804379788529

/-!
# A171925: Positions of 2's in A171922.

The programs for A171925, there is no canonical definition to state claims against.
-/

/-! ## A171925.P14595619286199100072

`eq[2, A171922(n+1)]+1`
-/

namespace A171925.P14595619286199100072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171925.P14595619286199100072

/-! ## A171925.P5754378861678688745

`A171922(a(n-1)-1)+a(n-1)` with `a(0)=2`
-/

namespace A171925.P5754378861678688745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A171922 (a (n - 1) - 1).toNat + a (n - 1)

end

end A171925.P5754378861678688745

/-! ## A171925.P14606398301081963466

`eq[2, A171922(A028310(n))]`
-/

namespace A171925.P14606398301081963466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171925.P14606398301081963466

/-! ## A171925.P5529083097263123573

`A020725(eq[2, A171922(n+1)])`
-/

namespace A171925.P5529083097263123573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171925.P5529083097263123573

/-! ## A171925.P17460269628906606111

`record[A005843(n+1)/A171922(n+1)]`
-/

namespace A171925.P17460269628906606111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A171922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171925.P17460269628906606111

/-!
# A171926: Position where A171921(n) first occurs in A171922.

The programs for A171926, there is no canonical definition to state claims against.
-/

/-! ## A171926.P18180075784541003736

`comp[A171922(n+1)+1+n]+1`
-/

namespace A171926.P18180075784541003736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171926.P18180075784541003736

/-! ## A171926.P15722786689835357286

`eq[1, exp(a(A171933(n)))]` with `a(0)=0`
-/

namespace A171926.P15722786689835357286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A171933 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A171926.P15722786689835357286

/-! ## A171926.P7358809565130989606

`eq[0, A171933(n+1)]+1`
-/

namespace A171926.P7358809565130989606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171926.P7358809565130989606

/-! ## A171926.P1072461790591138894

`lt[A000010(A171933(n+1)+2), 2]+1`
-/

namespace A171926.P1072461790591138894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171933 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171926.P1072461790591138894

/-! ## A171926.P6677943920911207840

`lt[A000032(A171933(n+1)+1), 3]+1`
-/

namespace A171926.P6677943920911207840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A171933 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171926.P6677943920911207840

/-!
# A171927: Records in A171922 (values).

The programs for A171927, there is no canonical definition to state claims against.
-/

/-! ## A171927.P17625237360031680348

`record[A171921(n+1)]`
-/

namespace A171927.P17625237360031680348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171927.P17625237360031680348

/-! ## A171927.P9658393087296653621

`record[A171922(n+1)]`
-/

namespace A171927.P9658393087296653621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171927.P9658393087296653621

/-! ## A171927.P849238169675504662

`A171922(A171930(1+n))`
-/

namespace A171927.P849238169675504662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (A171930 (1 + n)).toNat

end

end A171927.P849238169675504662

/-! ## A171927.P6140147008658071917

`record[ratio[A171921(A158416(n))]]`
-/

namespace A171927.P6140147008658071917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171921 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171927.P6140147008658071917

/-! ## A171927.P10257829740529877421

`record[A171933(n+3)]`
-/

namespace A171927.P10257829740529877421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171933 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171927.P10257829740529877421

/-!
# A171928: Numbers k which divide the periodic part of the decimal expansion of 1/k.

The programs for A171928, there is no canonical definition to state claims against.
-/

/-! ## A171928.P8633340990209791727

`A179267(A041957(n))`
-/

namespace A171928.P8633340990209791727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179267 (A041957 n).toNat

end

end A171928.P8633340990209791727

/-! ## A171928.P16810187584356592166

`A179267(A041101(n+1))`
-/

namespace A171928.P16810187584356592166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179267 (A041101 (n + 1)).toNat

end

end A171928.P16810187584356592166

/-!
# A171929: Odd numbers whose abundancy is closer to 2 than any smaller odd number.

The programs for A171929, there is no canonical definition to state claims against.
-/

/-! ## A171929.P7976307206248829630

`A188597(n+1)%A226453(A288906(n+4))`
-/

namespace A171929.P7976307206248829630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188597 (n + 1)) (A226453 (A288906 (n + 4)).toNat)

end

end A171929.P7976307206248829630

/-! ## A171929.P12169414879075727131

`A188597(a(5*floor(n/8))+n%8)` with `a(0)=1`
-/

namespace A171929.P12169414879075727131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188597 (a (5 * ⌊(n : ℚ) / 8⌋).toNat + ((n % 8 : ℕ) : ℤ)).toNat

end

end A171929.P12169414879075727131

/-! ## A171929.P18027735865953642174

`record[A097272(A325849(n))]`
-/

namespace A171929.P18027735865953642174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A325849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171929.P18027735865953642174

/-! ## A171929.P2214877834039445638

`A003964(A188597(n+1))`
-/

namespace A171929.P2214877834039445638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A188597 (n + 1)).toNat

end

end A171929.P2214877834039445638

/-!
# A171930: Records in A171922 (positions).

The programs for A171930, there is no canonical definition to state claims against.
-/

/-! ## A171930.P5014726190851093453

`∑[dr(A057555(A013025(n)))]`
-/

namespace A171930.P5014726190851093453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057555 (A013025 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171930.P5014726190851093453

/-! ## A171930.P18110997137902035231

`A046660(A101695(n+1))+A005180(n+1)`
-/

namespace A171930.P18110997137902035231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A101695 (n + 1)).toNat + A005180 (n + 1)

end

end A171930.P18110997137902035231

/-! ## A171930.P10202439660208080183

`A317991(A307035(n+2))+A130243(n+1)`
-/

namespace A171930.P10202439660208080183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317991 (A307035 (n + 2)).toNat + A130243 (n + 1)

end

end A171930.P10202439660208080183

/-!
# A171932: Backwards van Eck transform of prime gaps, A001223.

The programs for A171932, there is no canonical definition to state claims against.
-/

/-! ## A171932.P11248246705299880242

`A087624(A087629(n)+A087565(n+1))`
-/

namespace A171932.P11248246705299880242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A087629 n + A087565 (n + 1)).toNat

end

end A171932.P11248246705299880242

/-! ## A171932.P8796919337870790176

`A037800(A253652(n+1)+A035699(n+1))`
-/

namespace A171932.P8796919337870790176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A253652 (n + 1) + A035699 (n + 1)).toNat

end

end A171932.P8796919337870790176

/-! ## A171932.P18275628481813473060

`A037800(A316864(3*n+1)+A253652(n+1))`
-/

namespace A171932.P18275628481813473060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A316864 (3 * n + 1) + A253652 (n + 1)).toNat

end

end A171932.P18275628481813473060

/-!
# A171933: Backwards van Eck transform of A171922.

The programs for A171933, there is no canonical definition to state claims against.
-/

/-! ## A171933.P14216329095434913625

`A177862(2*(n+1))%A372671(A071521(n+1))`
-/

namespace A171933.P14216329095434913625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177862 (2 * (n + 1))) (A372671 (A071521 (n + 1)).toNat)

end

end A171933.P14216329095434913625

/-! ## A171933.P1229005828396152532

`A083533(A332544(n+3))%A299500(2*(n+1))`
-/

namespace A171933.P1229005828396152532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083533 (A332544 (n + 3)).toNat) (A299500 (2 * (n + 1)))

end

end A171933.P1229005828396152532

/-! ## A171933.P12335664442087297195

`A058393(n)*A324120(A042125(n))`
-/

namespace A171933.P12335664442087297195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 n * A324120 (A042125 n).toNat

end

end A171933.P12335664442087297195

/-! ## A171933.P9449779296211532429

`A024363(A099050(n+1)+A000120(n))`
-/

namespace A171933.P9449779296211532429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A099050 (n + 1) + A000120 n).toNat

end

end A171933.P9449779296211532429

/-! ## A171933.P7550833531882187372

`and(A001156(A004444(n)), A072198(n+1))`
-/

namespace A171933.P7550833531882187372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001156 (A004444 n).toNat) (A072198 (n + 1))

end

end A171933.P7550833531882187372

/-!
# A171934: Backwards van Eck transform of A000010.

The programs for A171934, there is no canonical definition to state claims against.
-/

/-! ## A171934.P5794625043066609322

`(n+2)%(A066705(n+1)+1)`
-/

namespace A171934.P5794625043066609322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A066705 (n + 1) + 1)

end

end A171934.P5794625043066609322

/-! ## A171934.P1370385894003252926

`(n%A262603(n+1)+1)%(n+1)`
-/

namespace A171934.P1370385894003252926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n : ℤ) (A262603 (n + 1)) + 1) (n + 1 : ℤ)

end

end A171934.P1370385894003252926

/-! ## A171934.P4603989791563050764

`A066659(A262603(n+1))-A066705(n+1)`
-/

namespace A171934.P4603989791563050764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (A262603 (n + 1)).toNat - A066705 (n + 1)

end

end A171934.P4603989791563050764

/-! ## A171934.P1338828825136386190

`A004197(∑[n+2]-A066705(n+1))`
-/

namespace A171934.P1338828825136386190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A066705 (n + 1)).toNat

end

end A171934.P1338828825136386190

/-! ## A171934.P8035055179436015838

`A002262(A253145(n)-A066705(n+1))`
-/

namespace A171934.P8035055179436015838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A253145 n - A066705 (n + 1)).toNat

end

end A171934.P8035055179436015838

/-! ## A171934.P11826478629124603445

`A002262(A000124(n)-A001489(n)%A262603(n+1))`
-/

namespace A171934.P11826478629124603445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000124 n - Int.tmod (A001489 n) (A262603 (n + 1))).toNat

end

end A171934.P11826478629124603445

/-! ## A171934.P10842514893698554753

`A171935(abs(A066705(n+1)-1)+1)`
-/

namespace A171934.P10842514893698554753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171935 (|A066705 (n + 1) - 1| + 1).toNat

end

end A171934.P10842514893698554753

/-!
# A171935: Forward van Eck transform of A000010.

The programs for A171935, there is no canonical definition to state claims against.
-/

/-! ## A171935.P10656171353661321598

`(A066659(n+1)-1)%(n+1)+1`
-/

namespace A171935.P10656171353661321598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066659 (n + 1) - 1) (n + 1 : ℤ) + 1

end

end A171935.P10656171353661321598

/-! ## A171935.P15540530614373312534

`A171934(A262599(n+1))`
-/

namespace A171935.P15540530614373312534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171934 (A262599 (n + 1)).toNat

end

end A171935.P15540530614373312534

/-! ## A171935.P7691346313407003717

`A002262(A066659(1+n)+∑[n])`
-/

namespace A171935.P7691346313407003717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A066659 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A171935.P7691346313407003717

/-! ## A171935.P12353999484446146550

`A066659(n+1)-A066705(A262599(n+1))`
-/

namespace A171935.P12353999484446146550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (n + 1) - A066705 (A262599 (n + 1)).toNat

end

end A171935.P12353999484446146550

/-! ## A171935.P14699658756515012140

`A066659(n+1)+A001478(n+1)%A028476(n+1)`
-/

namespace A171935.P14699658756515012140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (n + 1) + Int.tmod (A001478 (n + 1)) (A028476 (n + 1))

end

end A171935.P14699658756515012140

/-! ## A171935.P12130468995271159825

`(A110315(2*n+1)+A066659(n+1))%A028476(n+1)`
-/

namespace A171935.P12130468995271159825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110315 (2 * n + 1) + A066659 (n + 1)) (A028476 (n + 1))

end

end A171935.P12130468995271159825

/-!
# A171936: Backwards van Eck transform of A000005.

The programs for A171936, there is no canonical definition to state claims against.
-/

/-! ## A171936.P10084499553831923867

`(1-A347982(n+1)+n)%(n+2)`
-/

namespace A171936.P10084499553831923867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A347982 (n + 1) + (n : ℤ)) (n + 2 : ℤ)

end

end A171936.P10084499553831923867

/-! ## A171936.P7390089370321840237

`A171937(abs(A347982(1+n)))`
-/

namespace A171936.P7390089370321840237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 |A347982 (1 + n)|.toNat

end

end A171936.P7390089370321840237

/-! ## A171936.P9596641231470156

`A171937(root(A347982(n+1)², 2))`
-/

namespace A171936.P9596641231470156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (SequenceMachineLib.roundAway ((A347982 (n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A171936.P9596641231470156

/-! ## A171936.P13034743295533834729

`A025581(A347982(n+1)+∑[n+1])`
-/

namespace A171936.P13034743295533834729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A347982 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A171936.P13034743295533834729

/-! ## A171936.P11850464797893288565

`A171937(lcm(A033999(n), A347982(n+1)))`
-/

namespace A171936.P11850464797893288565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (Int.lcm (A033999 n) (A347982 (n + 1)))

end

end A171936.P11850464797893288565

/-! ## A171936.P3449302404731458273

`A171937(∑{d}[A347982(n+1), A000010(#)])`
-/

namespace A171936.P3449302404731458273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A171936.P3449302404731458273

/-! ## A171936.P17129698253045545366

`A171937(gcd(-A347982(n+1), A347982(n+1)))`
-/

namespace A171936.P17129698253045545366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (Int.gcd (-A347982 (n + 1)) (A347982 (n + 1)))

end

end A171936.P17129698253045545366

/-! ## A171936.P4217242445568320933

`A171937(gcd(n!, A347982(n+1)))`
-/

namespace A171936.P4217242445568320933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (Int.gcd (Nat.factorial n : ℤ) (A347982 (n + 1)))

end

end A171936.P4217242445568320933

/-!
# A171937: Forward van Eck transform of A000005.

The programs for A171937, there is no canonical definition to state claims against.
-/

/-! ## A171937.P2331804556017725472

`A079427(n+1)-(n+1)`
-/

namespace A171937.P2331804556017725472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (n + 1) - (n + 1 : ℤ)

end

end A171937.P2331804556017725472

/-! ## A171937.P13717531187065494807

`abs(A079427(n+1)+A001478(n+1))`
-/

namespace A171937.P13717531187065494807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079427 (n + 1) + A001478 (n + 1)|

end

end A171937.P13717531187065494807

/-! ## A171937.P13434398186933970585

`A110315(2*n+1)+A079427(n+1)`
-/

namespace A171937.P13434398186933970585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + A079427 (n + 1)

end

end A171937.P13434398186933970585

/-! ## A171937.P7066069046435747814

`A110326(2*n+1)+A079427(n+1)`
-/

namespace A171937.P7066069046435747814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110326 (2 * n + 1) + A079427 (n + 1)

end

end A171937.P7066069046435747814

/-! ## A171937.P4205442325953693460

`A023443(A079427(n+1)-n)`
-/

namespace A171937.P4205442325953693460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079427 (n + 1) - (n : ℤ)).toNat

end

end A171937.P4205442325953693460

/-! ## A171937.P15569636369124299313

`A023443(A079427(n+1))+A001489(n)`
-/

namespace A171937.P15569636369124299313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079427 (n + 1)).toNat + A001489 n

end

end A171937.P15569636369124299313

/-! ## A171937.P13586207287439731510

`A065475(A079427(n+1))+A001489(A065475(n+1))`
-/

namespace A171937.P13586207287439731510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A079427 (n + 1)).toNat + A001489 (A065475 (n + 1)).toNat

end

end A171937.P13586207287439731510

/-! ## A171937.P1432959838587297043

`A130734(A079427(n+1)-n)`
-/

namespace A171937.P1432959838587297043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A079427 (n + 1) - (n : ℤ)).toNat

end

end A171937.P1432959838587297043

/-! ## A171937.P12297270620547699589

`A291179(A079427(n+1)-n)`
-/

namespace A171937.P12297270620547699589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (A079427 (n + 1) - (n : ℤ)).toNat

end

end A171937.P12297270620547699589

/-!
# A171938: Record values in A138753 (a "prime" variation of the Collatz (3n+1) problem).

The programs for A171938, there is no canonical definition to state claims against.
-/

/-! ## A171938.P852180533067124597

`A138753(A138756(n+1))`
-/

namespace A171938.P852180533067124597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138753 (A138756 (n + 1)).toNat

end

end A171938.P852180533067124597

/-! ## A171938.P18121432453318244775

`record[A138753(n+1)]`
-/

namespace A171938.P18121432453318244775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171938.P18121432453318244775

/-! ## A171938.P3135516600972324027

`A138753(record[A138756(Δ[ceil(sqrt(n^3))])])`
-/

namespace A171938.P3135516600972324027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138756 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171938.P3135516600972324027

/-! ## A171938.P5349765236200024816

`record[A138752(n+1)+A014963(A138777(n+2))]`
-/

namespace A171938.P5349765236200024816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138752 (n + 1) + A014963 (A138777 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171938.P5349765236200024816

/-!
# A171941: Backwards van Eck transform of A000120.

The programs for A171941, the canonical program `A171941.P16669356445325525036` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171941 has offset 1).

The definition of A171941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171941.P16669356445325525036

`n-A243109(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A171941

/-- `n-A243109(n)` -/
def P16669356445325525036.Spec : Prop :=
  ∀ n, P16669356445325525036.a n = A171941 (n + 1)

theorem P16669356445325525036.correct : P16669356445325525036.Spec := by
  intro n
  simp only [A171941, Nat.add_sub_cancel]

end A171941

/-! ## A171941.P11327684819451927007

`A171942(n+1-(Δ[n²]-2^ceil(log2(n+1))))`
-/

namespace A171941.P11327684819451927007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A171941.P11327684819451927007

namespace A171941

/-- `A171942(n+1-(Δ[n²]-2^ceil(log2(n+1))))` -/
def P11327684819451927007.Spec : Prop :=
  ∀ n, P11327684819451927007.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P11966322263969813134

`abs(A243109(n)+A001489(n))`
-/

namespace A171941.P11966322263969813134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A243109 n + A001489 n|

end

end A171941.P11966322263969813134

namespace A171941

/-- `abs(A243109(n)+A001489(n))` -/
def P11966322263969813134.Spec : Prop :=
  ∀ n, P11966322263969813134.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P2452064493983063782

`A025581(A243109(n)+∑[n])`
-/

namespace A171941.P2452064493983063782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A243109 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A171941.P2452064493983063782

namespace A171941

/-- `A025581(A243109(n)+∑[n])` -/
def P2452064493983063782.Spec : Prop :=
  ∀ n, P2452064493983063782.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P17802003444403451432

`A001057(2*A243109(n))+n`
-/

namespace A171941.P17802003444403451432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A243109 n).toNat + (n : ℤ)

end

end A171941.P17802003444403451432

namespace A171941

/-- `A001057(2*A243109(n))+n` -/
def P17802003444403451432.Spec : Prop :=
  ∀ n, P17802003444403451432.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P15937675846762135412

`A057428(n)*A243109(n)+n`
-/

namespace A171941.P15937675846762135412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A243109 n + (n : ℤ)

end

end A171941.P15937675846762135412

namespace A171941

/-- `A057428(n)*A243109(n)+n` -/
def P15937675846762135412.Spec : Prop :=
  ∀ n, P15937675846762135412.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P17311560449703345493

`(n+1)%(A243109(n)+A007318(C(2, n)))`
-/

namespace A171941.P17311560449703345493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A243109 n + A007318 (Nat.choose 2 n))

end

end A171941.P17311560449703345493

namespace A171941

/-- `(n+1)%(A243109(n)+A007318(C(2, n)))` -/
def P17311560449703345493.Spec : Prop :=
  ∀ n, P17311560449703345493.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P4577648597184391739

`A035327(A243109(n)+A035327(n))`
-/

namespace A171941.P4577648597184391739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A243109 n + A035327 n).toNat

end

end A171941.P4577648597184391739

namespace A171941

/-- `A035327(A243109(n)+A035327(n))` -/
def P4577648597184391739.Spec : Prop :=
  ∀ n, P4577648597184391739.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P11770033017279037883

`A061601(A243109(n)+A061601(n))`
-/

namespace A171941.P11770033017279037883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A243109 n + A061601 n).toNat

end

end A171941.P11770033017279037883

namespace A171941

/-- `A061601(A243109(n)+A061601(n))` -/
def P11770033017279037883.Spec : Prop :=
  ∀ n, P11770033017279037883.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P17544142745958756137

`A171960(A243109(n)+A171960(n))`
-/

namespace A171941.P17544142745958756137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A243109 n + A171960 n).toNat

end

end A171941.P17544142745958756137

namespace A171941

/-- `A171960(A243109(n)+A171960(n))` -/
def P17544142745958756137.Spec : Prop :=
  ∀ n, P17544142745958756137.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P12359975549608406174

`A008683(A051698(n))*A243109(n)+n`
-/

namespace A171941.P12359975549608406174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat * A243109 n + (n : ℤ)

end

end A171941.P12359975549608406174

namespace A171941

/-- `A008683(A051698(n))*A243109(n)+n` -/
def P12359975549608406174.Spec : Prop :=
  ∀ n, P12359975549608406174.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P6055384780572189943

`n-A263327(A263328(n)-A043545(n))`
-/

namespace A171941.P6055384780572189943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A263327 (A263328 n - A043545 n).toNat

end

end A171941.P6055384780572189943

namespace A171941

/-- `n-A263327(A263328(n)-A043545(n))` -/
def P6055384780572189943.Spec : Prop :=
  ∀ n, P6055384780572189943.a n = A171941 (n + 1)

end A171941

/-! ## A171941.P4492121337194079859

`∑{d}[A243109(n)+A001489(n), A000010(#)]`
-/

namespace A171941.P4492121337194079859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A171941.P4492121337194079859

namespace A171941

/-- `∑{d}[A243109(n)+A001489(n), A000010(#)]` -/
def P4492121337194079859.Spec : Prop :=
  ∀ n, P4492121337194079859.a n = A171941 (n + 1)

end A171941

/-!
# A171942: Forward van Eck transform of A000120.

The programs for A171942, the canonical program `A171942.P6035493743432870795` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171942 has offset 1).

The definition of A171942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171942.P6035493743432870795

`(A057168(abs(1-n)+1)+1)%(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171942

/-- `(A057168(abs(1-n)+1)+1)%(n+1)` -/
def P6035493743432870795.Spec : Prop :=
  ∀ n, P6035493743432870795.a n = A171942 (n + 1)

theorem P6035493743432870795.correct : P6035493743432870795.Spec := by
  intro n
  simp only [A171942, Nat.add_sub_cancel]

end A171942

/-! ## A171942.P7014419045556882225

`A057168(round(sqrt(n²+1)))-(abs(1-n)+1)`
-/

namespace A171942.P7014419045556882225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - (|1 - (n : ℤ)| + 1)

end

end A171942.P7014419045556882225

namespace A171942

/-- `A057168(round(sqrt(n²+1)))-(abs(1-n)+1)` -/
def P7014419045556882225.Spec : Prop :=
  ∀ n, P7014419045556882225.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P5203141850335136693

`n-(2*n)%A057168(A028310(n))`
-/

namespace A171942.P5203141850335136693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (2 * n : ℤ) (A057168 (A028310 n).toNat)

end

end A171942.P5203141850335136693

namespace A171942

/-- `n-(2*n)%A057168(A028310(n))` -/
def P5203141850335136693.Spec : Prop :=
  ∀ n, P5203141850335136693.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P16662009815883060641

`(A057168(A028310(n))-n)*A057427(n)`
-/

namespace A171942.P16662009815883060641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057168 (A028310 n).toNat - (n : ℤ)) * A057427 n

end

end A171942.P16662009815883060641

namespace A171942

/-- `(A057168(A028310(n))-n)*A057427(n)` -/
def P16662009815883060641.Spec : Prop :=
  ∀ n, P16662009815883060641.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P1787202334094983772

`(A057168(A028310(n))+1-n-n)%A028476(n+1)+n-1`
-/

namespace A171942.P1787202334094983772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057168 (A028310 n).toNat + (1 - (n : ℤ) - (n : ℤ))) (A028476 (n + 1)) + ((n : ℤ) - 1)

end

end A171942.P1787202334094983772

namespace A171942

/-- `(A057168(A028310(n))+1-n-n)%A028476(n+1)+n-1` -/
def P1787202334094983772.Spec : Prop :=
  ∀ n, P1787202334094983772.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P15022258960052773710

`A010078(n+1)-A243109(A010078(n+1))`
-/

namespace A171942.P15022258960052773710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (n + 1) - A243109 (A010078 (n + 1)).toNat

end

end A171942.P15022258960052773710

namespace A171942

/-- `A010078(n+1)-A243109(A010078(n+1))` -/
def P15022258960052773710.Spec : Prop :=
  ∀ n, P15022258960052773710.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P16061743935770592111

`A171941(A010078(n+1)+1)`
-/

namespace A171942.P16061743935770592111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171941 (A010078 (n + 1) + 1).toNat

end

end A171942.P16061743935770592111

namespace A171942

/-- `A171941(A010078(n+1)+1)` -/
def P16061743935770592111.Spec : Prop :=
  ∀ n, P16061743935770592111.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P5547380951913640306

`A171941(A261693(n)+1+n)`
-/

namespace A171942.P5547380951913640306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171941 (A261693 n + 1 + (n : ℤ)).toNat

end

end A171942.P5547380951913640306

namespace A171942

/-- `A171941(A261693(n)+1+n)` -/
def P5547380951913640306.Spec : Prop :=
  ∀ n, P5547380951913640306.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P2456065108674263592

`A171941(A004757(n+1)-(2*n+1))`
-/

namespace A171942.P2456065108674263592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171941 (A004757 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A171942.P2456065108674263592

namespace A171942

/-- `A171941(A004757(n+1)-(2*n+1))` -/
def P2456065108674263592.Spec : Prop :=
  ∀ n, P2456065108674263592.a n = A171942 (n + 1)

end A171942

/-! ## A171942.P6079359210116640133

`(A089312(A004273(n))+A089312(n))/2`
-/

namespace A171942.P6079359210116640133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089312 (A004273 n).toNat + A089312 n : ℚ) / 2

end

end A171942.P6079359210116640133

namespace A171942

/-- `(A089312(A004273(n))+A089312(n))/2` -/
def P6079359210116640133.Spec : Prop :=
  ∀ n, P6079359210116640133.a n = (A171942 (n + 1) : ℚ)

end A171942

/-!
# A171943: To get a(n+1), add to a(n) the product of the two closest digits to the comma printed before a(n); start with a(1)=a(2)=1.

The programs for A171943, there is no canonical definition to state claims against.
-/

/-! ## A171943.P1269871145906412688

`A018819(n)*A103921(A003946(n))`
-/

namespace A171943.P1269871145906412688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n * A103921 (A003946 n).toNat

end

end A171943.P1269871145906412688

/-! ## A171943.P17927191070660139135

`A000120(A124303(n))*A134478(n)`
-/

namespace A171943.P17927191070660139135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A124303 n).toNat * A134478 n

end

end A171943.P17927191070660139135

/-! ## A171943.P8710378758381341709

`A052509(n)*A129596(A344615(n))`
-/

namespace A171943.P8710378758381341709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A129596 (A344615 n).toNat

end

end A171943.P8710378758381341709

/-! ## A171943.P6098805698284918283

`A360418(n+1)-A302045(A001405(2*n+1))`
-/

namespace A171943.P6098805698284918283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360418 (n + 1) - A302045 (A001405 (2 * n + 1)).toNat

end

end A171943.P6098805698284918283

/-!
# A171944: N-positions for game of misere version of Mark.

The programs for A171944, there is no canonical definition to state claims against.
-/

/-! ## A171944.P6283223531710970014

`lt[0, sin(n%2-a(floor(n/2)))]` with `a(0)=2`
-/

namespace A171944.P6283223531710970014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f2 =>
  Real.sin (((n % 2 : ℕ) : ℝ) - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171944.P6283223531710970014

/-! ## A171944.P2841112034622339427

`comp[gcd(n, a(floor(n/2))-(-1)^n)]` with `a(0)=1, a(1)=4`
-/

namespace A171944.P2841112034622339427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  Int.gcd (n : ℤ) ((f1 ⌊(n : ℚ) / 2⌋.toNat : ℤ) - (-1) ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171944.P2841112034622339427

/-! ## A171944.P1578253563960934723

`eq[0, (n+1)%(2-a(floor(n/2)))]` with `a(0)=0, a(1)=1`
-/

namespace A171944.P1578253563960934723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Int.tmod (n + 1 : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171944.P1578253563960934723

/-! ## A171944.P12179451037416475139

`lt[(n-1)%(a(floor(n/2))-2), 1]` with `a(0)=0, a(1)=1`
-/

namespace A171944.P12179451037416475139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Int.tmod ((n : ℤ) - 1) (f1 ⌊(n : ℚ) / 2⌋.toNat - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171944.P12179451037416475139

/-! ## A171944.P6970628201135051196

`lt[0, 1-a(n-1)*a(floor(n/2))]` with `a(0)=1`
-/

namespace A171944.P6970628201135051196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1) * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171944.P6970628201135051196

/-! ## A171944.P7548456140285567712

`eq[1, 1-a(n-1)*a(floor(n/2))]` with `a(0)=1`
-/

namespace A171944.P7548456140285567712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1) * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171944.P7548456140285567712

/-! ## A171944.P12272893837534061137

`eq[1, (1-a(n-1))^a(floor(n/2))]` with `a(0)=1`
-/

namespace A171944.P12272893837534061137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  (1 - f2 (n - 1)) ^ (f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A171944.P12272893837534061137

/-! ## A171944.P7872569648410139164

`eq[0, 1-(a(n-1)+a(floor(n/2)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A171944.P7872569648410139164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  1 - (f2 (n - 1) + f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171944.P7872569648410139164

/-! ## A171944.P5055371270119599184

`lt[1-(a(n-1)+a(floor(n/2))), 1]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A171944.P5055371270119599184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - (f1 (n - 1) + f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171944.P5055371270119599184

/-! ## A171944.P7535127474545966852

`floor(comp[(n+2)*(xor(n+1, n+2)%(n+2))%3]/2)`
-/

namespace A171944.P7535127474545966852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (Nat.xor (n + 1) (n + 2) % (n + 2) % 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2⌋

end

end A171944.P7535127474545966852

/-!
# A171945: P-positions for game of misere version of Mark.

The programs for A171945, there is no canonical definition to state claims against.
-/

/-! ## A171945.P9012703099162747398

`lt[sin(n%2-a(floor(n/2))), 0]` with `a(0)=2`
-/

namespace A171945.P9012703099162747398
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  Real.sin (((n % 2 : ℕ) : ℝ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A171945.P9012703099162747398

/-! ## A171945.P18301173473555145227

`record[lcm(n, 2*(n-a(floor(n/2))))]` with `a(0)=1`
-/

namespace A171945.P18301173473555145227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (n : ℤ) (2 * ((n : ℤ) - (f1 ⌊(n : ℚ) / 2⌋.toNat : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171945.P18301173473555145227

/-! ## A171945.P5740731030861242503

`lt[0, (n+1)%(2-a(floor(n/2)))]` with `a(0)=0, a(1)=1`
-/

namespace A171945.P5740731030861242503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Int.tmod (n + 1 : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171945.P5740731030861242503

/-! ## A171945.P3018553319418131250

`eq[1, (n-1)%(a(floor(n/2))-2)]` with `a(0)=0, a(1)=1`
-/

namespace A171945.P3018553319418131250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Int.tmod ((n : ℤ) - 1) (f2 ⌊(n : ℚ) / 2⌋.toNat - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171945.P3018553319418131250

/-! ## A171945.P1823428612520323920

`lt[0, gcd(n, 2-a(floor(n/2)))-1]` with `a(0)=0, a(1)=1`
-/

namespace A171945.P1823428612520323920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (Int.gcd (n : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171945.P1823428612520323920

/-! ## A171945.P7653681320095388979

`eq[0, 1-a(n-1)*a(floor(n/2))]` with `a(0)=1`
-/

namespace A171945.P7653681320095388979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1) * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171945.P7653681320095388979

/-! ## A171945.P11058031125572751289

`lt[1-a(n-1)*a(floor(n/2)), 1]` with `a(0)=1`
-/

namespace A171945.P11058031125572751289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1) * f1 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171945.P11058031125572751289

/-! ## A171945.P13594576735548131405

`eq[0, (1-a(n-1))^a(floor(n/2))]` with `a(0)=1`
-/

namespace A171945.P13594576735548131405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  (1 - f2 (n - 1)) ^ (f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A171945.P13594576735548131405

/-! ## A171945.P5610551452243119366

`lt[1, -(a(n-1)+a(floor(n/2)))]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A171945.P5610551452243119366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  -(f2 (n - 1) + f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171945.P5610551452243119366

/-!
# A171946: N-positions for game of UpMark.

The programs for A171946, the canonical program `A171946.P13217370660611590695` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171946 has offset 1).

The definition of A171946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171946.P13217370660611590695

`eq[1, and(n-1, 1-n)%3]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171946

/-- `eq[1, and(n-1, 1-n)%3]` -/
def P13217370660611590695.Spec : Prop :=
  ∀ n, (P13217370660611590695.a n : ℤ) = A171946 (n + 1)

theorem P13217370660611590695.correct : P13217370660611590695.Spec := by
  intro n
  simp only [A171946, Nat.add_sub_cancel]

end A171946

/-! ## A171946.P14831609832060662713

`lt[0, xor(n-1, n-2)%3]`
-/

namespace A171946.P14831609832060662713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - 1) ((n : ℤ) - 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171946.P14831609832060662713

namespace A171946

/-- `lt[0, xor(n-1, n-2)%3]` -/
def P14831609832060662713.Spec : Prop :=
  ∀ n, (P14831609832060662713.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P3163214983004230416

`eq[1, xor(n-2, n-1)%3]`
-/

namespace A171946.P3163214983004230416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - 2) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171946.P3163214983004230416

namespace A171946

/-- `eq[1, xor(n-2, n-1)%3]` -/
def P3163214983004230416.Spec : Prop :=
  ∀ n, (P3163214983004230416.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P1916232810886662904

`record[1+floor(n/2)-(-1)^val(n+1, 2)]`
-/

namespace A171946.P1916232810886662904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 2⌋ - (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171946.P1916232810886662904

namespace A171946

/-- `record[1+floor(n/2)-(-1)^val(n+1, 2)]` -/
def P1916232810886662904.Spec : Prop :=
  ∀ n, P1916232810886662904.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P12779166645430281230

`comp[A171947(n+1)]`
-/

namespace A171946.P12779166645430281230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171946.P12779166645430281230

namespace A171946

/-- `comp[A171947(n+1)]` -/
def P12779166645430281230.Spec : Prop :=
  ∀ n, (P12779166645430281230.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P6117889207303235121

`comp[A284393(n+1)+n]`
-/

namespace A171946.P6117889207303235121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171946.P6117889207303235121

namespace A171946

/-- `comp[A284393(n+1)+n]` -/
def P6117889207303235121.Spec : Prop :=
  ∀ n, (P6117889207303235121.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P15495008478198495537

`∪[2*n, A026491(n+1)]`
-/

namespace A171946.P15495008478198495537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171946.P15495008478198495537

namespace A171946

/-- `∪[2*n, A026491(n+1)]` -/
def P15495008478198495537.Spec : Prop :=
  ∀ n, (P15495008478198495537.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P11740862824284625892

`∪[2*n, A249034(n+1)]`
-/

namespace A171946.P11740862824284625892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171946.P11740862824284625892

namespace A171946

/-- `∪[2*n, A249034(n+1)]` -/
def P11740862824284625892.Spec : Prop :=
  ∀ n, (P11740862824284625892.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P5967124037620781342

`∪[2*n, A285385(n+2)]`
-/

namespace A171946.P5967124037620781342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171946.P5967124037620781342

namespace A171946

/-- `∪[2*n, A285385(n+2)]` -/
def P5967124037620781342.Spec : Prop :=
  ∀ n, (P5967124037620781342.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P1001577179375698687

`comp[comp[A003159(n+1)]+1]`
-/

namespace A171946.P1001577179375698687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171946.P1001577179375698687

namespace A171946

/-- `comp[comp[A003159(n+1)]+1]` -/
def P1001577179375698687.Spec : Prop :=
  ∀ n, (P1001577179375698687.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P18317739750984336366

`comp[2*A285385(n+1)-1]`
-/

namespace A171946.P18317739750984336366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285385 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171946.P18317739750984336366

namespace A171946

/-- `comp[2*A285385(n+1)-1]` -/
def P18317739750984336366.Spec : Prop :=
  ∀ n, (P18317739750984336366.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P11320785408395279033

`a(n-1)+A284391(n)+1` with `a(0)=0`
-/

namespace A171946.P11320785408395279033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A284391 n + 1)

end

end A171946.P11320785408395279033

namespace A171946

/-- `a(n-1)+A284391(n)+1` -/
def P11320785408395279033.Spec : Prop :=
  ∀ n, P11320785408395279033.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P3678713950670685106

`A285385(n+1)-A000007(n)`
-/

namespace A171946.P3678713950670685106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (n + 1) - A000007 n

end

end A171946.P3678713950670685106

namespace A171946

/-- `A285385(n+1)-A000007(n)` -/
def P3678713950670685106.Spec : Prop :=
  ∀ n, P3678713950670685106.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P6830026211299847088

`A057427(n)*A285385(n+1)`
-/

namespace A171946.P6830026211299847088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A285385 (n + 1)

end

end A171946.P6830026211299847088

namespace A171946

/-- `A057427(n)*A285385(n+1)` -/
def P6830026211299847088.Spec : Prop :=
  ∀ n, P6830026211299847088.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P12924403399052432012

`A285385(n+1)%A000132(n)`
-/

namespace A171946.P12924403399052432012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285385 (n + 1)) (A000132 n)

end

end A171946.P12924403399052432012

namespace A171946

/-- `A285385(n+1)%A000132(n)` -/
def P12924403399052432012.Spec : Prop :=
  ∀ n, P12924403399052432012.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P5139548108276802246

`and(A057428(n), A285385(n+1))`
-/

namespace A171946.P5139548108276802246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A285385 (n + 1))

end

end A171946.P5139548108276802246

namespace A171946

/-- `and(A057428(n), A285385(n+1))` -/
def P5139548108276802246.Spec : Prop :=
  ∀ n, P5139548108276802246.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P2985466239967432199

`∪[A249034(n+1), A005843(n)]`
-/

namespace A171946.P2985466239967432199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171946.P2985466239967432199

namespace A171946

/-- `∪[A249034(n+1), A005843(n)]` -/
def P2985466239967432199.Spec : Prop :=
  ∀ n, (P2985466239967432199.a n : ℤ) = A171946 (n + 1)

end A171946

/-! ## A171946.P9278953723697695074

`A003159(n+1)-A284391(n+1)`
-/

namespace A171946.P9278953723697695074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) - A284391 (n + 1)

end

end A171946.P9278953723697695074

namespace A171946

/-- `A003159(n+1)-A284391(n+1)` -/
def P9278953723697695074.Spec : Prop :=
  ∀ n, P9278953723697695074.a n = A171946 (n + 1)

end A171946

/-! ## A171946.P14098248660495154485

`A284933(n+1)-A294732(n+2)`
-/

namespace A171946.P14098248660495154485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 1) - A294732 (n + 2)

end

end A171946.P14098248660495154485

namespace A171946

/-- `A284933(n+1)-A294732(n+2)` -/
def P14098248660495154485.Spec : Prop :=
  ∀ n, P14098248660495154485.a n = A171946 (n + 1)

theorem P14098248660495154485.correct : P14098248660495154485.Spec := by
  intro n
  simp only [A171946, Nat.add_sub_cancel, A171946.P14098248660495154485.a, A171946.P13217370660611590695.f1, A171946.P13217370660611590695.f2, A171946.P13217370660611590695.a, A284933, A284933.P4679445134235036996.a, A294732, A294732.P10884492668465992703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171946

/-! ## A171946.P3924791273110505247

`A036554(n+1)/2-A284391(n+1)`
-/

namespace A171946.P3924791273110505247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036554 (n + 1) : ℚ) / 2 - (A284391 (n + 1) : ℚ)

end

end A171946.P3924791273110505247

namespace A171946

/-- `A036554(n+1)/2-A284391(n+1)` -/
def P3924791273110505247.Spec : Prop :=
  ∀ n, P3924791273110505247.a n = (A171946 (n + 1) : ℚ)

end A171946

/-!
# A171947: P-positions for game of UpMark.

The programs for A171947, the canonical program `A171947.P16384979975700383487` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171947 has offset 1).

The definition of A171947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171947.P16384979975700383487

`lt[xor(n-1, n-2)%3, 1]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171947

/-- `lt[xor(n-1, n-2)%3, 1]` -/
def P16384979975700383487.Spec : Prop :=
  ∀ n, (P16384979975700383487.a n : ℤ) = A171947 (n + 1)

theorem P16384979975700383487.correct : P16384979975700383487.Spec := by
  intro n
  simp only [A171947, Nat.add_sub_cancel]

end A171947

/-! ## A171947.P4285816658476482969

`comp[xor(n+1, n)%3+n]+1`
-/

namespace A171947.P4285816658476482969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) n % 3 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A171947.P4285816658476482969

namespace A171947

/-- `comp[xor(n+1, n)%3+n]+1` -/
def P4285816658476482969.Spec : Prop :=
  ∀ n, (P4285816658476482969.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P3026299003555585197

`comp[xor(n+1, (-1)^val(n+1, 2))]`
-/

namespace A171947.P3026299003555585197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((-1) ^ SequenceMachineLib.valuation (n + 1) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171947.P3026299003555585197

namespace A171947

/-- `comp[xor(n+1, (-1)^val(n+1, 2))]` -/
def P3026299003555585197.Spec : Prop :=
  ∀ n, (P3026299003555585197.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P12550628619077216456

`eq[1, and(val(n, 2), a(n-1)!)]+1` with `a(0)=1`
-/

namespace A171947.P12550628619077216456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171947.P12550628619077216456

namespace A171947

/-- `eq[1, and(val(n, 2), a(n-1)!)]+1` -/
def P12550628619077216456.Spec : Prop :=
  ∀ n, (P12550628619077216456.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P10640665275289695037

`lt[1, -(a(n-1)+a(floor(n/2)))]+1` with `a(0)=2`
-/

namespace A171947.P10640665275289695037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  -(f2 (n - 1) + f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A171947.P10640665275289695037

namespace A171947

/-- `lt[1, -(a(n-1)+a(floor(n/2)))]+1` -/
def P10640665275289695037.Spec : Prop :=
  ∀ n, (P10640665275289695037.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P15280103347446649103

`comp[(n+1)*(n+1-and(n, n+1))]+1`
-/

namespace A171947.P15280103347446649103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171947.P15280103347446649103

namespace A171947

/-- `comp[(n+1)*(n+1-and(n, n+1))]+1` -/
def P15280103347446649103.Spec : Prop :=
  ∀ n, (P15280103347446649103.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P11039242968540362844

`A284393(n+1)+n`
-/

namespace A171947.P11039242968540362844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 1) + (n : ℤ)

end

end A171947.P11039242968540362844

namespace A171947

/-- `A284393(n+1)+n` -/
def P11039242968540362844.Spec : Prop :=
  ∀ n, P11039242968540362844.a n = A171947 (n + 1)

theorem P11039242968540362844.correct : P11039242968540362844.Spec := by
  intro n
  simp only [A171947, Nat.add_sub_cancel, A171947.P11039242968540362844.a, A171947.P16384979975700383487.f1, A171947.P16384979975700383487.f2, A171947.P16384979975700383487.a, A284393, A284393.P6879948023271449569.f1, A284393.P6879948023271449569.f2, A284393.P6879948023271449569.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171947

/-! ## A171947.P14007237728426522990

`2*A285385(n+1)-1`
-/

namespace A171947.P14007237728426522990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285385 (n + 1) - 1

end

end A171947.P14007237728426522990

namespace A171947

/-- `2*A285385(n+1)-1` -/
def P14007237728426522990.Spec : Prop :=
  ∀ n, P14007237728426522990.a n = A171947 (n + 1)

end A171947

/-! ## A171947.P6182935336980566830

`2*comp[A036554(n+1)]+1`
-/

namespace A171947.P6182935336980566830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171947.P6182935336980566830

namespace A171947

/-- `2*comp[A036554(n+1)]+1` -/
def P6182935336980566830.Spec : Prop :=
  ∀ n, (P6182935336980566830.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P12733266908668188281

`a(n-1)+A080426(n)+1` with `a(0)=1`
-/

namespace A171947.P12733266908668188281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A080426 n + 1)

end

end A171947.P12733266908668188281

namespace A171947

/-- `a(n-1)+A080426(n)+1` -/
def P12733266908668188281.Spec : Prop :=
  ∀ n, P12733266908668188281.a n = A171947 (n + 1)

end A171947

/-! ## A171947.P12600925785747763281

`a(n-1)+2*A026465(n)` with `a(0)=1`
-/

namespace A171947.P12600925785747763281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A026465 n

end

end A171947.P12600925785747763281

namespace A171947

/-- `a(n-1)+2*A026465(n)` -/
def P12600925785747763281.Spec : Prop :=
  ∀ n, P12600925785747763281.a n = A171947 (n + 1)

end A171947

/-! ## A171947.P15123406933844267479

`A194688(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A171947.P15123406933844267479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A194688 (n - 1) + a (n - 1)

end

end A171947.P15123406933844267479

namespace A171947

/-- `A194688(n-1)+a(n-1)` -/
def P15123406933844267479.Spec : Prop :=
  ∀ n, P15123406933844267479.a n = A171947 (n + 1)

end A171947

/-! ## A171947.P9904128761769669722

`record[(n+1)*val(A007913(n+1), 2)²+1]`
-/

namespace A171947.P9904128761769669722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A007913 (n + 1)).toNat 2 ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171947.P9904128761769669722

namespace A171947

/-- `record[(n+1)*val(A007913(n+1), 2)²+1]` -/
def P9904128761769669722.Spec : Prop :=
  ∀ n, (P9904128761769669722.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P10834277612052275228

`∪[A002783(n), A072939(n+1)]`
-/

namespace A171947.P10834277612052275228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171947.P10834277612052275228

namespace A171947

/-- `∪[A002783(n), A072939(n+1)]` -/
def P10834277612052275228.Spec : Prop :=
  ∀ n, (P10834277612052275228.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P17616126688226498565

`∪[A004054(n), A072939(n+1)]`
-/

namespace A171947.P17616126688226498565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171947.P17616126688226498565

namespace A171947

/-- `∪[A004054(n), A072939(n+1)]` -/
def P17616126688226498565.Spec : Prop :=
  ∀ n, (P17616126688226498565.a n : ℤ) = A171947 (n + 1)

end A171947

/-! ## A171947.P6848587782916694613

`∪[A004057(n), A072939(n+1)]`
-/

namespace A171947.P6848587782916694613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171947.P6848587782916694613

namespace A171947

/-- `∪[A004057(n), A072939(n+1)]` -/
def P6848587782916694613.Spec : Prop :=
  ∀ n, (P6848587782916694613.a n : ℤ) = A171947 (n + 1)

end A171947

/-!
# A171948: N-positions for game of Mark-4.

The programs for A171948, there is no canonical definition to state claims against.
-/

/-! ## A171948.P9294183601333046777

`lt[and(n, -n)%5, 3]`
-/

namespace A171948.P9294183601333046777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171948.P9294183601333046777

/-! ## A171948.P17916436344902368355

`record[and(n, -and(51, -n))]`
-/

namespace A171948.P17916436344902368355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-Int.land 51 (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171948.P17916436344902368355

/-! ## A171948.P10424068476241531456

`lt[xor(n, n-1)%10, 5]`
-/

namespace A171948.P10424068476241531456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171948.P10424068476241531456

/-! ## A171948.P17938467503336389567

`eq[n, and(n, -and(51, -n))]`
-/

namespace A171948.P17938467503336389567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-Int.land 51 (-(n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171948.P17938467503336389567

/-! ## A171948.P2256844093199814518

`lt[sin(xor(n+1, n-2)), γ]`
-/

namespace A171948.P2256844093199814518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Int.xor (n + 1 : ℤ) ((n : ℤ) - 2) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171948.P2256844093199814518

/-! ## A171948.P3761745255675500390

`comp[(n+1)*4^val(n+1, 4)]/4`
-/

namespace A171948.P3761745255675500390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 4 ^ SequenceMachineLib.valuation (n + 1) 4

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4

end

end A171948.P3761745255675500390

/-! ## A171948.P15667434997328835558

`record[(n+1)*val(n+1, 4)%2]/4`
-/

namespace A171948.P15667434997328835558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.valuation (n + 1) 4 % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A171948.P15667434997328835558

/-! ## A171948.P14338976826600318102

`comp[and(2, val(n+1, 2))+n+1]/4`
-/

namespace A171948.P14338976826600318102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (SequenceMachineLib.valuation (n + 1) 2) + (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4

end

end A171948.P14338976826600318102

/-! ## A171948.P4119445301166740101

`record[(n+1)*and(1, val(n+1, 4))]/4`
-/

namespace A171948.P4119445301166740101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 (SequenceMachineLib.valuation (n + 1) 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A171948.P4119445301166740101

/-! ## A171948.P9138918643084770778

`comp[lcm(4, (n+1)*(val((n+1)², 2)+2))]`
-/

namespace A171948.P9138918643084770778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((n + 1) * (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171948.P9138918643084770778

/-!
# A171949: P-positions for game of Mark-4.

The programs for A171949, there is no canonical definition to state claims against.
-/

/-! ## A171949.P319246918553971695

`4*A171948(n+1)`
-/

namespace A171949.P319246918553971695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A171948 (n + 1)

end

end A171949.P319246918553971695

/-! ## A171949.P12632997684980266482

`lt[(2-or(n, -n))%5, 3]`
-/

namespace A171949.P12632997684980266482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - Int.lor (n : ℤ) (-(n : ℤ))) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171949.P12632997684980266482

/-! ## A171949.P15670253182037717481

`4*lt[and(n, -n)%5, 3]`
-/

namespace A171949.P15670253182037717481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171949.P15670253182037717481

/-! ## A171949.P4402861304902968098

`record[4*and(n, -and(51, -n))]`
-/

namespace A171949.P4402861304902968098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-Int.land 51 (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171949.P4402861304902968098

/-! ## A171949.P8566454396514669118

`lt[(3*xor(n, n-1))%5, 2]`
-/

namespace A171949.P8566454396514669118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * Int.xor (n : ℤ) ((n : ℤ) - 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171949.P8566454396514669118

/-! ## A171949.P8958486242051191465

`4*eq[n, and(n, -and(51, -n))]`
-/

namespace A171949.P8958486242051191465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-Int.land 51 (-(n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171949.P8958486242051191465

/-! ## A171949.P2418323218785978053

`comp[(n+1)*4^val(n+1, 4)]`
-/

namespace A171949.P2418323218785978053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 4 ^ SequenceMachineLib.valuation (n + 1) 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171949.P2418323218785978053

/-! ## A171949.P1787211702033197579

`record[(n+1)*val(n+1, 4)%2]`
-/

namespace A171949.P1787211702033197579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.valuation (n + 1) 4 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171949.P1787211702033197579

/-! ## A171949.P5772051987399850810

`comp[(val(n+1, 4)+1)%2+n]`
-/

namespace A171949.P5772051987399850810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 4 + 1) % 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171949.P5772051987399850810

/-!
# A171950: a(1)=1. a(n) = the absolute difference between (the sum of previous terms) and A000217(n-2), n>1.

The programs for A171950, the canonical program `A171950.P6791722517322468010` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171950 has offset 1).

The definition of A171950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171950.P6791722517322468010

`n-a(2%n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171950

/-- `n-a(2%n)` -/
def P6791722517322468010.Spec : Prop :=
  ∀ n, P6791722517322468010.a n = A171950 (n + 1)

theorem P6791722517322468010.correct : P6791722517322468010.Spec := by
  intro n
  simp only [A171950, Nat.add_sub_cancel]

end A171950

/-!
# A171951: Positions of 1's in A181391.

The programs for A171951, there is no canonical definition to state claims against.
-/

/-! ## A171951.P13495753801745392468

`eq[1, A181391(n+1)]+1`
-/

namespace A171951.P13495753801745392468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171951.P13495753801745392468

/-! ## A171951.P2917460251130359277

`eq[1, A171898(n+1)]+3`
-/

namespace A171951.P2917460251130359277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A171951.P2917460251130359277

/-! ## A171951.P4280562479345186478

`record[gcd(n+3, A171958(n+1))]`
-/

namespace A171951.P4280562479345186478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A171958 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171951.P4280562479345186478

/-! ## A171951.P11016022131887578817

`eq[1, A181391(A028310(n))]`
-/

namespace A171951.P11016022131887578817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171951.P11016022131887578817

/-! ## A171951.P4904113030574486239

`A020725(eq[1, A181391(n+1)])`
-/

namespace A171951.P4904113030574486239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171951.P4904113030574486239

/-! ## A171951.P11530076434194115025

`A153152(eq[1, A181391(n+1)])`
-/

namespace A171951.P11530076434194115025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171951.P11530076434194115025

/-! ## A171951.P17833781333222410127

`eq[1, A181391(A000038(n)+n)]`
-/

namespace A171951.P17833781333222410127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171951.P17833781333222410127

/-! ## A171951.P14102489450133067866

`eq[2, A337980(n+1)]`
-/

namespace A171951.P14102489450133067866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171951.P14102489450133067866

/-! ## A171951.P2721944670988321706

`eq[1, A181391(A000007(n)+n)]`
-/

namespace A171951.P2721944670988321706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171951.P2721944670988321706

/-!
# A171952: Positions of 2's in A181391.

The programs for A171952, there is no canonical definition to state claims against.
-/

/-! ## A171952.P4466552332509920580

`A171898(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A171952.P4466552332509920580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A171898 (a (n - 1)).toNat + a (n - 1)

end

end A171952.P4466552332509920580

/-! ## A171952.P11225863694801535377

`eq[3, A337980(n+1)]`
-/

namespace A171952.P11225863694801535377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171952.P11225863694801535377

/-! ## A171952.P6195542669755260443

`eq[2, A181391(A028310(n))]`
-/

namespace A171952.P6195542669755260443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171952.P6195542669755260443

/-! ## A171952.P9850280306404347595

`A020725(eq[2, A181391(n+1)])`
-/

namespace A171952.P9850280306404347595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171952.P9850280306404347595

/-! ## A171952.P4516609240013967573

`eq[2, A181391(A233583(n+1))]`
-/

namespace A171952.P4516609240013967573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171952.P4516609240013967573

/-!
# A171953: Positions of 3's in A181391.

The programs for A171953, there is no canonical definition to state claims against.
-/

/-! ## A171953.P3379909274969706891

`eq[3, A181391(n+1)]+1`
-/

namespace A171953.P3379909274969706891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171953.P3379909274969706891

/-! ## A171953.P14163912716577929231

`A171898(a(n-1))+a(n-1)` with `a(0)=20`
-/

namespace A171953.P14163912716577929231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A171898 (a (n - 1)).toNat + a (n - 1)

end

end A171953.P14163912716577929231

/-! ## A171953.P6680230074306232314

`eq[4, A337980(n+1)]`
-/

namespace A171953.P6680230074306232314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171953.P6680230074306232314

/-! ## A171953.P1365163726178389594

`eq[3, A171898(n+1)]+5`
-/

namespace A171953.P1365163726178389594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A171953.P1365163726178389594

/-! ## A171953.P12756769452969103305

`eq[3, A181391(A028310(n))]`
-/

namespace A171953.P12756769452969103305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171953.P12756769452969103305

/-! ## A171953.P8847939487617771107

`A020725(eq[3, A181391(n+1)])`
-/

namespace A171953.P8847939487617771107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171953.P8847939487617771107

/-! ## A171953.P15830266300046156688

`eq[3, A181391(A060000(n+1))]`
-/

namespace A171953.P15830266300046156688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171953.P15830266300046156688

/-! ## A171953.P8783137296598899467

`A171893(eq[3, A171898(n+3)])`
-/

namespace A171953.P8783137296598899467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171953.P8783137296598899467

/-! ## A171953.P4282750053325714366

`A171891(eq[3, A171898(n+4)])`
-/

namespace A171953.P4282750053325714366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171953.P4282750053325714366

/-!
# A171954: Positions of 4's in A181391.

The programs for A171954, there is no canonical definition to state claims against.
-/

/-! ## A171954.P2286136329538354012

`eq[4, A181391(n+1)]+1`
-/

namespace A171954.P2286136329538354012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171954.P2286136329538354012

/-! ## A171954.P4136808623002295623

`eq[5, A337980(n+1)]`
-/

namespace A171954.P4136808623002295623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171954.P4136808623002295623

/-! ## A171954.P10744576510048717218

`eq[4, A171898(n+1)]+6`
-/

namespace A171954.P10744576510048717218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A171954.P10744576510048717218

/-! ## A171954.P5864334514516349521

`eq[4, A181391(A028310(n))]`
-/

namespace A171954.P5864334514516349521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171954.P5864334514516349521

/-! ## A171954.P10843220348649190129

`A020725(eq[4, A181391(n+1)])`
-/

namespace A171954.P10843220348649190129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171954.P10843220348649190129

/-! ## A171954.P5804195053996357971

`A153152(eq[4, A181391(n+1)])`
-/

namespace A171954.P5804195053996357971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171954.P5804195053996357971

/-! ## A171954.P11490035486624597597

`A171892(eq[4, A171898(n+1)])`
-/

namespace A171954.P11490035486624597597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171954.P11490035486624597597

/-! ## A171954.P1348690876115143352

`A171891(eq[4, A171898(n+3)])`
-/

namespace A171954.P1348690876115143352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171954.P1348690876115143352

/-! ## A171954.P17113561127917819022

`eq[4, A181391(A233583(n+1))]`
-/

namespace A171954.P17113561127917819022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171954.P17113561127917819022

/-!
# A171955: Positions of 5's in A181391.

The programs for A171955, there is no canonical definition to state claims against.
-/

/-! ## A171955.P4093990455991305550

`eq[5, A181391(n+1)]+1`
-/

namespace A171955.P4093990455991305550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171955.P4093990455991305550

/-! ## A171955.P9903732948262726552

`eq[6, A337980(n+1)]`
-/

namespace A171955.P9903732948262726552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171955.P9903732948262726552

/-! ## A171955.P13344520826169968307

`eq[5, A181391(A028310(n))]`
-/

namespace A171955.P13344520826169968307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171955.P13344520826169968307

/-! ## A171955.P12958148095769617928

`A020725(eq[5, A181391(n+1)])`
-/

namespace A171955.P12958148095769617928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171955.P12958148095769617928

/-! ## A171955.P14416094625067460748

`A171893(eq[5, A171898(n+1)])`
-/

namespace A171955.P14416094625067460748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171955.P14416094625067460748

/-!
# A171956: Positions of 6's in A181391.

The programs for A171956, there is no canonical definition to state claims against.
-/

/-! ## A171956.P16848824164545701955

`eq[6, A181391(n+1)]+1`
-/

namespace A171956.P16848824164545701955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171956.P16848824164545701955

/-! ## A171956.P5472900432476352596

`eq[6, A171898(n+1)]+8`
-/

namespace A171956.P5472900432476352596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8

end

end A171956.P5472900432476352596

/-! ## A171956.P7903211818882855878

`A171891(eq[6, A171898(n+1)])`
-/

namespace A171956.P7903211818882855878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171956.P7903211818882855878

/-! ## A171956.P16944386886383921355

`eq[7, A337980(n+1)]`
-/

namespace A171956.P16944386886383921355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171956.P16944386886383921355

/-! ## A171956.P16206989648773519642

`eq[6, A181391(A028310(n))]`
-/

namespace A171956.P16206989648773519642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171956.P16206989648773519642

/-! ## A171956.P14805210389380538717

`A020725(eq[6, A181391(n+1)])`
-/

namespace A171956.P14805210389380538717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171956.P14805210389380538717

/-! ## A171956.P8648861726205612765

`eq[6, A181391(A000038(n)+n)]`
-/

namespace A171956.P8648861726205612765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171956.P8648861726205612765

/-! ## A171956.P270848749923192463

`eq[6, A181391(A233583(n+1))]`
-/

namespace A171956.P270848749923192463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171956.P270848749923192463

/-!
# A171957: Partial sums of A181391.

The programs for A171957, there is no canonical definition to state claims against.
-/

/-! ## A171957.P5416500029989951131

`∑[A181391(1+n)]`
-/

namespace A171957.P5416500029989951131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P5416500029989951131

/-! ## A171957.P13870694097130144512

`∑[A171958(n)+a(n-1)]` with `a(0)=0`
-/

namespace A171957.P13870694097130144512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A171958 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P13870694097130144512

/-! ## A171957.P114223133929609521

`A181391(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A171957.P114223133929609521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181391 (n + 1) + a (n - 1)

end

end A171957.P114223133929609521

/-! ## A171957.P1742270319547242983

`∑[∑[A171958(A028310(n))]]`
-/

namespace A171957.P1742270319547242983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P1742270319547242983

/-! ## A171957.P5096619560958118977

`∑[∑[A171958(A000007(n)+n)]]`
-/

namespace A171957.P5096619560958118977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P5096619560958118977

/-! ## A171957.P6045153237685171412

`∑[∑[A171958(n+1)]-A171958(n+1)]`
-/

namespace A171957.P6045153237685171412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P6045153237685171412

/-! ## A171957.P10560945053875327153

`∑[∑[A171958(A065033(2*n))]]`
-/

namespace A171957.P10560945053875327153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P10560945053875327153

/-! ## A171957.P9170534539084203203

`∑[∑[A171958(A123108(2*n))]]`
-/

namespace A171957.P9170534539084203203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P9170534539084203203

/-! ## A171957.P16472708510922099862

`∑[A259361(A337980(n+2)²)]`
-/

namespace A171957.P16472708510922099862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A337980 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171957.P16472708510922099862

/-!
# A171958: First differences of A181391.

The programs for A171958, there is no canonical definition to state claims against.
-/

/-! ## A171958.P14166552549417665276

`Δ[A181391(1+n)]`
-/

namespace A171958.P14166552549417665276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P14166552549417665276

/-! ## A171958.P13604219080061874039

`A181391(n+2)-A181391(n+1)`
-/

namespace A171958.P13604219080061874039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 2) - A181391 (n + 1)

end

end A171958.P13604219080061874039

/-! ## A171958.P18266249496510197167

`Δ[A023446(A181391(1-(n-2*n)))]`
-/

namespace A171958.P18266249496510197167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A181391 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P18266249496510197167

/-! ## A171958.P3015272390344654403

`Δ[A171957(n+1)-A171957(A028310(n))]`
-/

namespace A171958.P3015272390344654403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (n + 1) - A171957 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P3015272390344654403

/-! ## A171958.P7022514440183279451

`Δ[Δ[A171957(A028310(n))]]`
-/

namespace A171958.P7022514440183279451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P7022514440183279451

/-! ## A171958.P14202950638342017113

`Δ[A028310(A337980(n+2))]`
-/

namespace A171958.P14202950638342017113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A337980 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P14202950638342017113

/-! ## A171958.P9331971780897570668

`Δ[A259361(A337980(n+2)²)]`
-/

namespace A171958.P9331971780897570668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A337980 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P9331971780897570668

/-! ## A171958.P11276966736505724423

`Δ[Δ[A171957(A259361(n²)+1)]]`
-/

namespace A171958.P11276966736505724423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (A259361 (n ^ 2) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P11276966736505724423

/-! ## A171958.P1245838564335779126

`Δ[A333359(n+1)]%A098425(n+1)`
-/

namespace A171958.P1245838564335779126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A098425 (n + 1))

end

end A171958.P1245838564335779126

/-! ## A171958.P3786597947740693906

`Δ[A268584(2*n)/2]`
-/

namespace A171958.P3786597947740693906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268584 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171958.P3786597947740693906

/-!
# A171960: Values of the 2-complement of n in ternary representation.

The programs for A171960, the canonical program `A171960.P12186868564183238185` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171960 has offset 0).

The definition of A171960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171960.P12186868564183238185

`3*a(floor(n/3))+2-n%3` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171960

/-- `3*a(floor(n/3))+2-n%3` -/
def P12186868564183238185.Spec : Prop :=
  ∀ n, P12186868564183238185.a n = A171960 n

theorem P12186868564183238185.correct : P12186868564183238185.Spec := by
  intro n
  simp only [A171960]

end A171960

/-! ## A171960.P8599063471307246818

`(2*n+a(n-1)-1)%(2*n)` with `a(0)=2`
-/

namespace A171960.P8599063471307246818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((2 * n : ℤ) + (a (n - 1) - 1)) (2 * n : ℤ)

end

end A171960.P8599063471307246818

namespace A171960

/-- `(2*n+a(n-1)-1)%(2*n)` -/
def P8599063471307246818.Spec : Prop :=
  ∀ n, P8599063471307246818.a n = A171960 n

end A171960

/-! ## A171960.P5195850988528645448

`(2*n-(1-a(n-1)))%(2*n)` with `a(0)=2`
-/

namespace A171960.P5195850988528645448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((2 * n : ℤ) - (1 - a (n - 1))) (2 * n : ℤ)

end

end A171960.P5195850988528645448

namespace A171960

/-- `(2*n-(1-a(n-1)))%(2*n)` -/
def P5195850988528645448.Spec : Prop :=
  ∀ n, P5195850988528645448.a n = A171960 n

end A171960

/-! ## A171960.P8173341891646637316

`3^A081604(n)-(n+1)`
-/

namespace A171960.P8173341891646637316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A081604 n : ℤ) - (n + 1 : ℚ)

end

end A171960.P8173341891646637316

namespace A171960

/-- `3^A081604(n)-(n+1)` -/
def P8173341891646637316.Spec : Prop :=
  ∀ n, P8173341891646637316.a n = (A171960 n : ℚ)

end A171960

/-! ## A171960.P8124161608143137428

`A064235(n+1)+abs(1-n)-2*n`
-/

namespace A171960.P8124161608143137428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (n + 1) + |1 - (n : ℤ)| - (2 * n : ℤ)

end

end A171960.P8124161608143137428

namespace A171960

/-- `A064235(n+1)+abs(1-n)-2*n` -/
def P8124161608143137428.Spec : Prop :=
  ∀ n, P8124161608143137428.a n = A171960 n

end A171960

/-! ## A171960.P16236625531372807007

`A004488(A256293(n))`
-/

namespace A171960.P16236625531372807007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A256293 n).toNat

end

end A171960.P16236625531372807007

namespace A171960

/-- `A004488(A256293(n))` -/
def P16236625531372807007.Spec : Prop :=
  ∀ n, P16236625531372807007.a n = A171960 n

end A171960

/-! ## A171960.P12511218984370720179

`A284797(n)-A055947(n)`
-/

namespace A171960.P12511218984370720179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 n - A055947 n

end

end A171960.P12511218984370720179

namespace A171960

/-- `A284797(n)-A055947(n)` -/
def P12511218984370720179.Spec : Prop :=
  ∀ n, P12511218984370720179.a n = A171960 n

end A171960

/-! ## A171960.P13818880785660444540

`A064235(A000007(n)+1+n)-(n+1)`
-/

namespace A171960.P13818880785660444540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (A000007 n + 1 + (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A171960.P13818880785660444540

namespace A171960

/-- `A064235(A000007(n)+1+n)-(n+1)` -/
def P13818880785660444540.Spec : Prop :=
  ∀ n, P13818880785660444540.a n = A171960 n

end A171960

/-! ## A171960.P806974900503848372

`A117966(A064235(n+1)+2)-A028310(n)`
-/

namespace A171960.P806974900503848372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A064235 (n + 1) + 2).toNat - A028310 n

end

end A171960.P806974900503848372

namespace A171960

/-- `A117966(A064235(n+1)+2)-A028310(n)` -/
def P806974900503848372.Spec : Prop :=
  ∀ n, P806974900503848372.a n = A171960 n

end A171960

/-! ## A171960.P15793098224973714793

`A132171(A064235(n+1))-(n+1)`
-/

namespace A171960.P15793098224973714793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A064235 (n + 1)).toNat - (n + 1 : ℤ)

end

end A171960.P15793098224973714793

namespace A171960

/-- `A132171(A064235(n+1))-(n+1)` -/
def P15793098224973714793.Spec : Prop :=
  ∀ n, P15793098224973714793.a n = A171960 n

end A171960

/-! ## A171960.P18299276080962881757

`A132171(A349673(n+1))-(n+1)`
-/

namespace A171960.P18299276080962881757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A349673 (n + 1)).toNat - (n + 1 : ℤ)

end

end A171960.P18299276080962881757

namespace A171960

/-- `A132171(A349673(n+1))-(n+1)` -/
def P18299276080962881757.Spec : Prop :=
  ∀ n, P18299276080962881757.a n = A171960 n

end A171960

/-! ## A171960.P4884749192362961787

`A233583(A064235(n+1))-n`
-/

namespace A171960.P4884749192362961787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A064235 (n + 1)).toNat - (n : ℤ)

end

end A171960.P4884749192362961787

namespace A171960

/-- `A233583(A064235(n+1))-n` -/
def P4884749192362961787.Spec : Prop :=
  ∀ n, P4884749192362961787.a n = A171960 n

end A171960

/-!
# A171961: a(n)=Mod(3^Fibonacci(n),Fibonacci(n)).

The programs for A171961, there is no canonical definition to state claims against.
-/

/-! ## A171961.P3962580712927563247

`A066601(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A171961.P3962580712927563247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (f1 (n + 1) - f1 n).toNat

end

end A171961.P3962580712927563247

/-! ## A171961.P17921535438192771842

`A066601(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A171961.P17921535438192771842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171961.P17921535438192771842

/-! ## A171961.P15638649817635770238

`A066601(A037027(∑[n]))`
-/

namespace A171961.P15638649817635770238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171961.P15638649817635770238

/-! ## A171961.P8939317473231453111

`A066601(A058071(∑[n]))`
-/

namespace A171961.P8939317473231453111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (A058071 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171961.P8939317473231453111

/-!
# A171962: a(n) = floor(Fibonacci(n)^(1/Pi)).

The programs for A171962, the canonical program `A171962.P10531660157610596055` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171962 has offset 0).

The definition of A171962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n)^(1/π))` (program `A171962.P10531660157610596055`, by `A171962.P10531660157610596055.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171962.P10531660157610596055

`floor(A000045(n)^(1/π))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171962

/-- `floor(A000045(n)^(1/π))` -/
def P10531660157610596055.Spec : Prop :=
  ∀ n, P10531660157610596055.a n = A171962 n

theorem P10531660157610596055.correct : P10531660157610596055.Spec := by
  intro n
  simp only [A171962]

end A171962

/-! ## A171962.P13064556426180649359

`floor(root(A000045(n), π))`
-/

namespace A171962.P13064556426180649359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℝ) ^ (1 / Real.pi)⌋

end

end A171962.P13064556426180649359

namespace A171962

/-- `floor(root(A000045(n), π))` -/
def P13064556426180649359.Spec : Prop :=
  ∀ n, P13064556426180649359.a n = A171962 n

theorem P13064556426180649359.correct : P13064556426180649359.Spec := by
  intro n
  simp only [A171962, Nat.add_sub_cancel, A171962.P13064556426180649359.a, A171962.P10531660157610596055.a, SequenceMachineLib.memo_apply]

end A171962

/-! ## A171962.P4710399329418507446

`floor(A096005(n)/A002524(n))`
-/

namespace A171962.P4710399329418507446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096005 n : ℚ) / (A002524 n : ℚ)⌋

end

end A171962.P4710399329418507446

namespace A171962

/-- `floor(A096005(n)/A002524(n))` -/
def P4710399329418507446.Spec : Prop :=
  ∀ n, P4710399329418507446.a n = A171962 n

end A171962

/-! ## A171962.P14747622640402408276

`A048766(A165407(n))%(n+1)`
-/

namespace A171962.P14747622640402408276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048766 (A165407 n).toNat) (n + 1 : ℤ)

end

end A171962.P14747622640402408276

namespace A171962

/-- `A048766(A165407(n))%(n+1)` -/
def P14747622640402408276.Spec : Prop :=
  ∀ n, P14747622640402408276.a n = A171962 n

end A171962

/-!
# A171963: Number of partitions of the n-th semiprime into two semiprimes.

The programs for A171963, there is no canonical definition to state claims against.
-/

/-! ## A171963.P4165179024185143700

`A072931(A001358(n+1))`
-/

namespace A171963.P4165179024185143700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A001358 (n + 1)).toNat

end

end A171963.P4165179024185143700

/-! ## A171963.P11754226492105442346

`A072931(A176540(n+2))`
-/

namespace A171963.P11754226492105442346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A176540 (n + 2)).toNat

end

end A171963.P11754226492105442346

/-! ## A171963.P11065767919304337027

`A072931(A075818(n+1)/2)`
-/

namespace A171963.P11065767919304337027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A171963.P11065767919304337027

/-! ## A171963.P5802943955445108433

`A302301(A075818(n+1)/2)`
-/

namespace A171963.P5802943955445108433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A171963.P5802943955445108433

/-! ## A171963.P10346340876728789529

`A072931(eq[2, A001222(n+1)]+1)`
-/

namespace A171963.P10346340876728789529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171963.P10346340876728789529

/-! ## A171963.P17678484940566861262

`A302301(A001358(2*n+1-n))`
-/

namespace A171963.P17678484940566861262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (A001358 (2 * n + 1 - n)).toNat

end

end A171963.P17678484940566861262

/-! ## A171963.P8722753826900453216

`A302301(ceil(1/(n+1))*A001358(n+1))`
-/

namespace A171963.P8722753826900453216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (⌈1 / (n + 1 : ℚ)⌉ * A001358 (n + 1)).toNat

end

end A171963.P8722753826900453216

/-!
# A171964: "Late bird" numbers in A100208.

The programs for A171964, there is no canonical definition to state claims against.
-/

/-! ## A171964.P6962281453016039751

`A100208(lt[A100208(n+1), n]+1)`
-/

namespace A171964.P6962281453016039751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A171964.P6962281453016039751

/-! ## A171964.P17281606802937285598

`A100208(eq[A100208(n+1)%(n+1), A100208(n+1)]+1)`
-/

namespace A171964.P17281606802937285598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100208 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A171964.P17281606802937285598

/-!
# A171965: Partial sums of floor(n^2/6) (A056827).

The programs for A171965, the canonical program `A171965.P2912561699044289185` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171965 has offset 0).

The definition of A171965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171965.P16924643309486989242

`ogf((x^3+x^5)/(1-3x+3x^2-x^3-x^6+3x^7-3x^8+x^9))`
-/

namespace A171965.P16924643309486989242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 0, 1] [1, -3, 3, -1, 0, 0, -1, 3, -3, 1] n

end

end A171965.P16924643309486989242

namespace A171965

/-- `ogf((x^3+x^5)/(1-3x+3x^2-x^3-x^6+3x^7-3x^8+x^9))` -/
def P16924643309486989242.Spec : Prop :=
  ∀ n, P16924643309486989242.a n = A171965 n

end A171965

/-! ## A171965.P2912561699044289185

`a(n-6)+n²-5*n+7` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171965

/-- `a(n-6)+n²-5*n+7` -/
def P2912561699044289185.Spec : Prop :=
  ∀ n, P2912561699044289185.a n = A171965 n

theorem P2912561699044289185.correct : P2912561699044289185.Spec := by
  intro n
  simp only [A171965]

end A171965

/-! ## A171965.P2949253275089827750

`floor((2*n^3+3*n²-12*n+7)/36)`
-/

namespace A171965.P2949253275089827750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 3 + 3 * n ^ 2 : ℤ) - (12 * n : ℤ) + 7 : ℚ) / 36⌋

end

end A171965.P2949253275089827750

namespace A171965

/-- `floor((2*n^3+3*n²-12*n+7)/36)` -/
def P2949253275089827750.Spec : Prop :=
  ∀ n, P2949253275089827750.a n = A171965 n

end A171965

/-! ## A171965.P14034897465624061745

`floor(a(n-1)+n²/6)` with `a(0)=0`
-/

namespace A171965.P14034897465624061745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 6⌋

end

end A171965.P14034897465624061745

namespace A171965

/-- `floor(a(n-1)+n²/6)` -/
def P14034897465624061745.Spec : Prop :=
  ∀ n, P14034897465624061745.a n = A171965 n

end A171965

/-! ## A171965.P5342882109418818763

`∑[floor((lcm(n+1, n)-n)/6)]`
-/

namespace A171965.P5342882109418818763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm (n + 1) n : ℤ) - (n : ℤ) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171965.P5342882109418818763

namespace A171965

/-- `∑[floor((lcm(n+1, n)-n)/6)]` -/
def P5342882109418818763.Spec : Prop :=
  ∀ n, P5342882109418818763.a n = A171965 n

end A171965

/-! ## A171965.P11987970098500963983

`∑[floor(n²/6)%(n²+3)]`
-/

namespace A171965.P11987970098500963983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n ^ 2 : ℚ) / 6⌋ (n ^ 2 + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171965.P11987970098500963983

namespace A171965

/-- `∑[floor(n²/6)%(n²+3)]` -/
def P11987970098500963983.Spec : Prop :=
  ∀ n, P11987970098500963983.a n = A171965 n

end A171965

/-! ## A171965.P4285913944254873517

`a(n-1)+floor(n*n/6)` with `a(0)=0`
-/

namespace A171965.P4285913944254873517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) * ((n : ℚ) / 6)⌋

end

end A171965.P4285913944254873517

namespace A171965

/-- `a(n-1)+floor(n*n/6)` -/
def P4285913944254873517.Spec : Prop :=
  ∀ n, P4285913944254873517.a n = A171965 n

end A171965

/-! ## A171965.P7357447780606235667

`∑[floor(∑[a(n-2)+2]/3)]-(n+1)` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A171965.P7357447780606235667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A171965.P7357447780606235667

namespace A171965

/-- `∑[floor(∑[a(n-2)+2]/3)]-(n+1)` -/
def P7357447780606235667.Spec : Prop :=
  ∀ n, P7357447780606235667.a n = A171965 n

end A171965

/-! ## A171965.P13148059808159808807

`∑[A056827(n)]`
-/

namespace A171965.P13148059808159808807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171965.P13148059808159808807

namespace A171965

/-- `∑[A056827(n)]` -/
def P13148059808159808807.Spec : Prop :=
  ∀ n, P13148059808159808807.a n = A171965 n

end A171965

/-! ## A171965.P7287597777124926229

`A181120(n)+A175724(n)`
-/

namespace A171965.P7287597777124926229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A175724 n

end

end A171965.P7287597777124926229

namespace A171965

/-- `A181120(n)+A175724(n)` -/
def P7287597777124926229.Spec : Prop :=
  ∀ n, P7287597777124926229.a n = A171965 n

end A171965

/-! ## A171965.P1629063359076333733

`A181286(n)-A173691(n)`
-/

namespace A171965.P1629063359076333733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n - A173691 n

end

end A171965.P1629063359076333733

namespace A171965

/-- `A181286(n)-A173691(n)` -/
def P1629063359076333733.Spec : Prop :=
  ∀ n, P1629063359076333733.a n = A171965 n

end A171965

/-! ## A171965.P13580562390175217178

`A175724(n+1)+A175724(n)-A008724(n)`
-/

namespace A171965.P13580562390175217178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 (n + 1) + (A175724 n - A008724 n)

end

end A171965.P13580562390175217178

namespace A171965

/-- `A175724(n+1)+A175724(n)-A008724(n)` -/
def P13580562390175217178.Spec : Prop :=
  ∀ n, P13580562390175217178.a n = A171965 n

end A171965

/-! ## A171965.P15117560665765240948

`∑[A152467(n²)]`
-/

namespace A171965.P15117560665765240948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171965.P15117560665765240948

namespace A171965

/-- `∑[A152467(n²)]` -/
def P15117560665765240948.Spec : Prop :=
  ∀ n, P15117560665765240948.a n = A171965 n

end A171965

/-! ## A171965.P11726071063153272452

`∑[A230197(n²+1)]`
-/

namespace A171965.P11726071063153272452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171965.P11726071063153272452

namespace A171965

/-- `∑[A230197(n²+1)]` -/
def P11726071063153272452.Spec : Prop :=
  ∀ n, P11726071063153272452.a n = A171965 n

end A171965

/-! ## A171965.P15687655768791668996

`∑[A097992(n²)-1]`
-/

namespace A171965.P15687655768791668996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (n ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171965.P15687655768791668996

namespace A171965

/-- `∑[A097992(n²)-1]` -/
def P15687655768791668996.Spec : Prop :=
  ∀ n, P15687655768791668996.a n = A171965 n

end A171965

/-!
# A171966: Number of partitions of n having no more odd than even parts.

The programs for A171966, there is no canonical definition to state claims against.
-/

/-! ## A171966.P4435093826636325008

`A108949(n)+A045931(n)`
-/

namespace A171966.P4435093826636325008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 n + A045931 n

end

end A171966.P4435093826636325008

/-! ## A171966.P17587091203538760425

`A000041(n)+A045931(n)-A130780(n)`
-/

namespace A171966.P17587091203538760425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A045931 n - A130780 n)

end

end A171966.P17587091203538760425

/-! ## A171966.P7605696717999659242

`A000041(n)+A108949(n)-A171967(n)`
-/

namespace A171966.P7605696717999659242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A108949 n - A171967 n)

end

end A171966.P7605696717999659242

/-! ## A171966.P5650510877167675527

`A130780(n)-A338860(n)`
-/

namespace A171966.P5650510877167675527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - A338860 n

end

end A171966.P5650510877167675527

/-! ## A171966.P16830309394786233256

`A000041(n)-(A338860(n)+A108949(n))`
-/

namespace A171966.P16830309394786233256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A338860 n + A108949 n)

end

end A171966.P16830309394786233256

/-! ## A171966.P13177034157374898607

`A108949(n)+A239835(n)-A239833(n)`
-/

namespace A171966.P13177034157374898607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 n + (A239835 n - A239833 n)

end

end A171966.P13177034157374898607

/-!
# A171967: Number of partitions of n with distinct numbers of odd and even parts.

The programs for A171967, there is no canonical definition to state claims against.
-/

/-! ## A171967.P3164162224398520787

`A000041(n)-A045931(n)`
-/

namespace A171967.P3164162224398520787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A045931 n

end

end A171967.P3164162224398520787

/-! ## A171967.P12622339564248131778

`∑[A002865(n)]-A045931(n)`
-/

namespace A171967.P12622339564248131778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A045931 n

end

end A171967.P12622339564248131778

/-! ## A171967.P3779747261929091720

`1+A000065(n)-A045931(n)`
-/

namespace A171967.P3779747261929091720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A045931 n

end

end A171967.P3779747261929091720

/-! ## A171967.P14643767903897224602

`A027187(n)+A027193(n)-A045931(n)`
-/

namespace A171967.P14643767903897224602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A045931 n)

end

end A171967.P14643767903897224602

/-! ## A171967.P2867369468194332164

`A000041(n)+A108949(n)-A171966(n)`
-/

namespace A171967.P2867369468194332164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A108949 n - A171966 n)

end

end A171967.P2867369468194332164

/-! ## A171967.P11640813997329832610

`A108949(n)+A130780(n)-A045931(n)`
-/

namespace A171967.P11640813997329832610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 n + (A130780 n - A045931 n)

end

end A171967.P11640813997329832610

/-! ## A171967.P15248315358110564169

`A035363(2*n)-A045931(n)`
-/

namespace A171967.P15248315358110564169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A045931 n

end

end A171967.P15248315358110564169

/-! ## A171967.P17678744156645702421

`A119620(2*n)-A045931(n)`
-/

namespace A171967.P17678744156645702421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A045931 n

end

end A171967.P17678744156645702421

/-! ## A171967.P2498456263921839604

`A249914(n)/A035294(n)-A045931(n)`
-/

namespace A171967.P2498456263921839604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249914 n : ℚ) / (A035294 n : ℚ) - (A045931 n : ℚ)

end

end A171967.P2498456263921839604

/-! ## A171967.P5624195354290132416

`A338860(n)+2*A108949(n)`
-/

namespace A171967.P5624195354290132416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338860 n + 2 * A108949 n

end

end A171967.P5624195354290132416

/-! ## A171967.P411437309764324054

`A000041(n)+A239833(n)-A239835(n)`
-/

namespace A171967.P411437309764324054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239833 n - A239835 n)

end

end A171967.P411437309764324054

/-! ## A171967.P16680186994190271642

`A241636(n)+A241639(n)-A045931(n)`
-/

namespace A171967.P16680186994190271642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241636 n + (A241639 n - A045931 n)

end

end A171967.P16680186994190271642

/-! ## A171967.P2043689370047274529

`A241637(n)+A241640(n)-A045931(n)`
-/

namespace A171967.P2043689370047274529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241637 n + (A241640 n - A045931 n)

end

end A171967.P2043689370047274529

/-! ## A171967.P5536304947209561817

`A100824(2*n)-A045931(n)`
-/

namespace A171967.P5536304947209561817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A045931 n

end

end A171967.P5536304947209561817

/-!
# A171968: Odd numbers of A181733 in the order of appearance.

The programs for A171968, there is no canonical definition to state claims against.
-/

/-! ## A171968.P7299124920355025615

`A181733(A004761(n+2))`
-/

namespace A171968.P7299124920355025615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (A004761 (n + 2)).toNat

end

end A171968.P7299124920355025615

/-! ## A171968.P18092799026919178007

`2*A181733(A028310(n))-1`
-/

namespace A171968.P18092799026919178007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181733 (A028310 n).toNat - 1

end

end A171968.P18092799026919178007

/-! ## A171968.P1069256176652659491

`filter[A181733(1+n), A000035(#)]`
-/

namespace A171968.P1069256176652659491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A171968.P1069256176652659491

/-! ## A171968.P12819071202944536452

`filter[A181733(n+1), A374134(#)]`
-/

namespace A171968.P12819071202944536452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A171968.P12819071202944536452

/-! ## A171968.P3621453317269787068

`filter[A181733(n+1), A374136(#)]`
-/

namespace A171968.P3621453317269787068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374136 (f1 j).toNat = 1) n)

end

end A171968.P3621453317269787068

/-! ## A171968.P14214656285479171054

`A006257(A139708(round(acot(n)+n)))`
-/

namespace A171968.P14214656285479171054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A139708 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A171968.P14214656285479171054

/-! ## A171968.P1476271916806754153

`A006257(A139708(round(sqrt(n²+1))))`
-/

namespace A171968.P1476271916806754153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A139708 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A171968.P1476271916806754153

/-! ## A171968.P2289149264053136212

`2*A181733(A233583(n+1))-1`
-/

namespace A171968.P2289149264053136212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181733 (A233583 (n + 1)).toNat - 1

end

end A171968.P2289149264053136212

/-! ## A171968.P7446688628977603031

`A302028(2*n+1)-A053644(2*n)`
-/

namespace A171968.P7446688628977603031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302028 (2 * n + 1) - A053644 (2 * n)

end

end A171968.P7446688628977603031

/-! ## A171968.P2162499703405018635

`A004273(A181733(A233583(n+1)))`
-/

namespace A171968.P2162499703405018635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A181733 (A233583 (n + 1)).toNat).toNat

end

end A171968.P2162499703405018635

/-!
# A171969: Smallest prime greater than phi^n.

The programs for A171969, there is no canonical definition to state claims against.
-/

/-! ## A171969.P3569218715858869024

`A151800(floor(ϕ^(n+1)))`
-/

namespace A171969.P3569218715858869024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊Real.goldenRatio ^ (n + 1)⌋.toNat

end

end A171969.P3569218715858869024

/-! ## A171969.P9986551877678174761

`lcm(A096809(n), A151800(A014217(n+1)))`
-/

namespace A171969.P9986551877678174761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096809 n) (A151800 (A014217 (n + 1)).toNat)

end

end A171969.P9986551877678174761

/-! ## A171969.P5765432863459098897

`A007918(A062724(n+1))`
-/

namespace A171969.P5765432863459098897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A062724 (n + 1)).toNat

end

end A171969.P5765432863459098897

/-! ## A171969.P7951762274893585477

`A007918(A169986(n+1))`
-/

namespace A171969.P7951762274893585477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A169986 (n + 1)).toNat

end

end A171969.P7951762274893585477

/-! ## A171969.P9594014078079078878

`A266620(A014217(n+1))`
-/

namespace A171969.P9594014078079078878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (A014217 (n + 1)).toNat

end

end A171969.P9594014078079078878

/-!
# A171970: Integer part of the height of an equilateral triangle with side length n.

The programs for A171970, the canonical program `A171970.P2453459489082325232` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171970 has offset 1).

The definition of A171970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171970.P2453459489082325232

`floor((n+1)*sqrt(3)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171970

/-- `floor((n+1)*sqrt(3)/2)` -/
def P2453459489082325232.Spec : Prop :=
  ∀ n, P2453459489082325232.a n = A171970 (n + 1)

theorem P2453459489082325232.correct : P2453459489082325232.Spec := by
  intro n
  simp only [A171970, Nat.add_sub_cancel]

end A171970

/-! ## A171970.P1017409267256315582

`A189367(n+1)-A003152(n+1)`
-/

namespace A171970.P1017409267256315582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189367 (n + 1) - A003152 (n + 1)

end

end A171970.P1017409267256315582

namespace A171970

/-- `A189367(n+1)-A003152(n+1)` -/
def P1017409267256315582.Spec : Prop :=
  ∀ n, P1017409267256315582.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P12836585325365891854

`A172475(n+1)`
-/

namespace A171970.P12836585325365891854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (n + 1)

end

end A171970.P12836585325365891854

namespace A171970

/-- `A172475(n+1)` -/
def P12836585325365891854.Spec : Prop :=
  ∀ n, P12836585325365891854.a n = A171970 (n + 1)

theorem P12836585325365891854.correct : P12836585325365891854.Spec := by
  intro n
  simp only [A171970, Nat.add_sub_cancel, A171970.P12836585325365891854.a, A171970.P2453459489082325232.a, A172475, A172475.P1801869792581245901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A171970

/-! ## A171970.P10960997171799716658

`∑[Δ[A172475(n)]²]`
-/

namespace A171970.P10960997171799716658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171970.P10960997171799716658

namespace A171970

/-- `∑[Δ[A172475(n)]²]` -/
def P10960997171799716658.Spec : Prop :=
  ∀ n, P10960997171799716658.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P982050138505827157

`A110654(A022838(n+1)-1)`
-/

namespace A171970.P982050138505827157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022838 (n + 1) - 1).toNat

end

end A171970.P982050138505827157

namespace A171970

/-- `A110654(A022838(n+1)-1)` -/
def P982050138505827157.Spec : Prop :=
  ∀ n, P982050138505827157.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P18054529981469612191

`A004526(∑[A080757(n)])`
-/

namespace A171970.P18054529981469612191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171970.P18054529981469612191

namespace A171970

/-- `A004526(∑[A080757(n)])` -/
def P18054529981469612191.Spec : Prop :=
  ∀ n, P18054529981469612191.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P3525622148613434166

`A004526(A022838(n+1))`
-/

namespace A171970.P3525622148613434166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022838 (n + 1)).toNat

end

end A171970.P3525622148613434166

namespace A171970

/-- `A004526(A022838(n+1))` -/
def P3525622148613434166.Spec : Prop :=
  ∀ n, P3525622148613434166.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P16796130116121574544

`A004526(A198081(n+1)-1)`
-/

namespace A171970.P16796130116121574544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198081 (n + 1) - 1).toNat

end

end A171970.P16796130116121574544

namespace A171970

/-- `A004526(A198081(n+1)-1)` -/
def P16796130116121574544.Spec : Prop :=
  ∀ n, P16796130116121574544.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P6873021431105972774

`∑[runs[A190669(n+1)]-1]`
-/

namespace A171970.P6873021431105972774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171970.P6873021431105972774

namespace A171970

/-- `∑[runs[A190669(n+1)]-1]` -/
def P6873021431105972774.Spec : Prop :=
  ∀ n, P6873021431105972774.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P5872267908729704841

`A308358(2*(n+1))`
-/

namespace A171970.P5872267908729704841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (2 * (n + 1))

end

end A171970.P5872267908729704841

namespace A171970

/-- `A308358(2*(n+1))` -/
def P5872267908729704841.Spec : Prop :=
  ∀ n, P5872267908729704841.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P12138966493296722906

`∑[Δ[A308358(2*n)]²]`
-/

namespace A171970.P12138966493296722906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171970.P12138966493296722906

namespace A171970

/-- `∑[Δ[A308358(2*n)]²]` -/
def P12138966493296722906.Spec : Prop :=
  ∀ n, P12138966493296722906.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P17635867373873581626

`A002265(A194028(n+1))`
-/

namespace A171970.P17635867373873581626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A194028 (n + 1)).toNat

end

end A171970.P17635867373873581626

namespace A171970

/-- `A002265(A194028(n+1))` -/
def P17635867373873581626.Spec : Prop :=
  ∀ n, P17635867373873581626.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P10341265780737127451

`A002265(2*A022838(n+1))`
-/

namespace A171970.P10341265780737127451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A022838 (n + 1)).toNat

end

end A171970.P10341265780737127451

namespace A171970

/-- `A002265(2*A022838(n+1))` -/
def P10341265780737127451.Spec : Prop :=
  ∀ n, P10341265780737127451.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P3418866415644068610

`A172471(A033436(n+1))`
-/

namespace A171970.P3418866415644068610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A033436 (n + 1)).toNat

end

end A171970.P3418866415644068610

namespace A171970

/-- `A172471(A033436(n+1))` -/
def P3418866415644068610.Spec : Prop :=
  ∀ n, P3418866415644068610.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P2282316874478066542

`A202304(A302488(n))`
-/

namespace A171970.P2282316874478066542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A302488 n).toNat

end

end A171970.P2282316874478066542

namespace A171970

/-- `A202304(A302488(n))` -/
def P2282316874478066542.Spec : Prop :=
  ∀ n, P2282316874478066542.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P7812495221419964964

`A202304(A002620(n+1))`
-/

namespace A171970.P7812495221419964964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A002620 (n + 1)).toNat

end

end A171970.P7812495221419964964

namespace A171970

/-- `A202304(A002620(n+1))` -/
def P7812495221419964964.Spec : Prop :=
  ∀ n, P7812495221419964964.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P5804853009859045859

`A000196(A242477(n+1))`
-/

namespace A171970.P5804853009859045859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A242477 (n + 1)).toNat

end

end A171970.P5804853009859045859

namespace A171970

/-- `A000196(A242477(n+1))` -/
def P5804853009859045859.Spec : Prop :=
  ∀ n, P5804853009859045859.a n = A171970 (n + 1)

end A171970

/-! ## A171970.P4959979910216153791

`A000196(A331952(n+1))`
-/

namespace A171970.P4959979910216153791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A331952 (n + 1)).toNat

end

end A171970.P4959979910216153791

namespace A171970

/-- `A000196(A331952(n+1))` -/
def P4959979910216153791.Spec : Prop :=
  ∀ n, P4959979910216153791.a n = A171970 (n + 1)

end A171970

/-!
# A171971: Integer part of the area of an equilateral triangle with side length n.

The programs for A171971, the canonical program `A171971.P7990826237686176269` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171971 has offset 1).

The definition of A171971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171971.P7990826237686176269

`floor((n+1)²*sqrt(3)/4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171971

/-- `floor((n+1)²*sqrt(3)/4)` -/
def P7990826237686176269.Spec : Prop :=
  ∀ n, P7990826237686176269.a n = A171971 (n + 1)

theorem P7990826237686176269.correct : P7990826237686176269.Spec := by
  intro n
  simp only [A171971, Nat.add_sub_cancel]

end A171971

/-! ## A171971.P9314066299539703983

`A308358((n+1)²)`
-/

namespace A171971.P9314066299539703983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 ((n + 1) ^ 2)

end

end A171971.P9314066299539703983

namespace A171971

/-- `A308358((n+1)²)` -/
def P9314066299539703983.Spec : Prop :=
  ∀ n, P9314066299539703983.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P3830886685827263392

`ceil(((n+1)/2)²*sqrt(3))-abs(A033999(n))`
-/

namespace A171971.P3830886685827263392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1 : ℚ) / 2) ^ 2 : ℝ) * Real.sqrt (3 : ℝ)⌉ - |A033999 n|

end

end A171971.P3830886685827263392

namespace A171971

/-- `ceil(((n+1)/2)²*sqrt(3))-abs(A033999(n))` -/
def P3830886685827263392.Spec : Prop :=
  ∀ n, P3830886685827263392.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P13271107702700655727

`ceil(sqrt(3*A011863(n+1))-A057427(n))`
-/

namespace A171971.P13271107702700655727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A011863 (n + 1) : ℝ) - (A057427 n : ℝ)⌉

end

end A171971.P13271107702700655727

namespace A171971

/-- `ceil(sqrt(3*A011863(n+1))-A057427(n))` -/
def P13271107702700655727.Spec : Prop :=
  ∀ n, P13271107702700655727.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P7450029629514847658

`floor(sqrt(3*A011863(n+1)))%A114962(n)`
-/

namespace A171971.P7450029629514847658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (3 * A011863 (n + 1))) (A114962 n)

end

end A171971.P7450029629514847658

namespace A171971

/-- `floor(sqrt(3*A011863(n+1)))%A114962(n)` -/
def P7450029629514847658.Spec : Prop :=
  ∀ n, P7450029629514847658.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P7979120367194775199

`ceil(sqrt(3*A011863(n+1))-A019426(2*n))`
-/

namespace A171971.P7979120367194775199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A011863 (n + 1) : ℝ) - (A019426 (2 * n) : ℝ)⌉

end

end A171971.P7979120367194775199

namespace A171971

/-- `ceil(sqrt(3*A011863(n+1))-A019426(2*n))` -/
def P7979120367194775199.Spec : Prop :=
  ∀ n, P7979120367194775199.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P16419061267795662885

`A004526(A171970((n+1)²))`
-/

namespace A171971.P16419061267795662885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171970 ((n + 1) ^ 2)).toNat

end

end A171971.P16419061267795662885

namespace A171971

/-- `A004526(A171970((n+1)²))` -/
def P16419061267795662885.Spec : Prop :=
  ∀ n, P16419061267795662885.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P2035182905302846511

`record[A308358(abs(A131805(n)))]`
-/

namespace A171971.P2035182905302846511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 |A131805 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171971.P2035182905302846511

namespace A171971

/-- `record[A308358(abs(A131805(n)))]` -/
def P2035182905302846511.Spec : Prop :=
  ∀ n, P2035182905302846511.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P5967051508407966231

`record[A308358(A008616(n)²)]`
-/

namespace A171971.P5967051508407966231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A008616 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171971.P5967051508407966231

namespace A171971

/-- `record[A308358(A008616(n)²)]` -/
def P5967051508407966231.Spec : Prop :=
  ∀ n, P5967051508407966231.a n = A171971 (n + 1)

end A171971

/-! ## A171971.P5515932300328209589

`A004526(A172475((n+1)²))`
-/

namespace A171971.P5515932300328209589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172475 ((n + 1) ^ 2)).toNat

end

end A171971.P5515932300328209589

namespace A171971

/-- `A004526(A172475((n+1)²))` -/
def P5515932300328209589.Spec : Prop :=
  ∀ n, P5515932300328209589.a n = A171971 (n + 1)

end A171971

/-!
# A171972: Greatest integer k such that k/n^2 < sqrt(3).

The programs for A171972, the canonical program `A171972.P622104911038099606` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171972 has offset 0).

The definition of A171972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171972.P622104911038099606

`floor(n²*sqrt(3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171972

/-- `floor(n²*sqrt(3))` -/
def P622104911038099606.Spec : Prop :=
  ∀ n, P622104911038099606.a n = A171972 n

theorem P622104911038099606.correct : P622104911038099606.Spec := by
  intro n
  simp only [A171972]

end A171972

/-! ## A171972.P10841541045381145963

`A293410(n)+A057428(n)`
-/

namespace A171972.P10841541045381145963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293410 n + A057428 n

end

end A171972.P10841541045381145963

namespace A171972

/-- `A293410(n)+A057428(n)` -/
def P10841541045381145963.Spec : Prop :=
  ∀ n, P10841541045381145963.a n = A171972 n

end A171972

/-! ## A171972.P3059300436701451415

`A293410(n)-A057427(n)`
-/

namespace A171972.P3059300436701451415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293410 n - A057427 n

end

end A171972.P3059300436701451415

namespace A171972

/-- `A293410(n)-A057427(n)` -/
def P3059300436701451415.Spec : Prop :=
  ∀ n, P3059300436701451415.a n = A171972 n

end A171972

/-! ## A171972.P2561266886273479506

`A000007(n)+A293410(n)-1`
-/

namespace A171972.P2561266886273479506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A293410 n - 1)

end

end A171972.P2561266886273479506

namespace A171972

/-- `A000007(n)+A293410(n)-1` -/
def P2561266886273479506.Spec : Prop :=
  ∀ n, P2561266886273479506.a n = A171972 n

end A171972

/-! ## A171972.P4922325180318425590

`A054977(n)+A293410(n)-2`
-/

namespace A171972.P4922325180318425590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A293410 n - 2)

end

end A171972.P4922325180318425590

namespace A171972

/-- `A054977(n)+A293410(n)-2` -/
def P4922325180318425590.Spec : Prop :=
  ∀ n, P4922325180318425590.a n = A171972 n

end A171972

/-! ## A171972.P1740325305298466044

`A293410(n)-ceil(n/A004277(n))`
-/

namespace A171972.P1740325305298466044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293410 n - ⌈(n : ℚ) / (A004277 n : ℚ)⌉

end

end A171972.P1740325305298466044

namespace A171972

/-- `A293410(n)-ceil(n/A004277(n))` -/
def P1740325305298466044.Spec : Prop :=
  ∀ n, P1740325305298466044.a n = A171972 n

end A171972

/-! ## A171972.P14017699432442296581

`A293410(A028310(n))-A054977(n)`
-/

namespace A171972.P14017699432442296581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293410 (A028310 n).toNat - A054977 n

end

end A171972.P14017699432442296581

namespace A171972

/-- `A293410(A028310(n))-A054977(n)` -/
def P14017699432442296581.Spec : Prop :=
  ∀ n, P14017699432442296581.a n = A171972 n

end A171972

/-! ## A171972.P8947577491934982

`A171971(eq[2*n, lcm(2, n)]+1)`
-/

namespace A171972.P8947577491934982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A171972.P8947577491934982

namespace A171972

/-- `A171971(eq[2*n, lcm(2, n)]+1)` -/
def P8947577491934982.Spec : Prop :=
  ∀ n, P8947577491934982.a n = A171972 n

end A171972

/-! ## A171972.P14133858674799516389

`A171971(eq[n, n*gcd(2, n)]+1)`
-/

namespace A171972.P14133858674799516389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A171972.P14133858674799516389

namespace A171972

/-- `A171971(eq[n, n*gcd(2, n)]+1)` -/
def P14133858674799516389.Spec : Prop :=
  ∀ n, P14133858674799516389.a n = A171972 n

end A171972

/-! ## A171972.P7012558974833640213

`A171971(n-(1-n)%(n+1)+1)`
-/

namespace A171972.P7012558974833640213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A171972.P7012558974833640213

namespace A171972

/-- `A171971(n-(1-n)%(n+1)+1)` -/
def P7012558974833640213.Spec : Prop :=
  ∀ n, P7012558974833640213.a n = A171972 n

end A171972

/-! ## A171972.P11613603363621573690

`A171971(A004277(n))`
-/

namespace A171972.P11613603363621573690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (A004277 n).toNat

end

end A171972.P11613603363621573690

namespace A171972

/-- `A171971(A004277(n))` -/
def P11613603363621573690.Spec : Prop :=
  ∀ n, P11613603363621573690.a n = A171972 n

end A171972

/-! ## A171972.P8605013363426865343

`A171971(A004275(n+1))`
-/

namespace A171972.P8605013363426865343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (A004275 (n + 1)).toNat

end

end A171972.P8605013363426865343

namespace A171972

/-- `A171971(A004275(n+1))` -/
def P8605013363426865343.Spec : Prop :=
  ∀ n, P8605013363426865343.a n = A171972 n

end A171972

/-! ## A171972.P4739625440372343018

`A171971(A065033(2*n)+n)`
-/

namespace A171972.P4739625440372343018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (A065033 (2 * n) + (n : ℤ)).toNat

end

end A171972.P4739625440372343018

namespace A171972

/-- `A171971(A065033(2*n)+n)` -/
def P4739625440372343018.Spec : Prop :=
  ∀ n, P4739625440372343018.a n = A171972 n

end A171972

/-! ## A171972.P1527842846626384755

`A293410(n)-A051132(n)%2`
-/

namespace A171972.P1527842846626384755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293410 n - Int.tmod (A051132 n) 2

end

end A171972.P1527842846626384755

namespace A171972

/-- `A293410(n)-A051132(n)%2` -/
def P1527842846626384755.Spec : Prop :=
  ∀ n, P1527842846626384755.a n = A171972 n

end A171972

/-! ## A171972.P14708302765794001785

`A171971(A065033(4*n))`
-/

namespace A171972.P14708302765794001785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (A065033 (4 * n)).toNat

end

end A171972.P14708302765794001785

namespace A171972

/-- `A171971(A065033(4*n))` -/
def P14708302765794001785.Spec : Prop :=
  ∀ n, P14708302765794001785.a n = A171972 n

end A171972

/-! ## A171972.P3938816116333195770

`record[A171971(n+1)/A171942(2*(n+2))]`
-/

namespace A171972.P3938816116333195770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171971 (n + 1) : ℚ) / (A171942 (2 * (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171972.P3938816116333195770

namespace A171972

/-- `record[A171971(n+1)/A171942(2*(n+2))]` -/
def P3938816116333195770.Spec : Prop :=
  ∀ n, P3938816116333195770.a n = (A171972 n : ℚ)

end A171972

/-! ## A171972.P13020471817493422481

`A198081(n²)-A001876(A001876(n))`
-/

namespace A171972.P13020471817493422481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n ^ 2) - A001876 (A001876 n).toNat

end

end A171972.P13020471817493422481

namespace A171972

/-- `A198081(n²)-A001876(A001876(n))` -/
def P13020471817493422481.Spec : Prop :=
  ∀ n, P13020471817493422481.a n = A171972 n

end A171972

/-!
# A171973: Integer part of the volume of a regular tetrahedron with edge length n.

The programs for A171973, the canonical program `A171973.P4798537009542789243` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171973 has offset 1).

The definition of A171973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171973.P4798537009542789243

`floor((n+1)^3*sqrt(2)/12)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171973

/-- `floor((n+1)^3*sqrt(2)/12)` -/
def P4798537009542789243.Spec : Prop :=
  ∀ n, P4798537009542789243.a n = A171973 (n + 1)

theorem P4798537009542789243.correct : P4798537009542789243.Spec := by
  intro n
  simp only [A171973, Nat.add_sub_cancel]

end A171973

/-! ## A171973.P1224715592251051180

`floor((A066023(n-log2(1/2))/sqrt(18)+2)/2)-1`
-/

namespace A171973.P1224715592251051180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A066023 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ) / Real.sqrt (18 : ℝ) + 2) / 2⌋ - 1

end

end A171973.P1224715592251051180

namespace A171973

/-- `floor((A066023(n-log2(1/2))/sqrt(18)+2)/2)-1` -/
def P1224715592251051180.Spec : Prop :=
  ∀ n, P1224715592251051180.a n = A171973 (n + 1)

end A171973

/-! ## A171973.P11042063583643796237

`round((A229063(A151909(n)!+n)+1)/2)-1`
-/

namespace A171973.P11042063583643796237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229063 (Nat.factorial (A151909 n).toNat + n) + 1 : ℚ) / 2) - 1

end

end A171973.P11042063583643796237

namespace A171973

/-- `round((A229063(A151909(n)!+n)+1)/2)-1` -/
def P11042063583643796237.Spec : Prop :=
  ∀ n, P11042063583643796237.a n = A171973 (n + 1)

end A171973

/-! ## A171973.P2218205095581843984

`A273943(or(1, A229063(n+1))-1)`
-/

namespace A171973.P2218205095581843984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lor 1 (A229063 (n + 1)) - 1).toNat

end

end A171973.P2218205095581843984

namespace A171973

/-- `A273943(or(1, A229063(n+1))-1)` -/
def P2218205095581843984.Spec : Prop :=
  ∀ n, P2218205095581843984.a n = A171973 (n + 1)

end A171973

/-! ## A171973.P5533295974621371606

`A273943(xor(1, or(1, A229063(n+1))))`
-/

namespace A171973.P5533295974621371606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.xor 1 (Int.lor 1 (A229063 (n + 1)))).toNat

end

end A171973.P5533295974621371606

namespace A171973

/-- `A273943(xor(1, or(1, A229063(n+1))))` -/
def P5533295974621371606.Spec : Prop :=
  ∀ n, P5533295974621371606.a n = A171973 (n + 1)

end A171973

/-! ## A171973.P5642823427865070364

`A302042(or(1, A229063(n+1))+1)-1`
-/

namespace A171973.P5642823427865070364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (Int.lor 1 (A229063 (n + 1)) + 1).toNat - 1

end

end A171973.P5642823427865070364

namespace A171973

/-- `A302042(or(1, A229063(n+1))+1)-1` -/
def P5642823427865070364.Spec : Prop :=
  ∀ n, P5642823427865070364.a n = A171973 (n + 1)

end A171973

/-!
# A171974: Integer part of the height of a regular tetrahedron with edge length n.

The programs for A171974, the canonical program `A171974.P3727932900943191614` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171974 has offset 1).

The definition of A171974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171974.P16408893055174576026

`floor((n+1)*sqrt(6)/3)`
-/

namespace A171974.P16408893055174576026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ) / 3⌋

end

end A171974.P16408893055174576026

namespace A171974

/-- `floor((n+1)*sqrt(6)/3)` -/
def P16408893055174576026.Spec : Prop :=
  ∀ n, P16408893055174576026.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P3727932900943191614

`A172476(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171974

/-- `A172476(2*(n+1))` -/
def P3727932900943191614.Spec : Prop :=
  ∀ n, P3727932900943191614.a n = A171974 (n + 1)

theorem P3727932900943191614.correct : P3727932900943191614.Spec := by
  intro n
  simp only [A171974, Nat.add_sub_cancel]

end A171974

/-! ## A171974.P18096608304657754805

`floor(2*(n+1)/root(6, 2))%(n+1)`
-/

namespace A171974.P18096608304657754805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * (n + 1) : ℝ) / (6 : ℝ) ^ (1 / (2 : ℝ))⌋ (n + 1 : ℤ)

end

end A171974.P18096608304657754805

namespace A171974

/-- `floor(2*(n+1)/root(6, 2))%(n+1)` -/
def P18096608304657754805.Spec : Prop :=
  ∀ n, P18096608304657754805.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P1247205123991972737

`∑[char[A277644(n+1)]]`
-/

namespace A171974.P1247205123991972737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171974.P1247205123991972737

namespace A171974

/-- `∑[char[A277644(n+1)]]` -/
def P1247205123991972737.Spec : Prop :=
  ∀ n, (P1247205123991972737.a n : ℤ) = A171974 (n + 1)

end A171974

/-! ## A171974.P8184431532322012062

`A184808(n+1)-(n+1)`
-/

namespace A171974.P8184431532322012062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) - (n + 1 : ℤ)

end

end A171974.P8184431532322012062

namespace A171974

/-- `A184808(n+1)-(n+1)` -/
def P8184431532322012062.Spec : Prop :=
  ∀ n, P8184431532322012062.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P12475771307664388994

`A189384(n+1)-A003151(n+1)`
-/

namespace A171974.P12475771307664388994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189384 (n + 1) - A003151 (n + 1)

end

end A171974.P12475771307664388994

namespace A171974

/-- `A189384(n+1)-A003151(n+1)` -/
def P12475771307664388994.Spec : Prop :=
  ∀ n, P12475771307664388994.a n = A171974 (n + 1)

theorem P12475771307664388994.correct : P12475771307664388994.Spec := by
  intro n
  simp only [A171974, Nat.add_sub_cancel, A171974.P12475771307664388994.a, A171974.P3727932900943191614.a, A003151, A003151.P5230567170801236160.a, A172476, A172476.P6456394534622672845.a, A189384, A189384.P17768416561206798456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A171974

/-! ## A171974.P10841501439738313057

`A189363(n+1)-A186539(n+1)`
-/

namespace A171974.P10841501439738313057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189363 (n + 1) - A186539 (n + 1)

end

end A171974.P10841501439738313057

namespace A171974

/-- `A189363(n+1)-A186539(n+1)` -/
def P10841501439738313057.Spec : Prop :=
  ∀ n, P10841501439738313057.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P16062984224323696466

`A190365(n+1)-A277645(n+1)`
-/

namespace A171974.P16062984224323696466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190365 (n + 1) - A277645 (n + 1)

end

end A171974.P16062984224323696466

namespace A171974

/-- `A190365(n+1)-A277645(n+1)` -/
def P16062984224323696466.Spec : Prop :=
  ∀ n, P16062984224323696466.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P5376457245402499688

`A194986(2*(n+1))-1`
-/

namespace A171974.P5376457245402499688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (2 * (n + 1)) - 1

end

end A171974.P5376457245402499688

namespace A171974

/-- `A194986(2*(n+1))-1` -/
def P5376457245402499688.Spec : Prop :=
  ∀ n, P5376457245402499688.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P4808609815108773032

`ceil(sqrt(A008747(2*n+1)))-1`
-/

namespace A171974.P4808609815108773032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008747 (2 * n + 1) : ℝ)⌉ - 1

end

end A171974.P4808609815108773032

namespace A171974

/-- `ceil(sqrt(A008747(2*n+1)))-1` -/
def P4808609815108773032.Spec : Prop :=
  ∀ n, P4808609815108773032.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P15754313229201232640

`∑[Δ[A172476(2*n)]²]`
-/

namespace A171974.P15754313229201232640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171974.P15754313229201232640

namespace A171974

/-- `∑[Δ[A172476(2*n)]²]` -/
def P15754313229201232640.Spec : Prop :=
  ∀ n, P15754313229201232640.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P175872940590797688

`Δ[A022783(n+1)]-1`
-/

namespace A171974.P175872940590797688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A171974.P175872940590797688

namespace A171974

/-- `Δ[A022783(n+1)]-1` -/
def P175872940590797688.Spec : Prop :=
  ∀ n, P175872940590797688.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P6265904782857010637

`A002264(A022840(n+1))`
-/

namespace A171974.P6265904782857010637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022840 (n + 1)).toNat

end

end A171974.P6265904782857010637

namespace A171974

/-- `A002264(A022840(n+1))` -/
def P6265904782857010637.Spec : Prop :=
  ∀ n, P6265904782857010637.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P11096662280917917635

`A002264(∑[A276856(n+1)])`
-/

namespace A171974.P11096662280917917635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171974.P11096662280917917635

namespace A171974

/-- `A002264(∑[A276856(n+1)])` -/
def P11096662280917917635.Spec : Prop :=
  ∀ n, P11096662280917917635.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P10702994745971343962

`A002264(A277644(2*(n+1)))`
-/

namespace A171974.P10702994745971343962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277644 (2 * (n + 1))).toNat

end

end A171974.P10702994745971343962

namespace A171974

/-- `A002264(A277644(2*(n+1)))` -/
def P10702994745971343962.Spec : Prop :=
  ∀ n, P10702994745971343962.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P9406023748994940597

`A097992(2*A022840(n+1))-1`
-/

namespace A171974.P9406023748994940597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (2 * A022840 (n + 1)).toNat - 1

end

end A171974.P9406023748994940597

namespace A171974

/-- `A097992(2*A022840(n+1))-1` -/
def P9406023748994940597.Spec : Prop :=
  ∀ n, P9406023748994940597.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P17284913222030434542

`A172471(A032765(n))`
-/

namespace A171974.P17284913222030434542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A032765 n).toNat

end

end A171974.P17284913222030434542

namespace A171974

/-- `A172471(A032765(n))` -/
def P17284913222030434542.Spec : Prop :=
  ∀ n, P17284913222030434542.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P10404566111513660975

`A172471(A000212(n+1))`
-/

namespace A171974.P10404566111513660975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000212 (n + 1)).toNat

end

end A171974.P10404566111513660975

namespace A171974

/-- `A172471(A000212(n+1))` -/
def P10404566111513660975.Spec : Prop :=
  ∀ n, P10404566111513660975.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P9975438263872899283

`A227568(A194274(n))`
-/

namespace A171974.P9975438263872899283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A194274 n).toNat

end

end A171974.P9975438263872899283

namespace A171974

/-- `A227568(A194274(n))` -/
def P9975438263872899283.Spec : Prop :=
  ∀ n, P9975438263872899283.a n = A171974 (n + 1)

end A171974

/-! ## A171974.P894113252410706198

`A227568(A007590(n+1))`
-/

namespace A171974.P894113252410706198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A007590 (n + 1)).toNat

end

end A171974.P894113252410706198

namespace A171974

/-- `A227568(A007590(n+1))` -/
def P894113252410706198.Spec : Prop :=
  ∀ n, P894113252410706198.a n = A171974 (n + 1)

end A171974

/-!
# A171975: Integer part of the circumsphere radius of a regular tetrahedron with edge length n.

The programs for A171975, the canonical program `A171975.P17710737011560850414` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171975 has offset 1).

The definition of A171975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171975.P17710737011560850414

`floor((n+1)*sqrt(6)/4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171975

/-- `floor((n+1)*sqrt(6)/4)` -/
def P17710737011560850414.Spec : Prop :=
  ∀ n, P17710737011560850414.a n = A171975 (n + 1)

theorem P17710737011560850414.correct : P17710737011560850414.Spec := by
  intro n
  simp only [A171975, Nat.add_sub_cancel]

end A171975

/-! ## A171975.P14936793169357506555

`ceil((A277644(n+1)-1)/2)`
-/

namespace A171975.P14936793169357506555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277644 (n + 1) - 1 : ℚ) / 2⌉

end

end A171975.P14936793169357506555

namespace A171975

/-- `ceil((A277644(n+1)-1)/2)` -/
def P14936793169357506555.Spec : Prop :=
  ∀ n, P14936793169357506555.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P1903265293724261797

`A008619(A277644(n+1))-1`
-/

namespace A171975.P1903265293724261797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A277644 (n + 1)).toNat - 1

end

end A171975.P1903265293724261797

namespace A171975

/-- `A008619(A277644(n+1))-1` -/
def P1903265293724261797.Spec : Prop :=
  ∀ n, P1903265293724261797.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P12496456300623868133

`A004526(floor((n+1)/sqrt(2/3)))`
-/

namespace A171975.P12496456300623868133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊(n + 1 : ℝ) / Real.sqrt ((2 : ℚ) / 3 : ℝ)⌋.toNat

end

end A171975.P12496456300623868133

namespace A171975

/-- `A004526(floor((n+1)/sqrt(2/3)))` -/
def P12496456300623868133.Spec : Prop :=
  ∀ n, P12496456300623868133.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P3360112607498310200

`A004526(A277644(n+1)+2)-1`
-/

namespace A171975.P3360112607498310200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277644 (n + 1) + 2).toNat - 1

end

end A171975.P3360112607498310200

namespace A171975

/-- `A004526(A277644(n+1)+2)-1` -/
def P3360112607498310200.Spec : Prop :=
  ∀ n, P3360112607498310200.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P15222369386064277707

`A002265(A022840(n+1))`
-/

namespace A171975.P15222369386064277707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022840 (n + 1)).toNat

end

end A171975.P15222369386064277707

namespace A171975

/-- `A002265(A022840(n+1))` -/
def P15222369386064277707.Spec : Prop :=
  ∀ n, P15222369386064277707.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P11103586998758575798

`A002265(2*A277644(n+1))`
-/

namespace A171975.P11103586998758575798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A277644 (n + 1)).toNat

end

end A171975.P11103586998758575798

namespace A171975

/-- `A002265(2*A277644(n+1))` -/
def P11103586998758575798.Spec : Prop :=
  ∀ n, P11103586998758575798.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P10946713005453625139

`A002265(A277644(n+1)+A277644(n+1)+1)`
-/

namespace A171975.P10946713005453625139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A277644 (n + 1) + (A277644 (n + 1) + 1)).toNat

end

end A171975.P10946713005453625139

namespace A171975

/-- `A002265(A277644(n+1)+A277644(n+1)+1)` -/
def P10946713005453625139.Spec : Prop :=
  ∀ n, P10946713005453625139.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P16433621904741959283

`floor((2+A172476(3*(n+1)))/2)-1`
-/

namespace A171975.P16433621904741959283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + A172476 (3 * (n + 1)) : ℚ) / 2⌋ - 1

end

end A171975.P16433621904741959283

namespace A171975

/-- `floor((2+A172476(3*(n+1)))/2)-1` -/
def P16433621904741959283.Spec : Prop :=
  ∀ n, P16433621904741959283.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P487661115787489191

`A004526(A194146(n+1))-(n+1)`
-/

namespace A171975.P487661115787489191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194146 (n + 1)).toNat - (n + 1 : ℤ)

end

end A171975.P487661115787489191

namespace A171975

/-- `A004526(A194146(n+1))-(n+1)` -/
def P487661115787489191.Spec : Prop :=
  ∀ n, P487661115787489191.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P15149787311677338883

`A110654(A194146(n+1)-1)-(n+1)`
-/

namespace A171975.P15149787311677338883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A194146 (n + 1) - 1).toNat - (n + 1 : ℤ)

end

end A171975.P15149787311677338883

namespace A171975

/-- `A110654(A194146(n+1)-1)-(n+1)` -/
def P15149787311677338883.Spec : Prop :=
  ∀ n, P15149787311677338883.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P12227338322172044474

`A184809(n+1)-A008619(A184809(n+1)+n)`
-/

namespace A171975.P12227338322172044474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) - A008619 (A184809 (n + 1) + (n : ℤ)).toNat

end

end A171975.P12227338322172044474

namespace A171975

/-- `A184809(n+1)-A008619(A184809(n+1)+n)` -/
def P12227338322172044474.Spec : Prop :=
  ∀ n, P12227338322172044474.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P5669027364824197089

`A202304(A001971(n+1))`
-/

namespace A171975.P5669027364824197089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A001971 (n + 1)).toNat

end

end A171975.P5669027364824197089

namespace A171975

/-- `A202304(A001971(n+1))` -/
def P5669027364824197089.Spec : Prop :=
  ∀ n, P5669027364824197089.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P1412982818465788818

`A000196(A033436(n+1))`
-/

namespace A171975.P1412982818465788818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033436 (n + 1)).toNat

end

end A171975.P1412982818465788818

namespace A171975

/-- `A000196(A033436(n+1))` -/
def P1412982818465788818.Spec : Prop :=
  ∀ n, P1412982818465788818.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P15205376152449373201

`A000196(∑[A057353(n+1)])`
-/

namespace A171975.P15205376152449373201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171975.P15205376152449373201

namespace A171975

/-- `A000196(∑[A057353(n+1)])` -/
def P15205376152449373201.Spec : Prop :=
  ∀ n, P15205376152449373201.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P10324841764496686102

`A000196(∑[n]-A130519(n))`
-/

namespace A171975.P10324841764496686102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130519 n).toNat

end

end A171975.P10324841764496686102

namespace A171975

/-- `A000196(∑[n]-A130519(n))` -/
def P10324841764496686102.Spec : Prop :=
  ∀ n, P10324841764496686102.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P9728198933417774332

`A000196(A001972(2*n)-A001972(n))`
-/

namespace A171975.P9728198933417774332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001972 (2 * n) - A001972 n).toNat

end

end A171975.P9728198933417774332

namespace A171975

/-- `A000196(A001972(2*n)-A001972(n))` -/
def P9728198933417774332.Spec : Prop :=
  ∀ n, P9728198933417774332.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P7916974470822207373

`A000196(A002620(n+1)+A001971(n+1))`
-/

namespace A171975.P7916974470822207373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002620 (n + 1) + A001971 (n + 1)).toNat

end

end A171975.P7916974470822207373

namespace A171975

/-- `A000196(A002620(n+1)+A001971(n+1))` -/
def P7916974470822207373.Spec : Prop :=
  ∀ n, P7916974470822207373.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P15024755185748117864

`A000196(A057353(A007590(n+1)))`
-/

namespace A171975.P15024755185748117864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A057353 (A007590 (n + 1)).toNat).toNat

end

end A171975.P15024755185748117864

namespace A171975

/-- `A000196(A057353(A007590(n+1)))` -/
def P15024755185748117864.Spec : Prop :=
  ∀ n, P15024755185748117864.a n = A171975 (n + 1)

end A171975

/-! ## A171975.P15223905608901241332

`A339183(A115283(n))`
-/

namespace A171975.P15223905608901241332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A115283 n).toNat

end

end A171975.P15223905608901241332

namespace A171975

/-- `A339183(A115283(n))` -/
def P15223905608901241332.Spec : Prop :=
  ∀ n, P15223905608901241332.a n = A171975 (n + 1)

end A171975

/-!
# A171976: Numbers n such that the sum of the squares of the digits of n^n is a square.

The programs for A171976, there is no canonical definition to state claims against.
-/

/-! ## A171976.P548123648778051408

`eq[A025805(n+1), A025825(A025802(n))]`
-/

namespace A171976.P548123648778051408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 (A025802 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171976.P548123648778051408

/-!
# A171977: a(n) = 2^(k+1) where 2^k is the highest power of 2 dividing n.

The programs for A171977, the canonical program `A171977.P14092944863121073856` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171977 has offset 1).

The definition of A171977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171977.P4926004303821223748

`2^(1+val(n+1, 2))`
-/

namespace A171977.P4926004303821223748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (1 + SequenceMachineLib.valuation (n + 1) 2)

end

end A171977.P4926004303821223748

namespace A171977

/-- `2^(1+val(n+1, 2))` -/
def P4926004303821223748.Spec : Prop :=
  ∀ n, (P4926004303821223748.a n : ℤ) = A171977 (n + 1)

end A171977

/-! ## A171977.P14092944863121073856

`A038712(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171977

/-- `A038712(n+1)+1` -/
def P14092944863121073856.Spec : Prop :=
  ∀ n, P14092944863121073856.a n = A171977 (n + 1)

theorem P14092944863121073856.correct : P14092944863121073856.Spec := by
  intro n
  simp only [A171977, Nat.add_sub_cancel]

end A171977

/-! ## A171977.P869118318229830395

`2*A006519(n+1)`
-/

namespace A171977.P869118318229830395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006519 (n + 1)

end

end A171977.P869118318229830395

namespace A171977

/-- `2*A006519(n+1)` -/
def P869118318229830395.Spec : Prop :=
  ∀ n, P869118318229830395.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P1343708046544170543

`2^A001511(n+1)`
-/

namespace A171977.P1343708046544170543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001511 (n + 1) : ℤ)

end

end A171977.P1343708046544170543

namespace A171977

/-- `2^A001511(n+1)` -/
def P1343708046544170543.Spec : Prop :=
  ∀ n, P1343708046544170543.a n = (A171977 (n + 1) : ℚ)

end A171977

/-! ## A171977.P13416046617621010896

`2^(1+A183063(n+1)/A001227(n+1))`
-/

namespace A171977.P13416046617621010896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 + (A183063 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) : ℝ)

end

end A171977.P13416046617621010896

namespace A171977

/-- `2^(1+A183063(n+1)/A001227(n+1))` -/
def P13416046617621010896.Spec : Prop :=
  ∀ n, P13416046617621010896.a n = (A171977 (n + 1) : ℝ)

end A171977

/-! ## A171977.P1286143190992283506

`(A000265(2*(n+1)+1)-1)/A000265(2*(n+1))`
-/

namespace A171977.P1286143190992283506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (2 * (n + 1) + 1) - 1 : ℚ) / (A000265 (2 * (n + 1)) : ℚ)

end

end A171977.P1286143190992283506

namespace A171977

/-- `(A000265(2*(n+1)+1)-1)/A000265(2*(n+1))` -/
def P1286143190992283506.Spec : Prop :=
  ∀ n, P1286143190992283506.a n = (A171977 (n + 1) : ℚ)

end A171977

/-! ## A171977.P9331605995762803221

`A046161(n+1)/A046161(n)`
-/

namespace A171977.P9331605995762803221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046161 (n + 1) : ℚ) / (A046161 n : ℚ)

end

end A171977.P9331605995762803221

namespace A171977

/-- `A046161(n+1)/A046161(n)` -/
def P9331605995762803221.Spec : Prop :=
  ∀ n, P9331605995762803221.a n = (A171977 (n + 1) : ℚ)

end A171977

/-! ## A171977.P9900823073638817617

`xor(n, n+1)+1`
-/

namespace A171977.P9900823073638817617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

end

end A171977.P9900823073638817617

namespace A171977

/-- `xor(n, n+1)+1` -/
def P9900823073638817617.Spec : Prop :=
  ∀ n, (P9900823073638817617.a n : ℤ) = A171977 (n + 1)

end A171977

/-! ## A171977.P16096908426142269217

`∑[2*Δ[and(n, -n)]]`
-/

namespace A171977.P16096908426142269217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171977.P16096908426142269217

namespace A171977

/-- `∑[2*Δ[and(n, -n)]]` -/
def P16096908426142269217.Spec : Prop :=
  ∀ n, P16096908426142269217.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P14006740114660018568

`2*(or(n, n+1)-n)`
-/

namespace A171977.P14006740114660018568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A171977.P14006740114660018568

namespace A171977

/-- `2*(or(n, n+1)-n)` -/
def P14006740114660018568.Spec : Prop :=
  ∀ n, P14006740114660018568.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P16129978546611488746

`2*and(n+1, -(n+1))`
-/

namespace A171977.P16129978546611488746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A171977.P16129978546611488746

namespace A171977

/-- `2*and(n+1, -(n+1))` -/
def P16129978546611488746.Spec : Prop :=
  ∀ n, P16129978546611488746.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P16130146892003733997

`lcm(2, and(n, -(n+2)))+2`
-/

namespace A171977.P16130146892003733997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 2

end

end A171977.P16130146892003733997

namespace A171977

/-- `lcm(2, and(n, -(n+2)))+2` -/
def P16130146892003733997.Spec : Prop :=
  ∀ n, (P16130146892003733997.a n : ℤ) = A171977 (n + 1)

end A171977

/-! ## A171977.P11511128379606019347

`abs(xor(n, n-2*n-2))`
-/

namespace A171977.P11511128379606019347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - (2 * n : ℤ) - 2)|

end

end A171977.P11511128379606019347

namespace A171977

/-- `abs(xor(n, n-2*n-2))` -/
def P11511128379606019347.Spec : Prop :=
  ∀ n, P11511128379606019347.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P1636289237664844001

`-xor(n, n-2*n-2)`
-/

namespace A171977.P1636289237664844001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((n : ℤ) - (2 * n : ℤ) - 2)

end

end A171977.P1636289237664844001

namespace A171977

/-- `-xor(n, n-2*n-2)` -/
def P1636289237664844001.Spec : Prop :=
  ∀ n, P1636289237664844001.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P9821394498304255700

`and(n+2+n, Δ[-n²])`
-/

namespace A171977.P9821394498304255700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 + n : ℤ) (f1 (n + 1) - f1 n)

end

end A171977.P9821394498304255700

namespace A171977

/-- `and(n+2+n, Δ[-n²])` -/
def P9821394498304255700.Spec : Prop :=
  ∀ n, P9821394498304255700.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P1090756653268017553

`2*gcd(n+1, (3-n)^10)`
-/

namespace A171977.P1090756653268017553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)

end

end A171977.P1090756653268017553

namespace A171977

/-- `2*gcd(n+1, (3-n)^10)` -/
def P1090756653268017553.Spec : Prop :=
  ∀ n, (P1090756653268017553.a n : ℤ) = A171977 (n + 1)

end A171977

/-! ## A171977.P12678281219216414672

`2*(1-and(n, n+1)+n)`
-/

namespace A171977.P12678281219216414672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ))

end

end A171977.P12678281219216414672

namespace A171977

/-- `2*(1-and(n, n+1)+n)` -/
def P12678281219216414672.Spec : Prop :=
  ∀ n, P12678281219216414672.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P13532845453120468072

`abs(2*or(n+1, -(n+1)))`
-/

namespace A171977.P13532845453120468072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))|

end

end A171977.P13532845453120468072

namespace A171977

/-- `abs(2*or(n+1, -(n+1)))` -/
def P13532845453120468072.Spec : Prop :=
  ∀ n, P13532845453120468072.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P13366328387834860253

`-(2*or(n+1, -(n+1)))`
-/

namespace A171977.P13366328387834860253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A171977.P13366328387834860253

namespace A171977

/-- `-(2*or(n+1, -(n+1)))` -/
def P13366328387834860253.Spec : Prop :=
  ∀ n, P13366328387834860253.a n = A171977 (n + 1)

end A171977

/-! ## A171977.P1527338597092706334

`gcd(2*(n+1), and(n, n+1))`
-/

namespace A171977.P1527338597092706334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1)) (Nat.land n (n + 1))

end

end A171977.P1527338597092706334

namespace A171977

/-- `gcd(2*(n+1), and(n, n+1))` -/
def P1527338597092706334.Spec : Prop :=
  ∀ n, (P1527338597092706334.a n : ℤ) = A171977 (n + 1)

end A171977

/-!
# A171979: Number of partitions of n such that smaller parts do not occur more frequently than greater parts.

The programs for A171979, there is no canonical definition to state claims against.
-/

/-! ## A171979.P2410201151573094044

`A000041(n)-A240302(n)`
-/

namespace A171979.P2410201151573094044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240302 n

end

end A171979.P2410201151573094044

/-! ## A171979.P2270685483105816170

`∑[A002865(n)]-A240302(n)`
-/

namespace A171979.P2270685483105816170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240302 n

end

end A171979.P2270685483105816170

/-! ## A171979.P10698978011485685394

`A000065(n)+1-A240302(n)`
-/

namespace A171979.P10698978011485685394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A240302 n)

end

end A171979.P10698978011485685394

/-! ## A171979.P9408430936366257959

`A035363(2*n)-A240302(n)`
-/

namespace A171979.P9408430936366257959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A240302 n

end

end A171979.P9408430936366257959

/-! ## A171979.P7815240813941974936

`A119620(2*n)-A240302(n)`
-/

namespace A171979.P7815240813941974936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A240302 n

end

end A171979.P7815240813941974936

/-! ## A171979.P8512777659754389118

`A299473(n)/3-A240302(n)`
-/

namespace A171979.P8512777659754389118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 n : ℚ) / 3 - (A240302 n : ℚ)

end

end A171979.P8512777659754389118

/-! ## A171979.P9981957889297061520

`A133041(n)-(A240302(n)+n)`
-/

namespace A171979.P9981957889297061520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A240302 n + (n : ℤ))

end

end A171979.P9981957889297061520

/-! ## A171979.P940183512616362121

`A035444(A008586(n))-A240302(n)`
-/

namespace A171979.P940183512616362121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A240302 n

end

end A171979.P940183512616362121

/-! ## A171979.P18185383478429328555

`A163295(n+1)-(A240302(n)+A029837(n+1))`
-/

namespace A171979.P18185383478429328555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163295 (n + 1) - (A240302 n + A029837 (n + 1))

end

end A171979.P18185383478429328555

/-! ## A171979.P15598329122910342826

`A054225(A000217(n))-A240302(n)`
-/

namespace A171979.P15598329122910342826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 n).toNat - A240302 n

end

end A171979.P15598329122910342826

/-!
# A171982: Beatty sequence for sqrt(11).

The programs for A171982, the canonical program `A171982.P14657004276324855749` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171982 has offset 1).

The definition of A171982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171982.P14657004276324855749

`floor((n+1)*sqrt(11))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171982

/-- `floor((n+1)*sqrt(11))` -/
def P14657004276324855749.Spec : Prop :=
  ∀ n, P14657004276324855749.a n = A171982 (n + 1)

theorem P14657004276324855749.correct : P14657004276324855749.Spec := by
  intro n
  simp only [A171982, Nat.add_sub_cancel]

end A171982

/-! ## A171982.P763860437759672649

`A000196(11*(n+1)²)`
-/

namespace A171982.P763860437759672649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (11 * (n + 1) ^ 2)

end

end A171982.P763860437759672649

namespace A171982

/-- `A000196(11*(n+1)²)` -/
def P763860437759672649.Spec : Prop :=
  ∀ n, P763860437759672649.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P16072071124629597356

`record[floor(abs(1-n)*sqrt(11))]`
-/

namespace A171982.P16072071124629597356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) * Real.sqrt (11 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171982.P16072071124629597356

namespace A171982

/-- `record[floor(abs(1-n)*sqrt(11))]` -/
def P16072071124629597356.Spec : Prop :=
  ∀ n, P16072071124629597356.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P16556627720231374878

`A198266(n+1)-1`
-/

namespace A171982.P16556627720231374878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 (n + 1) - 1

end

end A171982.P16556627720231374878

namespace A171982

/-- `A198266(n+1)-1` -/
def P16556627720231374878.Spec : Prop :=
  ∀ n, P16556627720231374878.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P8912842271343437674

`Δ[∑[A198266(n)]-n]`
-/

namespace A171982.P8912842271343437674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171982.P8912842271343437674

namespace A171982

/-- `Δ[∑[A198266(n)]-n]` -/
def P8912842271343437674.Spec : Prop :=
  ∀ n, P8912842271343437674.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P14764915465733615189

`ceil(sqrt((n+1)*(A017509(n)+1)))-1`
-/

namespace A171982.P14764915465733615189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℤ) * (A017509 n + 1) : ℝ)⌉ - 1

end

end A171982.P14764915465733615189

namespace A171982

/-- `ceil(sqrt((n+1)*(A017509(n)+1)))-1` -/
def P14764915465733615189.Spec : Prop :=
  ∀ n, P14764915465733615189.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P2805018579419015032

`ceil(sqrt(sin(A136521(n))+11*(n+1)²))-1`
-/

namespace A171982.P2805018579419015032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sin (A136521 n : ℝ) + (11 * (n + 1) ^ 2 : ℝ))⌉ - 1

end

end A171982.P2805018579419015032

namespace A171982

/-- `ceil(sqrt(sin(A136521(n))+11*(n+1)²))-1` -/
def P2805018579419015032.Spec : Prop :=
  ∀ n, P2805018579419015032.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P8454975290489578879

`A023443(A198266(n+1))`
-/

namespace A171982.P8454975290489578879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198266 (n + 1)).toNat

end

end A171982.P8454975290489578879

namespace A171982

/-- `A023443(A198266(n+1))` -/
def P8454975290489578879.Spec : Prop :=
  ∀ n, P8454975290489578879.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P1041082845113422088

`A110654(A198266(n+1)+A198266(n)+1)`
-/

namespace A171982.P1041082845113422088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A198266 (n + 1) + (A198266 n + 1)).toNat

end

end A171982.P1041082845113422088

namespace A171982

/-- `A110654(A198266(n+1)+A198266(n)+1)` -/
def P1041082845113422088.Spec : Prop :=
  ∀ n, P1041082845113422088.a n = A171982 (n + 1)

end A171982

/-! ## A171982.P11557057258880718004

`A202307((n+1)²)`
-/

namespace A171982.P11557057258880718004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202307 ((n + 1) ^ 2)

end

end A171982.P11557057258880718004

namespace A171982

/-- `A202307((n+1)²)` -/
def P11557057258880718004.Spec : Prop :=
  ∀ n, P11557057258880718004.a n = A171982 (n + 1)

end A171982

/-!
# A171983: Beatty sequence for sqrt(13).

The programs for A171983, the canonical program `A171983.P4572171673499774529` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171983 has offset 1).

The definition of A171983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171983.P4572171673499774529

`floor((n+1)*sqrt(13))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171983

/-- `floor((n+1)*sqrt(13))` -/
def P4572171673499774529.Spec : Prop :=
  ∀ n, P4572171673499774529.a n = A171983 (n + 1)

theorem P4572171673499774529.correct : P4572171673499774529.Spec := by
  intro n
  simp only [A171983, Nat.add_sub_cancel]

end A171983

/-! ## A171983.P7497129633844098327

`A198270(n+1)-1`
-/

namespace A171983.P7497129633844098327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198270 (n + 1) - 1

end

end A171983.P7497129633844098327

namespace A171983

/-- `A198270(n+1)-1` -/
def P7497129633844098327.Spec : Prop :=
  ∀ n, P7497129633844098327.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P11287588157229084039

`Δ[∑[A198270(n)]-n]`
-/

namespace A171983.P11287588157229084039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171983.P11287588157229084039

namespace A171983

/-- `Δ[∑[A198270(n)]-n]` -/
def P11287588157229084039.Spec : Prop :=
  ∀ n, P11287588157229084039.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P1067049857868316777

`A184480(2*(n+1))+1+n`
-/

namespace A171983.P1067049857868316777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (2 * (n + 1)) + 1 + (n : ℤ)

end

end A171983.P1067049857868316777

namespace A171983

/-- `A184480(2*(n+1))+1+n` -/
def P1067049857868316777.Spec : Prop :=
  ∀ n, P1067049857868316777.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P16430601812042510410

`A001478(2*n+1)+A080081(2*(n+1))+A001478(n+2)`
-/

namespace A171983.P16430601812042510410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * n + 1) + (A080081 (2 * (n + 1)) + A001478 (n + 2))

end

end A171983.P16430601812042510410

namespace A171983

/-- `A001478(2*n+1)+A080081(2*(n+1))+A001478(n+2)` -/
def P16430601812042510410.Spec : Prop :=
  ∀ n, P16430601812042510410.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P13202272845624755767

`A284676(2*n+3)-1+n`
-/

namespace A171983.P13202272845624755767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (2 * n + 3) - 1 + (n : ℤ)

end

end A171983.P13202272845624755767

namespace A171983

/-- `A284676(2*n+3)-1+n` -/
def P13202272845624755767.Spec : Prop :=
  ∀ n, P13202272845624755767.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P2326226847361900805

`A284679(2*n+3)-1+n`
-/

namespace A171983.P2326226847361900805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (2 * n + 3) - 1 + (n : ℤ)

end

end A171983.P2326226847361900805

namespace A171983

/-- `A284679(2*n+3)-1+n` -/
def P2326226847361900805.Spec : Prop :=
  ∀ n, P2326226847361900805.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P1574628941056848287

`∑[Δ[A284676(2*n+1)]+1]`
-/

namespace A171983.P1574628941056848287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171983.P1574628941056848287

namespace A171983

/-- `∑[Δ[A284676(2*n+1)]+1]` -/
def P1574628941056848287.Spec : Prop :=
  ∀ n, P1574628941056848287.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P17502159270616591993

`A284676(n+3+n)+n-1`
-/

namespace A171983.P17502159270616591993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 3 + n) + ((n : ℤ) - 1)

end

end A171983.P17502159270616591993

namespace A171983

/-- `A284676(n+3+n)+n-1` -/
def P17502159270616591993.Spec : Prop :=
  ∀ n, P17502159270616591993.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P17208410394863374181

`A284679(n+3+n)+n-1`
-/

namespace A171983.P17208410394863374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 3 + n) + ((n : ℤ) - 1)

end

end A171983.P17208410394863374181

namespace A171983

/-- `A284679(n+3+n)+n-1` -/
def P17208410394863374181.Spec : Prop :=
  ∀ n, P17208410394863374181.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P223251731503774528

`∑[A284676(Δ[A284676(2*n+1)])]`
-/

namespace A171983.P223251731503774528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171983.P223251731503774528

namespace A171983

/-- `∑[A284676(Δ[A284676(2*n+1)])]` -/
def P223251731503774528.Spec : Prop :=
  ∀ n, P223251731503774528.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P1771567086341559529

`A023443(A198270(n+1))`
-/

namespace A171983.P1771567086341559529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198270 (n + 1)).toNat

end

end A171983.P1771567086341559529

namespace A171983

/-- `A023443(A198270(n+1))` -/
def P1771567086341559529.Spec : Prop :=
  ∀ n, P1771567086341559529.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P10095503125019698664

`A202308((n+1)²)`
-/

namespace A171983.P10095503125019698664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 ((n + 1) ^ 2)

end

end A171983.P10095503125019698664

namespace A171983

/-- `A202308((n+1)²)` -/
def P10095503125019698664.Spec : Prop :=
  ∀ n, P10095503125019698664.a n = A171983 (n + 1)

end A171983

/-! ## A171983.P2422826828914586258

`record[A202308((1-n)²)]`
-/

namespace A171983.P2422826828914586258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171983.P2422826828914586258

namespace A171983

/-- `record[A202308((1-n)²)]` -/
def P2422826828914586258.Spec : Prop :=
  ∀ n, P2422826828914586258.a n = A171983 (n + 1)

end A171983

/-!
# A171984: Beatty sequence for sqrt(17).

The programs for A171984, the canonical program `A171984.P10955942431744988443` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171984 has offset 1).

The definition of A171984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171984.P10955942431744988443

`floor((n+1)*sqrt(17))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171984

/-- `floor((n+1)*sqrt(17))` -/
def P10955942431744988443.Spec : Prop :=
  ∀ n, P10955942431744988443.a n = A171984 (n + 1)

theorem P10955942431744988443.correct : P10955942431744988443.Spec := by
  intro n
  simp only [A171984, Nat.add_sub_cancel]

end A171984

/-! ## A171984.P12779374739165324574

`A198395(n+1)-1`
-/

namespace A171984.P12779374739165324574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198395 (n + 1) - 1

end

end A171984.P12779374739165324574

namespace A171984

/-- `A198395(n+1)-1` -/
def P12779374739165324574.Spec : Prop :=
  ∀ n, P12779374739165324574.a n = A171984 (n + 1)

end A171984

/-! ## A171984.P4315194576343778586

`A028250(2*(n+1))-(n+1)`
-/

namespace A171984.P4315194576343778586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028250 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A171984.P4315194576343778586

namespace A171984

/-- `A028250(2*(n+1))-(n+1)` -/
def P4315194576343778586.Spec : Prop :=
  ∀ n, P4315194576343778586.a n = A171984 (n + 1)

end A171984

/-! ## A171984.P14224374416992327353

`A023443(A198395(n+1))`
-/

namespace A171984.P14224374416992327353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198395 (n + 1)).toNat

end

end A171984.P14224374416992327353

namespace A171984

/-- `A023443(A198395(n+1))` -/
def P14224374416992327353.Spec : Prop :=
  ∀ n, P14224374416992327353.a n = A171984 (n + 1)

end A171984

/-! ## A171984.P13492663097479377254

`A008620(A198395(2*n+1)+A198395(n+1))`
-/

namespace A171984.P13492663097479377254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A198395 (2 * n + 1) + A198395 (n + 1)).toNat

end

end A171984.P13492663097479377254

namespace A171984

/-- `A008620(A198395(2*n+1)+A198395(n+1))` -/
def P13492663097479377254.Spec : Prop :=
  ∀ n, P13492663097479377254.a n = A171984 (n + 1)

end A171984

/-!
# A171985: Number of partitions of 2*n-1 into parts not greater than n.

The programs for A171985, there is no canonical definition to state claims against.
-/

/-! ## A171985.P18235329074942040625

`A110618(2*n+1)+A000041(n)`
-/

namespace A171985.P18235329074942040625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110618 (2 * n + 1) + A000041 n

end

end A171985.P18235329074942040625

/-! ## A171985.P10833450105743800108

`A210249(2*n+1)+A000041(n)`
-/

namespace A171985.P10833450105743800108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210249 (2 * n + 1) + A000041 n

end

end A171985.P10833450105743800108

/-! ## A171985.P14190217691634923019

`A110618(2*n)+A002865(2*n+1)`
-/

namespace A171985.P14190217691634923019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110618 (2 * n) + A002865 (2 * n + 1)

end

end A171985.P14190217691634923019

/-! ## A171985.P3318714329487242569

`A110618(2*n+1)+A035363(2*n)`
-/

namespace A171985.P3318714329487242569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110618 (2 * n + 1) + A035363 (2 * n)

end

end A171985.P3318714329487242569

/-! ## A171985.P16588609297685008740

`A210249(2*n+1)+A035363(2*n)`
-/

namespace A171985.P16588609297685008740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210249 (2 * n + 1) + A035363 (2 * n)

end

end A171985.P16588609297685008740

/-! ## A171985.P1965999124746590258

`A000041(2*n+1)-∑[∑[A085811(n+2)]]`
-/

namespace A171985.P1965999124746590258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171985.P1965999124746590258

/-! ## A171985.P5098914643813730393

`∑[A027336(2*n+1)-∑[A085811(n+2)]]`
-/

namespace A171985.P5098914643813730393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171985.P5098914643813730393

/-! ## A171985.P9424792345745830336

`A147878(n+1)+A000041(n)-A147877(n+1)`
-/

namespace A171985.P9424792345745830336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 1) + (A000041 n - A147877 (n + 1))

end

end A171985.P9424792345745830336

/-! ## A171985.P2809597846540684274

`A000041(2*n+1)+A000041(n+1)-A120452(n+2)`
-/

namespace A171985.P2809597846540684274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) + (A000041 (n + 1) - A120452 (n + 2))

end

end A171985.P2809597846540684274

/-! ## A171985.P8249048343889289841

`A000041(2*n+1)+A035363(2*n)-A025065(2*n)`
-/

namespace A171985.P8249048343889289841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) + (A035363 (2 * n) - A025065 (2 * n))

end

end A171985.P8249048343889289841

/-! ## A171985.P14621751083151139108

`A000041(2*n+1)+A225751(2*n)-A000070(2*n)`
-/

namespace A171985.P14621751083151139108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) + (A225751 (2 * n) - A000070 (2 * n))

end

end A171985.P14621751083151139108

/-! ## A171985.P15980855636791102313

`A000041(2*(n+1)-1)-A000070(n+1)+A000041(n+1)+A000041(n)`
-/

namespace A171985.P15980855636791102313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1) - 1) - A000070 (n + 1) + A000041 (n + 1) + A000041 n

end

end A171985.P15980855636791102313

/-! ## A171985.P15760172697202142334

`A000041(2*n+1)+A100824(2*n)-A100824(2*n+1)`
-/

namespace A171985.P15760172697202142334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) + (A100824 (2 * n) - A100824 (2 * n + 1))

end

end A171985.P15760172697202142334

/-! ## A171985.P11172226448775714633

`A086543(2*n+1)+A100824(2*n)-A100824(2*n+1)`
-/

namespace A171985.P11172226448775714633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * n + 1) + (A100824 (2 * n) - A100824 (2 * n + 1))

end

end A171985.P11172226448775714633

/-!
# A171987: Best explained by example: in the binary representation, start with 10000, then add 1 and push the 1 to the left: 10001, 10010, 10100, 11000, then add another one, 11001, 11010, 11100, etc: 11101, 11110, 11111. Then proceed with the next length of numbers: 100000, etc.

The programs for A171987, there is no canonical definition to state claims against.
-/

/-! ## A171987.P7473733195913500713

`∪[A000079(n), A238246(n+1)]`
-/

namespace A171987.P7473733195913500713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171987.P7473733195913500713

/-! ## A171987.P17859568717045792016

`∪[A029746(n), A238246(n+1)]`
-/

namespace A171987.P17859568717045792016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171987.P17859568717045792016

/-! ## A171987.P9070956982171611537

`∪[A029748(n), A238246(n+1)]`
-/

namespace A171987.P9070956982171611537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171987.P9070956982171611537

/-! ## A171987.P5727427423791918412

`∪[A029749(n), A238246(n+1)]`
-/

namespace A171987.P5727427423791918412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171987.P5727427423791918412

/-! ## A171987.P6730316574663651780

`∪[A097110(n), A238246(n+1)]`
-/

namespace A171987.P6730316574663651780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171987.P6730316574663651780

/-! ## A171987.P7779186496299986379

`∪[A133464(n), A238246(n+1)]`
-/

namespace A171987.P7779186496299986379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171987.P7779186496299986379

/-! ## A171987.P2512694598100892137

`record[A209862(n+1)]`
-/

namespace A171987.P2512694598100892137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171987.P2512694598100892137

/-! ## A171987.P10714281174343515155

`record[A379770(n)]`
-/

namespace A171987.P10714281174343515155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171987.P10714281174343515155

/-! ## A171987.P18065737616420774737

`eq[1, A036987(A087734(n))]+1`
-/

namespace A171987.P18065737616420774737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A087734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171987.P18065737616420774737

/-! ## A171987.P7359398723113018368

`eq[A006257(A331856(n)), A331856(n)]+1`
-/

namespace A171987.P7359398723113018368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A331856 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171987.P7359398723113018368

/-! ## A171987.P12218056216989788376

`eq[1, A340375(A322018(n))]+1`
-/

namespace A171987.P12218056216989788376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (A322018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171987.P12218056216989788376

/-! ## A171987.P2107840116355279769

`eq[dr(A323503(n)), A323503(n)]+1`
-/

namespace A171987.P2107840116355279769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A323503 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171987.P2107840116355279769

/-! ## A171987.P5878999553896425528

`eq[A072219(n+1), A072219(A072219(n+1))]+1`
-/

namespace A171987.P5878999553896425528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A072219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171987.P5878999553896425528

/-! ## A171987.P5337631767391850994

`record[A080100(n%A080100(n))+n]`
-/

namespace A171987.P5337631767391850994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (Int.tmod (n : ℤ) (A080100 n)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171987.P5337631767391850994

/-! ## A171987.P48116446508406376

`lt[A087116(n), 2]+1`
-/

namespace A171987.P48116446508406376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171987.P48116446508406376

/-! ## A171987.P8243686779255425510

`lt[A005811(n), 4]+1`
-/

namespace A171987.P8243686779255425510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171987.P8243686779255425510

/-! ## A171987.P11207501388453047287

`lt[A136004(n), 8]+1`
-/

namespace A171987.P11207501388453047287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171987.P11207501388453047287

/-! ## A171987.P1253831343117468787

`lt[A037800(n), and(1, n)+1]+1`
-/

namespace A171987.P1253831343117468787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171987.P1253831343117468787

/-! ## A171987.P16829918399305849718

`eq[A023416(n), A087117(n)]+1`
-/

namespace A171987.P16829918399305849718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171987.P16829918399305849718

/-! ## A171987.P1519077368864709448

`eq[A005811(n), A246960(n)]+1`
-/

namespace A171987.P1519077368864709448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171987.P1519077368864709448

/-!
# A171989: a(n) = A000010(A006862(n)).

The programs for A171989, the canonical program `A171989.P6361559175671123136` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171989 has offset 0).

The definition of A171989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171989.P6361559175671123136

`A000010(A006862(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171989

/-- `A000010(A006862(n))` -/
def P6361559175671123136.Spec : Prop :=
  ∀ n, P6361559175671123136.a n = A171989 n

theorem P6361559175671123136.correct : P6361559175671123136.Spec := by
  intro n
  simp only [A171989]

end A171989

/-! ## A171989.P15702160308515873747

`∏{p}[A006862(n), #-1]`
-/

namespace A171989.P15702160308515873747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A171989.P15702160308515873747

namespace A171989

/-- `∏{p}[A006862(n), #-1]` -/
def P15702160308515873747.Spec : Prop :=
  ∀ n, P15702160308515873747.a n = A171989 n

end A171989

/-! ## A171989.P10023372479041418788

`∏{p}[1+A002110(n), #-1]`
-/

namespace A171989.P10023372479041418788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A171989.P10023372479041418788

namespace A171989

/-- `∏{p}[1+A002110(n), #-1]` -/
def P10023372479041418788.Spec : Prop :=
  ∀ n, P10023372479041418788.a n = A171989 n

end A171989

/-! ## A171989.P9911044041276078284

`record[∏{p}[A108951(n+1)+1, #-1]]`
-/

namespace A171989.P9911044041276078284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171989.P9911044041276078284

namespace A171989

/-- `record[∏{p}[A108951(n+1)+1, #-1]]` -/
def P9911044041276078284.Spec : Prop :=
  ∀ n, P9911044041276078284.a n = A171989 n

end A171989

/-!
# A171991: G.f. satisfies: A(x) = x + A(A(x))^2 + A(A(x))^4.

The programs for A171991, there is no canonical definition to state claims against.
-/

/-! ## A171991.P11677129842962114801

`A381662(A064063(n))`
-/

namespace A171991.P11677129842962114801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A064063 n).toNat

end

end A171991.P11677129842962114801

/-! ## A171991.P3706169258812643538

`A064063(n)+A018843(n²+3)`
-/

namespace A171991.P3706169258812643538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064063 n + A018843 (n ^ 2 + 3)

end

end A171991.P3706169258812643538

/-!
# A171992: G.f. satisfies: A(x) = x + A(A(x))^2 - A(A(x))^4.

The programs for A171992, there is no canonical definition to state claims against.
-/

/-! ## A171992.P9515293071081064147

`A008620(A137970(n)+A111530(n))`
-/

namespace A171992.P9515293071081064147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A137970 n + A111530 n).toNat

end

end A171992.P9515293071081064147

/-! ## A171992.P4095917918718129317

`A008620(A001003(n)*A018175(n))`
-/

namespace A171992.P4095917918718129317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A001003 n * A018175 n).toNat

end

end A171992.P4095917918718129317

/-!
# A171993: Numbers that are neither prime nor multiples of 3.

The programs for A171993, the canonical program `A171993.P14639341102390766061` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171993 has offset 1).

The definition of A171993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171993.P14639341102390766061

`comp[∪[p?[xor(1, n)+1], 3*n]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171993

/-- `comp[∪[p?[xor(1, n)+1], 3*n]]` -/
def P14639341102390766061.Spec : Prop :=
  ∀ n, (P14639341102390766061.a n : ℤ) = A171993 (n + 1)

theorem P14639341102390766061.correct : P14639341102390766061.Spec := by
  intro n
  simp only [A171993, Nat.add_sub_cancel]

end A171993

/-! ## A171993.P13371017994258720361

`comp[∪[Δ[A007504(n)], 3*n]]`
-/

namespace A171993.P13371017994258720361
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171993.P13371017994258720361

namespace A171993

/-- `comp[∪[Δ[A007504(n)], 3*n]]` -/
def P13371017994258720361.Spec : Prop :=
  ∀ n, (P13371017994258720361.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P13252563271945741271

`record[lcm(3, A018252(n+1))/3]`
-/

namespace A171993.P13252563271945741271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A018252 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171993.P13252563271945741271

namespace A171993

/-- `record[lcm(3, A018252(n+1))/3]` -/
def P13252563271945741271.Spec : Prop :=
  ∀ n, P13252563271945741271.a n = (A171993 (n + 1) : ℚ)

end A171993

/-! ## A171993.P12865100245436783608

`comp[∪[3*n, A000040(n+1)]]`
-/

namespace A171993.P12865100245436783608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171993.P12865100245436783608

namespace A171993

/-- `comp[∪[3*n, A000040(n+1)]]` -/
def P12865100245436783608.Spec : Prop :=
  ∀ n, (P12865100245436783608.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P8059279100027690230

`comp[∪[3*n, record[A006530(n+2)]]]`
-/

namespace A171993.P8059279100027690230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171993.P8059279100027690230

namespace A171993

/-- `comp[∪[3*n, record[A006530(n+2)]]]` -/
def P8059279100027690230.Spec : Prop :=
  ∀ n, (P8059279100027690230.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P16166398107330605446

`filter[A001651(n+1), A005171(#)]`
-/

namespace A171993.P16166398107330605446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A171993.P16166398107330605446

namespace A171993

/-- `filter[A001651(n+1), A005171(#)]` -/
def P16166398107330605446.Spec : Prop :=
  ∀ n, P16166398107330605446.a n = A171993 (n + 1)

end A171993

/-! ## A171993.P4709021625008654177

`filter[A097482(n+2), A005171(#)]`
-/

namespace A171993.P4709021625008654177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A171993.P4709021625008654177

namespace A171993

/-- `filter[A097482(n+2), A005171(#)]` -/
def P4709021625008654177.Spec : Prop :=
  ∀ n, P4709021625008654177.a n = A171993 (n + 1)

end A171993

/-! ## A171993.P4544403093607362730

`lt[A055671(n), n%3]`
-/

namespace A171993.P4544403093607362730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171993.P4544403093607362730

namespace A171993

/-- `lt[A055671(n), n%3]` -/
def P4544403093607362730.Spec : Prop :=
  ∀ n, (P4544403093607362730.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P15417743969824918115

`lt[A055672(n), n²%3]`
-/

namespace A171993.P15417743969824918115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171993.P15417743969824918115

namespace A171993

/-- `lt[A055672(n), n²%3]` -/
def P15417743969824918115.Spec : Prop :=
  ∀ n, (P15417743969824918115.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P16081898447670432444

`record[A191558(A008619(n)+n)]`
-/

namespace A171993.P16081898447670432444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A008619 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171993.P16081898447670432444

namespace A171993

/-- `record[A191558(A008619(n)+n)]` -/
def P16081898447670432444.Spec : Prop :=
  ∀ n, P16081898447670432444.a n = A171993 (n + 1)

end A171993

/-! ## A171993.P18352103962351475106

`record[A288469(A008619(n)+n)]`
-/

namespace A171993.P18352103962351475106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A008619 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171993.P18352103962351475106

namespace A171993

/-- `record[A288469(A008619(n)+n)]` -/
def P18352103962351475106.Spec : Prop :=
  ∀ n, P18352103962351475106.a n = A171993 (n + 1)

end A171993

/-! ## A171993.P14638787452977712663

`eq[A035377(n), A055671(n)]`
-/

namespace A171993.P14638787452977712663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P14638787452977712663

namespace A171993

/-- `eq[A035377(n), A055671(n)]` -/
def P14638787452977712663.Spec : Prop :=
  ∀ n, (P14638787452977712663.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P10834396014308995478

`eq[A035377(n), A055672(n)]`
-/

namespace A171993.P10834396014308995478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P10834396014308995478

namespace A171993

/-- `eq[A035377(n), A055672(n)]` -/
def P10834396014308995478.Spec : Prop :=
  ∀ n, (P10834396014308995478.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P11229830906667069558

`eq[A055671(n), A079807(n)]`
-/

namespace A171993.P11229830906667069558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P11229830906667069558

namespace A171993

/-- `eq[A055671(n), A079807(n)]` -/
def P11229830906667069558.Spec : Prop :=
  ∀ n, (P11229830906667069558.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P8766807194705041995

`eq[A055672(n), A079807(n)]`
-/

namespace A171993.P8766807194705041995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P8766807194705041995

namespace A171993

/-- `eq[A055672(n), A079807(n)]` -/
def P8766807194705041995.Spec : Prop :=
  ∀ n, (P8766807194705041995.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P3007456673084569455

`eq[A055671(n), A079978(n)]`
-/

namespace A171993.P3007456673084569455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P3007456673084569455

namespace A171993

/-- `eq[A055671(n), A079978(n)]` -/
def P3007456673084569455.Spec : Prop :=
  ∀ n, (P3007456673084569455.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P5850705752602905352

`eq[A055672(n), A079978(n)]`
-/

namespace A171993.P5850705752602905352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P5850705752602905352

namespace A171993

/-- `eq[A055672(n), A079978(n)]` -/
def P5850705752602905352.Spec : Prop :=
  ∀ n, (P5850705752602905352.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P12185099483242899645

`eq[A103164(n), A257174(n)]`
-/

namespace A171993.P12185099483242899645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P12185099483242899645

namespace A171993

/-- `eq[A103164(n), A257174(n)]` -/
def P12185099483242899645.Spec : Prop :=
  ∀ n, (P12185099483242899645.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P10452922949319482577

`eq[n, A257174(A113638(n))]`
-/

namespace A171993.P10452922949319482577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A113638 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171993.P10452922949319482577

namespace A171993

/-- `eq[n, A257174(A113638(n))]` -/
def P10452922949319482577.Spec : Prop :=
  ∀ n, (P10452922949319482577.a n : ℤ) = A171993 (n + 1)

end A171993

/-! ## A171993.P14308344911631097392

`eq[A257174(n), A282462(n)]`
-/

namespace A171993.P14308344911631097392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171993.P14308344911631097392

namespace A171993

/-- `eq[A257174(n), A282462(n)]` -/
def P14308344911631097392.Spec : Prop :=
  ∀ n, (P14308344911631097392.a n : ℤ) = A171993 (n + 1)

end A171993

/-!
# A171994: Members of A171697 that have exactly three prime factors.

The programs for A171994, there is no canonical definition to state claims against.
-/

/-! ## A171994.P15633236375410496760

`filter[A099019(n+1), A359172(#)]`
-/

namespace A171994.P15633236375410496760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A171994.P15633236375410496760

/-! ## A171994.P5590582691432225379

`filter[A099019(n+1), A373836(#)]`
-/

namespace A171994.P5590582691432225379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A171994.P5590582691432225379

/-! ## A171994.P15207745364884360710

`filter[A110673(n+1), A373836(#)]`
-/

namespace A171994.P15207745364884360710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A171994.P15207745364884360710

/-! ## A171994.P10271462012750307342

`∩[A099019(n+1), A038513(n)]`
-/

namespace A171994.P10271462012750307342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171994.P10271462012750307342

/-! ## A171994.P17255951713196511962

`∩[A110673(n+1), A038513(n)]`
-/

namespace A171994.P17255951713196511962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171994.P17255951713196511962

/-!
# A171996: A(n,k,m) is the number of permutations of an n-set with k disjoint cycles of length less than or equal to m, called the (n,k)-th m-restrained Stirling numbers of the first kind, and denoted by mS_1(n,k). The sequence shows the case of m=3.

The programs for A171996, there is no canonical definition to state claims against.
-/

/-! ## A171996.P16705533245889413007

`A008275(n+1)%A046523(A235573(n+1))`
-/

namespace A171996.P16705533245889413007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008275 (n + 1)) (A046523 (A235573 (n + 1)).toNat)

end

end A171996.P16705533245889413007

/-! ## A171996.P18158741525189365845

`A008275(n+1)%A354904(A193722(n))`
-/

namespace A171996.P18158741525189365845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008275 (n + 1)) (A354904 (A193722 n).toNat)

end

end A171996.P18158741525189365845

/-!
# A171997: a(n) = a(n-1) + a(n-2) - floor(a(n-2)/2) - floor(a(n-5)/2); initial terms are 1, 1, 2, 3, 4.

The programs for A171997, the canonical program `A171997.P104786849774875429` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171997 has offset 1).

The definition of A171997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-floor(a(n-2)/2)-floor(a(n-5)/2)` (program `A171997.P104786849774875429`, by `A171997.P104786849774875429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171997.P104786849774875429

`a(n-1)+a(n-2)-floor(a(n-2)/2)-floor(a(n-5)/2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171997

/-- `a(n-1)+a(n-2)-floor(a(n-2)/2)-floor(a(n-5)/2)` -/
def P104786849774875429.Spec : Prop :=
  ∀ n, P104786849774875429.a n = A171997 (n + 1)

theorem P104786849774875429.correct : P104786849774875429.Spec := by
  intro n
  simp only [A171997, Nat.add_sub_cancel]

end A171997

/-! ## A171997.P7349743366378804055

`A000194(abs(2-A309266(n)))`
-/

namespace A171997.P7349743366378804055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 |2 - A309266 n|.toNat

end

end A171997.P7349743366378804055

namespace A171997

/-- `A000194(abs(2-A309266(n)))` -/
def P7349743366378804055.Spec : Prop :=
  ∀ n, P7349743366378804055.a n = A171997 (n + 1)

end A171997

/-! ## A171997.P6299613259343752169

`A000194(A309266(n)-A000194(n))`
-/

namespace A171997.P6299613259343752169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A309266 n - A000194 n).toNat

end

end A171997.P6299613259343752169

namespace A171997

/-- `A000194(A309266(n)-A000194(n))` -/
def P6299613259343752169.Spec : Prop :=
  ∀ n, P6299613259343752169.a n = A171997 (n + 1)

end A171997

/-! ## A171997.P8721996297194279843

`A000194(xor(A037213(n), A309266(n)))`
-/

namespace A171997.P8721996297194279843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor (A037213 n) (A309266 n)).toNat

end

end A171997.P8721996297194279843

namespace A171997

/-- `A000194(xor(A037213(n), A309266(n)))` -/
def P8721996297194279843.Spec : Prop :=
  ∀ n, P8721996297194279843.a n = A171997 (n + 1)

end A171997

/-! ## A171997.P8116673409752785027

`A387738(lt[A225481(3*n+2), A256416(2*n+1)])`
-/

namespace A171997.P8116673409752785027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225481 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256416 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A171997.P8116673409752785027

namespace A171997

/-- `A387738(lt[A225481(3*n+2), A256416(2*n+1)])` -/
def P8116673409752785027.Spec : Prop :=
  ∀ n, P8116673409752785027.a n = A171997 (n + 1)

end A171997

/-!
# A171999: Triangle of trinomial coefficients.

The programs for A171999, there is no canonical definition to state claims against.
-/

/-! ## A171999.P8982429832584097783

`A036038(lt[A063008(n), A359679(3*n)])`
-/

namespace A171999.P8982429832584097783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359679 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A171999.P8982429832584097783

/-! ## A171999.P2554612595337974359

`A036038(∑[A061704(A094373(n))])`
-/

namespace A171999.P2554612595337974359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A094373 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171999.P2554612595337974359

/-! ## A171999.P3011392783956319222

`A089868(A036038(A245028(n+1)))`
-/

namespace A171999.P3011392783956319222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A036038 (A245028 (n + 1)).toNat).toNat

end

end A171999.P3011392783956319222

/-! ## A171999.P2754215163321280011

`A036038(record[A109004(A134933(n+1))])`
-/

namespace A171999.P2754215163321280011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A134933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171999.P2754215163321280011

/-! ## A171999.P15536695252566589522

`A036038(A335808(n)+A187829(n+1))`
-/

namespace A171999.P15536695252566589522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (A335808 n + A187829 (n + 1)).toNat

end

end A171999.P15536695252566589522

