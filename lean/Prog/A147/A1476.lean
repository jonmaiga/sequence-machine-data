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
import Seq.B000.C018
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A147600: Expansion of 1/(1 - 3*x^2 + x^4).

The programs for A147600, the canonical program `A147600.P962159338261226401` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147600 has offset 0).

The definition of A147600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2+x^4))` (program `A147600.P962159338261226401`, by `A147600.P962159338261226401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147600.P962159338261226401

`ogf(1/(1-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147600

/-- `ogf(1/(1-3x^2+x^4))` -/
def P962159338261226401.Spec : Prop :=
  ∀ n, P962159338261226401.a n = A147600 n

theorem P962159338261226401.correct : P962159338261226401.Spec := by
  intro n
  simp only [A147600]

end A147600

/-! ## A147600.P10967673314170632263

`ceil(ϕ²*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A147600.P10967673314170632263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌉

end

end A147600.P10967673314170632263

namespace A147600

/-- `ceil(ϕ²*a(n-2))` -/
def P10967673314170632263.Spec : Prop :=
  ∀ n, P10967673314170632263.a n = A147600 n

end A147600

/-! ## A147600.P7774264613044659010

`round(ϕ²*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A147600.P7774264613044659010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 2) : ℝ))

end

end A147600.P7774264613044659010

namespace A147600

/-- `round(ϕ²*a(n-2))` -/
def P7774264613044659010.Spec : Prop :=
  ∀ n, P7774264613044659010.a n = A147600 n

end A147600

/-! ## A147600.P10711047184779805492

`ceil(a(n-2)/(2-ϕ))` with `a(0)=1, a(1)=0`
-/

namespace A147600.P10711047184779805492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈(a (n - 2) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A147600.P10711047184779805492

namespace A147600

/-- `ceil(a(n-2)/(2-ϕ))` -/
def P10711047184779805492.Spec : Prop :=
  ∀ n, P10711047184779805492.a n = A147600 n

end A147600

/-! ## A147600.P14146841668836695954

`round(a(n-2)/(2-ϕ))` with `a(0)=1, a(1)=0`
-/

namespace A147600.P14146841668836695954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) / (2 - Real.goldenRatio))

end

end A147600.P14146841668836695954

namespace A147600

/-- `round(a(n-2)/(2-ϕ))` -/
def P14146841668836695954.Spec : Prop :=
  ∀ n, P14146841668836695954.a n = A147600 n

end A147600

/-! ## A147600.P531500724530330571

`ceil(ϕ*ϕ*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A147600.P531500724530330571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 2) : ℝ))⌉

end

end A147600.P531500724530330571

namespace A147600

/-- `ceil(ϕ*ϕ*a(n-2))` -/
def P531500724530330571.Spec : Prop :=
  ∀ n, P531500724530330571.a n = A147600 n

end A147600

/-! ## A147600.P8943274408401961777

`round(ϕ*ϕ*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A147600.P8943274408401961777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 2) : ℝ)))

end

end A147600.P8943274408401961777

namespace A147600

/-- `round(ϕ*ϕ*a(n-2))` -/
def P8943274408401961777.Spec : Prop :=
  ∀ n, P8943274408401961777.a n = A147600 n

end A147600

/-! ## A147600.P17234127798612536491

`∑[a(n-1)+a(n-2)]+a(n-2)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A147600.P17234127798612536491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 2) - a (n - 1))

end

end A147600.P17234127798612536491

namespace A147600

/-- `∑[a(n-1)+a(n-2)]+a(n-2)-a(n-1)` -/
def P17234127798612536491.Spec : Prop :=
  ∀ n, P17234127798612536491.a n = A147600 n

end A147600

/-! ## A147600.P5090948858804956881

`A094966((n+1)*char[2*n])`
-/

namespace A147600.P5090948858804956881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 ((n + 1) * (if ∃ j, f1 j = n then 1 else 0))

end

end A147600.P5090948858804956881

namespace A147600

/-- `A094966((n+1)*char[2*n])` -/
def P5090948858804956881.Spec : Prop :=
  ∀ n, P5090948858804956881.a n = A147600 n

end A147600

/-! ## A147600.P15119765698281984529

`A000045((n+2)*char[2*n])`
-/

namespace A147600.P15119765698281984529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 2) * (if ∃ j, f1 j = n then 1 else 0))

end

end A147600.P15119765698281984529

namespace A147600

/-- `A000045((n+2)*char[2*n])` -/
def P15119765698281984529.Spec : Prop :=
  ∀ n, P15119765698281984529.a n = A147600 n

end A147600

/-! ## A147600.P17862556603526167520

`A094966(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A147600.P17862556603526167520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094966 (n + 1) - a (n - 1)

end

end A147600.P17862556603526167520

namespace A147600

/-- `A094966(n+1)-a(n-1)` -/
def P17862556603526167520.Spec : Prop :=
  ∀ n, P17862556603526167520.a n = A147600 n

end A147600

/-! ## A147600.P8337897035375986679

`floor(ϕ*(A000045(n+1)-a(n-1)))` with `a(0)=1`
-/

namespace A147600.P8337897035375986679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (A000045 (n + 1) - a (n - 1) : ℝ)⌋

end

end A147600.P8337897035375986679

namespace A147600

/-- `floor(ϕ*(A000045(n+1)-a(n-1)))` -/
def P8337897035375986679.Spec : Prop :=
  ∀ n, P8337897035375986679.a n = A147600 n

end A147600

/-! ## A147600.P16434665072115482726

`A000045(n+3-gcd(n-1, 2*n))-a(n-1)` with `a(0)=1`
-/

namespace A147600.P16434665072115482726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 3 - Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)) - a (n - 1)

end

end A147600.P16434665072115482726

namespace A147600

/-- `A000045(n+3-gcd(n-1, 2*n))-a(n-1)` -/
def P16434665072115482726.Spec : Prop :=
  ∀ n, P16434665072115482726.a n = A147600 n

end A147600

/-! ## A147600.P5468258109860087332

`A001906(A027656(n))`
-/

namespace A147600.P5468258109860087332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A027656 n).toNat

end

end A147600.P5468258109860087332

namespace A147600

/-- `A001906(A027656(n))` -/
def P5468258109860087332.Spec : Prop :=
  ∀ n, P5468258109860087332.a n = A147600 n

end A147600

/-! ## A147600.P15926711784920788700

`A360705(A141310(n))`
-/

namespace A147600.P15926711784920788700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360705 (A141310 n).toNat

end

end A147600.P15926711784920788700

namespace A147600

/-- `A360705(A141310(n))` -/
def P15926711784920788700.Spec : Prop :=
  ∀ n, P15926711784920788700.a n = A147600 n

end A147600

/-! ## A147600.P2974644734160782047

`A079977(A042964(n+1))`
-/

namespace A147600.P2974644734160782047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A042964 (n + 1)).toNat

end

end A147600.P2974644734160782047

namespace A147600

/-- `A079977(A042964(n+1))` -/
def P2974644734160782047.Spec : Prop :=
  ∀ n, P2974644734160782047.a n = A147600 n

end A147600

/-! ## A147600.P11919304829536721062

`A079977(A047578(n+1))`
-/

namespace A147600.P11919304829536721062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A047578 (n + 1)).toNat

end

end A147600.P11919304829536721062

namespace A147600

/-- `A079977(A047578(n+1))` -/
def P11919304829536721062.Spec : Prop :=
  ∀ n, P11919304829536721062.a n = A147600 n

end A147600

/-! ## A147600.P12574110715498411215

`A079977(A053438(n+1))`
-/

namespace A147600.P12574110715498411215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A053438 (n + 1)).toNat

end

end A147600.P12574110715498411215

namespace A147600

/-- `A079977(A053438(n+1))` -/
def P12574110715498411215.Spec : Prop :=
  ∀ n, P12574110715498411215.a n = A147600 n

end A147600

/-! ## A147600.P14910221939474530486

`A074331(A193356(n+1))`
-/

namespace A147600.P14910221939474530486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (A193356 (n + 1)).toNat

end

end A147600.P14910221939474530486

namespace A147600

/-- `A074331(A193356(n+1))` -/
def P14910221939474530486.Spec : Prop :=
  ∀ n, P14910221939474530486.a n = A147600 n

end A147600

/-! ## A147600.P2497515948983892687

`A333599(n)+A033999(n)`
-/

namespace A147600.P2497515948983892687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 n + A033999 n

end

end A147600.P2497515948983892687

namespace A147600

/-- `A333599(n)+A033999(n)` -/
def P2497515948983892687.Spec : Prop :=
  ∀ n, P2497515948983892687.a n = A147600 n

end A147600

/-!
# A147601: First differences of A132355.

The programs for A147601, the canonical program `A147601.P11250592529178347019` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147601 has offset 0).

The definition of A147601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147601.P11250592529178347019

`(9+5*(-1)^n)*(1+n)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147601

/-- `(9+5*(-1)^n)*(1+n)/2` -/
def P11250592529178347019.Spec : Prop :=
  ∀ n, P11250592529178347019.a n = (A147601 n : ℚ)

end A147601

/-! ## A147601.P5110143924166566328

`∑[Δ[lcm(2, 5*n)]-3]`
-/

namespace A147601.P5110143924166566328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147601.P5110143924166566328

namespace A147601

/-- `∑[Δ[lcm(2, 5*n)]-3]` -/
def P5110143924166566328.Spec : Prop :=
  ∀ n, P5110143924166566328.a n = A147601 n

end A147601

/-! ## A147601.P4021726036098457481

`(n+1)*xor(3, gcd(2, n)²)`
-/

namespace A147601.P4021726036098457481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 3 (Nat.gcd 2 n ^ 2)

end

end A147601.P4021726036098457481

namespace A147601

/-- `(n+1)*xor(3, gcd(2, n)²)` -/
def P4021726036098457481.Spec : Prop :=
  ∀ n, (P4021726036098457481.a n : ℤ) = A147601 n

end A147601

/-! ## A147601.P4862107302876052363

`4*7/a(n-1)*∑[n]` with `a(0)=7`
-/

namespace A147601.P4862107302876052363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  4 * (7 / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A147601.P4862107302876052363

namespace A147601

/-- `4*7/a(n-1)*∑[n]` -/
def P4862107302876052363.Spec : Prop :=
  ∀ n, P4862107302876052363.a n = (A147601 n : ℚ)

end A147601

/-! ## A147601.P12287409057115129820

`(n+1)*(9-a(n-1)/n)` with `a(0)=7`
-/

namespace A147601.P12287409057115129820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  (n + 1 : ℚ) * (9 - a (n - 1) / (n : ℚ))

end

end A147601.P12287409057115129820

namespace A147601

/-- `(n+1)*(9-a(n-1)/n)` -/
def P12287409057115129820.Spec : Prop :=
  ∀ n, P12287409057115129820.a n = (A147601 n : ℚ)

end A147601

/-! ## A147601.P6401267762358634438

`(n+1)*(∑[-a(n-1)]+2)` with `a(0)=5`
-/

namespace A147601.P6401267762358634438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A147601.P6401267762358634438

namespace A147601

/-- `(n+1)*(∑[-a(n-1)]+2)` -/
def P6401267762358634438.Spec : Prop :=
  ∀ n, P6401267762358634438.a n = A147601 n

end A147601

/-! ## A147601.P1794318168595634942

`(n+1)*(A176355(n)+1)`
-/

namespace A147601.P1794318168595634942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A176355 n + 1)

end

end A147601.P1794318168595634942

namespace A147601

/-- `(n+1)*(A176355(n)+1)` -/
def P1794318168595634942.Spec : Prop :=
  ∀ n, P1794318168595634942.a n = A147601 n

end A147601

/-! ## A147601.P14987381817585507783

`(n+1)*(A168330(n+1)+4)`
-/

namespace A147601.P14987381817585507783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A168330 (n + 1) + 4)

end

end A147601.P14987381817585507783

namespace A147601

/-- `(n+1)*(A168330(n+1)+4)` -/
def P14987381817585507783.Spec : Prop :=
  ∀ n, P14987381817585507783.a n = A147601 n

end A147601

/-! ## A147601.P8280799357510057620

`(C(5, A010690(n))+1)*(n+1)+1+n`
-/

namespace A147601.P8280799357510057620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 5 (A010690 n).toNat + 1) * (n + 1) + 1 + n

end

end A147601.P8280799357510057620

namespace A147601

/-- `(C(5, A010690(n))+1)*(n+1)+1+n` -/
def P8280799357510057620.Spec : Prop :=
  ∀ n, (P8280799357510057620.a n : ℤ) = A147601 n

end A147601

/-! ## A147601.P3915948822025722935

`(n+1)*A328579(A328839(n+1))`
-/

namespace A147601.P3915948822025722935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328579 (A328839 (n + 1)).toNat

end

end A147601.P3915948822025722935

namespace A147601

/-- `(n+1)*A328579(A328839(n+1))` -/
def P3915948822025722935.Spec : Prop :=
  ∀ n, P3915948822025722935.a n = A147601 n

end A147601

/-! ## A147601.P17712958852162995838

`(n+1)*A328579(A328579(n+1)²)`
-/

namespace A147601.P17712958852162995838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328579 (A328579 (n + 1) ^ 2).toNat

end

end A147601.P17712958852162995838

namespace A147601

/-- `(n+1)*A328579(A328579(n+1)²)` -/
def P17712958852162995838.Spec : Prop :=
  ∀ n, P17712958852162995838.a n = A147601 n

end A147601

/-! ## A147601.P13460857531399583923

`Δ[A132355(n+1)]`
-/

namespace A147601.P13460857531399583923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147601.P13460857531399583923

namespace A147601

/-- `Δ[A132355(n+1)]` -/
def P13460857531399583923.Spec : Prop :=
  ∀ n, P13460857531399583923.a n = A147601 n

end A147601

/-! ## A147601.P7071267977657616237

`Δ[A266957(n+1)]`
-/

namespace A147601.P7071267977657616237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147601.P7071267977657616237

namespace A147601

/-- `Δ[A266957(n+1)]` -/
def P7071267977657616237.Spec : Prop :=
  ∀ n, P7071267977657616237.a n = A147601 n

end A147601

/-! ## A147601.P18032242046198659689

`(n+1)*A010697(n+1)`
-/

namespace A147601.P18032242046198659689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010697 (n + 1)

end

end A147601.P18032242046198659689

namespace A147601

/-- `(n+1)*A010697(n+1)` -/
def P18032242046198659689.Spec : Prop :=
  ∀ n, P18032242046198659689.a n = A147601 n

end A147601

/-! ## A147601.P5877291310995203884

`Δ[A219191(n+1)]+1+n`
-/

namespace A147601.P5877291310995203884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A147601.P5877291310995203884

namespace A147601

/-- `Δ[A219191(n+1)]+1+n` -/
def P5877291310995203884.Spec : Prop :=
  ∀ n, P5877291310995203884.a n = A147601 n

end A147601

/-! ## A147601.P4005320061295348784

`(n+1)*Δ[A056020(n+1)]`
-/

namespace A147601.P4005320061295348784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A147601.P4005320061295348784

namespace A147601

/-- `(n+1)*Δ[A056020(n+1)]` -/
def P4005320061295348784.Spec : Prop :=
  ∀ n, P4005320061295348784.a n = A147601 n

end A147601

/-! ## A147601.P15255437197844884828

`(n+1)*(A010687(n+1)+1)`
-/

namespace A147601.P15255437197844884828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010687 (n + 1) + 1)

end

end A147601.P15255437197844884828

namespace A147601

/-- `(n+1)*(A010687(n+1)+1)` -/
def P15255437197844884828.Spec : Prop :=
  ∀ n, P15255437197844884828.a n = A147601 n

end A147601

/-! ## A147601.P6400716063413737166

`(n+1)*(A010676(n+1)+2)`
-/

namespace A147601.P6400716063413737166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010676 (n + 1) + 2)

end

end A147601.P6400716063413737166

namespace A147601

/-- `(n+1)*(A010676(n+1)+2)` -/
def P6400716063413737166.Spec : Prop :=
  ∀ n, P6400716063413737166.a n = A147601 n

end A147601

/-! ## A147601.P11857221158447096996

`(n+1)*(A010706(n+1)-1)`
-/

namespace A147601.P11857221158447096996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010706 (n + 1) - 1)

end

end A147601.P11857221158447096996

namespace A147601

/-- `(n+1)*(A010706(n+1)-1)` -/
def P11857221158447096996.Spec : Prop :=
  ∀ n, P11857221158447096996.a n = A147601 n

end A147601

/-! ## A147601.P7905230109667797697

`(n+1)*(A010714(n+1)-2)`
-/

namespace A147601.P7905230109667797697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010714 (n + 1) - 2)

end

end A147601.P7905230109667797697

namespace A147601

/-- `(n+1)*(A010714(n+1)-2)` -/
def P7905230109667797697.Spec : Prop :=
  ∀ n, P7905230109667797697.a n = A147601 n

end A147601

/-!
# A147603: Primes congruent to (1,1,2) mod 3, see comment.

The programs for A147603, there is no canonical definition to state claims against.
-/

/-! ## A147603.P5647527185170664937

`eq[A003415(n), A347351(A007913(n+1))]`
-/

namespace A147603.P5647527185170664937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347351 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147603.P5647527185170664937

/-! ## A147603.P5619595581235380617

`p?[A227763(A026351(n))]`
-/

namespace A147603.P5619595581235380617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227763 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147603.P5619595581235380617

/-! ## A147603.P17340617080000370496

`p?[eq[A072769(n+1), A301344(n+2)]]`
-/

namespace A147603.P17340617080000370496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072769 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301344 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A147603.P17340617080000370496

/-! ## A147603.P6619680325403824641

`A265760(lt[A103373(n+1), A038573(n)])`
-/

namespace A147603.P6619680325403824641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147603.P6619680325403824641

/-!
# A147604: Expansion of g.f.: (1 + x^2 - x^3)/(1 - x - x^2 + x^3 - x^5).

The programs for A147604, the canonical program `A147604.P17784688660361777943` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147604 has offset 0).

The definition of A147604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2-x^3)/(1-x-x^2+x^3-x^5))` (program `A147604.P17784688660361777943`, by `A147604.P17784688660361777943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147604.P17784688660361777943

`ogf((1+x^2-x^3)/(1-x-x^2+x^3-x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147604

/-- `ogf((1+x^2-x^3)/(1-x-x^2+x^3-x^5))` -/
def P17784688660361777943.Spec : Prop :=
  ∀ n, P17784688660361777943.a n = A147604 n

theorem P17784688660361777943.correct : P17784688660361777943.Spec := by
  intro n
  simp only [A147604]

end A147604

/-! ## A147604.P14520111071266670773

`A107368(n)+A107293(n+4)`
-/

namespace A147604.P14520111071266670773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 n + A107293 (n + 4)

end

end A147604.P14520111071266670773

namespace A147604

/-- `A107368(n)+A107293(n+4)` -/
def P14520111071266670773.Spec : Prop :=
  ∀ n, P14520111071266670773.a n = A147604 n

end A147604

/-! ## A147604.P16259555305219845450

`A107368(n)+∑[A107368(n+2)]`
-/

namespace A147604.P16259555305219845450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147604.P16259555305219845450

namespace A147604

/-- `A107368(n)+∑[A107368(n+2)]` -/
def P16259555305219845450.Spec : Prop :=
  ∀ n, P16259555305219845450.a n = A147604 n

end A147604

/-! ## A147604.P4072545513646012457

`A107293(n+4)+Δ[A107293(n+1)]`
-/

namespace A147604.P4072545513646012457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 4) + (f1 (n + 1) - f1 n)

end

end A147604.P4072545513646012457

namespace A147604

/-- `A107293(n+4)+Δ[A107293(n+1)]` -/
def P4072545513646012457.Spec : Prop :=
  ∀ n, P4072545513646012457.a n = A147604 n

end A147604

/-! ## A147604.P1081409256308005820

`A107293(n+4)%A048473(n+2)²+A107293(n+2)-A107293(n+1)`
-/

namespace A147604.P1081409256308005820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107293 (n + 4)) (A048473 (n + 2) ^ 2) + (A107293 (n + 2) - A107293 (n + 1))

end

end A147604.P1081409256308005820

namespace A147604

/-- `A107293(n+4)%A048473(n+2)²+A107293(n+2)-A107293(n+1)` -/
def P1081409256308005820.Spec : Prop :=
  ∀ n, P1081409256308005820.a n = A147604 n

end A147604

/-!
# A147605: Expansion of g.f.: 1/((1 - x^2 - x^3 - x^4 - x^5 - x^6 - x^7)*(1 + x + x^2 + x^3 + x^4 + x^5 - x^7)).

The programs for A147605, the canonical program `A147605.P12433392509468790881` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147605 has offset 0).

The definition of A147605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^3-2x^4-3x^5-5x^6-7x^7-5x^8-3x^9-2x^10-x^11+x^13+x^14))` (program `A147605.P12433392509468790881`, by `A147605.P12433392509468790881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147605.P12433392509468790881

`ogf(1/(1+x-x^3-2x^4-3x^5-5x^6-7x^7-5x^8-3x^9-2x^10-x^11+x^13+x^14))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147605

/-- `ogf(1/(1+x-x^3-2x^4-3x^5-5x^6-7x^7-5x^8-3x^9-2x^10-x^11+x^13+x^14))` -/
def P12433392509468790881.Spec : Prop :=
  ∀ n, P12433392509468790881.a n = A147605 n

theorem P12433392509468790881.correct : P12433392509468790881.Spec := by
  intro n
  simp only [A147605]

end A147605

/-!
# A147606: Expansion of g.f.: 1/((1 - x - x^2 + x^4 - x^6)*(1 - x^2 + x^4 + x^5 - x^6)).

The programs for A147606, the canonical program `A147606.P7607137475290804220` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147606 has offset 0).

The definition of A147606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+3x^4-5x^6+3x^8+x^9-2x^10-x^11+x^12))` (program `A147606.P7607137475290804220`, by `A147606.P7607137475290804220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147606.P7607137475290804220

`ogf(1/(1-x-2x^2+x^3+3x^4-5x^6+3x^8+x^9-2x^10-x^11+x^12))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147606

/-- `ogf(1/(1-x-2x^2+x^3+3x^4-5x^6+3x^8+x^9-2x^10-x^11+x^12))` -/
def P7607137475290804220.Spec : Prop :=
  ∀ n, P7607137475290804220.a n = A147606 n

theorem P7607137475290804220.correct : P7607137475290804220.Spec := by
  intro n
  simp only [A147606]

end A147606

/-! ## A147606.P8010149936744754283

`A070082(A048816(2*(n+1)))-A007305(n)`
-/

namespace A147606.P8010149936744754283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A048816 (2 * (n + 1))).toNat - A007305 n

end

end A147606.P8010149936744754283

namespace A147606

/-- `A070082(A048816(2*(n+1)))-A007305(n)` -/
def P8010149936744754283.Spec : Prop :=
  ∀ n, P8010149936744754283.a n = A147606 n

end A147606

/-! ## A147606.P14852725200556684114

`A153178(2*n+1)-A001878(A000108(n))`
-/

namespace A147606.P14852725200556684114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153178 (2 * n + 1) - A001878 (A000108 n).toNat

end

end A147606.P14852725200556684114

namespace A147606

/-- `A153178(2*n+1)-A001878(A000108(n))` -/
def P14852725200556684114.Spec : Prop :=
  ∀ n, P14852725200556684114.a n = A147606 n

end A147606

/-! ## A147606.P7749774261506026836

`A072670(A309545(3*n+4))+A000041(n)`
-/

namespace A147606.P7749774261506026836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A309545 (3 * n + 4)).toNat + A000041 n

end

end A147606.P7749774261506026836

namespace A147606

/-- `A072670(A309545(3*n+4))+A000041(n)` -/
def P7749774261506026836.Spec : Prop :=
  ∀ n, P7749774261506026836.a n = A147606 n

end A147606

/-!
# A147607: Expansion of g.f.: 1/((1 - 2*x^2 + x^4 + 2*x^6 - x^8)*(1 - 2*x^2 - x^4 + 2*x^6 - x^8)).

The programs for A147607, the canonical program `A147607.P5308053817037472472` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147607 has offset 0).

The definition of A147607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x^2+4x^4+4x^6-11x^8+4x^10+4x^12-4x^14+x^16))` (program `A147607.P5308053817037472472`, by `A147607.P5308053817037472472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147607.P5308053817037472472

`ogf(1/(1-4x^2+4x^4+4x^6-11x^8+4x^10+4x^12-4x^14+x^16))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147607

/-- `ogf(1/(1-4x^2+4x^4+4x^6-11x^8+4x^10+4x^12-4x^14+x^16))` -/
def P5308053817037472472.Spec : Prop :=
  ∀ n, P5308053817037472472.a n = A147607 n

theorem P5308053817037472472.correct : P5308053817037472472.Spec := by
  intro n
  simp only [A147607]

end A147607

/-! ## A147607.P7827835505099125465

`A003056(A033627(n+1)*A254006(n))`
-/

namespace A147607.P7827835505099125465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033627 (n + 1) * A254006 n).toNat

end

end A147607.P7827835505099125465

namespace A147607

/-- `A003056(A033627(n+1)*A254006(n))` -/
def P7827835505099125465.Spec : Prop :=
  ∀ n, P7827835505099125465.a n = A147607 n

end A147607

/-! ## A147607.P4953149724244969812

`A003056(lcm(A033627(n+1), A254006(n)))`
-/

namespace A147607.P4953149724244969812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (A033627 (n + 1)) (A254006 n))

end

end A147607.P4953149724244969812

namespace A147607

/-- `A003056(lcm(A033627(n+1), A254006(n)))` -/
def P4953149724244969812.Spec : Prop :=
  ∀ n, P4953149724244969812.a n = A147607 n

end A147607

/-! ## A147607.P6245708942161915354

`A003056(and(A165326(n), A341384(n+2)))`
-/

namespace A147607.P6245708942161915354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.land (A165326 n) (A341384 (n + 2))).toNat

end

end A147607.P6245708942161915354

namespace A147607

/-- `A003056(and(A165326(n), A341384(n+2)))` -/
def P6245708942161915354.Spec : Prop :=
  ∀ n, P6245708942161915354.a n = A147607 n

end A147607

/-! ## A147607.P14597294853082988897

`A003056(A341384(n+2))*A230093(n)`
-/

namespace A147607.P14597294853082988897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A341384 (n + 2)).toNat * A230093 n

end

end A147607.P14597294853082988897

namespace A147607

/-- `A003056(A341384(n+2))*A230093(n)` -/
def P14597294853082988897.Spec : Prop :=
  ∀ n, P14597294853082988897.a n = A147607 n

end A147607

/-!
# A147609: a(n) = A000290(n-1) - A065893(n).

The programs for A147609, the canonical program `A147609.P1573611172523087498` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147609 has offset 1).

The definition of A147609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147609.P1573611172523087498

`A000290(n)-A065893(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A147609

/-- `A000290(n)-A065893(n+1)` -/
def P1573611172523087498.Spec : Prop :=
  ∀ n, P1573611172523087498.a n = A147609 (n + 1)

theorem P1573611172523087498.correct : P1573611172523087498.Spec := by
  intro n
  simp only [A147609, Nat.add_sub_cancel]

end A147609

/-! ## A147609.P9141280822189019932

`∑[A014085(n)-2]+2`
-/

namespace A147609.P9141280822189019932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A147609.P9141280822189019932

namespace A147609

/-- `∑[A014085(n)-2]+2` -/
def P9141280822189019932.Spec : Prop :=
  ∀ n, P9141280822189019932.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P2958302580671484211

`n²+1-A078435(n+1)`
-/

namespace A147609.P2958302580671484211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (1 - A078435 (n + 1))

end

end A147609.P2958302580671484211

namespace A147609

/-- `n²+1-A078435(n+1)` -/
def P2958302580671484211.Spec : Prop :=
  ∀ n, P2958302580671484211.a n = A147609 (n + 1)

theorem P2958302580671484211.correct : P2958302580671484211.Spec := by
  intro n
  simp only [A147609, Nat.add_sub_cancel, A147609.P2958302580671484211.a, A147609.P1573611172523087498.a, A000290, A000290.P12206242496348924484.a, A065893, A065893.P16329416451500820683.a, A078435, A078435.P867302158183196270.a, A028387, A028387.P5954590561330899546.a, A161187, A161187.P14587540227680804446.f1, A161187.P14587540227680804446.a, A010051, A010051.P15078252821583414300.a, A117490, A117490.P2835594176829251939.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033270, A033270.P17547381595511500328.f2, A033270.P17547381595511500328.f1, A033270.P17547381595511500328.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A291440, A291440.P5300707734010347566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147609

/-! ## A147609.P17412098748943276806

`∑[A014085(A028310(n))-2]`
-/

namespace A147609.P17412098748943276806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A028310 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147609.P17412098748943276806

namespace A147609

/-- `∑[A014085(A028310(n))-2]` -/
def P17412098748943276806.Spec : Prop :=
  ∀ n, P17412098748943276806.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P2528280646763762098

`A002522(n)-A078435(n+1)`
-/

namespace A147609.P2528280646763762098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A078435 (n + 1)

end

end A147609.P2528280646763762098

namespace A147609

/-- `A002522(n)-A078435(n+1)` -/
def P2528280646763762098.Spec : Prop :=
  ∀ n, P2528280646763762098.a n = A147609 (n + 1)

theorem P2528280646763762098.correct : P2528280646763762098.Spec := by
  intro n
  simp only [A147609, Nat.add_sub_cancel, A147609.P2528280646763762098.a, A147609.P1573611172523087498.a, A000290, A000290.P12206242496348924484.a, A002522, A002522.P3778392011853271743.a, A065893, A065893.P16329416451500820683.a, A078435, A078435.P867302158183196270.a, A028387, A028387.P5954590561330899546.a, A161187, A161187.P14587540227680804446.f1, A161187.P14587540227680804446.a, A010051, A010051.P15078252821583414300.a, A117490, A117490.P2835594176829251939.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033270, A033270.P17547381595511500328.f2, A033270.P17547381595511500328.f1, A033270.P17547381595511500328.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A291440, A291440.P5300707734010347566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147609

/-! ## A147609.P9134500461919536693

`A161187(n+1)-A016777(n)`
-/

namespace A147609.P9134500461919536693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1) - A016777 n

end

end A147609.P9134500461919536693

namespace A147609

/-- `A161187(n+1)-A016777(n)` -/
def P9134500461919536693.Spec : Prop :=
  ∀ n, P9134500461919536693.a n = A147609 (n + 1)

theorem P9134500461919536693.correct : P9134500461919536693.Spec := by
  intro n
  simp only [A147609, Nat.add_sub_cancel, A147609.P9134500461919536693.a, A147609.P1573611172523087498.a, A000290, A000290.P12206242496348924484.a, A016777, A016777.P9931792138852554157.a, A065893, A065893.P16329416451500820683.a, A161187, A161187.P14587540227680804446.f1, A161187.P14587540227680804446.a, A010051, A010051.P15078252821583414300.a, A028387, A028387.P5954590561330899546.a, A117490, A117490.P2835594176829251939.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033270, A033270.P17547381595511500328.f2, A033270.P17547381595511500328.f1, A033270.P17547381595511500328.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A291440, A291440.P5300707734010347566.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147609

/-! ## A147609.P9417367837484474074

`A038107(n+1)-2*n`
-/

namespace A147609.P9417367837484474074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - (2 * n : ℤ)

end

end A147609.P9417367837484474074

namespace A147609

/-- `A038107(n+1)-2*n` -/
def P9417367837484474074.Spec : Prop :=
  ∀ n, P9417367837484474074.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P1814807992182133580

`∑[Δ[A038107(n)]-2]+2`
-/

namespace A147609.P1814807992182133580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A147609.P1814807992182133580

namespace A147609

/-- `∑[Δ[A038107(n)]-2]+2` -/
def P1814807992182133580.Spec : Prop :=
  ∀ n, P1814807992182133580.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P15423228670519980655

`A220506(2*(n+1))-A005843(n)`
-/

namespace A147609.P15423228670519980655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1)) - A005843 n

end

end A147609.P15423228670519980655

namespace A147609

/-- `A220506(2*(n+1))-A005843(n)` -/
def P15423228670519980655.Spec : Prop :=
  ∀ n, P15423228670519980655.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P2531973208287312483

`n²-(record[floor(sqrt(A000040(n+1)))²-n]-1)`
-/

namespace A147609.P2531973208287312483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A147609.P2531973208287312483

namespace A147609

/-- `n²-(record[floor(sqrt(A000040(n+1)))²-n]-1)` -/
def P2531973208287312483.Spec : Prop :=
  ∀ n, P2531973208287312483.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P7364995386000595409

`A028310(A220506(2*(n+1)))-A028310(2*n)`
-/

namespace A147609.P7364995386000595409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A220506 (2 * (n + 1))).toNat - A028310 (2 * n)

end

end A147609.P7364995386000595409

namespace A147609

/-- `A028310(A220506(2*(n+1)))-A028310(2*n)` -/
def P7364995386000595409.Spec : Prop :=
  ∀ n, P7364995386000595409.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P5007731863864805966

`A000720((n+1)²)-2*n`
-/

namespace A147609.P5007731863864805966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - (2 * n : ℤ)

end

end A147609.P5007731863864805966

namespace A147609

/-- `A000720((n+1)²)-2*n` -/
def P5007731863864805966.Spec : Prop :=
  ∀ n, P5007731863864805966.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P12044146847782503015

`n²-A065855((n+1)²)`
-/

namespace A147609.P12044146847782503015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A065855 ((n + 1) ^ 2)

end

end A147609.P12044146847782503015

namespace A147609

/-- `n²-A065855((n+1)²)` -/
def P12044146847782503015.Spec : Prop :=
  ∀ n, P12044146847782503015.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P13601591196050031189

`n²-A066136((n+1)²)`
-/

namespace A147609.P13601591196050031189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A066136 ((n + 1) ^ 2)

end

end A147609.P13601591196050031189

namespace A147609

/-- `n²-A066136((n+1)²)` -/
def P13601591196050031189.Spec : Prop :=
  ∀ n, P13601591196050031189.a n = A147609 (n + 1)

end A147609

/-! ## A147609.P11516173018685343568

`n²-A066246((n+1)²)`
-/

namespace A147609.P11516173018685343568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A066246 ((n + 1) ^ 2)

end

end A147609.P11516173018685343568

namespace A147609

/-- `n²-A066246((n+1)²)` -/
def P11516173018685343568.Spec : Prop :=
  ∀ n, P11516173018685343568.a n = A147609 (n + 1)

end A147609

/-!
# A147610: a(n) = 3^(wt(n-1)-1), where wt() = A000120().

The programs for A147610, the canonical program `A147610.P10893262607184918980` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147610 has offset 2).

The definition of A147610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147610.P10893262607184918980

`3^A048881(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A147610

/-- `3^A048881(n)` -/
def P10893262607184918980.Spec : Prop :=
  ∀ n, P10893262607184918980.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P11911194273837488841

`3^(n-∑[val(n+1, 2)])`
-/

namespace A147610.P11911194273837488841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A147610.P11911194273837488841

namespace A147610

/-- `3^(n-∑[val(n+1, 2)])` -/
def P11911194273837488841.Spec : Prop :=
  ∀ n, P11911194273837488841.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P10483367014254883906

`a(gcd(2, n))*a(floor((n-1)/2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A147610.P10483367014254883906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (Nat.gcd 2 n) * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A147610.P10483367014254883906

namespace A147610

/-- `a(gcd(2, n))*a(floor((n-1)/2))` -/
def P10483367014254883906.Spec : Prop :=
  ∀ n, (P10483367014254883906.a n : ℤ) = A147610 (n + 2)

end A147610

/-! ## A147610.P4355168055908363435

`3^log2(A048896(n))`
-/

namespace A147610.P4355168055908363435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A048896 n : ℝ))

end

end A147610.P4355168055908363435

namespace A147610

/-- `3^log2(A048896(n))` -/
def P4355168055908363435.Spec : Prop :=
  ∀ n, P4355168055908363435.a n = (A147610 (n + 2) : ℝ)

end A147610

/-! ## A147610.P2886547964793179609

`Δ[A151922(n)]-1`
-/

namespace A147610.P2886547964793179609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A147610.P2886547964793179609

namespace A147610

/-- `Δ[A151922(n)]-1` -/
def P2886547964793179609.Spec : Prop :=
  ∀ n, P2886547964793179609.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P17689611838111613317

`Δ[A130665(n)/3]`
-/

namespace A147610.P17689611838111613317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130665 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147610.P17689611838111613317

namespace A147610

/-- `Δ[A130665(n)/3]` -/
def P17689611838111613317.Spec : Prop :=
  ∀ n, P17689611838111613317.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P9388539444260114085

`A079314(n+1)-1`
-/

namespace A147610.P9388539444260114085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079314 (n + 1) - 1

end

end A147610.P9388539444260114085

namespace A147610

/-- `A079314(n+1)-1` -/
def P9388539444260114085.Spec : Prop :=
  ∀ n, P9388539444260114085.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P8434590100192054689

`A048883(n+1)/3`
-/

namespace A147610.P8434590100192054689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048883 (n + 1) : ℚ) / 3

end

end A147610.P8434590100192054689

namespace A147610

/-- `A048883(n+1)/3` -/
def P8434590100192054689.Spec : Prop :=
  ∀ n, P8434590100192054689.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P2074134151954388929

`A048883(and(n, n+1))`
-/

namespace A147610.P2074134151954388929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (Nat.land n (n + 1))

end

end A147610.P2074134151954388929

namespace A147610

/-- `A048883(and(n, n+1))` -/
def P2074134151954388929.Spec : Prop :=
  ∀ n, P2074134151954388929.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P15656071997760548030

`2*A079318(n+1)-1`
-/

namespace A147610.P15656071997760548030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079318 (n + 1) - 1

end

end A147610.P15656071997760548030

namespace A147610

/-- `2*A079318(n+1)-1` -/
def P15656071997760548030.Spec : Prop :=
  ∀ n, P15656071997760548030.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P1152430018933347428

`(A151712(n+1)-1)/3`
-/

namespace A147610.P1152430018933347428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151712 (n + 1) - 1 : ℚ) / 3

end

end A147610.P1152430018933347428

namespace A147610

/-- `(A151712(n+1)-1)/3` -/
def P1152430018933347428.Spec : Prop :=
  ∀ n, P1152430018933347428.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P8887462174300884908

`3^(A000120(n+1)-1)`
-/

namespace A147610.P8887462174300884908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A147610.P8887462174300884908

namespace A147610

/-- `3^(A000120(n+1)-1)` -/
def P8887462174300884908.Spec : Prop :=
  ∀ n, P8887462174300884908.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P7594951104246545660

`3^(n-A011371(n+1))`
-/

namespace A147610.P7594951104246545660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A011371 (n + 1) : ℤ)

end

end A147610.P7594951104246545660

namespace A147610

/-- `3^(n-A011371(n+1))` -/
def P7594951104246545660.Spec : Prop :=
  ∀ n, P7594951104246545660.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P335809115805400638

`2*A128975(2*(n+1))+1`
-/

namespace A147610.P335809115805400638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128975 (2 * (n + 1)) + 1

end

end A147610.P335809115805400638

namespace A147610

/-- `2*A128975(2*(n+1))+1` -/
def P335809115805400638.Spec : Prop :=
  ∀ n, P335809115805400638.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P5154466686885827288

`3^abs(∑[A007814(n+1)]-n)`
-/

namespace A147610.P5154466686885827288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (|∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)| : ℤ)

end

end A147610.P5154466686885827288

namespace A147610

/-- `3^abs(∑[A007814(n+1)]-n)` -/
def P5154466686885827288.Spec : Prop :=
  ∀ n, P5154466686885827288.a n = (A147610 (n + 2) : ℚ)

end A147610

/-! ## A147610.P132148974839640656

`A000244(A048881(n))`
-/

namespace A147610.P132148974839640656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A048881 n).toNat

end

end A147610.P132148974839640656

namespace A147610

/-- `A000244(A048881(n))` -/
def P132148974839640656.Spec : Prop :=
  ∀ n, P132148974839640656.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P13360233246601519293

`A003959(A048896(n))`
-/

namespace A147610.P13360233246601519293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A048896 n).toNat

end

end A147610.P13360233246601519293

namespace A147610

/-- `A003959(A048896(n))` -/
def P13360233246601519293.Spec : Prop :=
  ∀ n, P13360233246601519293.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P16359702615111484539

`A048883(A025480(n))`
-/

namespace A147610.P16359702615111484539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A025480 n).toNat

end

end A147610.P16359702615111484539

namespace A147610

/-- `A048883(A025480(n))` -/
def P16359702615111484539.Spec : Prop :=
  ∀ n, P16359702615111484539.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P8189447509491335274

`A048883(A071055(n))`
-/

namespace A147610.P8189447509491335274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A071055 n).toNat

end

end A147610.P8189447509491335274

namespace A147610

/-- `A048883(A071055(n))` -/
def P8189447509491335274.Spec : Prop :=
  ∀ n, P8189447509491335274.a n = A147610 (n + 2)

end A147610

/-! ## A147610.P10981297006988572245

`A048883(A153733(n))`
-/

namespace A147610.P10981297006988572245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A153733 n).toNat

end

end A147610.P10981297006988572245

namespace A147610

/-- `A048883(A153733(n))` -/
def P10981297006988572245.Spec : Prop :=
  ∀ n, P10981297006988572245.a n = A147610 (n + 2)

end A147610

/-!
# A147611: The 3rd Witt transform of A000027.

The programs for A147611, there is no canonical definition to state claims against.
-/

/-! ## A147611.P18344643697689779785

`A180813(A016028(n+1)+char[2])`
-/

namespace A147611.P18344643697689779785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A016028 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A147611.P18344643697689779785

/-! ## A147611.P14778455772446417448

`A180813(A016028(n%(5-n²)²+1))`
-/

namespace A147611.P14778455772446417448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A016028 (Int.tmod (n : ℤ) ((5 - (n ^ 2 : ℤ)) ^ 2) + 1).toNat).toNat

end

end A147611.P14778455772446417448

/-! ## A147611.P18081074844777714861

`A180813(A016028(n*C(4, n)!%2+1))`
-/

namespace A147611.P18081074844777714861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A016028 (n * (Nat.factorial (Nat.choose 4 n) % 2) + 1)).toNat

end

end A147611.P18081074844777714861

/-! ## A147611.P13922426449983067589

`A180813(A016028(n+1))%A158916(n)`
-/

namespace A147611.P13922426449983067589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180813 (A016028 (n + 1)).toNat) (A158916 n)

end

end A147611.P13922426449983067589

/-! ## A147611.P9689676800993509752

`A019425(A006584(n))*A180813(A016028(n+1))`
-/

namespace A147611.P9689676800993509752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A006584 n).toNat * A180813 (A016028 (n + 1)).toNat

end

end A147611.P9689676800993509752

/-!
# A147612: If n is a Jacobsthal number then 1 else 0.

The programs for A147612, the canonical program `A147612.P5552661111519091200` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147612 has offset 0).

The definition of A147612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147612.P8571932687682970582

`char[round(2^n/3)]`
-/

namespace A147612.P8571932687682970582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A147612.P8571932687682970582

namespace A147612

/-- `char[round(2^n/3)]` -/
def P8571932687682970582.Spec : Prop :=
  ∀ n, (P8571932687682970582.a n : ℤ) = A147612 n

end A147612

/-! ## A147612.P6519347117545150352

`Δ[ceil(log2(xor(1, 3*n)))]²%3`
-/

namespace A147612.P6519347117545150352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor 1 (3 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A147612.P6519347117545150352

namespace A147612

/-- `Δ[ceil(log2(xor(1, 3*n)))]²%3` -/
def P6519347117545150352.Spec : Prop :=
  ∀ n, P6519347117545150352.a n = A147612 n

end A147612

/-! ## A147612.P5837337352975616683

`Δ[ceil(log2(abs(1-3*n)))]²%3`
-/

namespace A147612.P5837337352975616683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|1 - (3 * n : ℤ)| : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A147612.P5837337352975616683

namespace A147612

/-- `Δ[ceil(log2(abs(1-3*n)))]²%3` -/
def P5837337352975616683.Spec : Prop :=
  ∀ n, P5837337352975616683.a n = A147612 n

end A147612

/-! ## A147612.P10457822437632908937

`Δ[ceil(log2(xor(1, 3*n)))]^(n-1)`
-/

namespace A147612.P10457822437632908937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor 1 (3 * n) : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A147612.P10457822437632908937

namespace A147612

/-- `Δ[ceil(log2(xor(1, 3*n)))]^(n-1)` -/
def P10457822437632908937.Spec : Prop :=
  ∀ n, P10457822437632908937.a n = (A147612 n : ℚ)

end A147612

/-! ## A147612.P5552661111519091200

`C(gcd(2, n+1), and(n, 3*n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147612

/-- `C(gcd(2, n+1), and(n, 3*n+1))` -/
def P5552661111519091200.Spec : Prop :=
  ∀ n, (P5552661111519091200.a n : ℤ) = A147612 n

theorem P5552661111519091200.correct : P5552661111519091200.Spec := by
  intro n
  simp only [A147612]

end A147612

/-! ## A147612.P6934540399096509101

`C(2*and(1, n), and(n, 3*n+1))`
-/

namespace A147612.P6934540399096509101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.land 1 n) (Nat.land n (3 * n + 1))

end

end A147612.P6934540399096509101

namespace A147612

/-- `C(2*and(1, n), and(n, 3*n+1))` -/
def P6934540399096509101.Spec : Prop :=
  ∀ n, (P6934540399096509101.a n : ℤ) = A147612 n

end A147612

/-! ## A147612.P11242798023190703684

`and(5, char[a(n-1)+2*a(n-2)])` with `a(0)=0, a(1)=1`
-/

namespace A147612.P11242798023190703684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (if ∃ j, f1 j = n then 1 else 0)

end

end A147612.P11242798023190703684

namespace A147612

/-- `and(5, char[a(n-1)+2*a(n-2)])` -/
def P11242798023190703684.Spec : Prop :=
  ∀ n, (P11242798023190703684.a n : ℤ) = A147612 n

end A147612

/-! ## A147612.P11189300866040333472

`C(A085015(n), n)`
-/

namespace A147612.P11189300866040333472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085015 n).toNat n

end

end A147612.P11189300866040333472

namespace A147612

/-- `C(A085015(n), n)` -/
def P11189300866040333472.Spec : Prop :=
  ∀ n, (P11189300866040333472.a n : ℤ) = A147612 n

end A147612

/-! ## A147612.P7563084066565641001

`floor(sqrt(A105348(n)))`
-/

namespace A147612.P7563084066565641001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A105348 n)

end

end A147612.P7563084066565641001

namespace A147612

/-- `floor(sqrt(A105348(n)))` -/
def P7563084066565641001.Spec : Prop :=
  ∀ n, P7563084066565641001.a n = A147612 n

end A147612

/-! ## A147612.P4401196610327776678

`A105348(n-char[1])`
-/

namespace A147612.P4401196610327776678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A147612.P4401196610327776678

namespace A147612

/-- `A105348(n-char[1])` -/
def P4401196610327776678.Spec : Prop :=
  ∀ n, P4401196610327776678.a n = A147612 n

end A147612

/-! ## A147612.P7412096476675502861

`and(1, char[A092808(n)])`
-/

namespace A147612.P7412096476675502861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A147612.P7412096476675502861

namespace A147612

/-- `and(1, char[A092808(n)])` -/
def P7412096476675502861.Spec : Prop :=
  ∀ n, (P7412096476675502861.a n : ℤ) = A147612 n

end A147612

/-! ## A147612.P9449971423659895405

`and(3, char[A001045(n)])`
-/

namespace A147612.P9449971423659895405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A147612.P9449971423659895405

namespace A147612

/-- `and(3, char[A001045(n)])` -/
def P9449971423659895405.Spec : Prop :=
  ∀ n, (P9449971423659895405.a n : ℤ) = A147612 n

end A147612

/-! ## A147612.P12028146306349644086

`floor(1/or(1, A265745(n)))`
-/

namespace A147612.P12028146306349644086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.lor 1 (A265745 n) : ℚ)⌋

end

end A147612.P12028146306349644086

namespace A147612

/-- `floor(1/or(1, A265745(n)))` -/
def P12028146306349644086.Spec : Prop :=
  ∀ n, P12028146306349644086.a n = A147612 n

end A147612

/-! ## A147612.P13092294849453671944

`A000045(Δ[ceil(log2(abs(1-3*n)))])`
-/

namespace A147612.P13092294849453671944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|1 - (3 * n : ℤ)| : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A147612.P13092294849453671944

namespace A147612

/-- `A000045(Δ[ceil(log2(abs(1-3*n)))])` -/
def P13092294849453671944.Spec : Prop :=
  ∀ n, P13092294849453671944.a n = A147612 n

end A147612

/-! ## A147612.P1029539859657497688

`A000007(A084117(n))`
-/

namespace A147612.P1029539859657497688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A084117 n).toNat

end

end A147612.P1029539859657497688

namespace A147612

/-- `A000007(A084117(n))` -/
def P1029539859657497688.Spec : Prop :=
  ∀ n, P1029539859657497688.a n = A147612 n

end A147612

/-! ## A147612.P3229636519400004943

`A036987(A122199(n))`
-/

namespace A147612.P3229636519400004943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A122199 n).toNat

end

end A147612.P3229636519400004943

namespace A147612

/-- `A036987(A122199(n))` -/
def P3229636519400004943.Spec : Prop :=
  ∀ n, P3229636519400004943.a n = A147612 n

end A147612

/-! ## A147612.P732163660921009296

`A340375(A022433(n))`
-/

namespace A147612.P732163660921009296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (A022433 n).toNat

end

end A147612.P732163660921009296

namespace A147612

/-- `A340375(A022433(n))` -/
def P732163660921009296.Spec : Prop :=
  ∀ n, P732163660921009296.a n = A147612 n

end A147612

/-! ## A147612.P2555396599623099573

`A036987(A047246(n+1))`
-/

namespace A147612.P2555396599623099573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A047246 (n + 1)).toNat

end

end A147612.P2555396599623099573

namespace A147612

/-- `A036987(A047246(n+1))` -/
def P2555396599623099573.Spec : Prop :=
  ∀ n, P2555396599623099573.a n = A147612 n

end A147612

/-! ## A147612.P15531701621225042959

`A209229(A047227(n+1))`
-/

namespace A147612.P15531701621225042959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A047227 (n + 1)).toNat

end

end A147612.P15531701621225042959

namespace A147612

/-- `A209229(A047227(n+1))` -/
def P15531701621225042959.Spec : Prop :=
  ∀ n, P15531701621225042959.a n = A147612 n

end A147612

/-!
# A147613: Numbers that are not Jacobsthal numbers.

The programs for A147613, the canonical program `A147613.P5365053868668925946` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147613 has offset 1).

The definition of A147613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147613.P10068190833012482144

`comp[round(2^n/3)]`
-/

namespace A147613.P10068190833012482144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A147613.P10068190833012482144

namespace A147613

/-- `comp[round(2^n/3)]` -/
def P10068190833012482144.Spec : Prop :=
  ∀ n, (P10068190833012482144.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P13284606792387920634

`comp[record[xor(n, 3*n)]]+1`
-/

namespace A147613.P13284606792387920634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A147613.P13284606792387920634

namespace A147613

/-- `comp[record[xor(n, 3*n)]]+1` -/
def P13284606792387920634.Spec : Prop :=
  ∀ n, (P13284606792387920634.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P5365053868668925946

`lt[2, and(3*n+1, xor(1, n))]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147613

/-- `lt[2, and(3*n+1, xor(1, n))]` -/
def P5365053868668925946.Spec : Prop :=
  ∀ n, (P5365053868668925946.a n : ℤ) = A147613 (n + 1)

theorem P5365053868668925946.correct : P5365053868668925946.Spec := by
  intro n
  simp only [A147613, Nat.add_sub_cancel]

end A147613

/-! ## A147613.P6601209189075005479

`comp[record[n-and(n, 3*n)]]+1`
-/

namespace A147613.P6601209189075005479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (3 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A147613.P6601209189075005479

namespace A147613

/-- `comp[record[n-and(n, 3*n)]]+1` -/
def P6601209189075005479.Spec : Prop :=
  ∀ n, (P6601209189075005479.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P12886234185207824100

`lt[1, A265745(n)]`
-/

namespace A147613.P12886234185207824100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A147613.P12886234185207824100

namespace A147613

/-- `lt[1, A265745(n)]` -/
def P12886234185207824100.Spec : Prop :=
  ∀ n, (P12886234185207824100.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P7110860819038271270

`lt[2, A006530(and(3*n+1, -3))]`
-/

namespace A147613.P7110860819038271270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (3 * n + 1 : ℤ) (-3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A147613.P7110860819038271270

namespace A147613

/-- `lt[2, A006530(and(3*n+1, -3))]` -/
def P7110860819038271270.Spec : Prop :=
  ∀ n, (P7110860819038271270.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P12038839501703583881

`eq[A063524(n), A105348(n)]`
-/

namespace A147613.P12038839501703583881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147613.P12038839501703583881

namespace A147613

/-- `eq[A063524(n), A105348(n)]` -/
def P12038839501703583881.Spec : Prop :=
  ∀ n, (P12038839501703583881.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P674246455089316359

`eq[0, char[round(2^n/3)]]`
-/

namespace A147613.P674246455089316359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147613.P674246455089316359

namespace A147613

/-- `eq[0, char[round(2^n/3)]]` -/
def P674246455089316359.Spec : Prop :=
  ∀ n, (P674246455089316359.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P7484719896690116174

`lt[0, A084117(n)]`
-/

namespace A147613.P7484719896690116174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A147613.P7484719896690116174

namespace A147613

/-- `lt[0, A084117(n)]` -/
def P7484719896690116174.Spec : Prop :=
  ∀ n, (P7484719896690116174.a n : ℤ) = A147613 (n + 1)

end A147613

/-! ## A147613.P2852068601399149908

`lt[A001511(n+1)+1, A167489(2*n)²]`
-/

namespace A147613.P2852068601399149908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A147613.P2852068601399149908

namespace A147613

/-- `lt[A001511(n+1)+1, A167489(2*n)²]` -/
def P2852068601399149908.Spec : Prop :=
  ∀ n, (P2852068601399149908.a n : ℤ) = A147613 (n + 1)

end A147613

/-!
# A147614: a(n) = number of grid points that are covered after n-th stage of A139250, assuming the toothpicks have length 2.

The programs for A147614, there is no canonical definition to state claims against.
-/

/-! ## A147614.P7035845826636942185

`∑[A162625(n+1)]-A162625(n+1)`
-/

namespace A147614.P7035845826636942185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162625 (n + 1)

end

end A147614.P7035845826636942185

/-! ## A147614.P13537312939532072124

`A057427(n)+A139252(n)+A139250(n)`
-/

namespace A147614.P13537312939532072124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A139252 n + A139250 n)

end

end A147614.P13537312939532072124

/-! ## A147614.P8146517128196344939

`A139250(n)+A139252(n)-A057428(n)`
-/

namespace A147614.P8146517128196344939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A139252 n - A057428 n)

end

end A147614.P8146517128196344939

/-! ## A147614.P4470049758654844263

`char[A052938(n)]+A139252(n)+A139250(n)`
-/

namespace A147614.P4470049758654844263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A139252 n + A139250 n)

end

end A147614.P4470049758654844263

/-! ## A147614.P6159712018329107808

`char[A032742(n+1)]+A139252(n)+A139250(n)`
-/

namespace A147614.P6159712018329107808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A139252 n + A139250 n)

end

end A147614.P6159712018329107808

/-! ## A147614.P18198826677872336360

`char[A347113(n+1)]+A139252(n)+A139250(n)`
-/

namespace A147614.P18198826677872336360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A139252 n + A139250 n)

end

end A147614.P18198826677872336360

/-! ## A147614.P16406449707271761931

`and(1, A000040(n+1))+A139252(n)+A139250(n)`
-/

namespace A147614.P16406449707271761931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) + (A139252 n + A139250 n)

end

end A147614.P16406449707271761931

/-! ## A147614.P17628330365957405708

`A178334(A178334(n))+A139252(n)+A139250(n)`
-/

namespace A147614.P17628330365957405708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat + (A139252 n + A139250 n)

end

end A147614.P17628330365957405708

/-! ## A147614.P9050299961533255563

`A133263(n)-A000124(n)+A139252(n)+A139250(n)`
-/

namespace A147614.P9050299961533255563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - A000124 n + (A139252 n + A139250 n)

end

end A147614.P9050299961533255563

/-! ## A147614.P9097371112941780864

`A139250(n)+A014681(A139252(n))`
-/

namespace A147614.P9097371112941780864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + A014681 (A139252 n).toNat

end

end A147614.P9097371112941780864

/-! ## A147614.P11710262355570766246

`A140472(A160164(n))+A139252(n)`
-/

namespace A147614.P11710262355570766246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A160164 n).toNat + A139252 n

end

end A147614.P11710262355570766246

/-!
# A147615: a(n) = 13 + Sum_{j=4..n+3} j!.

The programs for A147615, the canonical program `A147615.P8646173760134290190` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147615 has offset 0).

The definition of A147615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147615.P8646173760134290190

`3+A003422(n+4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147615

/-- `3+A003422(n+4)` -/
def P8646173760134290190.Spec : Prop :=
  ∀ n, P8646173760134290190.a n = A147615 n

theorem P8646173760134290190.correct : P8646173760134290190.Spec := by
  intro n
  simp only [A147615]

end A147615

/-! ## A147615.P16546071544491940063

`∑[(n+3)!]+7`
-/

namespace A147615.P16546071544491940063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A147615.P16546071544491940063

namespace A147615

/-- `∑[(n+3)!]+7` -/
def P16546071544491940063.Spec : Prop :=
  ∀ n, (P16546071544491940063.a n : ℤ) = A147615 n

end A147615

/-! ## A147615.P12200949604887391532

`∑[2*∏[n+3]]+7`
-/

namespace A147615.P12200949604887391532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A147615.P12200949604887391532

namespace A147615

/-- `∑[2*∏[n+3]]+7` -/
def P12200949604887391532.Spec : Prop :=
  ∀ n, (P12200949604887391532.a n : ℤ) = A147615 n

end A147615

/-! ## A147615.P2949766679039253701

`∑[record[n*a(n-1)]]` with `a(0)=13, a(1)=1`
-/

namespace A147615.P2949766679039253701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [13, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147615.P2949766679039253701

namespace A147615

/-- `∑[record[n*a(n-1)]]` -/
def P2949766679039253701.Spec : Prop :=
  ∀ n, (P2949766679039253701.a n : ℤ) = A147615 n

end A147615

/-! ## A147615.P3241229651718514853

`∑[record[a(n-1)/n^(-1)]]` with `a(0)=13, a(1)=1`
-/

namespace A147615.P3241229651718514853
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [13, 1] fun n f2 =>
  f2 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147615.P3241229651718514853

namespace A147615

/-- `∑[record[a(n-1)/n^(-1)]]` -/
def P3241229651718514853.Spec : Prop :=
  ∀ n, P3241229651718514853.a n = (A147615 n : ℚ)

end A147615

/-! ## A147615.P11991684376469323618

`∑[record[lcm(n, 1-a(n-1))+n]]` with `a(0)=13, a(1)=1`
-/

namespace A147615.P11991684376469323618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [13, 1] fun n f2 =>
  Int.lcm (n : ℤ) (1 - (f2 (n - 1) : ℤ)) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147615.P11991684376469323618

namespace A147615

/-- `∑[record[lcm(n, 1-a(n-1))+n]]` -/
def P11991684376469323618.Spec : Prop :=
  ∀ n, (P11991684376469323618.a n : ℤ) = A147615 n

end A147615

/-!
# A147617: Expansion of g.f.: 1/((1 - x - x^2 + x^5 - x^7)*(1 - x^2 + x^5 + x^6 - x^7)).

The programs for A147617, the canonical program `A147617.P3472550131115072781` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147617 has offset 0).

The definition of A147617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+x^4+2x^5-5x^7+2x^9+x^10+x^11-2x^12-x^13+x^14))` (program `A147617.P3472550131115072781`, by `A147617.P3472550131115072781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147617.P3472550131115072781

`ogf(1/(1-x-2x^2+x^3+x^4+2x^5-5x^7+2x^9+x^10+x^11-2x^12-x^13+x^14))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147617

/-- `ogf(1/(1-x-2x^2+x^3+x^4+2x^5-5x^7+2x^9+x^10+x^11-2x^12-x^13+x^14))` -/
def P3472550131115072781.Spec : Prop :=
  ∀ n, P3472550131115072781.a n = A147617 n

theorem P3472550131115072781.correct : P3472550131115072781.Spec := by
  intro n
  simp only [A147617]

end A147617

/-! ## A147617.P5673261219453593827

`A071626(A055887(n))+A060682(n+2)`
-/

namespace A147617.P5673261219453593827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A055887 n).toNat + A060682 (n + 2)

end

end A147617.P5673261219453593827

namespace A147617

/-- `A071626(A055887(n))+A060682(n+2)` -/
def P5673261219453593827.Spec : Prop :=
  ∀ n, P5673261219453593827.a n = A147617 n

end A147617

/-! ## A147617.P16104458532764039302

`A084618(A257992(3*n+1)+A239288(n+1))`
-/

namespace A147617.P16104458532764039302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A257992 (3 * n + 1) + A239288 (n + 1)).toNat

end

end A147617.P16104458532764039302

namespace A147617

/-- `A084618(A257992(3*n+1)+A239288(n+1))` -/
def P16104458532764039302.Spec : Prop :=
  ∀ n, P16104458532764039302.a n = A147617 n

end A147617

/-! ## A147617.P3024245920496796700

`A179845(A371927(n+1))`
-/

namespace A147617.P3024245920496796700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179845 (A371927 (n + 1)).toNat

end

end A147617.P3024245920496796700

namespace A147617

/-- `A179845(A371927(n+1))` -/
def P3024245920496796700.Spec : Prop :=
  ∀ n, P3024245920496796700.a n = A147617 n

end A147617

/-! ## A147617.P14570292621650909919

`A160755(A320787(n+2))`
-/

namespace A147617.P14570292621650909919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A320787 (n + 2)).toNat

end

end A147617.P14570292621650909919

namespace A147617

/-- `A160755(A320787(n+2))` -/
def P14570292621650909919.Spec : Prop :=
  ∀ n, P14570292621650909919.a n = A147617 n

end A147617

/-!
# A147618: The 3rd Witt transform of A000217.

The programs for A147618, there is no canonical definition to state claims against.
-/

/-! ## A147618.P15506731587646301382

`3*A343609(C(n+5, 8))`
-/

namespace A147618.P15506731587646301382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A343609 (Nat.choose (n + 5) 8)

end

end A147618.P15506731587646301382

/-! ## A147618.P10139187399819227041

`A093390(C(A020710(n), 8))`
-/

namespace A147618.P10139187399819227041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (Nat.choose (A020710 n).toNat 8)

end

end A147618.P10139187399819227041

/-! ## A147618.P15359997244445178546

`3*A191841(A038503(n))`
-/

namespace A147618.P15359997244445178546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191841 (A038503 n).toNat

end

end A147618.P15359997244445178546

/-! ## A147618.P6666471543246063784

`A093390(C(A037463(n), 8))`
-/

namespace A147618.P6666471543246063784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (Nat.choose (A037463 n).toNat 8)

end

end A147618.P6666471543246063784

/-!
# A147620: Expansion of g.f.: 1/((1 - x - x^2 + x^6 - x^8)*(1 - x^2 + x^6 + x^7 - x^8)).

The programs for A147620, the canonical program `A147620.P15483862784849365960` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147620 has offset 0).

The definition of A147620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+x^4+2x^6-5x^8+2x^10+x^12+x^13-2x^14-x^15+x^16))` (program `A147620.P15483862784849365960`, by `A147620.P15483862784849365960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147620.P15483862784849365960

`ogf(1/(1-x-2x^2+x^3+x^4+2x^6-5x^8+2x^10+x^12+x^13-2x^14-x^15+x^16))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147620

/-- `ogf(1/(1-x-2x^2+x^3+x^4+2x^6-5x^8+2x^10+x^12+x^13-2x^14-x^15+x^16))` -/
def P15483862784849365960.Spec : Prop :=
  ∀ n, P15483862784849365960.a n = A147620 n

theorem P15483862784849365960.correct : P15483862784849365960.Spec := by
  intro n
  simp only [A147620]

end A147620

/-! ## A147620.P12738834925235832830

`A003059(A145519(n)-n)`
-/

namespace A147620.P12738834925235832830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A145519 n - (n : ℤ)).toNat

end

end A147620.P12738834925235832830

namespace A147620

/-- `A003059(A145519(n)-n)` -/
def P12738834925235832830.Spec : Prop :=
  ∀ n, P12738834925235832830.a n = A147620 n

end A147620

/-! ## A147620.P4356185411962629419

`A135662(2*(A183510(n+1)-n))`
-/

namespace A147620.P4356185411962629419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (2 * (A183510 (n + 1) - (n : ℤ))).toNat

end

end A147620.P4356185411962629419

namespace A147620

/-- `A135662(2*(A183510(n+1)-n))` -/
def P4356185411962629419.Spec : Prop :=
  ∀ n, P4356185411962629419.a n = A147620 n

end A147620

/-! ## A147620.P796478553683092088

`A000194(xor(n+1, A323798(n+2)))`
-/

namespace A147620.P796478553683092088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor (n + 1 : ℤ) (A323798 (n + 2))).toNat

end

end A147620.P796478553683092088

namespace A147620

/-- `A000194(xor(n+1, A323798(n+2)))` -/
def P796478553683092088.Spec : Prop :=
  ∀ n, P796478553683092088.a n = A147620 n

end A147620

/-! ## A147620.P9873586329854869677

`A000196(A006527(n)+A006382(n))`
-/

namespace A147620.P9873586329854869677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006527 n + A006382 n).toNat

end

end A147620.P9873586329854869677

namespace A147620

/-- `A000196(A006527(n)+A006382(n))` -/
def P9873586329854869677.Spec : Prop :=
  ∀ n, P9873586329854869677.a n = A147620 n

end A147620

/-!
# A147621: The 3rd Witt transform of A000292.

The programs for A147621, there is no canonical definition to state claims against.
-/

/-! ## A147621.P14671092816774738163

`A029470(A029470(n+3))%A351185(n)`
-/

namespace A147621.P14671092816774738163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029470 (A029470 (n + 3)).toNat) (A351185 n)

end

end A147621.P14671092816774738163

/-! ## A147621.P13046071293302543403

`A237120(C(comp[2*(n+1)], 6))`
-/

namespace A147621.P13046071293302543403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237120 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 6)

end

end A147621.P13046071293302543403

/-! ## A147621.P5242041121764817015

`A340488(floor(n^n/9)+2)`
-/

namespace A147621.P5242041121764817015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (⌊(n ^ n : ℚ) / 9⌋ + 2).toNat

end

end A147621.P5242041121764817015

/-!
# A147622: Expansion of g.f.: 1/(1 - x - 2*x^2 + x^3 + x^4 + 2*x^7 - 5*x^9 + 2*x^11 + x^14 + x^15 - 2*x^16 - x^17 + x^18).

The programs for A147622, the canonical program `A147622.P17963093703681436658` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147622 has offset 0).

The definition of A147622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+x^4+2x^7-5x^9+2x^11+x^14+x^15-2x^16-x^17+x^18))` (program `A147622.P17963093703681436658`, by `A147622.P17963093703681436658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147622.P17963093703681436658

`ogf(1/(1-x-2x^2+x^3+x^4+2x^7-5x^9+2x^11+x^14+x^15-2x^16-x^17+x^18))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147622

/-- `ogf(1/(1-x-2x^2+x^3+x^4+2x^7-5x^9+2x^11+x^14+x^15-2x^16-x^17+x^18))` -/
def P17963093703681436658.Spec : Prop :=
  ∀ n, P17963093703681436658.a n = A147622 n

theorem P17963093703681436658.correct : P17963093703681436658.Spec := by
  intro n
  simp only [A147622]

end A147622

/-! ## A147622.P6117801538125323811

`A003056(A176738(n)+A057711(n))`
-/

namespace A147622.P6117801538125323811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A176738 n + A057711 n).toNat

end

end A147622.P6117801538125323811

namespace A147622

/-- `A003056(A176738(n)+A057711(n))` -/
def P6117801538125323811.Spec : Prop :=
  ∀ n, P6117801538125323811.a n = A147622 n

end A147622

/-! ## A147622.P4761065129451993222

`A000006(A319765(n)+A026804(n+1))`
-/

namespace A147622.P4761065129451993222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A319765 n + A026804 (n + 1)).toNat

end

end A147622.P4761065129451993222

namespace A147622

/-- `A000006(A319765(n)+A026804(n+1))` -/
def P4761065129451993222.Spec : Prop :=
  ∀ n, P4761065129451993222.a n = A147622 n

end A147622

/-! ## A147622.P6478856206656763451

`∑[A112318(Δ[A098600(n)])]`
-/

namespace A147622.P6478856206656763451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147622.P6478856206656763451

namespace A147622

/-- `∑[A112318(Δ[A098600(n)])]` -/
def P6478856206656763451.Spec : Prop :=
  ∀ n, P6478856206656763451.a n = A147622 n

end A147622

/-! ## A147622.P13492223333823427522

`A075821(A023437(n+1)+1)`
-/

namespace A147622.P13492223333823427522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (A023437 (n + 1) + 1).toNat

end

end A147622.P13492223333823427522

namespace A147622

/-- `A075821(A023437(n+1)+1)` -/
def P13492223333823427522.Spec : Prop :=
  ∀ n, P13492223333823427522.a n = A147622 n

end A147622

/-!
# A147623: The 3rd Witt transform of A040000.

The programs for A147623, the canonical program `A147623.P8671400983677786850` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147623 has offset 0).

The definition of A147623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147623.P8671400983677786850

`4*(2-2*n+n²)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147623

/-- `4*(2-2*n+n²)-a(n-1)-a(n-2)` -/
def P8671400983677786850.Spec : Prop :=
  ∀ n, P8671400983677786850.a n = A147623 n

theorem P8671400983677786850.correct : P8671400983677786850.Spec := by
  intro n
  simp only [A147623]

end A147623

/-! ## A147623.P4709937489880779951

`2*A071619(n)`
-/

namespace A147623.P4709937489880779951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071619 n

end

end A147623.P4709937489880779951

namespace A147623

/-- `2*A071619(n)` -/
def P4709937489880779951.Spec : Prop :=
  ∀ n, P4709937489880779951.a n = A147623 n

end A147623

/-! ## A147623.P7070796197572250742

`ceil((2*n)²/3)`
-/

namespace A147623.P7070796197572250742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n) ^ 2 : ℚ) / 3⌉

end

end A147623.P7070796197572250742

namespace A147623

/-- `ceil((2*n)²/3)` -/
def P7070796197572250742.Spec : Prop :=
  ∀ n, P7070796197572250742.a n = A147623 n

end A147623

/-! ## A147623.P14255300192903268605

`floor((2/acot(n))²/3)`
-/

namespace A147623.P14255300192903268605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2 / 3⌋

end

end A147623.P14255300192903268605

namespace A147623

/-- `floor((2/acot(n))²/3)` -/
def P14255300192903268605.Spec : Prop :=
  ∀ n, P14255300192903268605.a n = A147623 n

end A147623

/-! ## A147623.P10565139247862226457

`floor(or(2, (2*n)²)/3)`
-/

namespace A147623.P10565139247862226457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 ((2 * n) ^ 2) : ℚ) / 3⌋

end

end A147623.P10565139247862226457

namespace A147623

/-- `floor(or(2, (2*n)²)/3)` -/
def P10565139247862226457.Spec : Prop :=
  ∀ n, P10565139247862226457.a n = A147623 n

end A147623

/-! ## A147623.P3391569144174644889

`round(or(1, (2*n)²)/3)`
-/

namespace A147623.P3391569144174644889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 ((2 * n) ^ 2) : ℚ) / 3)

end

end A147623.P3391569144174644889

namespace A147623

/-- `round(or(1, (2*n)²)/3)` -/
def P3391569144174644889.Spec : Prop :=
  ∀ n, P3391569144174644889.a n = A147623 n

end A147623

/-! ## A147623.P2979862599952531922

`floor(xor(2, (2*n)²)/3)`
-/

namespace A147623.P2979862599952531922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 ((2 * n) ^ 2) : ℚ) / 3⌋

end

end A147623.P2979862599952531922

namespace A147623

/-- `floor(xor(2, (2*n)²)/3)` -/
def P2979862599952531922.Spec : Prop :=
  ∀ n, P2979862599952531922.a n = A147623 n

end A147623

/-! ## A147623.P5756065379719628558

`round(xor(1, (2*n)²)/3)`
-/

namespace A147623.P5756065379719628558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((2 * n) ^ 2) : ℚ) / 3)

end

end A147623.P5756065379719628558

namespace A147623

/-- `round(xor(1, (2*n)²)/3)` -/
def P5756065379719628558.Spec : Prop :=
  ∀ n, P5756065379719628558.a n = A147623 n

end A147623

/-! ## A147623.P9670619461102626563

`∑[a(n-3)+8]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A147623.P9670619461102626563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147623.P9670619461102626563

namespace A147623

/-- `∑[a(n-3)+8]` -/
def P9670619461102626563.Spec : Prop :=
  ∀ n, (P9670619461102626563.a n : ℤ) = A147623 n

end A147623

/-! ## A147623.P16900469802747388650

`floor(2*n/acot(2*n/3))`
-/

namespace A147623.P16900469802747388650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot ((2 * n : ℚ) / 3 : ℝ)⌋

end

end A147623.P16900469802747388650

namespace A147623

/-- `floor(2*n/acot(2*n/3))` -/
def P16900469802747388650.Spec : Prop :=
  ∀ n, P16900469802747388650.a n = A147623 n

end A147623

/-! ## A147623.P8367691967710098201

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A147623.P8367691967710098201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147623.P8367691967710098201

namespace A147623

/-- `∑[∑[floor(a(n-3))]]` -/
def P8367691967710098201.Spec : Prop :=
  ∀ n, (P8367691967710098201.a n : ℤ) = A147623 n

end A147623

/-! ## A147623.P8340210630752897555

`lcm(2, ceil(2*n*2*n/3))`
-/

namespace A147623.P8340210630752897555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌈(2 * n : ℚ) * ((2 * n : ℚ) / 3)⌉

end

end A147623.P8340210630752897555

namespace A147623

/-- `lcm(2, ceil(2*n*2*n/3))` -/
def P8340210630752897555.Spec : Prop :=
  ∀ n, (P8340210630752897555.a n : ℤ) = A147623 n

end A147623

/-! ## A147623.P6165104347547069964

`∑[comp[(n+1)*gcd(2, n+1)²]]`
-/

namespace A147623.P6165104347547069964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147623.P6165104347547069964

namespace A147623

/-- `∑[comp[(n+1)*gcd(2, n+1)²]]` -/
def P6165104347547069964.Spec : Prop :=
  ∀ n, (P6165104347547069964.a n : ℤ) = A147623 n

end A147623

/-! ## A147623.P12584860711478686188

`∑[∑[gcd(4, a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A147623.P12584860711478686188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 4] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147623.P12584860711478686188

namespace A147623

/-- `∑[∑[gcd(4, a(n-3))]]` -/
def P12584860711478686188.Spec : Prop :=
  ∀ n, (P12584860711478686188.a n : ℤ) = A147623 n

end A147623

/-! ## A147623.P5636255196615396549

`∑[∑[a(n-3)%5]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A147623.P5636255196615396549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 4] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147623.P5636255196615396549

namespace A147623

/-- `∑[∑[a(n-3)%5]]` -/
def P5636255196615396549.Spec : Prop :=
  ∀ n, (P5636255196615396549.a n : ℤ) = A147623 n

end A147623

/-! ## A147623.P3500868435700454203

`∑[∑[gcd(n+2, n-1)]+n-3]+2`
-/

namespace A147623.P3500868435700454203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A147623.P3500868435700454203

namespace A147623

/-- `∑[∑[gcd(n+2, n-1)]+n-3]+2` -/
def P3500868435700454203.Spec : Prop :=
  ∀ n, P3500868435700454203.a n = A147623 n

end A147623

/-! ## A147623.P10847394781975884196

`∑[∑[∑[ogf((x+2x^2+2x^3+3x^4)/(1+x+x^2))]]]+n`
-/

namespace A147623.P10847394781975884196
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 3] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A147623.P10847394781975884196

namespace A147623

/-- `∑[∑[∑[ogf((x+2x^2+2x^3+3x^4)/(1+x+x^2))]]]+n` -/
def P10847394781975884196.Spec : Prop :=
  ∀ n, P10847394781975884196.a n = A147623 n

end A147623

/-! ## A147623.P18430597712417953334

`floor(A005899(n)/3)`
-/

namespace A147623.P18430597712417953334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005899 n : ℚ) / 3⌋

end

end A147623.P18430597712417953334

namespace A147623

/-- `floor(A005899(n)/3)` -/
def P18430597712417953334.Spec : Prop :=
  ∀ n, P18430597712417953334.a n = A147623 n

end A147623

/-! ## A147623.P668731084673553497

`round(A053755(n)/3)`
-/

namespace A147623.P668731084673553497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053755 n : ℚ) / 3)

end

end A147623.P668731084673553497

namespace A147623

/-- `round(A053755(n)/3)` -/
def P668731084673553497.Spec : Prop :=
  ∀ n, P668731084673553497.a n = A147623 n

end A147623

/-!
# A147625: Octo-factorial numbers (4).

The programs for A147625, the canonical program `A147625.P14154893357873901400` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147625 has offset 1).

The definition of A147625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147625.P14154893357873901400

`(8*(n+1)-11)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147625

/-- `(8*(n+1)-11)*a(n-1)` -/
def P14154893357873901400.Spec : Prop :=
  ∀ n, P14154893357873901400.a n = A147625 (n + 1)

theorem P14154893357873901400.correct : P14154893357873901400.Spec := by
  intro n
  simp only [A147625, Nat.add_sub_cancel]

end A147625

/-! ## A147625.P8131101310239174496

`∏[record[lcm(4, n)+1]]`
-/

namespace A147625.P8131101310239174496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147625.P8131101310239174496

namespace A147625

/-- `∏[record[lcm(4, n)+1]]` -/
def P8131101310239174496.Spec : Prop :=
  ∀ n, (P8131101310239174496.a n : ℤ) = A147625 (n + 1)

end A147625

/-! ## A147625.P5878852112510578104

`∏[a(n-1)+8]` with `a(0)=1, a(1)=5`
-/

namespace A147625.P5878852112510578104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147625.P5878852112510578104

namespace A147625

/-- `∏[a(n-1)+8]` -/
def P5878852112510578104.Spec : Prop :=
  ∀ n, (P5878852112510578104.a n : ℤ) = A147625 (n + 1)

end A147625

/-! ## A147625.P8756334863225731734

`abs(∏[a(n-1)-8])/3` with `a(0)=3`
-/

namespace A147625.P8756334863225731734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 3

end

end A147625.P8756334863225731734

namespace A147625

/-- `abs(∏[a(n-1)-8])/3` -/
def P8756334863225731734.Spec : Prop :=
  ∀ n, P8756334863225731734.a n = (A147625 (n + 1) : ℚ)

end A147625

/-! ## A147625.P9194105267437350003

`∏[4*comp[2*(n+1)]+1]`
-/

namespace A147625.P9194105267437350003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147625.P9194105267437350003

namespace A147625

/-- `∏[4*comp[2*(n+1)]+1]` -/
def P9194105267437350003.Spec : Prop :=
  ∀ n, (P9194105267437350003.a n : ℤ) = A147625 (n + 1)

end A147625

/-!
# A147626: Octo-factorial numbers (5).

The programs for A147626, the canonical program `A147626.P15773339959150846979` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147626 has offset 1).

The definition of A147626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147626.P15773339959150846979

`(8*(n+1)-10)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147626

/-- `(8*(n+1)-10)*a(n-1)` -/
def P15773339959150846979.Spec : Prop :=
  ∀ n, P15773339959150846979.a n = A147626 (n + 1)

theorem P15773339959150846979.correct : P15773339959150846979.Spec := by
  intro n
  simp only [A147626, Nat.add_sub_cancel]

end A147626

/-! ## A147626.P7559873277346142624

`∏[a(n-1)+8]` with `a(0)=1, a(1)=6`
-/

namespace A147626.P7559873277346142624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147626.P7559873277346142624

namespace A147626

/-- `∏[a(n-1)+8]` -/
def P7559873277346142624.Spec : Prop :=
  ∀ n, (P7559873277346142624.a n : ℤ) = A147626 (n + 1)

end A147626

/-! ## A147626.P4953910554206630054

`abs(∏[a(n-1)-8])/2` with `a(0)=2`
-/

namespace A147626.P4953910554206630054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 2

end

end A147626.P4953910554206630054

namespace A147626

/-- `abs(∏[a(n-1)-8])/2` -/
def P4953910554206630054.Spec : Prop :=
  ∀ n, P4953910554206630054.a n = (A147626 (n + 1) : ℚ)

end A147626

/-! ## A147626.P9585374675322373544

`2^n*∏[abs(1-4*n)]`
-/

namespace A147626.P9585374675322373544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A147626.P9585374675322373544

namespace A147626

/-- `2^n*∏[abs(1-4*n)]` -/
def P9585374675322373544.Spec : Prop :=
  ∀ n, P9585374675322373544.a n = A147626 (n + 1)

end A147626

/-! ## A147626.P6483545713919537755

`A372987(2*n)`
-/

namespace A147626.P6483545713919537755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372987 (2 * n)

end

end A147626.P6483545713919537755

namespace A147626

/-- `A372987(2*n)` -/
def P6483545713919537755.Spec : Prop :=
  ∀ n, P6483545713919537755.a n = A147626 (n + 1)

end A147626

/-!
# A147629: a(n) = Product_{k = 1..n-1} (9*k - 4).

The programs for A147629, the canonical program `A147629.P4432019707109466047` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147629 has offset 1).

The definition of A147629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147629.P4432019707109466047

`(9*(n+1)-13)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147629

/-- `(9*(n+1)-13)*a(n-1)` -/
def P4432019707109466047.Spec : Prop :=
  ∀ n, P4432019707109466047.a n = A147629 (n + 1)

theorem P4432019707109466047.correct : P4432019707109466047.Spec := by
  intro n
  simp only [A147629, Nat.add_sub_cancel]

end A147629

/-! ## A147629.P6266162143270935620

`∏[a(n-1)+9]` with `a(0)=1, a(1)=5`
-/

namespace A147629.P6266162143270935620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147629.P6266162143270935620

namespace A147629

/-- `∏[a(n-1)+9]` -/
def P6266162143270935620.Spec : Prop :=
  ∀ n, (P6266162143270935620.a n : ℤ) = A147629 (n + 1)

end A147629

/-! ## A147629.P7488251286397661097

`∏[abs(5*(comp[2*(n+1)]-1)+5-n)+1]`
-/

namespace A147629.P7488251286397661097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - 1) + 5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147629.P7488251286397661097

namespace A147629

/-- `∏[abs(5*(comp[2*(n+1)]-1)+5-n)+1]` -/
def P7488251286397661097.Spec : Prop :=
  ∀ n, P7488251286397661097.a n = A147629 (n + 1)

end A147629

/-! ## A147629.P17297993160911722831

`a(n-1)*A017221(n-1)` with `a(0)=1`
-/

namespace A147629.P17297993160911722831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017221 (n - 1)

end

end A147629.P17297993160911722831

namespace A147629

/-- `a(n-1)*A017221(n-1)` -/
def P17297993160911722831.Spec : Prop :=
  ∀ n, P17297993160911722831.a n = A147629 (n + 1)

end A147629

/-! ## A147629.P12860303417742991738

`∏[A017221(n)]/A017221(n)`
-/

namespace A147629.P12860303417742991738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A017221 n : ℚ)

end

end A147629.P12860303417742991738

namespace A147629

/-- `∏[A017221(n)]/A017221(n)` -/
def P12860303417742991738.Spec : Prop :=
  ∀ n, P12860303417742991738.a n = (A147629 (n + 1) : ℚ)

end A147629

/-!
# A147630: a(n) = Product_{k = 1..n-1} (9*k - 3).

The programs for A147630, the canonical program `A147630.P14535170275121298868` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147630 has offset 1).

The definition of A147630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147630.P14535170275121298868

`(n+1)!*A097188(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147630

/-- `(n+1)!*A097188(n)` -/
def P14535170275121298868.Spec : Prop :=
  ∀ n, P14535170275121298868.a n = A147630 (n + 1)

theorem P14535170275121298868.correct : P14535170275121298868.Spec := by
  intro n
  simp only [A147630, Nat.add_sub_cancel]

end A147630

/-! ## A147630.P18139468211618811325

`∏[a(n-1)+9]` with `a(0)=1, a(1)=6`
-/

namespace A147630.P18139468211618811325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147630.P18139468211618811325

namespace A147630

/-- `∏[a(n-1)+9]` -/
def P18139468211618811325.Spec : Prop :=
  ∀ n, (P18139468211618811325.a n : ℤ) = A147630 (n + 1)

end A147630

/-! ## A147630.P8309015332357234231

`∏[record[lcm(4, n)+1]+n]`
-/

namespace A147630.P8309015332357234231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147630.P8309015332357234231

namespace A147630

/-- `∏[record[lcm(4, n)+1]+n]` -/
def P8309015332357234231.Spec : Prop :=
  ∀ n, (P8309015332357234231.a n : ℤ) = A147630 (n + 1)

end A147630

/-! ## A147630.P12343555919507442073

`lcm(3^n, ∏[1-3*n])`
-/

namespace A147630.P12343555919507442073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A147630.P12343555919507442073

namespace A147630

/-- `lcm(3^n, ∏[1-3*n])` -/
def P12343555919507442073.Spec : Prop :=
  ∀ n, (P12343555919507442073.a n : ℤ) = A147630 (n + 1)

end A147630

/-! ## A147630.P3191382481251660688

`(9*n-3)*a(n-1)` with `a(0)=1`
-/

namespace A147630.P3191382481251660688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 3) * a (n - 1)

end

end A147630.P3191382481251660688

namespace A147630

/-- `(9*n-3)*a(n-1)` -/
def P3191382481251660688.Spec : Prop :=
  ∀ n, P3191382481251660688.a n = A147630 (n + 1)

end A147630

/-!
# A147631: a(n) = Product_{k = 1..n-1} (9*k - 2).

The programs for A147631, there is no canonical definition to state claims against.
-/

/-! ## A147631.P14524134564713443748

`∏[a(n-1)+9]` with `a(0)=1, a(1)=7`
-/

namespace A147631.P14524134564713443748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147631.P14524134564713443748

/-! ## A147631.P4297196296326259064

`(9*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A147631.P4297196296326259064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 2) * a (n - 1)

end

end A147631.P4297196296326259064

/-! ## A147631.P15926901420524699198

`∏[3*comp[∑[(n+1)%3]]+1]`
-/

namespace A147631.P15926901420524699198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147631.P15926901420524699198

/-! ## A147631.P6842810711514607357

`∏[A310857(2*n)]`
-/

namespace A147631.P6842810711514607357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310857 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147631.P6842810711514607357

/-! ## A147631.P9132815091627946718

`∏[9*n+7]/(9*n+7)`
-/

namespace A147631.P9132815091627946718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (9 * n + 7 : ℚ)

end

end A147631.P9132815091627946718

/-!
# A147634: Number of permutations of 1..n with each sum of three adjacent terms unique.

The programs for A147634, there is no canonical definition to state claims against.
-/

/-! ## A147634.P12433681361651069117

`A147899(∑[A060361(n)])`
-/

namespace A147634.P12433681361651069117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147634.P12433681361651069117

/-! ## A147634.P6733665800912843471

`A147899(∑[A143571(n)])`
-/

namespace A147634.P6733665800912843471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147634.P6733665800912843471

/-! ## A147634.P6842266844577036385

`A028310(A147899(n+1))`
-/

namespace A147634.P6842266844577036385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147899 (n + 1)).toNat

end

end A147634.P6842266844577036385

/-! ## A147634.P4454703283441935730

`A147899(A250264(n+2))`
-/

namespace A147634.P4454703283441935730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147899 (A250264 (n + 2)).toNat

end

end A147634.P4454703283441935730

/-!
# A147638: The numbers B associated with the search for records in the ABC conjecture constrained as described in A147639.

The programs for A147638, there is no canonical definition to state claims against.
-/

/-! ## A147638.P7256340350603985005

`A143569(n)*A143701(n+2)`
-/

namespace A147638.P7256340350603985005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143569 n * A143701 (n + 2)

end

end A147638.P7256340350603985005

/-! ## A147638.P6856820151833667918

`lcm(A143701(n+2), A170898(n))`
-/

namespace A147638.P6856820151833667918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143701 (n + 2)) (A170898 n)

end

end A147638.P6856820151833667918

/-! ## A147638.P11457139479987757479

`A143690(A143662(n))*A143701(n+2)`
-/

namespace A147638.P11457139479987757479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143690 (A143662 n).toNat * A143701 (n + 2)

end

end A147638.P11457139479987757479

/-!
# A147639: Numbers C which generate successive records of the merit function of the ABC conjecture admitting only C which are powers of 2.

The programs for A147639, there is no canonical definition to state claims against.
-/

/-! ## A147639.P10254671168137546989

`4*(gcd(7, n+1)+1)^n`
-/

namespace A147639.P10254671168137546989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.gcd 7 (n + 1) + 1) ^ n

end

end A147639.P10254671168137546989

/-! ## A147639.P9133070916448037566

`4*(n+2-n%6)^n`
-/

namespace A147639.P9133070916448037566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 2 : ℤ) - ((n % 6 : ℕ) : ℤ)) ^ n

end

end A147639.P9133070916448037566

/-! ## A147639.P7231869270006996858

`4*(6*floor(n/6)+2)^n`
-/

namespace A147639.P7231869270006996858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (6 * ⌊(n : ℚ) / 6⌋ + 2) ^ n

end

end A147639.P7231869270006996858

/-!
# A147640: The numbers A associated with the search for records in the ABC conjecture constrained as described in A147639.

The programs for A147640, there is no canonical definition to state claims against.
-/

/-! ## A147640.P12760730263426285651

`A143700(∏{p}[n, #+2])`
-/

namespace A147640.P12760730263426285651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143700 (∏ p ∈ Nat.primeFactors (f1 n), (p + 2))

end

end A147640.P12760730263426285651

/-! ## A147640.P16280981013276335038

`A336466(∑[ceil((n+1)^n/9)])`
-/

namespace A147640.P16280981013276335038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147640.P16280981013276335038

/-! ## A147640.P2172482454571529913

`A143700(log2(4*(gcd(7, n+1)+1)^n))`
-/

namespace A147640.P2172482454571529913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143700 (SequenceMachineLib.roundAway (Real.logb 2 (4 * (Nat.gcd 7 (n + 1) + 1) ^ n : ℝ))).toNat

end

end A147640.P2172482454571529913

/-!
# A147644: Triangle read by rows: T(n, k) = binomial(n, k) if n < 3, otherwise T(n, k) = binomial(n, k) + 2*binomial(n-2, k-1).

The programs for A147644, the canonical program `A147644.P1419813907313181643` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147644 has offset 0).

The definition of A147644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147644.P1419813907313181643

`A028275(n)-2*char[4]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A147644

/-- `A028275(n)-2*char[4]` -/
def P1419813907313181643.Spec : Prop :=
  ∀ n, P1419813907313181643.a n = A147644 n

theorem P1419813907313181643.correct : P1419813907313181643.Spec := by
  intro n
  simp only [A147644]

end A147644

/-! ## A147644.P16561772470443071008

`root(A028275(n), A132126(n+2))`
-/

namespace A147644.P16561772470443071008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028275 n : ℝ) ^ (1 / (A132126 (n + 2) : ℝ))

end

end A147644.P16561772470443071008

namespace A147644

/-- `root(A028275(n), A132126(n+2))` -/
def P16561772470443071008.Spec : Prop :=
  ∀ n, P16561772470443071008.a n = (A147644 n : ℝ)

end A147644

/-! ## A147644.P8445116985708031130

`A028275(n)/ceil(A028275(n)/A109128(n))`
-/

namespace A147644.P8445116985708031130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 n : ℚ) / (⌈(A028275 n : ℚ) / (A109128 n : ℚ)⌉ : ℚ)

end

end A147644.P8445116985708031130

namespace A147644

/-- `A028275(n)/ceil(A028275(n)/A109128(n))` -/
def P8445116985708031130.Spec : Prop :=
  ∀ n, P8445116985708031130.a n = (A147644 n : ℚ)

end A147644

/-! ## A147644.P12987980516896676440

`gcd(A028275(n), A130779(A014682(n)))`
-/

namespace A147644.P12987980516896676440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028275 n) (A130779 (A014682 n).toNat)

end

end A147644.P12987980516896676440

namespace A147644

/-- `gcd(A028275(n), A130779(A014682(n)))` -/
def P12987980516896676440.Spec : Prop :=
  ∀ n, (P12987980516896676440.a n : ℤ) = A147644 n

end A147644

/-! ## A147644.P13810857757611439850

`A173075(n)+A028275(n)%A173075(n)`
-/

namespace A147644.P13810857757611439850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 n + Int.tmod (A028275 n) (A173075 n)

end

end A147644.P13810857757611439850

namespace A147644

/-- `A173075(n)+A028275(n)%A173075(n)` -/
def P13810857757611439850.Spec : Prop :=
  ∀ n, P13810857757611439850.a n = A147644 n

end A147644

/-! ## A147644.P5687906573368245770

`A028275(n)/A007318(eq[1, A072405(n)])`
-/

namespace A147644.P5687906573368245770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 n : ℚ) / (A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ)

end

end A147644.P5687906573368245770

namespace A147644

/-- `A028275(n)/A007318(eq[1, A072405(n)])` -/
def P5687906573368245770.Spec : Prop :=
  ∀ n, P5687906573368245770.a n = (A147644 n : ℚ)

end A147644

/-! ## A147644.P10097673228903551582

`gcd(A028275(n), A337104(n))`
-/

namespace A147644.P10097673228903551582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028275 n) (A337104 n)

end

end A147644.P10097673228903551582

namespace A147644

/-- `gcd(A028275(n), A337104(n))` -/
def P10097673228903551582.Spec : Prop :=
  ∀ n, (P10097673228903551582.a n : ℤ) = A147644 n

end A147644

/-! ## A147644.P7412472775675754757

`A028275(n)/A014963(A155864(n))`
-/

namespace A147644.P7412472775675754757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 n : ℚ) / (A014963 (A155864 n).toNat : ℚ)

end

end A147644.P7412472775675754757

namespace A147644

/-- `A028275(n)/A014963(A155864(n))` -/
def P7412472775675754757.Spec : Prop :=
  ∀ n, P7412472775675754757.a n = (A147644 n : ℚ)

end A147644

/-! ## A147644.P13571094028536769056

`A028275(n)/A253641(A014105(n))`
-/

namespace A147644.P13571094028536769056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 n : ℚ) / (A253641 (A014105 n).toNat : ℚ)

end

end A147644.P13571094028536769056

namespace A147644

/-- `A028275(n)/A253641(A014105(n))` -/
def P13571094028536769056.Spec : Prop :=
  ∀ n, P13571094028536769056.a n = (A147644 n : ℚ)

end A147644

/-!
# A147645: Number of distinct Mersenne primes dividing n.

The programs for A147645, the canonical program `A147645.P18114343884188253420` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147645 has offset 1).

The definition of A147645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147645.P14432748400662893710

`A154402(n+1)-A353786(n+1)`
-/

namespace A147645.P14432748400662893710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1) - A353786 (n + 1)

end

end A147645.P14432748400662893710

namespace A147645

/-- `A154402(n+1)-A353786(n+1)` -/
def P14432748400662893710.Spec : Prop :=
  ∀ n, P14432748400662893710.a n = A147645 (n + 1)

theorem P14432748400662893710.correct : P14432748400662893710.Spec := by
  intro n
  simp only [A147645, Nat.add_sub_cancel, A147645.P14432748400662893710.a, A147645.P18114343884188253420.f1, A147645.P18114343884188253420.a, A036987, A036987.P1789601236562705309.a, A154402, A154402.P17788350560659442917.a, A353786, A353786.P13595873615884970514.a, A305426, A305426.P17358610053433426674.f1, A305426.P17358610053433426674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147645

/-! ## A147645.P18114343884188253420

`∑{p}[n+1, A036987(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147645

/-- `∑{p}[n+1, A036987(#)]` -/
def P18114343884188253420.Spec : Prop :=
  ∀ n, P18114343884188253420.a n = A147645 (n + 1)

theorem P18114343884188253420.correct : P18114343884188253420.Spec := by
  intro n
  simp only [A147645, Nat.add_sub_cancel]

end A147645

/-! ## A147645.P12414086701798606949

`∑{p}[n+1, A355943(#)]`
-/

namespace A147645.P12414086701798606949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A355943 p

end

end A147645.P12414086701798606949

namespace A147645

/-- `∑{p}[n+1, A355943(#)]` -/
def P12414086701798606949.Spec : Prop :=
  ∀ n, P12414086701798606949.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P6990613258849028044

`∑{p}[n+1, A361465(#)]`
-/

namespace A147645.P6990613258849028044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A361465 p

end

end A147645.P6990613258849028044

namespace A147645

/-- `∑{p}[n+1, A361465(#)]` -/
def P6990613258849028044.Spec : Prop :=
  ∀ n, P6990613258849028044.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P15672232080256348177

`∑{p}[n+1, A364251(#)]`
-/

namespace A147645.P15672232080256348177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A364251 p

end

end A147645.P15672232080256348177

namespace A147645

/-- `∑{p}[n+1, A364251(#)]` -/
def P15672232080256348177.Spec : Prop :=
  ∀ n, P15672232080256348177.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P10995647432242448551

`∑{p}[n+1, A365421(#)]`
-/

namespace A147645.P10995647432242448551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A365421 p

end

end A147645.P10995647432242448551

namespace A147645

/-- `∑{p}[n+1, A365421(#)]` -/
def P10995647432242448551.Spec : Prop :=
  ∀ n, P10995647432242448551.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P777831175929969665

`∑{p}[n+1, A075802(#+1)]`
-/

namespace A147645.P777831175929969665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A075802 (p + 1)

end

end A147645.P777831175929969665

namespace A147645

/-- `∑{p}[n+1, A075802(#+1)]` -/
def P777831175929969665.Spec : Prop :=
  ∀ n, P777831175929969665.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P12205829079313772016

`∑{p}[n+1, A268340(#+1)]`
-/

namespace A147645.P12205829079313772016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A268340 (p + 1)

end

end A147645.P12205829079313772016

namespace A147645

/-- `∑{p}[n+1, A268340(#+1)]` -/
def P12205829079313772016.Spec : Prop :=
  ∀ n, P12205829079313772016.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P711812428573917513

`∑{p}[n+1, A303553(#+1)]`
-/

namespace A147645.P711812428573917513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A303553 (p + 1)

end

end A147645.P711812428573917513

namespace A147645

/-- `∑{p}[n+1, A303553(#+1)]` -/
def P711812428573917513.Spec : Prop :=
  ∀ n, P711812428573917513.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P7975305663242511746

`∑{p}[n+1, A303709(#+1)]`
-/

namespace A147645.P7975305663242511746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A303709 (p + 1)

end

end A147645.P7975305663242511746

namespace A147645

/-- `∑{p}[n+1, A303709(#+1)]` -/
def P7975305663242511746.Spec : Prop :=
  ∀ n, P7975305663242511746.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P16345586833094316055

`∑{d}[n+1, A059841(#-1)*A364251((n+1)/#)]`
-/

namespace A147645.P16345586833094316055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A364251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A147645.P16345586833094316055

namespace A147645

/-- `∑{d}[n+1, A059841(#-1)*A364251((n+1)/#)]` -/
def P16345586833094316055.Spec : Prop :=
  ∀ n, P16345586833094316055.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P14461846814435861115

`A080225(A335063(n+1))`
-/

namespace A147645.P14461846814435861115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A335063 (n + 1)).toNat

end

end A147645.P14461846814435861115

namespace A147645

/-- `A080225(A335063(n+1))` -/
def P14461846814435861115.Spec : Prop :=
  ∀ n, P14461846814435861115.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P8335633363496494251

`∑{p}[n+1, A000108(#)%2]`
-/

namespace A147645.P8335633363496494251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000108 p) 2

end

end A147645.P8335633363496494251

namespace A147645

/-- `∑{p}[n+1, A000108(#)%2]` -/
def P8335633363496494251.Spec : Prop :=
  ∀ n, P8335633363496494251.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P11081654374276101533

`A080225(A152691(n+1))`
-/

namespace A147645.P11081654374276101533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A152691 (n + 1)).toNat

end

end A147645.P11081654374276101533

namespace A147645

/-- `A080225(A152691(n+1))` -/
def P11081654374276101533.Spec : Prop :=
  ∀ n, P11081654374276101533.a n = A147645 (n + 1)

end A147645

/-! ## A147645.P4823580939840948603

`A080225(A174312(2*(n+1)))`
-/

namespace A147645.P4823580939840948603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A174312 (2 * (n + 1))).toNat

end

end A147645.P4823580939840948603

namespace A147645

/-- `A080225(A174312(2*(n+1)))` -/
def P4823580939840948603.Spec : Prop :=
  ∀ n, P4823580939840948603.a n = A147645 (n + 1)

end A147645

/-!
# A147646: If A139251 is written as a triangle with rows of lengths 1, 2, 4, 8, 16, ..., the n-th row begins with 2^n followed by the first 2^n-1 terms of the present sequence.

The programs for A147646, there is no canonical definition to state claims against.
-/

/-! ## A147646.P3096174138888028498

`Δ[A159795(n)]`
-/

namespace A147646.P3096174138888028498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147646.P3096174138888028498

/-! ## A147646.P15035061969111716633

`Δ[A194811(n)]`
-/

namespace A147646.P15035061969111716633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147646.P15035061969111716633

/-! ## A147646.P9135696932645700511

`2*A151688(n)`
-/

namespace A147646.P9135696932645700511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151688 n

end

end A147646.P9135696932645700511

/-! ## A147646.P13297849921211832254

`4*A152980(n)`
-/

namespace A147646.P13297849921211832254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A152980 n

end

end A147646.P13297849921211832254

/-! ## A147646.P17591679252427586234

`Δ[2*A159793(n)]`
-/

namespace A147646.P17591679252427586234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147646.P17591679252427586234

/-! ## A147646.P5264357440061642339

`Δ[4*A153006(n)]`
-/

namespace A147646.P5264357440061642339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147646.P5264357440061642339

/-! ## A147646.P2142896317312650694

`4/3*A159785(n+1)`
-/

namespace A147646.P2142896317312650694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A159785 (n + 1) : ℚ)

end

end A147646.P2142896317312650694

/-! ## A147646.P8917946162656345835

`A139251(A004755(n+1))`
-/

namespace A147646.P8917946162656345835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A004755 (n + 1)).toNat

end

end A147646.P8917946162656345835

/-! ## A147646.P16534118660316421696

`A139251(A004757(n+1))`
-/

namespace A147646.P16534118660316421696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A004757 (n + 1)).toNat

end

end A147646.P16534118660316421696

/-! ## A147646.P1787502251546995396

`A139251(A206332(n+2))`
-/

namespace A147646.P1787502251546995396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A206332 (n + 2)).toNat

end

end A147646.P1787502251546995396

/-! ## A147646.P16221259363383216551

`A152980(n)+Δ[A159794(n)]`
-/

namespace A147646.P16221259363383216551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n + (f1 (n + 1) - f1 n)

end

end A147646.P16221259363383216551

/-! ## A147646.P5175922845255489911

`A151548(n+1)+A151548(n)`
-/

namespace A147646.P5175922845255489911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 (n + 1) + A151548 n

end

end A147646.P5175922845255489911

/-! ## A147646.P6283434279757769887

`A159785(n+1)+A152980(n)`
-/

namespace A147646.P6283434279757769887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) + A152980 n

end

end A147646.P6283434279757769887

/-! ## A147646.P12543521853830896918

`A159795(n+1)-A159795(n)`
-/

namespace A147646.P12543521853830896918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 (n + 1) - A159795 n

end

end A147646.P12543521853830896918

/-! ## A147646.P99586776778006658

`A194811(n+1)-A194811(n)`
-/

namespace A147646.P99586776778006658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 (n + 1) - A194811 n

end

end A147646.P99586776778006658

/-! ## A147646.P12678263092927587280

`2*(A151555(n)+A151550(n))`
-/

namespace A147646.P12678263092927587280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151555 n + A151550 n)

end

end A147646.P12678263092927587280

/-! ## A147646.P10478272719957003973

`A152980(n)/(A033999(n)/2)²`
-/

namespace A147646.P10478272719957003973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152980 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A147646.P10478272719957003973

/-! ## A147646.P1611522117396896461

`Δ[A160164(n)+A139250(n+1)]`
-/

namespace A147646.P1611522117396896461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n + A139250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147646.P1611522117396896461

/-! ## A147646.P9809086157687879134

`A159785(n+1)+Δ[A153006(n)]`
-/

namespace A147646.P9809086157687879134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) + (f1 (n + 1) - f1 n)

end

end A147646.P9809086157687879134

/-! ## A147646.P4169648789717829999

`A151688(n)+A152980(n)+A152980(n)`
-/

namespace A147646.P4169648789717829999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n + (A152980 n + A152980 n)

end

end A147646.P4169648789717829999

/-!
# A147648: Number of distinct even superperfect numbers dividing n.

The programs for A147648, the canonical program `A147648.P4961228732914761023` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147648 has offset 1).

The definition of A147648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147648.P2397972776656477366

`A078349(xor(n, n+1))`
-/

namespace A147648.P2397972776656477366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078349 (Nat.xor n (n + 1))

end

end A147648.P2397972776656477366

namespace A147648

/-- `A078349(xor(n, n+1))` -/
def P2397972776656477366.Spec : Prop :=
  ∀ n, P2397972776656477366.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P9925736262447245110

`A292598(xor(n, n+1))`
-/

namespace A147648.P9925736262447245110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292598 (Nat.xor n (n + 1))

end

end A147648.P9925736262447245110

namespace A147648

/-- `A292598(xor(n, n+1))` -/
def P9925736262447245110.Spec : Prop :=
  ∀ n, P9925736262447245110.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P29155970432322648

`floor(log2(A005153(val(n+1, 2)+1)))`
-/

namespace A147648.P29155970432322648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A005153 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A147648.P29155970432322648

namespace A147648

/-- `floor(log2(A005153(val(n+1, 2)+1)))` -/
def P29155970432322648.Spec : Prop :=
  ∀ n, (P29155970432322648.a n : ℤ) = A147648 (n + 1)

end A147648

/-! ## A147648.P13135726841572604535

`round(log(A139250(val(n+1, 2)+1)))`
-/

namespace A147648.P13135726841572604535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A139250 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℝ))

end

end A147648.P13135726841572604535

namespace A147648

/-- `round(log(A139250(val(n+1, 2)+1)))` -/
def P13135726841572604535.Spec : Prop :=
  ∀ n, P13135726841572604535.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P11948235398946080934

`round(log2(A007091(val(n+1, 2)+1)))`
-/

namespace A147648.P11948235398946080934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A007091 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℝ))

end

end A147648.P11948235398946080934

namespace A147648

/-- `round(log2(A007091(val(n+1, 2)+1)))` -/
def P11948235398946080934.Spec : Prop :=
  ∀ n, P11948235398946080934.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P4961228732914761023

`round(log2(A284389(val(3*n-(n-2), 2))))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147648

/-- `round(log2(A284389(val(3*n-(n-2), 2))))` -/
def P4961228732914761023.Spec : Prop :=
  ∀ n, P4961228732914761023.a n = A147648 (n + 1)

theorem P4961228732914761023.correct : P4961228732914761023.Spec := by
  intro n
  simp only [A147648, Nat.add_sub_cancel]

end A147648

/-! ## A147648.P7652608900772210605

`A078826(xor(n, n+1))`
-/

namespace A147648.P7652608900772210605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078826 (Nat.xor n (n + 1))

end

end A147648.P7652608900772210605

namespace A147648

/-- `A078826(xor(n, n+1))` -/
def P7652608900772210605.Spec : Prop :=
  ∀ n, P7652608900772210605.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P11476409135494198494

`A072627(xor(n, n+1)+1)`
-/

namespace A147648.P11476409135494198494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (Nat.xor n (n + 1) + 1)

end

end A147648.P11476409135494198494

namespace A147648

/-- `A072627(xor(n, n+1)+1)` -/
def P11476409135494198494.Spec : Prop :=
  ∀ n, P11476409135494198494.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P8903775789389123040

`A322977(xor(n, n+1)+1)`
-/

namespace A147648.P8903775789389123040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (Nat.xor n (n + 1) + 1)

end

end A147648.P8903775789389123040

namespace A147648

/-- `A322977(xor(n, n+1)+1)` -/
def P8903775789389123040.Spec : Prop :=
  ∀ n, P8903775789389123040.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P232254654099203775

`A072627(2*A006519(n+1))`
-/

namespace A147648.P232254654099203775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (2 * A006519 (n + 1)).toNat

end

end A147648.P232254654099203775

namespace A147648

/-- `A072627(2*A006519(n+1))` -/
def P232254654099203775.Spec : Prop :=
  ∀ n, P232254654099203775.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P12170451985928403028

`A000720(A001511(n+1)%A104923(n+1))`
-/

namespace A147648.P12170451985928403028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A001511 (n + 1)) (A104923 (n + 1))).toNat

end

end A147648.P12170451985928403028

namespace A147648

/-- `A000720(A001511(n+1)%A104923(n+1))` -/
def P12170451985928403028.Spec : Prop :=
  ∀ n, P12170451985928403028.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P12843372547875406624

`A001221((val(n+1, 2)+1)!)`
-/

namespace A147648.P12843372547875406624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A147648.P12843372547875406624

namespace A147648

/-- `A001221((val(n+1, 2)+1)!)` -/
def P12843372547875406624.Spec : Prop :=
  ∀ n, P12843372547875406624.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P8225095948862258544

`A001221(log2(xor(n, n+1)+1)!)`
-/

namespace A147648.P8225095948862258544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ))).toNat)

end

end A147648.P8225095948862258544

namespace A147648

/-- `A001221(log2(xor(n, n+1)+1)!)` -/
def P8225095948862258544.Spec : Prop :=
  ∀ n, P8225095948862258544.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P5363076970485610983

`A001221(val(3*n-(n-2), 2)!)`
-/

namespace A147648.P5363076970485610983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2))

end

end A147648.P5363076970485610983

namespace A147648

/-- `A001221(val(3*n-(n-2), 2)!)` -/
def P5363076970485610983.Spec : Prop :=
  ∀ n, P5363076970485610983.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P8730651707900150293

`A001221(Δ[A005187(n)]!)`
-/

namespace A147648.P8730651707900150293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A147648.P8730651707900150293

namespace A147648

/-- `A001221(Δ[A005187(n)]!)` -/
def P8730651707900150293.Spec : Prop :=
  ∀ n, P8730651707900150293.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P15321246370765585482

`A001221(A001511(n+1)!)`
-/

namespace A147648.P15321246370765585482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A001511 (n + 1)).toNat)

end

end A147648.P15321246370765585482

namespace A147648

/-- `A001221(A001511(n+1)!)` -/
def P15321246370765585482.Spec : Prop :=
  ∀ n, P15321246370765585482.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P1659724638464732571

`A001221((Δ[A011371(n)]+1)!)`
-/

namespace A147648.P1659724638464732571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n + 1).toNat)

end

end A147648.P1659724638464732571

namespace A147648

/-- `A001221((Δ[A011371(n)]+1)!)` -/
def P1659724638464732571.Spec : Prop :=
  ∀ n, P1659724638464732571.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P2909980012288196791

`A001221(Δ[A011371(2*n)]!)`
-/

namespace A147648.P2909980012288196791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A147648.P2909980012288196791

namespace A147648

/-- `A001221(Δ[A011371(2*n)]!)` -/
def P2909980012288196791.Spec : Prop :=
  ∀ n, P2909980012288196791.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P17217711935237740946

`A332998(A342410(2*n+1)²)`
-/

namespace A147648.P17217711935237740946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A342410 (2 * n + 1) ^ 2).toNat

end

end A147648.P17217711935237740946

namespace A147648

/-- `A332998(A342410(2*n+1)²)` -/
def P17217711935237740946.Spec : Prop :=
  ∀ n, P17217711935237740946.a n = A147648 (n + 1)

end A147648

/-! ## A147648.P8160435173500887741

`and(A115362(n), A231213(n+1))`
-/

namespace A147648.P8160435173500887741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115362 n) (A231213 (n + 1))

end

end A147648.P8160435173500887741

namespace A147648

/-- `and(A115362(n), A231213(n+1))` -/
def P8160435173500887741.Spec : Prop :=
  ∀ n, P8160435173500887741.a n = A147648 (n + 1)

end A147648

/-!
# A147649: Binary prejudiced single Sierpinski modulo two Pascal shift: Prejudice function: p(n,m)=If[Mod[Binomial[n - 2, m - 1], 2] == 0, Round[Log[2]]/2, 1]; t(n,m)=Binomial[n, m] + If[n > 2, 2*Binomial[n - 2, m - 1]*p(n, m), 0]; Mod[If[n > 2, 2*Binomial[n - 2, m - 1]*p(n,m), 0],2]=0.

The programs for A147649, there is no canonical definition to state claims against.
-/

/-! ## A147649.P7822824158043120908

`A096288(A059328(n))-1`
-/

namespace A147649.P7822824158043120908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (A059328 n).toNat - 1

end

end A147649.P7822824158043120908

/-! ## A147649.P16008321943918599924

`A308590(A004525(A007318(n)²))`
-/

namespace A147649.P16008321943918599924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (A004525 (A007318 n ^ 2).toNat).toNat

end

end A147649.P16008321943918599924

/-! ## A147649.P15802801416539822160

`A275894(A180183(n+1)%A145549(n+4))`
-/

namespace A147649.P15802801416539822160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 (Int.tmod (A180183 (n + 1)) (A145549 (n + 4))).toNat

end

end A147649.P15802801416539822160

/-! ## A147649.P1540022093573410615

`A275894(A007318(n)%A334186(2*(n+1)))`
-/

namespace A147649.P1540022093573410615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 (Int.tmod (A007318 n) (A334186 (2 * (n + 1)))).toNat

end

end A147649.P1540022093573410615

/-! ## A147649.P13134216377228761174

`A137708(A007318(n)%A324317(n+5))`
-/

namespace A147649.P13134216377228761174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (Int.tmod (A007318 n) (A324317 (n + 5))).toNat

end

end A147649.P13134216377228761174

/-!
# A147650: First trisection of A061040.

The programs for A147650, the canonical program `A147650.P22352345696392954` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147650 has offset 1).

The definition of A147650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147650.P22352345696392954

`(3*(n+1))²/A154629(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147650

/-- `(3*(n+1))²/A154629(n)` -/
def P22352345696392954.Spec : Prop :=
  ∀ n, P22352345696392954.a n = (A147650 (n + 1) : ℚ)

end A147650

/-! ## A147650.P14554690347347184032

`A017162(n+1)/A147674(n)`
-/

namespace A147650.P14554690347347184032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017162 (n + 1) : ℚ) / (A147674 n : ℚ)

end

end A147650.P14554690347347184032

namespace A147650

/-- `A017162(n+1)/A147674(n)` -/
def P14554690347347184032.Spec : Prop :=
  ∀ n, P14554690347347184032.a n = (A147650 (n + 1) : ℚ)

end A147650

/-! ## A147650.P6392182174749181281

`A061040(3*(n+1))`
-/

namespace A147650.P6392182174749181281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061040 (3 * (n + 1))

end

end A147650.P6392182174749181281

namespace A147650

/-- `A061040(3*(n+1))` -/
def P6392182174749181281.Spec : Prop :=
  ∀ n, P6392182174749181281.a n = A147650 (n + 1)

end A147650

/-! ## A147650.P6237894817572037441

`or(A000007(n), A061040(A008486(n+1)))`
-/

namespace A147650.P6237894817572037441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A061040 (A008486 (n + 1)).toNat)

end

end A147650.P6237894817572037441

namespace A147650

/-- `or(A000007(n), A061040(A008486(n+1)))` -/
def P6237894817572037441.Spec : Prop :=
  ∀ n, P6237894817572037441.a n = A147650 (n + 1)

end A147650

/-! ## A147650.P11231998525306208039

`A061040(A008486(n+1))+char[A017370(n)]`
-/

namespace A147650.P11231998525306208039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061040 (A008486 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A147650.P11231998525306208039

namespace A147650

/-- `A061040(A008486(n+1))+char[A017370(n)]` -/
def P11231998525306208039.Spec : Prop :=
  ∀ n, P11231998525306208039.a n = A147650 (n + 1)

end A147650

/-! ## A147650.P6662029572294343526

`or(A000035(n+1), A061040(A008486(n+1)))`
-/

namespace A147650.P6662029572294343526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A061040 (A008486 (n + 1)).toNat)

end

end A147650.P6662029572294343526

namespace A147650

/-- `or(A000035(n+1), A061040(A008486(n+1)))` -/
def P6662029572294343526.Spec : Prop :=
  ∀ n, P6662029572294343526.a n = A147650 (n + 1)

end A147650

/-! ## A147650.P14092780164722931774

`A061040(A008486(n+1))%A001248(n+1)²`
-/

namespace A147650.P14092780164722931774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061040 (A008486 (n + 1)).toNat) (A001248 (n + 1) ^ 2)

end

end A147650.P14092780164722931774

namespace A147650

/-- `A061040(A008486(n+1))%A001248(n+1)²` -/
def P14092780164722931774.Spec : Prop :=
  ∀ n, P14092780164722931774.a n = A147650 (n + 1)

end A147650

/-! ## A147650.P477773025000053547

`A061040(A008486(n+1))+char[A254844(n+1)]`
-/

namespace A147650.P477773025000053547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254844 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061040 (A008486 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A147650.P477773025000053547

namespace A147650

/-- `A061040(A008486(n+1))+char[A254844(n+1)]` -/
def P477773025000053547.Spec : Prop :=
  ∀ n, P477773025000053547.a n = A147650 (n + 1)

end A147650

/-! ## A147650.P9771079016920941709

`A061040(A008486(n+1))/A001222((-1)^∑[n]+6)`
-/

namespace A147650.P9771079016920941709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061040 (A008486 (n + 1)).toNat : ℚ) / (A001222 ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 6).toNat : ℚ)

end

end A147650.P9771079016920941709

namespace A147650

/-- `A061040(A008486(n+1))/A001222((-1)^∑[n]+6)` -/
def P9771079016920941709.Spec : Prop :=
  ∀ n, P9771079016920941709.a n = (A147650 (n + 1) : ℚ)

end A147650

/-! ## A147650.P16892844143190619554

`A300295(n)-A008585(A144454(n+1))`
-/

namespace A147650.P16892844143190619554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300295 n - A008585 (A144454 (n + 1)).toNat

end

end A147650.P16892844143190619554

namespace A147650

/-- `A300295(n)-A008585(A144454(n+1))` -/
def P16892844143190619554.Spec : Prop :=
  ∀ n, P16892844143190619554.a n = A147650 (n + 1)

end A147650

/-!
# A147651: First trisection of A028560.

The programs for A147651, the canonical program `A147651.P5567796470201540316` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147651 has offset 0).

The definition of A147651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147651.P5567796470201540316

`9*n*(n+2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147651

/-- `9*n*(n+2)` -/
def P5567796470201540316.Spec : Prop :=
  ∀ n, (P5567796470201540316.a n : ℤ) = A147651 n

theorem P5567796470201540316.correct : P5567796470201540316.Spec := by
  intro n
  simp only [A147651]

end A147651

/-! ## A147651.P18245008570540106904

`A028560(3*n)`
-/

namespace A147651.P18245008570540106904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (3 * n)

end

end A147651.P18245008570540106904

namespace A147651

/-- `A028560(3*n)` -/
def P18245008570540106904.Spec : Prop :=
  ∀ n, P18245008570540106904.a n = A147651 n

theorem P18245008570540106904.correct : P18245008570540106904.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P18245008570540106904.a, A147651.P5567796470201540316.a, A028560, A028560.P2309686278855513759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P9169175390017290651

`record[9*n*(n-2)]`
-/

namespace A147651.P9169175390017290651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147651.P9169175390017290651

namespace A147651

/-- `record[9*n*(n-2)]` -/
def P9169175390017290651.Spec : Prop :=
  ∀ n, P9169175390017290651.a n = A147651 n

end A147651

/-! ## A147651.P14591995691253167918

`∑[a(n-1)+18]` with `a(0)=0, a(1)=27`
-/

namespace A147651.P14591995691253167918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 27] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147651.P14591995691253167918

namespace A147651

/-- `∑[a(n-1)+18]` -/
def P14591995691253167918.Spec : Prop :=
  ∀ n, (P14591995691253167918.a n : ℤ) = A147651 n

end A147651

/-! ## A147651.P958222890106868626

`(record[xor(3, n)]-n)²-9`
-/

namespace A147651.P958222890106868626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)) ^ 2 - 9

end

end A147651.P958222890106868626

namespace A147651

/-- `(record[xor(3, n)]-n)²-9` -/
def P958222890106868626.Spec : Prop :=
  ∀ n, P958222890106868626.a n = A147651 n

end A147651

/-! ## A147651.P3211963415989371415

`A259055(n)-7`
-/

namespace A147651.P3211963415989371415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n - 7

end

end A147651.P3211963415989371415

namespace A147651

/-- `A259055(n)-7` -/
def P3211963415989371415.Spec : Prop :=
  ∀ n, P3211963415989371415.a n = A147651 n

theorem P3211963415989371415.correct : P3211963415989371415.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P3211963415989371415.a, A147651.P5567796470201540316.a, A259055, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P6947234008768945460

`A157872(n+1)-6`
-/

namespace A147651.P6947234008768945460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157872 (n + 1) - 6

end

end A147651.P6947234008768945460

namespace A147651

/-- `A157872(n+1)-6` -/
def P6947234008768945460.Spec : Prop :=
  ∀ n, P6947234008768945460.a n = A147651 n

theorem P6947234008768945460.correct : P6947234008768945460.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P6947234008768945460.a, A147651.P5567796470201540316.a, A157872, A157872.P14767788552816275263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P17161233050478785736

`A136016(n+1)-8`
-/

namespace A147651.P17161233050478785736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136016 (n + 1) - 8

end

end A147651.P17161233050478785736

namespace A147651

/-- `A136016(n+1)-8` -/
def P17161233050478785736.Spec : Prop :=
  ∀ n, P17161233050478785736.a n = A147651 n

theorem P17161233050478785736.correct : P17161233050478785736.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P17161233050478785736.a, A147651.P5567796470201540316.a, A136016, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P1908782017197545878

`A247792(n+1)-10`
-/

namespace A147651.P1908782017197545878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 (n + 1) - 10

end

end A147651.P1908782017197545878

namespace A147651

/-- `A247792(n+1)-10` -/
def P1908782017197545878.Spec : Prop :=
  ∀ n, P1908782017197545878.a n = A147651 n

theorem P1908782017197545878.correct : P1908782017197545878.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P1908782017197545878.a, A147651.P5567796470201540316.a, A247792, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P1413431527215940991

`A152751(n)+24*n`
-/

namespace A147651.P1413431527215940991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n + (24 * n : ℤ)

end

end A147651.P1413431527215940991

namespace A147651

/-- `A152751(n)+24*n` -/
def P1413431527215940991.Spec : Prop :=
  ∀ n, P1413431527215940991.a n = A147651 n

theorem P1413431527215940991.correct : P1413431527215940991.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P1413431527215940991.a, A147651.P5567796470201540316.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P17811942307275804694

`∑[9*comp[A004277(n)]]`
-/

namespace A147651.P17811942307275804694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147651.P17811942307275804694

namespace A147651

/-- `∑[9*comp[A004277(n)]]` -/
def P17811942307275804694.Spec : Prop :=
  ∀ n, (P17811942307275804694.a n : ℤ) = A147651 n

end A147651

/-! ## A147651.P6630745729842828246

`∑[A139245(n+1)]-(2-n)²`
-/

namespace A147651.P6630745729842828246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 - (n : ℤ)) ^ 2

end

end A147651.P6630745729842828246

namespace A147651

/-- `∑[A139245(n+1)]-(2-n)²` -/
def P6630745729842828246.Spec : Prop :=
  ∀ n, P6630745729842828246.a n = A147651 n

end A147651

/-! ## A147651.P16058365177456774294

`A013656(n)+A008602(n)`
-/

namespace A147651.P16058365177456774294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n + A008602 n

end

end A147651.P16058365177456774294

namespace A147651

/-- `A013656(n)+A008602(n)` -/
def P16058365177456774294.Spec : Prop :=
  ∀ n, P16058365177456774294.a n = A147651 n

theorem P16058365177456774294.correct : P16058365177456774294.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P16058365177456774294.a, A147651.P5567796470201540316.a, A008602, A008602.P10803716924039054280.a, A013656, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P3849076074632627462

`A016766(n)+A008600(n)`
-/

namespace A147651.P3849076074632627462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A008600 n

end

end A147651.P3849076074632627462

namespace A147651

/-- `A016766(n)+A008600(n)` -/
def P3849076074632627462.Spec : Prop :=
  ∀ n, P3849076074632627462.a n = A147651 n

theorem P3849076074632627462.correct : P3849076074632627462.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P3849076074632627462.a, A147651.P5567796470201540316.a, A008600, A008600.P8081908058967824863.a, A016766, A016766.P3834823630241441293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P5373921875770190308

`A045945(n)+A008597(n)`
-/

namespace A147651.P5373921875770190308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A008597 n

end

end A147651.P5373921875770190308

namespace A147651

/-- `A045945(n)+A008597(n)` -/
def P5373921875770190308.Spec : Prop :=
  ∀ n, P5373921875770190308.a n = A147651 n

theorem P5373921875770190308.correct : P5373921875770190308.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P5373921875770190308.a, A147651.P5567796470201540316.a, A008597, A008597.P11564373174620697085.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P9708911784874873253

`A098847(n)+A033587(n)`
-/

namespace A147651.P9708911784874873253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098847 n + A033587 n

end

end A147651.P9708911784874873253

namespace A147651

/-- `A098847(n)+A033587(n)` -/
def P9708911784874873253.Spec : Prop :=
  ∀ n, P9708911784874873253.a n = A147651 n

theorem P9708911784874873253.correct : P9708911784874873253.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P9708911784874873253.a, A147651.P5567796470201540316.a, A033587, A033587.P16272004082571904291.a, A098847, A098847.P15102155222867633188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P7671217805790676828

`A098848(n)+A033586(n)`
-/

namespace A147651.P7671217805790676828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098848 n + A033586 n

end

end A147651.P7671217805790676828

namespace A147651

/-- `A098848(n)+A033586(n)` -/
def P7671217805790676828.Spec : Prop :=
  ∀ n, P7671217805790676828.a n = A147651 n

theorem P7671217805790676828.correct : P7671217805790676828.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P7671217805790676828.a, A147651.P5567796470201540316.a, A033586, A033586.P18185911393067431697.a, A098848, A098848.P13089362090935355705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P9199737725101845499

`A098849(n)+A033585(n)`
-/

namespace A147651.P9199737725101845499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098849 n + A033585 n

end

end A147651.P9199737725101845499

namespace A147651

/-- `A098849(n)+A033585(n)` -/
def P9199737725101845499.Spec : Prop :=
  ∀ n, P9199737725101845499.a n = A147651 n

theorem P9199737725101845499.correct : P9199737725101845499.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P9199737725101845499.a, A147651.P5567796470201540316.a, A033585, A033585.P9867637388797284521.a, A098849, A098849.P2368772450570550712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P15067116765231286406

`A098603(n)+A035008(n)`
-/

namespace A147651.P15067116765231286406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 n + A035008 n

end

end A147651.P15067116765231286406

namespace A147651

/-- `A098603(n)+A035008(n)` -/
def P15067116765231286406.Spec : Prop :=
  ∀ n, P15067116765231286406.a n = A147651 n

theorem P15067116765231286406.correct : P15067116765231286406.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P15067116765231286406.a, A147651.P5567796470201540316.a, A035008, A035008.P9220570800855289153.a, A098603, A098603.P15074787285242523117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-! ## A147651.P6273853615728311716

`A120071(n)+A014635(n)`
-/

namespace A147651.P6273853615728311716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120071 n + A014635 n

end

end A147651.P6273853615728311716

namespace A147651

/-- `A120071(n)+A014635(n)` -/
def P6273853615728311716.Spec : Prop :=
  ∀ n, P6273853615728311716.a n = A147651 n

theorem P6273853615728311716.correct : P6273853615728311716.Spec := by
  intro n
  simp only [A147651, Nat.add_sub_cancel, A147651.P6273853615728311716.a, A147651.P5567796470201540316.a, A014635, A014635.P12617269699985302371.a, A120071, A120071.P10160882043029890963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147651

/-!
# A147652: Expansion of 1/(1 - x^4 - x^5 - x^6 + x^10).

The programs for A147652, the canonical program `A147652.P3374390835241062914` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147652 has offset 0).

The definition of A147652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6+x^10))` (program `A147652.P3374390835241062914`, by `A147652.P3374390835241062914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147652.P9140347194738634565

`a(n-4)+a(n-5)+a(n-6)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=0, a(8)=1, a(9)=2`
-/

namespace A147652.P9140347194738634565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 1, 0, 1, 2] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 6) - a (n - 10)

end

end A147652.P9140347194738634565

namespace A147652

/-- `a(n-4)+a(n-5)+a(n-6)-a(n-10)` -/
def P9140347194738634565.Spec : Prop :=
  ∀ n, P9140347194738634565.a n = A147652 n

end A147652

/-! ## A147652.P3374390835241062914

`ogf(1/(1-x^4-x^5-x^6+x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147652

/-- `ogf(1/(1-x^4-x^5-x^6+x^10))` -/
def P3374390835241062914.Spec : Prop :=
  ∀ n, P3374390835241062914.a n = A147652 n

theorem P3374390835241062914.correct : P3374390835241062914.Spec := by
  intro n
  simp only [A147652]

end A147652

/-!
# A147655: a(n) is the coefficient of x^n in the polynomial given by Product_{k>=1} (1 + prime(k)*x^k).

The programs for A147655, there is no canonical definition to state claims against.
-/

/-! ## A147655.P8915563611324395452

`A147544(n)-a(n-1)` with `a(0)=1`
-/

namespace A147655.P8915563611324395452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147544 n - a (n - 1)

end

end A147655.P8915563611324395452

/-!
# A147656: The arithmetic mean of the n-th and (n+1)-st cubes, rounded down.

The programs for A147656, the canonical program `A147656.P10187990946585285587` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147656 has offset 0).

The definition of A147656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147656.P15347830797083530551

`(n^3+(n+1)^3-1)/2`
-/

namespace A147656.P15347830797083530551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 + (n + 1) ^ 3 : ℤ) - 1 : ℚ) / 2

end

end A147656.P15347830797083530551

namespace A147656

/-- `(n^3+(n+1)^3-1)/2` -/
def P15347830797083530551.Spec : Prop :=
  ∀ n, P15347830797083530551.a n = (A147656 n : ℚ)

theorem P15347830797083530551.correct : P15347830797083530551.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A147656, Nat.add_sub_cancel, A147656.P15347830797083530551.a, A147656.P10187990946585285587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A147656, Nat.add_sub_cancel, A147656.P15347830797083530551.a, A147656.P10187990946585285587.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A147656

/-! ## A147656.P10187990946585285587

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=17, a(3)=45`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147656

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10187990946585285587.Spec : Prop :=
  ∀ n, P10187990946585285587.a n = A147656 n

theorem P10187990946585285587.correct : P10187990946585285587.Spec := by
  intro n
  simp only [A147656]

end A147656

/-! ## A147656.P1094721593180819349

`A081435(n)-1`
-/

namespace A147656.P1094721593180819349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n - 1

end

end A147656.P1094721593180819349

namespace A147656

/-- `A081435(n)-1` -/
def P1094721593180819349.Spec : Prop :=
  ∀ n, P1094721593180819349.a n = A147656 n

end A147656

/-! ## A147656.P16211120700436193145

`A027480(n)+A006003(n)`
-/

namespace A147656.P16211120700436193145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + A006003 n

end

end A147656.P16211120700436193145

namespace A147656

/-- `A027480(n)+A006003(n)` -/
def P16211120700436193145.Spec : Prop :=
  ∀ n, P16211120700436193145.a n = A147656 n

end A147656

/-! ## A147656.P5821968534016805832

`A000578(n)+A045943(n)`
-/

namespace A147656.P5821968534016805832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A045943 n

end

end A147656.P5821968534016805832

namespace A147656

/-- `A000578(n)+A045943(n)` -/
def P5821968534016805832.Spec : Prop :=
  ∀ n, P5821968534016805832.a n = A147656 n

end A147656

/-! ## A147656.P7057280510713105360

`floor((A000578(n)+A000578(n+1))/2)`
-/

namespace A147656.P7057280510713105360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000578 n + A000578 (n + 1) : ℚ) / 2⌋

end

end A147656.P7057280510713105360

namespace A147656

/-- `floor((A000578(n)+A000578(n+1))/2)` -/
def P7057280510713105360.Spec : Prop :=
  ∀ n, P7057280510713105360.a n = A147656 n

end A147656

/-! ## A147656.P1599272673501081549

`∑[ceil(3*n/acot(n))]`
-/

namespace A147656.P1599272673501081549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147656.P1599272673501081549

namespace A147656

/-- `∑[ceil(3*n/acot(n))]` -/
def P1599272673501081549.Spec : Prop :=
  ∀ n, P1599272673501081549.a n = A147656 n

end A147656

/-! ## A147656.P3241408776427975188

`∑[round(3*n/acot(n))]`
-/

namespace A147656.P3241408776427975188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147656.P3241408776427975188

namespace A147656

/-- `∑[round(3*n/acot(n))]` -/
def P3241408776427975188.Spec : Prop :=
  ∀ n, P3241408776427975188.a n = A147656 n

end A147656

/-! ## A147656.P10488933045250146418

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=4, a(2)=9`
-/

namespace A147656.P10488933045250146418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 9] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147656.P10488933045250146418

namespace A147656

/-- `∑[∑[a(n-1)+6]]` -/
def P10488933045250146418.Spec : Prop :=
  ∀ n, (P10488933045250146418.a n : ℤ) = A147656 n

end A147656

/-! ## A147656.P14262329689813104430

`3*n²+a(n-1)+1` with `a(0)=0`
-/

namespace A147656.P14262329689813104430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n ^ 2 + (a (n - 1) + 1)

end

end A147656.P14262329689813104430

namespace A147656

/-- `3*n²+a(n-1)+1` -/
def P14262329689813104430.Spec : Prop :=
  ∀ n, (P14262329689813104430.a n : ℤ) = A147656 n

end A147656

/-! ## A147656.P16244271284633583895

`n^3-∑[a(n-1)-3]` with `a(0)=0`
-/

namespace A147656.P16244271284633583895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147656.P16244271284633583895

namespace A147656

/-- `n^3-∑[a(n-1)-3]` -/
def P16244271284633583895.Spec : Prop :=
  ∀ n, P16244271284633583895.a n = A147656 n

end A147656

/-! ## A147656.P458470490174785074

`a(n-1)+3*n*n+1` with `a(0)=0`
-/

namespace A147656.P458470490174785074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (3 * (n * n) + 1)

end

end A147656.P458470490174785074

namespace A147656

/-- `a(n-1)+3*n*n+1` -/
def P458470490174785074.Spec : Prop :=
  ∀ n, (P458470490174785074.a n : ℤ) = A147656 n

end A147656

/-! ## A147656.P17474326246547709834

`n*(lcm(n, n+1)+(n+3)/2)`
-/

namespace A147656.P17474326246547709834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.lcm n (n + 1) : ℚ) + (n + 3 : ℚ) / 2)

end

end A147656.P17474326246547709834

namespace A147656

/-- `n*(lcm(n, n+1)+(n+3)/2)` -/
def P17474326246547709834.Spec : Prop :=
  ∀ n, P17474326246547709834.a n = (A147656 n : ℚ)

end A147656

/-! ## A147656.P2517229021048506805

`floor(lcm(2*n+1, ∑[n])+n-1+ϕ)`
-/

namespace A147656.P2517229021048506805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) + (((n : ℤ) - 1 : ℝ) + Real.goldenRatio)⌋

end

end A147656.P2517229021048506805

namespace A147656

/-- `floor(lcm(2*n+1, ∑[n])+n-1+ϕ)` -/
def P2517229021048506805.Spec : Prop :=
  ∀ n, P2517229021048506805.a n = A147656 n

end A147656

/-! ## A147656.P1802607308848151545

`(2/(n+1)+2*n+1)*C(n+1, 2)`
-/

namespace A147656.P1802607308848151545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (n + 1 : ℚ) + (2 * n + 1 : ℚ)) * (Nat.choose (n + 1) 2 : ℚ)

end

end A147656.P1802607308848151545

namespace A147656

/-- `(2/(n+1)+2*n+1)*C(n+1, 2)` -/
def P1802607308848151545.Spec : Prop :=
  ∀ n, P1802607308848151545.a n = (A147656 n : ℚ)

end A147656

/-! ## A147656.P10429128911903359917

`A059270(n)+n`
-/

namespace A147656.P10429128911903359917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + (n : ℤ)

end

end A147656.P10429128911903359917

namespace A147656

/-- `A059270(n)+n` -/
def P10429128911903359917.Spec : Prop :=
  ∀ n, P10429128911903359917.a n = A147656 n

end A147656

/-! ## A147656.P10458125775506179970

`floor(A005898(n)/2)`
-/

namespace A147656.P10458125775506179970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005898 n : ℚ) / 2⌋

end

end A147656.P10458125775506179970

namespace A147656

/-- `floor(A005898(n)/2)` -/
def P10458125775506179970.Spec : Prop :=
  ∀ n, P10458125775506179970.a n = A147656 n

end A147656

/-! ## A147656.P7589446680816411529

`∑[A005918(n)-1]`
-/

namespace A147656.P7589446680816411529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147656.P7589446680816411529

namespace A147656

/-- `∑[A005918(n)-1]` -/
def P7589446680816411529.Spec : Prop :=
  ∀ n, P7589446680816411529.a n = A147656 n

end A147656

/-! ## A147656.P14368036945938537555

`∑[A056107(n)]-1`
-/

namespace A147656.P14368036945938537555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A147656.P14368036945938537555

namespace A147656

/-- `∑[A056107(n)]-1` -/
def P14368036945938537555.Spec : Prop :=
  ∀ n, P14368036945938537555.a n = A147656 n

end A147656

/-! ## A147656.P8401168231228460513

`A027444(n)+∑[n]`
-/

namespace A147656.P8401168231228460513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A147656.P8401168231228460513

namespace A147656

/-- `A027444(n)+∑[n]` -/
def P8401168231228460513.Spec : Prop :=
  ∀ n, P8401168231228460513.a n = A147656 n

end A147656

/-!
# A147657: a(1)=1, a(2)=2, thereafter (1, -2, 3, -4, 5, -6, ...) interleaved with (-2, 2, -2, 2, ...).

The programs for A147657, the canonical program `A147657.P10352028329801180076` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147657 has offset 1).

The definition of A147657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147657.P4101672360297013369

`round(A147658(n+1)/2)`
-/

namespace A147657.P4101672360297013369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147658 (n + 1) : ℚ) / 2)

end

end A147657.P4101672360297013369

namespace A147657

/-- `round(A147658(n+1)/2)` -/
def P4101672360297013369.Spec : Prop :=
  ∀ n, P4101672360297013369.a n = A147657 (n + 1)

end A147657

/-! ## A147657.P15125714052525454755

`A137501(n)/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A147657.P15125714052525454755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A137501 n : ℚ) / a (n - 1)

end

end A147657.P15125714052525454755

namespace A147657

/-- `A137501(n)/a(n-1)` -/
def P15125714052525454755.Spec : Prop :=
  ∀ n, P15125714052525454755.a n = (A147657 (n + 1) : ℚ)

end A147657

/-! ## A147657.P10352028329801180076

`-(a(n-2)+1-A007877(n))` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147657

/-- `-(a(n-2)+1-A007877(n))` -/
def P10352028329801180076.Spec : Prop :=
  ∀ n, P10352028329801180076.a n = A147657 (n + 1)

theorem P10352028329801180076.correct : P10352028329801180076.Spec := by
  intro n
  simp only [A147657, Nat.add_sub_cancel]

end A147657

/-! ## A147657.P9363032857042714964

`A084099(n)-A038608(A142150(n))`
-/

namespace A147657.P9363032857042714964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n - A038608 (A142150 n).toNat

end

end A147657.P9363032857042714964

namespace A147657

/-- `A084099(n)-A038608(A142150(n))` -/
def P9363032857042714964.Spec : Prop :=
  ∀ n, P9363032857042714964.a n = A147657 (n + 1)

end A147657

/-! ## A147657.P17944632135240071603

`A084099(n)-A127365(A237420(n))`
-/

namespace A147657.P17944632135240071603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n - A127365 (A237420 n).toNat

end

end A147657.P17944632135240071603

namespace A147657

/-- `A084099(n)-A127365(A237420(n))` -/
def P17944632135240071603.Spec : Prop :=
  ∀ n, P17944632135240071603.a n = A147657 (n + 1)

end A147657

/-! ## A147657.P10324558434201169087

`A084099(n)-A127365(A193356(n+1))`
-/

namespace A147657.P10324558434201169087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n - A127365 (A193356 (n + 1)).toNat

end

end A147657.P10324558434201169087

namespace A147657

/-- `A084099(n)-A127365(A193356(n+1))` -/
def P10324558434201169087.Spec : Prop :=
  ∀ n, P10324558434201169087.a n = A147657 (n + 1)

end A147657

/-! ## A147657.P17879704375858245167

`xor(A169585(n), A340172(A133263(n)))`
-/

namespace A147657.P17879704375858245167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 n) (A340172 (A133263 n).toNat)

end

end A147657.P17879704375858245167

namespace A147657

/-- `xor(A169585(n), A340172(A133263(n)))` -/
def P17879704375858245167.Spec : Prop :=
  ∀ n, P17879704375858245167.a n = A147657 (n + 1)

end A147657

/-! ## A147657.P13537326104638750564

`A329116(eq[A257022(n), A257023(n)])`
-/

namespace A147657.P13537326104638750564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A147657.P13537326104638750564

namespace A147657

/-- `A329116(eq[A257022(n), A257023(n)])` -/
def P13537326104638750564.Spec : Prop :=
  ∀ n, P13537326104638750564.a n = A147657 (n + 1)

end A147657

/-!
# A147658: (1, 2, -4, 6, -8, ...) interleaved with (3, -3, 3, -3, 3, ...).

The programs for A147658, the canonical program `A147658.P11559956771606784147` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147658 has offset 1).

The definition of A147658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147658.P11559956771606784147

`2*a(n-1)%2-a(n-2)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147658

/-- `2*a(n-1)%2-a(n-2)` -/
def P11559956771606784147.Spec : Prop :=
  ∀ n, P11559956771606784147.a n = A147658 (n + 1)

theorem P11559956771606784147.correct : P11559956771606784147.Spec := by
  intro n
  simp only [A147658, Nat.add_sub_cancel]

end A147658

/-! ## A147658.P7548023095176211560

`(a(n-1)+a(n-1))%4-a(n-2)` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A147658.P7548023095176211560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  Int.tmod (a (n - 1) + a (n - 1)) 4 - a (n - 2)

end

end A147658.P7548023095176211560

namespace A147658

/-- `(a(n-1)+a(n-1))%4-a(n-2)` -/
def P7548023095176211560.Spec : Prop :=
  ∀ n, P7548023095176211560.a n = A147658 (n + 1)

end A147658

/-! ## A147658.P12302390615156765125

`A084099(n)+A009531(n)`
-/

namespace A147658.P12302390615156765125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n + A009531 n

end

end A147658.P12302390615156765125

namespace A147658

/-- `A084099(n)+A009531(n)` -/
def P12302390615156765125.Spec : Prop :=
  ∀ n, P12302390615156765125.a n = A147658 (n + 1)

end A147658

/-! ## A147658.P11893302137829640780

`xor(2*n%2, A009531(A028310(n)))`
-/

namespace A147658.P11893302137829640780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (n % 2) : ℕ) : ℤ) (A009531 (A028310 n).toNat)

end

end A147658.P11893302137829640780

namespace A147658

/-- `xor(2*n%2, A009531(A028310(n)))` -/
def P11893302137829640780.Spec : Prop :=
  ∀ n, P11893302137829640780.a n = A147658 (n + 1)

end A147658

/-! ## A147658.P15034651223780435957

`xor(A009531(A028310(n)), A010673(n))`
-/

namespace A147658.P15034651223780435957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009531 (A028310 n).toNat) (A010673 n)

end

end A147658.P15034651223780435957

namespace A147658

/-- `xor(A009531(A028310(n)), A010673(n))` -/
def P15034651223780435957.Spec : Prop :=
  ∀ n, P15034651223780435957.a n = A147658 (n + 1)

end A147658

/-! ## A147658.P2455011944135340390

`A009531(A000007(n)+n)*A010684(n)`
-/

namespace A147658.P2455011944135340390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A000007 n + (n : ℤ)).toNat * A010684 n

end

end A147658.P2455011944135340390

namespace A147658

/-- `A009531(A000007(n)+n)*A010684(n)` -/
def P2455011944135340390.Spec : Prop :=
  ∀ n, P2455011944135340390.a n = A147658 (n + 1)

end A147658

/-! ## A147658.P11293750340429551074

`xor(A009531(n), A091086(A008458(n)))`
-/

namespace A147658.P11293750340429551074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009531 n) (A091086 (A008458 n).toNat)

end

end A147658.P11293750340429551074

namespace A147658

/-- `xor(A009531(n), A091086(A008458(n)))` -/
def P11293750340429551074.Spec : Prop :=
  ∀ n, P11293750340429551074.a n = A147658 (n + 1)

end A147658

/-!
# A147659: Expansion of 1/(1-x-x^2-x^10+x^12).

The programs for A147659, the canonical program `A147659.P18426030138800405502` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147659 has offset 0).

The definition of A147659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^10+x^12))` (program `A147659.P18426030138800405502`, by `A147659.P18426030138800405502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147659.P18426030138800405502

`ogf(1/(1-x-x^2-x^10+x^12))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147659

/-- `ogf(1/(1-x-x^2-x^10+x^12))` -/
def P18426030138800405502.Spec : Prop :=
  ∀ n, P18426030138800405502.a n = A147659 n

theorem P18426030138800405502.correct : P18426030138800405502.Spec := by
  intro n
  simp only [A147659]

end A147659

/-! ## A147659.P16517038525355534896

`A005843(∑[A212804(n)])-A225396(n)`
-/

namespace A147659.P16517038525355534896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A225396 n

end

end A147659.P16517038525355534896

namespace A147659

/-- `A005843(∑[A212804(n)])-A225396(n)` -/
def P16517038525355534896.Spec : Prop :=
  ∀ n, P16517038525355534896.a n = A147659 n

end A147659

/-! ## A147659.P2241787745842048625

`A005843(A000045(n+1))-A225396(n)`
-/

namespace A147659.P2241787745842048625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000045 (n + 1)).toNat - A225396 n

end

end A147659.P2241787745842048625

namespace A147659

/-- `A005843(A000045(n+1))-A225396(n)` -/
def P2241787745842048625.Spec : Prop :=
  ∀ n, P2241787745842048625.a n = A147659 n

end A147659

/-! ## A147659.P16645690529478964244

`A005843(A212804(n+2))-A225396(n)`
-/

namespace A147659.P16645690529478964244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A212804 (n + 2)).toNat - A225396 n

end

end A147659.P16645690529478964244

namespace A147659

/-- `A005843(A212804(n+2))-A225396(n)` -/
def P16645690529478964244.Spec : Prop :=
  ∀ n, P16645690529478964244.a n = A147659 n

end A147659

/-! ## A147659.P2049317421373458049

`A005843(A000045(n+1))-(A013987(n+1)+A013987(n))`
-/

namespace A147659.P2049317421373458049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000045 (n + 1)).toNat - (A013987 (n + 1) + A013987 n)

end

end A147659.P2049317421373458049

namespace A147659

/-- `A005843(A000045(n+1))-(A013987(n+1)+A013987(n))` -/
def P2049317421373458049.Spec : Prop :=
  ∀ n, P2049317421373458049.a n = A147659 n

end A147659

/-!
# A147660: Expansion of 1/(1-x-x^2+x^9-x^11).

The programs for A147660, the canonical program `A147660.P2478848232275031832` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147660 has offset 0).

The definition of A147660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^9-x^11))` (program `A147660.P2478848232275031832`, by `A147660.P2478848232275031832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147660.P2478848232275031832

`ogf(1/(1-x-x^2+x^9-x^11))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147660

/-- `ogf(1/(1-x-x^2+x^9-x^11))` -/
def P2478848232275031832.Spec : Prop :=
  ∀ n, P2478848232275031832.a n = A147660 n

theorem P2478848232275031832.correct : P2478848232275031832.Spec := by
  intro n
  simp only [A147660]

end A147660

/-! ## A147660.P17953563360347059772

`A013987(A242474(n+1))+A013985(n)`
-/

namespace A147660.P17953563360347059772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 (A242474 (n + 1)).toNat + A013985 n

end

end A147660.P17953563360347059772

namespace A147660

/-- `A013987(A242474(n+1))+A013985(n)` -/
def P17953563360347059772.Spec : Prop :=
  ∀ n, P17953563360347059772.a n = A147660 n

end A147660

/-! ## A147660.P9969787561794638998

`A013987(A242474(n+1))+Δ[A023439(n)]`
-/

namespace A147660.P9969787561794638998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 (A242474 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A147660.P9969787561794638998

namespace A147660

/-- `A013987(A242474(n+1))+Δ[A023439(n)]` -/
def P9969787561794638998.Spec : Prop :=
  ∀ n, P9969787561794638998.a n = A147660 n

end A147660

/-! ## A147660.P17716103774981383726

`A013987(A242474(n+1))+A023439(n+1)-A023439(n)`
-/

namespace A147660.P17716103774981383726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 (A242474 (n + 1)).toNat + (A023439 (n + 1) - A023439 n)

end

end A147660.P17716103774981383726

namespace A147660

/-- `A013987(A242474(n+1))+A023439(n+1)-A023439(n)` -/
def P17716103774981383726.Spec : Prop :=
  ∀ n, P17716103774981383726.a n = A147660 n

end A147660

/-! ## A147660.P8887370038803306400

`A318471(A011782(n))+A117760(n)`
-/

namespace A147660.P8887370038803306400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (A011782 n).toNat + A117760 n

end

end A147660.P8887370038803306400

namespace A147660

/-- `A318471(A011782(n))+A117760(n)` -/
def P8887370038803306400.Spec : Prop :=
  ∀ n, P8887370038803306400.a n = A147660 n

end A147660

/-!
# A147661: a(n) = squarefree part of n^n.

The programs for A147661, the canonical program `A147661.P789511450984016641` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147661 has offset 1).

The definition of A147661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147661.P789511450984016641

`A007913(C(or(1, n), n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A147661

/-- `A007913(C(or(1, n), n))` -/
def P789511450984016641.Spec : Prop :=
  ∀ n, P789511450984016641.a n = A147661 (n + 1)

theorem P789511450984016641.correct : P789511450984016641.Spec := by
  intro n
  simp only [A147661, Nat.add_sub_cancel]

end A147661

/-! ## A147661.P728699011623522639

`gcd(n%2, A007913(n+1))`
-/

namespace A147661.P728699011623522639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A007913 (n + 1))

end

end A147661.P728699011623522639

namespace A147661

/-- `gcd(n%2, A007913(n+1))` -/
def P728699011623522639.Spec : Prop :=
  ∀ n, (P728699011623522639.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P16052940685351163302

`A007913((n+1)^log2(gcd(2, n)))`
-/

namespace A147661.P16052940685351163302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ)))).toNat

end

end A147661.P16052940685351163302

namespace A147661

/-- `A007913((n+1)^log2(gcd(2, n)))` -/
def P16052940685351163302.Spec : Prop :=
  ∀ n, P16052940685351163302.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P15316381166749134724

`A007913(n*char[2*n]+1)`
-/

namespace A147661.P15316381166749134724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A147661.P15316381166749134724

namespace A147661

/-- `A007913(n*char[2*n]+1)` -/
def P15316381166749134724.Spec : Prop :=
  ∀ n, P15316381166749134724.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P8427159969018666447

`sqrt(A055491(n+1))^val(n²+2, 2)`
-/

namespace A147661.P8427159969018666447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ) ^ SequenceMachineLib.valuation (n ^ 2 + 2) 2

end

end A147661.P8427159969018666447

namespace A147661

/-- `sqrt(A055491(n+1))^val(n²+2, 2)` -/
def P8427159969018666447.Spec : Prop :=
  ∀ n, P8427159969018666447.a n = (A147661 (n + 1) : ℝ)

end A147661

/-! ## A147661.P15943989473214684249

`A364900(A237420(n))`
-/

namespace A147661.P15943989473214684249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (A237420 n).toNat

end

end A147661.P15943989473214684249

namespace A147661

/-- `A364900(A237420(n))` -/
def P15943989473214684249.Spec : Prop :=
  ∀ n, P15943989473214684249.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P8576278027398570947

`A093178(A038387(n+1))`
-/

namespace A147661.P8576278027398570947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A038387 (n + 1)).toNat

end

end A147661.P8576278027398570947

namespace A147661

/-- `A093178(A038387(n+1))` -/
def P8576278027398570947.Spec : Prop :=
  ∀ n, P8576278027398570947.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P13238193611461908320

`gcd(A014736(n), A364900(n))`
-/

namespace A147661.P13238193611461908320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014736 n) (A364900 n)

end

end A147661.P13238193611461908320

namespace A147661

/-- `gcd(A014736(n), A364900(n))` -/
def P13238193611461908320.Spec : Prop :=
  ∀ n, (P13238193611461908320.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P1816546756753850605

`gcd(A007913(n+1), A066107(n))`
-/

namespace A147661.P1816546756753850605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A066107 n)

end

end A147661.P1816546756753850605

namespace A147661

/-- `gcd(A007913(n+1), A066107(n))` -/
def P1816546756753850605.Spec : Prop :=
  ∀ n, (P1816546756753850605.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P6960035618733943704

`gcd(A038387(n+1), A073097(n))`
-/

namespace A147661.P6960035618733943704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038387 (n + 1)) (A073097 n)

end

end A147661.P6960035618733943704

namespace A147661

/-- `gcd(A038387(n+1), A073097(n))` -/
def P6960035618733943704.Spec : Prop :=
  ∀ n, (P6960035618733943704.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P14184089191246819041

`gcd(A037449(n+1), A080335(n))`
-/

namespace A147661.P14184089191246819041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037449 (n + 1)) (A080335 n)

end

end A147661.P14184089191246819041

namespace A147661

/-- `gcd(A037449(n+1), A080335(n))` -/
def P14184089191246819041.Spec : Prop :=
  ∀ n, (P14184089191246819041.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P2906946116723762200

`gcd(A056135(n+1), A109613(n))`
-/

namespace A147661.P2906946116723762200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056135 (n + 1)) (A109613 n)

end

end A147661.P2906946116723762200

namespace A147661

/-- `gcd(A056135(n+1), A109613(n))` -/
def P2906946116723762200.Spec : Prop :=
  ∀ n, (P2906946116723762200.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P4013680211028900479

`gcd(A083481(n+1), A127630(n))`
-/

namespace A147661.P4013680211028900479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083481 (n + 1)) (A127630 n)

end

end A147661.P4013680211028900479

namespace A147661

/-- `gcd(A083481(n+1), A127630(n))` -/
def P4013680211028900479.Spec : Prop :=
  ∀ n, (P4013680211028900479.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P18282777881679943880

`gcd(A129957(n), A204993(n+1))`
-/

namespace A147661.P18282777881679943880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129957 n) (A204993 (n + 1))

end

end A147661.P18282777881679943880

namespace A147661

/-- `gcd(A129957(n), A204993(n+1))` -/
def P18282777881679943880.Spec : Prop :=
  ∀ n, (P18282777881679943880.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P12221065880500931694

`gcd(A316966(n), A361670(n+1))`
-/

namespace A147661.P12221065880500931694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316966 n) (A361670 (n + 1))

end

end A147661.P12221065880500931694

namespace A147661

/-- `gcd(A316966(n), A361670(n+1))` -/
def P12221065880500931694.Spec : Prop :=
  ∀ n, (P12221065880500931694.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P16332402370001553293

`abs(or(A007913(n+1), A033999(n)))`
-/

namespace A147661.P16332402370001553293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A007913 (n + 1)) (A033999 n)|

end

end A147661.P16332402370001553293

namespace A147661

/-- `abs(or(A007913(n+1), A033999(n)))` -/
def P16332402370001553293.Spec : Prop :=
  ∀ n, P16332402370001553293.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P2943373970081210007

`gcd(A049457(n+1), A086112(n+1))`
-/

namespace A147661.P2943373970081210007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049457 (n + 1)) (A086112 (n + 1))

end

end A147661.P2943373970081210007

namespace A147661

/-- `gcd(A049457(n+1), A086112(n+1))` -/
def P2943373970081210007.Spec : Prop :=
  ∀ n, (P2943373970081210007.a n : ℤ) = A147661 (n + 1)

end A147661

/-! ## A147661.P5041716305038449686

`A007913(n+1)^val(A020639(n+2), 2)`
-/

namespace A147661.P5041716305038449686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ SequenceMachineLib.valuation (A020639 (n + 2)).toNat 2

end

end A147661.P5041716305038449686

namespace A147661

/-- `A007913(n+1)^val(A020639(n+2), 2)` -/
def P5041716305038449686.Spec : Prop :=
  ∀ n, P5041716305038449686.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P7553692575928163046

`A028310((2-A000034(n))*A007913(n+1))`
-/

namespace A147661.P7553692575928163046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((2 - A000034 n) * A007913 (n + 1)).toNat

end

end A147661.P7553692575928163046

namespace A147661

/-- `A028310((2-A000034(n))*A007913(n+1))` -/
def P7553692575928163046.Spec : Prop :=
  ∀ n, P7553692575928163046.a n = A147661 (n + 1)

end A147661

/-! ## A147661.P2314954993196434023

`A007913(n+1)^A349343(A006519(n+1))`
-/

namespace A147661.P2314954993196434023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) ^ (A349343 (A006519 (n + 1)).toNat : ℤ)

end

end A147661.P2314954993196434023

namespace A147661

/-- `A007913(n+1)^A349343(A006519(n+1))` -/
def P2314954993196434023.Spec : Prop :=
  ∀ n, P2314954993196434023.a n = (A147661 (n + 1) : ℚ)

end A147661

/-!
# A147662: Square root of largest square dividing n^n.

The programs for A147662, there is no canonical definition to state claims against.
-/

/-! ## A147662.P16377335792004969633

`A193551(n+1)^A006530(A189102(n+1))`
-/

namespace A147662.P16377335792004969633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193551 (n + 1) : ℚ) ^ (A006530 (A189102 (n + 1)).toNat : ℤ)

end

end A147662.P16377335792004969633

/-! ## A147662.P14999122496952299261

`A193551(n+1)^A001221(A007823(n))`
-/

namespace A147662.P14999122496952299261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193551 (n + 1) : ℚ) ^ (A001221 (A007823 n).toNat : ℤ)

end

end A147662.P14999122496952299261

/-! ## A147662.P17564981006293418928

`A085158(A085134(n+1))^A085141(3*n)`
-/

namespace A147662.P17564981006293418928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085158 (A085134 (n + 1)).toNat : ℚ) ^ (A085141 (3 * n) : ℤ)

end

end A147662.P17564981006293418928

/-! ## A147662.P17824571314681165032

`A085158(A032555(n+1))^A307707(2*(n+1))`
-/

namespace A147662.P17824571314681165032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085158 (A032555 (n + 1)).toNat : ℚ) ^ (A307707 (2 * (n + 1)) : ℤ)

end

end A147662.P17824571314681165032

/-!
# A147663: Expansion of 1/(1 - x - x^2 + x^3 - x^7 + x^9 - x^11).

The programs for A147663, the canonical program `A147663.P10924341368845375444` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147663 has offset 0).

The definition of A147663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^7+x^9-x^11))` (program `A147663.P10924341368845375444`, by `A147663.P10924341368845375444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147663.P10924341368845375444

`ogf(1/(1-x-x^2+x^3-x^7+x^9-x^11))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147663

/-- `ogf(1/(1-x-x^2+x^3-x^7+x^9-x^11))` -/
def P10924341368845375444.Spec : Prop :=
  ∀ n, P10924341368845375444.a n = A147663 n

theorem P10924341368845375444.correct : P10924341368845375444.Spec := by
  intro n
  simp only [A147663]

end A147663

/-! ## A147663.P4190964621163799525

`A135664(A060945(n))+1`
-/

namespace A147663.P4190964621163799525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A060945 n).toNat + 1

end

end A147663.P4190964621163799525

namespace A147663

/-- `A135664(A060945(n))+1` -/
def P4190964621163799525.Spec : Prop :=
  ∀ n, P4190964621163799525.a n = A147663 n

end A147663

/-! ## A147663.P15917664490611854946

`A135662(round(sqrt(A025192(n))))+1`
-/

namespace A147663.P15917664490611854946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (SequenceMachineLib.roundAway (Real.sqrt (A025192 n : ℝ))).toNat + 1

end

end A147663.P15917664490611854946

namespace A147663

/-- `A135662(round(sqrt(A025192(n))))+1` -/
def P15917664490611854946.Spec : Prop :=
  ∀ n, P15917664490611854946.a n = A147663 n

end A147663

/-! ## A147663.P16912167114310331012

`A000196(A022486(2*(n+1))+∑{p}[n+1, #]+1)`
-/

namespace A147663.P16912167114310331012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A022486 (2 * (n + 1)) + ((∑ p ∈ Nat.primeFactors (f1 n), p + 1 : ℕ) : ℤ)).toNat

end

end A147663.P16912167114310331012

namespace A147663

/-- `A000196(A022486(2*(n+1))+∑{p}[n+1, #]+1)` -/
def P16912167114310331012.Spec : Prop :=
  ∀ n, P16912167114310331012.a n = A147663 n

end A147663

/-! ## A147663.P18019798625262622147

`A000196(A005314(n)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A147663.P18019798625262622147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A005314 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A147663.P18019798625262622147

namespace A147663

/-- `A000196(A005314(n)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P18019798625262622147.Spec : Prop :=
  ∀ n, P18019798625262622147.a n = A147663 n

end A147663

/-!
# A147664: G.f. satisfies: A(x/A(x)) = 1 + x*A(x)^2.

The programs for A147664, there is no canonical definition to state claims against.
-/

/-! ## A147664.P7955663840340161151

`A156253(A189845(n))`
-/

namespace A147664.P7955663840340161151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A189845 n).toNat

end

end A147664.P7955663840340161151

/-! ## A147664.P6478521672287953633

`A004001(A000309(n)+A000120(n))`
-/

namespace A147664.P6478521672287953633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A000309 n + A000120 n).toNat

end

end A147664.P6478521672287953633

/-!
# A147665: a(n) = a(a(n - 1)) + r(n) for n >= 3, where r(3*k) = a(a(k)), r(3*k+1) = a(a(k)) and r(3*k+2) = a(n-a(k)), with a(0) = 0 and a(1) = a(2) = 1.

The programs for A147665, there is no canonical definition to state claims against.
-/

/-! ## A147665.P13540966120932139218

`A333870(∑[∑{e}[n+1, #]+1]+2^n-1)`
-/

namespace A147665.P13540966120932139218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1)).toNat

end

end A147665.P13540966120932139218

/-!
# A147666: List of triples (0, 6n+1, 6n+5) for n = 0, 1, 2, ...

The programs for A147666, the canonical program `A147666.P3862044769543624315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147666 has offset 0).

The definition of A147666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147666.P3862044769543624315

`n²%3*∑[and(5, dr(3*n))]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147666

/-- `n²%3*∑[and(5, dr(3*n))]` -/
def P3862044769543624315.Spec : Prop :=
  ∀ n, (P3862044769543624315.a n : ℤ) = A147666 n

theorem P3862044769543624315.correct : P3862044769543624315.Spec := by
  intro n
  simp only [A147666]

end A147666

/-! ## A147666.P11629857484705102019

`3*round((lcm(3, n)+n)/3)-2*n`
-/

namespace A147666.P11629857484705102019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3) - (2 * n : ℤ)

end

end A147666.P11629857484705102019

namespace A147666

/-- `3*round((lcm(3, n)+n)/3)-2*n` -/
def P11629857484705102019.Spec : Prop :=
  ∀ n, P11629857484705102019.a n = A147666 n

end A147666

/-! ## A147666.P16191357591713625727

`a(n-3)+6*and(1, a(n-3))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A147666.P16191357591713625727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  a (n - 3) + 6 * Nat.land 1 (a (n - 3))

end

end A147666.P16191357591713625727

namespace A147666

/-- `a(n-3)+6*and(1, a(n-3))` -/
def P16191357591713625727.Spec : Prop :=
  ∀ n, (P16191357591713625727.a n : ℤ) = A147666 n

end A147666

/-! ## A147666.P8230321421434308832

`((2*n+1)*(2*n)%3)%(2*n+3)`
-/

namespace A147666.P8230321421434308832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n % 3) % (2 * n + 3)

end

end A147666.P8230321421434308832

namespace A147666

/-- `((2*n+1)*(2*n)%3)%(2*n+3)` -/
def P8230321421434308832.Spec : Prop :=
  ∀ n, (P8230321421434308832.a n : ℤ) = A147666 n

end A147666

/-! ## A147666.P12096143561031536147

`(2*n-1)*gcd(2, a(n-2))-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A147666.P12096143561031536147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 1) * (Int.gcd 2 (a (n - 2)) : ℤ) - a (n - 1)

end

end A147666.P12096143561031536147

namespace A147666

/-- `(2*n-1)*gcd(2, a(n-2))-a(n-1)` -/
def P12096143561031536147.Spec : Prop :=
  ∀ n, P12096143561031536147.a n = A147666 n

end A147666

/-! ## A147666.P7910446228631218983

`A047266(A091684(n)+1)`
-/

namespace A147666.P7910446228631218983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A091684 n + 1).toNat

end

end A147666.P7910446228631218983

namespace A147666

/-- `A047266(A091684(n)+1)` -/
def P7910446228631218983.Spec : Prop :=
  ∀ n, P7910446228631218983.a n = A147666 n

end A147666

/-! ## A147666.P3944394016086482513

`A109044(n)-A064429(n)`
-/

namespace A147666.P3944394016086482513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 n - A064429 n

end

end A147666.P3944394016086482513

namespace A147666

/-- `A109044(n)-A064429(n)` -/
def P3944394016086482513.Spec : Prop :=
  ∀ n, P3944394016086482513.a n = A147666 n

end A147666

/-! ## A147666.P12674942173787469755

`A011655(n)*A047266(n+1)`
-/

namespace A147666.P12674942173787469755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A047266 (n + 1)

end

end A147666.P12674942173787469755

namespace A147666

/-- `A011655(n)*A047266(n+1)` -/
def P12674942173787469755.Spec : Prop :=
  ∀ n, P12674942173787469755.a n = A147666 n

end A147666

/-! ## A147666.P15538135163586891309

`A047266(n+1)*A267208(n)`
-/

namespace A147666.P15538135163586891309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1) * A267208 n

end

end A147666.P15538135163586891309

namespace A147666

/-- `A047266(n+1)*A267208(n)` -/
def P15538135163586891309.Spec : Prop :=
  ∀ n, P15538135163586891309.a n = A147666 n

end A147666

/-! ## A147666.P1775978617268698487

`2*A091684(n)-A102283(n)`
-/

namespace A147666.P1775978617268698487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091684 n - A102283 n

end

end A147666.P1775978617268698487

namespace A147666

/-- `2*A091684(n)-A102283(n)` -/
def P1775978617268698487.Spec : Prop :=
  ∀ n, P1775978617268698487.a n = A147666 n

end A147666

/-! ## A147666.P8352725945086713051

`A047266(n+1)%A066393(n)`
-/

namespace A147666.P8352725945086713051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047266 (n + 1)) (A066393 n)

end

end A147666.P8352725945086713051

namespace A147666

/-- `A047266(n+1)%A066393(n)` -/
def P8352725945086713051.Spec : Prop :=
  ∀ n, P8352725945086713051.a n = A147666 n

end A147666

/-! ## A147666.P5235103311560624159

`lcm(A047266(n+1), A092220(n))`
-/

namespace A147666.P5235103311560624159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047266 (n + 1)) (A092220 n)

end

end A147666.P5235103311560624159

namespace A147666

/-- `lcm(A047266(n+1), A092220(n))` -/
def P5235103311560624159.Spec : Prop :=
  ∀ n, (P5235103311560624159.a n : ℤ) = A147666 n

end A147666

/-! ## A147666.P10641531717153285635

`(A047244(n+1)-A047240(n+1))*A047266(n+1)`
-/

namespace A147666.P10641531717153285635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047244 (n + 1) - A047240 (n + 1)) * A047266 (n + 1)

end

end A147666.P10641531717153285635

namespace A147666

/-- `(A047244(n+1)-A047240(n+1))*A047266(n+1)` -/
def P10641531717153285635.Spec : Prop :=
  ∀ n, P10641531717153285635.a n = A147666 n

end A147666

/-! ## A147666.P1324538026293103949

`A047266(n+1)*A057078(n+1)*A057078(n+1)`
-/

namespace A147666.P1324538026293103949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1) * A057078 (n + 1) * A057078 (n + 1)

end

end A147666.P1324538026293103949

namespace A147666

/-- `A047266(n+1)*A057078(n+1)*A057078(n+1)` -/
def P1324538026293103949.Spec : Prop :=
  ∀ n, P1324538026293103949.a n = A147666 n

end A147666

/-! ## A147666.P14706387364725473477

`(A047267(n+1)-A011655(n+1))*A011655(n)`
-/

namespace A147666.P14706387364725473477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047267 (n + 1) - A011655 (n + 1)) * A011655 n

end

end A147666.P14706387364725473477

namespace A147666

/-- `(A047267(n+1)-A011655(n+1))*A011655(n)` -/
def P14706387364725473477.Spec : Prop :=
  ∀ n, P14706387364725473477.a n = A147666 n

end A147666

/-! ## A147666.P13613950167239397089

`A064429(lcm(3, n)-n)`
-/

namespace A147666.P13613950167239397089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (Nat.lcm 3 n - n)

end

end A147666.P13613950167239397089

namespace A147666

/-- `A064429(lcm(3, n)-n)` -/
def P13613950167239397089.Spec : Prop :=
  ∀ n, P13613950167239397089.a n = A147666 n

end A147666

/-! ## A147666.P10095928683148271763

`abs(floor((A100052(2*n)-1)/2))`
-/

namespace A147666.P10095928683148271763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A100052 (2 * n) - 1 : ℚ) / 2⌋|

end

end A147666.P10095928683148271763

namespace A147666

/-- `abs(floor((A100052(2*n)-1)/2))` -/
def P10095928683148271763.Spec : Prop :=
  ∀ n, P10095928683148271763.a n = A147666 n

end A147666

/-! ## A147666.P16928445099382110787

`A091684(A064429(2*n))`
-/

namespace A147666.P16928445099382110787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A064429 (2 * n)).toNat

end

end A147666.P16928445099382110787

namespace A147666

/-- `A091684(A064429(2*n))` -/
def P16928445099382110787.Spec : Prop :=
  ∀ n, P16928445099382110787.a n = A147666 n

end A147666

/-! ## A147666.P13790896019660019703

`A091684(A279318(2*n))`
-/

namespace A147666.P13790896019660019703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A279318 (2 * n)).toNat

end

end A147666.P13790896019660019703

namespace A147666

/-- `A091684(A279318(2*n))` -/
def P13790896019660019703.Spec : Prop :=
  ∀ n, P13790896019660019703.a n = A147666 n

end A147666

/-! ## A147666.P13027758009356372443

`A091684(A113655(2*n+1))`
-/

namespace A147666.P13027758009356372443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A113655 (2 * n + 1)).toNat

end

end A147666.P13027758009356372443

namespace A147666

/-- `A091684(A113655(2*n+1))` -/
def P13027758009356372443.Spec : Prop :=
  ∀ n, P13027758009356372443.a n = A147666 n

end A147666

/-!
# A147672: a(n) = a(n-2) + 2^(n-1) + 5 for n>3, a(0..3) = (0,1,2,7).

The programs for A147672, the canonical program `A147672.P11059599435855720714` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147672 has offset 0).

The definition of A147672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147672.P11059599435855720714

`a(n-2)+2^(n-1)+5` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147672

/-- `a(n-2)+2^(n-1)+5` -/
def P11059599435855720714.Spec : Prop :=
  ∀ n, P11059599435855720714.a n = (A147672 n : ℚ)

end A147672

/-! ## A147672.P12020733054165774206

`∑[A062709(n)%∑[A152046(n)]]`
-/

namespace A147672.P12020733054165774206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062709 n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147672.P12020733054165774206

namespace A147672

/-- `∑[A062709(n)%∑[A152046(n)]]` -/
def P12020733054165774206.Spec : Prop :=
  ∀ n, P12020733054165774206.a n = A147672 n

end A147672

/-! ## A147672.P5568801465078666987

`∑[(A000051(n)+2)%A005578(n+1)]`
-/

namespace A147672.P5568801465078666987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n + 2) (A005578 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147672.P5568801465078666987

namespace A147672

/-- `∑[(A000051(n)+2)%A005578(n+1)]` -/
def P5568801465078666987.Spec : Prop :=
  ∀ n, P5568801465078666987.a n = A147672 n

end A147672

/-! ## A147672.P11519276248563231524

`∑[(A005578(n)+2)%A005578(n+1)]`
-/

namespace A147672.P11519276248563231524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005578 n + 2) (A005578 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147672.P11519276248563231524

namespace A147672

/-- `∑[(A005578(n)+2)%A005578(n+1)]` -/
def P11519276248563231524.Spec : Prop :=
  ∀ n, P11519276248563231524.a n = A147672 n

end A147672

/-! ## A147672.P7221516250275902534

`∑[A084639(n)%A036563(n)]+n`
-/

namespace A147672.P7221516250275902534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084639 n) (A036563 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A147672.P7221516250275902534

namespace A147672

/-- `∑[A084639(n)%A036563(n)]+n` -/
def P7221516250275902534.Spec : Prop :=
  ∀ n, P7221516250275902534.a n = A147672 n

end A147672

/-! ## A147672.P6354799155068002042

`∑[A280173(n)%A083944(n+1)]`
-/

namespace A147672.P6354799155068002042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280173 n) (A083944 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147672.P6354799155068002042

namespace A147672

/-- `∑[A280173(n)%A083944(n+1)]` -/
def P6354799155068002042.Spec : Prop :=
  ∀ n, P6354799155068002042.a n = A147672 n

end A147672

/-!
# A147674: Period 9: repeat 81,27,9,27,27,9,27,81,9.

The programs for A147674, the canonical program `A147674.P10616568769653748722` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147674 has offset 0).

The definition of A147674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147674.P10616568769653748722

`a(n-9)` with `a(0)=81, a(1)=27, a(2)=9, a(3)=27, a(4)=27, a(5)=9, a(6)=27, a(7)=81, a(8)=9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147674

/-- `a(n-9)` -/
def P10616568769653748722.Spec : Prop :=
  ∀ n, (P10616568769653748722.a n : ℤ) = A147674 n

theorem P10616568769653748722.correct : P10616568769653748722.Spec := by
  intro n
  simp only [A147674]

end A147674

/-!
# A147675: Divide by 2, multiply by 4, repeat.

The programs for A147675, the canonical program `A147675.P9559477392111750733` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147675 has offset 1).

The definition of A147675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147675.P9559477392111750733

`2*a(n-2)` with `a(0)=10, a(1)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147675

/-- `2*a(n-2)` -/
def P9559477392111750733.Spec : Prop :=
  ∀ n, (P9559477392111750733.a n : ℤ) = A147675 (n + 1)

theorem P9559477392111750733.correct : P9559477392111750733.Spec := by
  intro n
  simp only [A147675, Nat.add_sub_cancel]

end A147675

/-! ## A147675.P5745451670600383761

`5*A135530(n)`
-/

namespace A147675.P5745451670600383761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A135530 n

end

end A147675.P5745451670600383761

namespace A147675

/-- `5*A135530(n)` -/
def P5745451670600383761.Spec : Prop :=
  ∀ n, P5745451670600383761.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P6886758085431321685

`ogf((10+5x)/(1-2x^2))`
-/

namespace A147675.P6886758085431321685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 5] [1, 0, -2] n

end

end A147675.P6886758085431321685

namespace A147675

/-- `ogf((10+5x)/(1-2x^2))` -/
def P6886758085431321685.Spec : Prop :=
  ∀ n, P6886758085431321685.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P11967298909580940835

`5*2^ceil(xor(1, n)/2)`
-/

namespace A147675.P11967298909580940835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (2 : ℚ) ^ (⌈(Nat.xor 1 n : ℚ) / 2⌉ : ℤ)

end

end A147675.P11967298909580940835

namespace A147675

/-- `5*2^ceil(xor(1, n)/2)` -/
def P11967298909580940835.Spec : Prop :=
  ∀ n, P11967298909580940835.a n = (A147675 (n + 1) : ℚ)

end A147675

/-! ## A147675.P4974663080949787772

`5*2^round(xor(1, n)/2)`
-/

namespace A147675.P4974663080949787772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (2 : ℚ) ^ (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) : ℤ)

end

end A147675.P4974663080949787772

namespace A147675

/-- `5*2^round(xor(1, n)/2)` -/
def P4974663080949787772.Spec : Prop :=
  ∀ n, P4974663080949787772.a n = (A147675 (n + 1) : ℚ)

end A147675

/-! ## A147675.P4286380564361922352

`a(n-2)+a(n-2)` with `a(0)=10, a(1)=5`
-/

namespace A147675.P4286380564361922352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 5] fun n a =>
  a (n - 2) + a (n - 2)

end

end A147675.P4286380564361922352

namespace A147675

/-- `a(n-2)+a(n-2)` -/
def P4286380564361922352.Spec : Prop :=
  ∀ n, (P4286380564361922352.a n : ℤ) = A147675 (n + 1)

theorem P4286380564361922352.correct : P4286380564361922352.Spec := by
  intro n
  simp only [A147675, Nat.add_sub_cancel, A147675.P4286380564361922352.a, A147675.P9559477392111750733.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147675

/-! ## A147675.P6621657828944822668

`a(n-2)/(1-1/2)` with `a(0)=10, a(1)=5`
-/

namespace A147675.P6621657828944822668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10, 5] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A147675.P6621657828944822668

namespace A147675

/-- `a(n-2)/(1-1/2)` -/
def P6621657828944822668.Spec : Prop :=
  ∀ n, P6621657828944822668.a n = (A147675 (n + 1) : ℚ)

end A147675

/-! ## A147675.P2905726236305980029

`10*2^((n-(n*(n+2))%4)/2)`
-/

namespace A147675.P2905726236305980029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  10 * (2 : ℝ) ^ (((n : ℤ) - ((n * (n + 2) % 4 : ℕ) : ℤ) : ℚ) / 2 : ℝ)

end

end A147675.P2905726236305980029

namespace A147675

/-- `10*2^((n-(n*(n+2))%4)/2)` -/
def P2905726236305980029.Spec : Prop :=
  ∀ n, P2905726236305980029.a n = (A147675 (n + 1) : ℝ)

end A147675

/-! ## A147675.P300940741182599234

`5*(A316742(n)+1)`
-/

namespace A147675.P300940741182599234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A316742 n + 1)

end

end A147675.P300940741182599234

namespace A147675

/-- `5*(A316742(n)+1)` -/
def P300940741182599234.Spec : Prop :=
  ∀ n, P300940741182599234.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P3079165662792030508

`5*A076736(n+4)`
-/

namespace A147675.P3079165662792030508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A076736 (n + 4)

end

end A147675.P3079165662792030508

namespace A147675

/-- `5*A076736(n+4)` -/
def P3079165662792030508.Spec : Prop :=
  ∀ n, P3079165662792030508.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P10810189561724633886

`lcm(5, A137206(n+1))`
-/

namespace A147675.P10810189561724633886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A137206 (n + 1))

end

end A147675.P10810189561724633886

namespace A147675

/-- `lcm(5, A137206(n+1))` -/
def P10810189561724633886.Spec : Prop :=
  ∀ n, (P10810189561724633886.a n : ℤ) = A147675 (n + 1)

end A147675

/-! ## A147675.P3764367382320148681

`5*A000079(round(xor(1, n)/2))`
-/

namespace A147675.P3764367382320148681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000079 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A147675.P3764367382320148681

namespace A147675

/-- `5*A000079(round(xor(1, n)/2))` -/
def P3764367382320148681.Spec : Prop :=
  ∀ n, P3764367382320148681.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P18321323887400173788

`A020714(A028242(n))`
-/

namespace A147675.P18321323887400173788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A028242 n).toNat

end

end A147675.P18321323887400173788

namespace A147675

/-- `A020714(A028242(n))` -/
def P18321323887400173788.Spec : Prop :=
  ∀ n, P18321323887400173788.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P13456880105854088713

`A084215(A052938(n+1))`
-/

namespace A147675.P13456880105854088713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (A052938 (n + 1)).toNat

end

end A147675.P13456880105854088713

namespace A147675

/-- `A084215(A052938(n+1))` -/
def P13456880105854088713.Spec : Prop :=
  ∀ n, P13456880105854088713.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P6585390820118944470

`A146523(A028242(n)+1)`
-/

namespace A147675.P6585390820118944470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (A028242 n + 1).toNat

end

end A147675.P6585390820118944470

namespace A147675

/-- `A146523(A028242(n)+1)` -/
def P6585390820118944470.Spec : Prop :=
  ∀ n, P6585390820118944470.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P17850881297277674303

`A146523(A030451(n+1))`
-/

namespace A147675.P17850881297277674303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (A030451 (n + 1)).toNat

end

end A147675.P17850881297277674303

namespace A147675

/-- `A146523(A030451(n+1))` -/
def P17850881297277674303.Spec : Prop :=
  ∀ n, P17850881297277674303.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P3437291741420584442

`A070875(A168232(n+1))`
-/

namespace A147675.P3437291741420584442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (A168232 (n + 1)).toNat

end

end A147675.P3437291741420584442

namespace A147675

/-- `A070875(A168232(n+1))` -/
def P3437291741420584442.Spec : Prop :=
  ∀ n, P3437291741420584442.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P17042843959107995387

`A268896(A168202(n+1))`
-/

namespace A147675.P17042843959107995387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268896 (A168202 (n + 1)).toNat

end

end A147675.P17042843959107995387

namespace A147675

/-- `A268896(A168202(n+1))` -/
def P17042843959107995387.Spec : Prop :=
  ∀ n, P17042843959107995387.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P9650057532816929151

`A257113(A060762(n+2))`
-/

namespace A147675.P9650057532816929151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (A060762 (n + 2)).toNat

end

end A147675.P9650057532816929151

namespace A147675

/-- `A257113(A060762(n+2))` -/
def P9650057532816929151.Spec : Prop :=
  ∀ n, P9650057532816929151.a n = A147675 (n + 1)

end A147675

/-! ## A147675.P5447816997524324989

`lcm(A040021(n), A135530(n))`
-/

namespace A147675.P5447816997524324989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040021 n) (A135530 n)

end

end A147675.P5447816997524324989

namespace A147675

/-- `lcm(A040021(n), A135530(n))` -/
def P5447816997524324989.Spec : Prop :=
  ∀ n, (P5447816997524324989.a n : ℤ) = A147675 (n + 1)

end A147675

/-!
# A147677: Subtract 5, add 8, repeat.

The programs for A147677, the canonical program `A147677.P10537898276245892805` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147677 has offset 1).

The definition of A147677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147677.P10537898276245892805

`a(n-2)+3` with `a(0)=7, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147677

/-- `a(n-2)+3` -/
def P10537898276245892805.Spec : Prop :=
  ∀ n, (P10537898276245892805.a n : ℤ) = A147677 (n + 1)

theorem P10537898276245892805.correct : P10537898276245892805.Spec := by
  intro n
  simp only [A147677, Nat.add_sub_cancel]

end A147677

/-! ## A147677.P12745270630234669462

`1/4*(6*(n+1)+9-13*(-1)^(n+1))`
-/

namespace A147677.P12745270630234669462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((6 * (n + 1) + 9 : ℤ) - 13 * (-1) ^ (n + 1) : ℚ)

end

end A147677.P12745270630234669462

namespace A147677

/-- `1/4*(6*(n+1)+9-13*(-1)^(n+1))` -/
def P12745270630234669462.Spec : Prop :=
  ∀ n, P12745270630234669462.a n = (A147677 (n + 1) : ℚ)

theorem P12745270630234669462.correct : P12745270630234669462.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147677, Nat.add_sub_cancel, A147677.P12745270630234669462.a, A147677.P10537898276245892805.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A147677, Nat.add_sub_cancel, A147677.P12745270630234669462.a, A147677.P10537898276245892805.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A147677

/-! ## A147677.P3716235034589440406

`∑[3-a(n-1)]` with `a(0)=7, a(1)=-5`
-/

namespace A147677.P3716235034589440406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, -5] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147677.P3716235034589440406

namespace A147677

/-- `∑[3-a(n-1)]` -/
def P3716235034589440406.Spec : Prop :=
  ∀ n, P3716235034589440406.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P3675351970681407642

`∑[∑[ogf((7-5x+x^2)/(1+x))]]`
-/

namespace A147677.P3675351970681407642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147677.P3675351970681407642

namespace A147677

/-- `∑[∑[ogf((7-5x+x^2)/(1+x))]]` -/
def P3675351970681407642.Spec : Prop :=
  ∀ n, P3675351970681407642.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P18263781122446296625

`ogf((7-5x+x^2)/(1-x-x^2+x^3))`
-/

namespace A147677.P18263781122446296625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5, 1] [1, -1, -1, 1] n

end

end A147677.P18263781122446296625

namespace A147677

/-- `ogf((7-5x+x^2)/(1-x-x^2+x^3))` -/
def P18263781122446296625.Spec : Prop :=
  ∀ n, P18263781122446296625.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P15139605482025522546

`3-floor(-a(n-2))` with `a(0)=7, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A147677.P15139605482025522546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n a =>
  3 - (-a (n - 2))

end

end A147677.P15139605482025522546

namespace A147677

/-- `3-floor(-a(n-2))` -/
def P15139605482025522546.Spec : Prop :=
  ∀ n, P15139605482025522546.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P6067314382995096599

`3-ceil(-a(n-2))` with `a(0)=7, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A147677.P6067314382995096599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n a =>
  3 - (-a (n - 2))

end

end A147677.P6067314382995096599

namespace A147677

/-- `3-ceil(-a(n-2))` -/
def P6067314382995096599.Spec : Prop :=
  ∀ n, P6067314382995096599.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P1601302976614217330

`3-round(-a(n-2))` with `a(0)=7, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A147677.P1601302976614217330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n a =>
  3 - (-a (n - 2))

end

end A147677.P1601302976614217330

namespace A147677

/-- `3-round(-a(n-2))` -/
def P1601302976614217330.Spec : Prop :=
  ∀ n, P1601302976614217330.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P696285795122276385

`3*n-(a(n-1)-6)` with `a(0)=7`
-/

namespace A147677.P696285795122276385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (3 * n : ℤ) - (a (n - 1) - 6)

end

end A147677.P696285795122276385

namespace A147677

/-- `3*n-(a(n-1)-6)` -/
def P696285795122276385.Spec : Prop :=
  ∀ n, P696285795122276385.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P16162430179209583113

`5-(4/2-a(n-2))` with `a(0)=7, a(1)=2`
-/

namespace A147677.P16162430179209583113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7, 2] fun n a =>
  5 - ((4 : ℚ) / 2 - a (n - 2))

end

end A147677.P16162430179209583113

namespace A147677

/-- `5-(4/2-a(n-2))` -/
def P16162430179209583113.Spec : Prop :=
  ∀ n, P16162430179209583113.a n = (A147677 (n + 1) : ℚ)

end A147677

/-! ## A147677.P16427031232987254400

`A137235(n)+or(1, n)`
-/

namespace A147677.P16427031232987254400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137235 n + (Nat.lor 1 n : ℤ)

end

end A147677.P16427031232987254400

namespace A147677

/-- `A137235(n)+or(1, n)` -/
def P16427031232987254400.Spec : Prop :=
  ∀ n, P16427031232987254400.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P9261913031062723936

`comp[3*n]+A176415(n)-1`
-/

namespace A147677.P9261913031062723936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A176415 n - 1)

end

end A147677.P9261913031062723936

namespace A147677

/-- `comp[3*n]+A176415(n)-1` -/
def P9261913031062723936.Spec : Prop :=
  ∀ n, P9261913031062723936.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P4410101770358979944

`3*A009056(n)-a(n-1)` with `a(0)=7`
-/

namespace A147677.P4410101770358979944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  3 * A009056 n - a (n - 1)

end

end A147677.P4410101770358979944

namespace A147677

/-- `3*A009056(n)-a(n-1)` -/
def P4410101770358979944.Spec : Prop :=
  ∀ n, P4410101770358979944.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P16968696629301018865

`A176415(n)+A032766(n)`
-/

namespace A147677.P16968696629301018865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176415 n + A032766 n

end

end A147677.P16968696629301018865

namespace A147677

/-- `A176415(n)+A032766(n)` -/
def P16968696629301018865.Spec : Prop :=
  ∀ n, P16968696629301018865.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P7179216618444364928

`A137235(n)+A109613(n)`
-/

namespace A147677.P7179216618444364928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137235 n + A109613 n

end

end A147677.P7179216618444364928

namespace A147677

/-- `A137235(n)+A109613(n)` -/
def P7179216618444364928.Spec : Prop :=
  ∀ n, P7179216618444364928.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P14476914228350407180

`A176260(n)+A166517(n)`
-/

namespace A147677.P14476914228350407180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 n + A166517 n

end

end A147677.P14476914228350407180

namespace A147677

/-- `A176260(n)+A166517(n)` -/
def P14476914228350407180.Spec : Prop :=
  ∀ n, P14476914228350407180.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P2201392113556063783

`A168198(A014681(n+1))+1`
-/

namespace A147677.P2201392113556063783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (A014681 (n + 1)).toNat + 1

end

end A147677.P2201392113556063783

namespace A147677

/-- `A168198(A014681(n+1))+1` -/
def P2201392113556063783.Spec : Prop :=
  ∀ n, P2201392113556063783.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P2113606400233955367

`A168198(A103889(n+1))+1`
-/

namespace A147677.P2113606400233955367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (A103889 (n + 1)).toNat + 1

end

end A147677.P2113606400233955367

namespace A147677

/-- `A168198(A103889(n+1))+1` -/
def P2113606400233955367.Spec : Prop :=
  ∀ n, P2113606400233955367.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P5218999804704822638

`A168411(n+1)-A047264(n+1)`
-/

namespace A147677.P5218999804704822638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168411 (n + 1) - A047264 (n + 1)

end

end A147677.P5218999804704822638

namespace A147677

/-- `A168411(n+1)-A047264(n+1)` -/
def P5218999804704822638.Spec : Prop :=
  ∀ n, P5218999804704822638.a n = A147677 (n + 1)

end A147677

/-! ## A147677.P10460790871135707131

`A168456(n+1)-A047336(n+1)`
-/

namespace A147677.P10460790871135707131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168456 (n + 1) - A047336 (n + 1)

end

end A147677.P10460790871135707131

namespace A147677

/-- `A168456(n+1)-A047336(n+1)` -/
def P10460790871135707131.Spec : Prop :=
  ∀ n, P10460790871135707131.a n = A147677 (n + 1)

end A147677

/-!
# A147678: Double, add 0, double, add 1, double, add 2, double, add 3, etc.

The programs for A147678, the canonical program `A147678.P11950444049408449158` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147678 has offset 1).

The definition of A147678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147678.P12223808586562946567

`(1+(-1)^(n+1))/2+2*A016116(n+1)-A105811(n+4)/4-3*(n+2)/4`
-/

namespace A147678.P12223808586562946567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ (n + 1) : ℚ) / 2 + (2 * A016116 (n + 1) : ℚ) - (A105811 (n + 4) : ℚ) / 4 - (3 * (n + 2) : ℚ) / 4

end

end A147678.P12223808586562946567

namespace A147678

/-- `(1+(-1)^(n+1))/2+2*A016116(n+1)-A105811(n+4)/4-3*(n+2)/4` -/
def P12223808586562946567.Spec : Prop :=
  ∀ n, P12223808586562946567.a n = (A147678 (n + 1) : ℚ)

end A147678

/-! ## A147678.P11950444049408449158

`4*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=5, a(5)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147678

/-- `4*a(n-2)-5*a(n-4)+2*a(n-6)` -/
def P11950444049408449158.Spec : Prop :=
  ∀ n, P11950444049408449158.a n = A147678 (n + 1)

theorem P11950444049408449158.correct : P11950444049408449158.Spec := by
  intro n
  simp only [A147678, Nat.add_sub_cancel]

end A147678

/-! ## A147678.P5587235818221020683

`A075427(n)-A029578(n)`
-/

namespace A147678.P5587235818221020683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n - A029578 n

end

end A147678.P5587235818221020683

namespace A147678

/-- `A075427(n)-A029578(n)` -/
def P5587235818221020683.Spec : Prop :=
  ∀ n, P5587235818221020683.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P1375580244939697830

`and(-A029579(n), A075427(n))`
-/

namespace A147678.P1375580244939697830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A029579 n) (A075427 n)

end

end A147678.P1375580244939697830

namespace A147678

/-- `and(-A029579(n), A075427(n))` -/
def P1375580244939697830.Spec : Prop :=
  ∀ n, P1375580244939697830.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P17458255669847932177

`∑[A094024(n)]-A029578(n)`
-/

namespace A147678.P17458255669847932177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029578 n

end

end A147678.P17458255669847932177

namespace A147678

/-- `∑[A094024(n)]-A029578(n)` -/
def P17458255669847932177.Spec : Prop :=
  ∀ n, P17458255669847932177.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P5371940053142877606

`A052551(n+1)-A026741(n)`
-/

namespace A147678.P5371940053142877606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - A026741 n

end

end A147678.P5371940053142877606

namespace A147678

/-- `A052551(n+1)-A026741(n)` -/
def P5371940053142877606.Spec : Prop :=
  ∀ n, P5371940053142877606.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P3296830384411866720

`A097110(n+1)-A029579(n)`
-/

namespace A147678.P3296830384411866720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 (n + 1) - A029579 n

end

end A147678.P3296830384411866720

namespace A147678

/-- `A097110(n+1)-A029579(n)` -/
def P3296830384411866720.Spec : Prop :=
  ∀ n, P3296830384411866720.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P12512679393713572245

`A060546(n+2)-A029578(n+2)`
-/

namespace A147678.P12512679393713572245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 2) - A029578 (n + 2)

end

end A147678.P12512679393713572245

namespace A147678

/-- `A060546(n+2)-A029578(n+2)` -/
def P12512679393713572245.Spec : Prop :=
  ∀ n, P12512679393713572245.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P1683417697950296934

`A016116(n+3)-A029578(n+2)`
-/

namespace A147678.P1683417697950296934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 3) - A029578 (n + 2)

end

end A147678.P1683417697950296934

namespace A147678

/-- `A016116(n+3)-A029578(n+2)` -/
def P1683417697950296934.Spec : Prop :=
  ∀ n, P1683417697950296934.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P11821930514280999484

`A000225(A080513(n))-lcm(2, n)/2`
-/

namespace A147678.P11821930514280999484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A080513 n).toNat : ℚ) - (Nat.lcm 2 n : ℚ) / 2

end

end A147678.P11821930514280999484

namespace A147678

/-- `A000225(A080513(n))-lcm(2, n)/2` -/
def P11821930514280999484.Spec : Prop :=
  ∀ n, P11821930514280999484.a n = (A147678 (n + 1) : ℚ)

end A147678

/-! ## A147678.P6755554568330778210

`A052551(n+1)-gcd(n, A000096(n))`
-/

namespace A147678.P6755554568330778210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - (Int.gcd (n : ℤ) (A000096 n) : ℤ)

end

end A147678.P6755554568330778210

namespace A147678

/-- `A052551(n+1)-gcd(n, A000096(n))` -/
def P6755554568330778210.Spec : Prop :=
  ∀ n, P6755554568330778210.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P2324063180761966731

`A052551(n+1)-n/A000034(n+1)`
-/

namespace A147678.P2324063180761966731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052551 (n + 1) : ℚ) - (n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A147678.P2324063180761966731

namespace A147678

/-- `A052551(n+1)-n/A000034(n+1)` -/
def P2324063180761966731.Spec : Prop :=
  ∀ n, P2324063180761966731.a n = (A147678 (n + 1) : ℚ)

end A147678

/-! ## A147678.P4032385212005313780

`A000225(A004526(n+3))-A026741(n)`
-/

namespace A147678.P4032385212005313780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A004526 (n + 3)).toNat - A026741 n

end

end A147678.P4032385212005313780

namespace A147678

/-- `A000225(A004526(n+3))-A026741(n)` -/
def P4032385212005313780.Spec : Prop :=
  ∀ n, P4032385212005313780.a n = A147678 (n + 1)

end A147678

/-! ## A147678.P10341337687319158684

`(A075427(n+1)-n)/A000034(n+1)`
-/

namespace A147678.P10341337687319158684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075427 (n + 1) - (n : ℤ) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A147678.P10341337687319158684

namespace A147678

/-- `(A075427(n+1)-n)/A000034(n+1)` -/
def P10341337687319158684.Spec : Prop :=
  ∀ n, P10341337687319158684.a n = (A147678 (n + 1) : ℚ)

end A147678

/-! ## A147678.P18267576657807911819

`Δ[A077866(n)]-A026741(n)`
-/

namespace A147678.P18267576657807911819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026741 n

end

end A147678.P18267576657807911819

namespace A147678

/-- `Δ[A077866(n)]-A026741(n)` -/
def P18267576657807911819.Spec : Prop :=
  ∀ n, P18267576657807911819.a n = A147678 (n + 1)

end A147678

/-!
# A147681: Late-growing permutations: number of permutations of 1..n with every partial sum <= the same partial sum averaged over all permutations.

The programs for A147681, there is no canonical definition to state claims against.
-/

/-! ## A147681.P17169247783460980233

`A145874(abs(1-n)+1)`
-/

namespace A147681.P17169247783460980233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145874 (|1 - (n : ℤ)| + 1).toNat

end

end A147681.P17169247783460980233

/-! ## A147681.P8896524179545363967

`or(1, A145874(A028310(n)))`
-/

namespace A147681.P8896524179545363967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145874 (A028310 n).toNat)

end

end A147681.P8896524179545363967

/-! ## A147681.P110982534756425899

`A145874(A028310(n))%A002110(n+3)`
-/

namespace A147681.P110982534756425899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145874 (A028310 n).toNat) (A002110 (n + 3))

end

end A147681.P110982534756425899

/-! ## A147681.P13569936531296241558

`A005171(2*(n+2))*A145874(A028310(n))`
-/

namespace A147681.P13569936531296241558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 2)) * A145874 (A028310 n).toNat

end

end A147681.P13569936531296241558

/-! ## A147681.P10769765078207833757

`∏{e}[2^n, A145874(#)]`
-/

namespace A147681.P10769765078207833757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A145874 (Nat.factorization (f1 n) p)

end

end A147681.P10769765078207833757

/-!
# A147682: Late-growing permutations: number of permutations of 2 indistinguishable copies of 1..n with every partial sum <= the same partial sum averaged over all permutations.

The programs for A147682, there is no canonical definition to state claims against.
-/

/-! ## A147682.P10104209106140694820

`A215561(∑[n+3])`
-/

namespace A147682.P10104209106140694820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147682.P10104209106140694820

/-! ## A147682.P5291908932572160606

`A215561(A141214(n))+A185245(n)`
-/

namespace A147682.P5291908932572160606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (A141214 n).toNat + A185245 n

end

end A147682.P5291908932572160606

/-! ## A147682.P3595558440617513424

`gcd(A010894(n), A215561(A141214(n)))`
-/

namespace A147682.P3595558440617513424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A215561 (A141214 n).toNat)

end

end A147682.P3595558440617513424

/-! ## A147682.P14925531305491742872

`A215561(A141214(n))/A029444(n)!`
-/

namespace A147682.P14925531305491742872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215561 (A141214 n).toNat : ℚ) / (Nat.factorial (A029444 n).toNat : ℚ)

end

end A147682.P14925531305491742872

/-! ## A147682.P12162997847798519796

`A215561(A141214(n))/A007318(A000217(n))`
-/

namespace A147682.P12162997847798519796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215561 (A141214 n).toNat : ℚ) / (A007318 (A000217 n).toNat : ℚ)

end

end A147682.P12162997847798519796

/-!
# A147683: Numbers n with property that 6n-1 is in A053182.

The programs for A147683, there is no canonical definition to state claims against.
-/

/-! ## A147683.P15178301907034237944

`A136242(n+3)/6`
-/

namespace A147683.P15178301907034237944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136242 (n + 3) : ℚ) / 6

end

end A147683.P15178301907034237944

/-! ## A147683.P2821418157458806756

`ceil(A053182(n+3)/6)`
-/

namespace A147683.P2821418157458806756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053182 (n + 3) : ℚ) / 6⌉

end

end A147683.P2821418157458806756

/-! ## A147683.P16976119955968165325

`round(A053182(4/2+n+1)/6)`
-/

namespace A147683.P16976119955968165325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053182 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n + 1 : ℚ))).toNat : ℚ) / 6)

end

end A147683.P16976119955968165325

/-! ## A147683.P15348085079277364695

`ceil(p?[A193070(n+2)]/6)`
-/

namespace A147683.P15348085079277364695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌉

end

end A147683.P15348085079277364695

/-! ## A147683.P12016615237764068245

`A008615(A053182(n+3))`
-/

namespace A147683.P12016615237764068245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A053182 (n + 3)).toNat

end

end A147683.P12016615237764068245

/-! ## A147683.P1379562643579637968

`record[A008615(A330833(n+1))]`
-/

namespace A147683.P1379562643579637968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A330833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147683.P1379562643579637968

/-! ## A147683.P1702079056847201463

`record[A290980(A053182(n+1))]`
-/

namespace A147683.P1702079056847201463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290980 (A053182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147683.P1702079056847201463

/-! ## A147683.P18405038056397760618

`A008615(p?[A193070(n+2)])`
-/

namespace A147683.P18405038056397760618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A147683.P18405038056397760618

/-! ## A147683.P3668593742819217260

`A103221(p?[A193070(n+2)])`
-/

namespace A147683.P3668593742819217260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A147683.P3668593742819217260

/-! ## A147683.P1252651626282428760

`A008611(p?[A193070(n+2)])/2`
-/

namespace A147683.P1252651626282428760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A147683.P1252651626282428760

/-!
# A147684: Late-growing permutations: number of permutations of 3 indistinguishable copies of 1..n with every partial sum <= the same partial sum averaged over all permutations.

The programs for A147684, there is no canonical definition to state claims against.
-/

/-! ## A147684.P15495922491593427735

`A215561(∑[n+3]+n+3)`
-/

namespace A147684.P15495922491593427735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A147684.P15495922491593427735

/-!
# A147685: Squares and centered square numbers interleaved.

The programs for A147685, the canonical program `A147685.P3232324951231368446` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147685 has offset 0).

The definition of A147685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147685.P3232324951231368446

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=4, a(5)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147685

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P3232324951231368446.Spec : Prop :=
  ∀ n, P3232324951231368446.a n = A147685 n

theorem P3232324951231368446.correct : P3232324951231368446.Spec := by
  intro n
  simp only [A147685]

end A147685

/-! ## A147685.P1405571832530785476

`n²*(1+(-1)^n)/8+(n²+1)*(1-(-1)^n)/4`
-/

namespace A147685.P1405571832530785476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * (1 + (-1) ^ n) : ℚ) / 8 + ((n ^ 2 + 1 : ℤ) * (1 - (-1) ^ n) : ℚ) / 4

end

end A147685.P1405571832530785476

namespace A147685

/-- `n²*(1+(-1)^n)/8+(n²+1)*(1-(-1)^n)/4` -/
def P1405571832530785476.Spec : Prop :=
  ∀ n, P1405571832530785476.a n = (A147685 n : ℚ)

theorem P1405571832530785476.correct : P1405571832530785476.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A147685, Nat.add_sub_cancel, A147685.P1405571832530785476.a, A147685.P3232324951231368446.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A147685, Nat.add_sub_cancel, A147685.P1405571832530785476.a, A147685.P3232324951231368446.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A147685

/-! ## A147685.P1177183838084211517

`ceil(lcm(2, n²)/4)`
-/

namespace A147685.P1177183838084211517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n ^ 2) : ℚ) / 4⌉

end

end A147685.P1177183838084211517

namespace A147685

/-- `ceil(lcm(2, n²)/4)` -/
def P1177183838084211517.Spec : Prop :=
  ∀ n, P1177183838084211517.a n = A147685 n

end A147685

/-! ## A147685.P17391503193586060989

`ceil(n²/(2*gcd(2, n)))`
-/

namespace A147685.P17391503193586060989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / (2 * Nat.gcd 2 n : ℚ)⌉

end

end A147685.P17391503193586060989

namespace A147685

/-- `ceil(n²/(2*gcd(2, n)))` -/
def P17391503193586060989.Spec : Prop :=
  ∀ n, P17391503193586060989.a n = A147685 n

end A147685

/-! ## A147685.P12620336534931398230

`round(n*n/(2-and(1, n))/2)`
-/

namespace A147685.P12620336534931398230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)) / 2)

end

end A147685.P12620336534931398230

namespace A147685

/-- `round(n*n/(2-and(1, n))/2)` -/
def P12620336534931398230.Spec : Prop :=
  ∀ n, P12620336534931398230.a n = A147685 n

end A147685

/-! ## A147685.P5384583629129638935

`round(Δ[C(n, 2)*floor(n/2)]/2)`
-/

namespace A147685.P5384583629129638935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 2)

end

end A147685.P5384583629129638935

namespace A147685

/-- `round(Δ[C(n, 2)*floor(n/2)]/2)` -/
def P5384583629129638935.Spec : Prop :=
  ∀ n, P5384583629129638935.a n = A147685 n

end A147685

/-! ## A147685.P8816864911139631495

`floor(((and(1, n)+1)*n²+3)/4)`
-/

namespace A147685.P8816864911139631495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.land 1 n + 1) * n ^ 2 + 3 : ℚ) / 4⌋

end

end A147685.P8816864911139631495

namespace A147685

/-- `floor(((and(1, n)+1)*n²+3)/4)` -/
def P8816864911139631495.Spec : Prop :=
  ∀ n, P8816864911139631495.a n = A147685 n

end A147685

/-! ## A147685.P13393618680611558304

`round(A129194(n)/2)`
-/

namespace A147685.P13393618680611558304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129194 n : ℚ) / 2)

end

end A147685.P13393618680611558304

namespace A147685

/-- `round(A129194(n)/2)` -/
def P13393618680611558304.Spec : Prop :=
  ∀ n, P13393618680611558304.a n = A147685 n

end A147685

/-! ## A147685.P9580794727942414161

`ceil(n²/A040003(n))`
-/

namespace A147685.P9580794727942414161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / (A040003 n : ℚ)⌉

end

end A147685.P9580794727942414161

namespace A147685

/-- `ceil(n²/A040003(n))` -/
def P9580794727942414161.Spec : Prop :=
  ∀ n, P9580794727942414161.a n = A147685 n

end A147685

/-! ## A147685.P3924654460929957591

`ceil(n/2*A026741(n))`
-/

namespace A147685.P3924654460929957591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 * (A026741 n : ℚ)⌉

end

end A147685.P3924654460929957591

namespace A147685

/-- `ceil(n/2*A026741(n))` -/
def P3924654460929957591.Spec : Prop :=
  ∀ n, P3924654460929957591.a n = A147685 n

end A147685

/-! ## A147685.P16996730939136080900

`A000982(n)/A040001(n)`
-/

namespace A147685.P16996730939136080900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 n : ℚ) / (A040001 n : ℚ)

end

end A147685.P16996730939136080900

namespace A147685

/-- `A000982(n)/A040001(n)` -/
def P16996730939136080900.Spec : Prop :=
  ∀ n, P16996730939136080900.a n = (A147685 n : ℚ)

end A147685

/-! ## A147685.P14390108740669240541

`A135509(n)%A010000(n)`
-/

namespace A147685.P14390108740669240541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135509 n) (A010000 n)

end

end A147685.P14390108740669240541

namespace A147685

/-- `A135509(n)%A010000(n)` -/
def P14390108740669240541.Spec : Prop :=
  ∀ n, P14390108740669240541.a n = A147685 n

end A147685

/-! ## A147685.P8825283563469040858

`A228564(n)%A084684(n)`
-/

namespace A147685.P8825283563469040858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228564 n) (A084684 n)

end

end A147685.P8825283563469040858

namespace A147685

/-- `A228564(n)%A084684(n)` -/
def P8825283563469040858.Spec : Prop :=
  ∀ n, P8825283563469040858.a n = A147685 n

end A147685

/-! ## A147685.P12236269176640646551

`gcd(A000982(n), A135509(n))`
-/

namespace A147685.P12236269176640646551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000982 n) (A135509 n)

end

end A147685.P12236269176640646551

namespace A147685

/-- `gcd(A000982(n), A135509(n))` -/
def P12236269176640646551.Spec : Prop :=
  ∀ n, (P12236269176640646551.a n : ℤ) = A147685 n

end A147685

/-! ## A147685.P8197256273510978897

`gcd(A030978(n), A212561(n))`
-/

namespace A147685.P8197256273510978897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030978 n) (A212561 n)

end

end A147685.P8197256273510978897

namespace A147685

/-- `gcd(A030978(n), A212561(n))` -/
def P8197256273510978897.Spec : Prop :=
  ∀ n, (P8197256273510978897.a n : ℤ) = A147685 n

end A147685

/-! ## A147685.P12964083698383712834

`A000034(n)/2*A000982(n)`
-/

namespace A147685.P12964083698383712834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A000982 n : ℚ)

end

end A147685.P12964083698383712834

namespace A147685

/-- `A000034(n)/2*A000982(n)` -/
def P12964083698383712834.Spec : Prop :=
  ∀ n, P12964083698383712834.a n = (A147685 n : ℚ)

end A147685

/-! ## A147685.P10332322416776904343

`A131478(n)%A106230(n+1)`
-/

namespace A147685.P10332322416776904343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131478 n) (A106230 (n + 1))

end

end A147685.P10332322416776904343

namespace A147685

/-- `A131478(n)%A106230(n+1)` -/
def P10332322416776904343.Spec : Prop :=
  ∀ n, P10332322416776904343.a n = A147685 n

end A147685

/-! ## A147685.P17969862772284314908

`A213390(n)%A089594(n+1)`
-/

namespace A147685.P17969862772284314908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213390 n) (A089594 (n + 1))

end

end A147685.P17969862772284314908

namespace A147685

/-- `A213390(n)%A089594(n+1)` -/
def P17969862772284314908.Spec : Prop :=
  ∀ n, P17969862772284314908.a n = A147685 n

end A147685

/-! ## A147685.P11391779705354953795

`A099392(n+1)%A261327(n)`
-/

namespace A147685.P11391779705354953795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099392 (n + 1)) (A261327 n)

end

end A147685.P11391779705354953795

namespace A147685

/-- `A099392(n+1)%A261327(n)` -/
def P11391779705354953795.Spec : Prop :=
  ∀ n, P11391779705354953795.a n = A147685 n

end A147685

/-! ## A147685.P8015421828338320747

`A177755(n+1)/A137933(n+1)`
-/

namespace A147685.P8015421828338320747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177755 (n + 1) : ℚ) / (A137933 (n + 1) : ℚ)

end

end A147685.P8015421828338320747

namespace A147685

/-- `A177755(n+1)/A137933(n+1)` -/
def P8015421828338320747.Spec : Prop :=
  ∀ n, P8015421828338320747.a n = (A147685 n : ℚ)

end A147685

/-!
# A147686: Late-growing permutations: number of permutations of 4 indistinguishable copies of 1..n with every partial sum <= the same partial sum averaged over all permutations.

The programs for A147686, there is no canonical definition to state claims against.
-/

/-! ## A147686.P3864063112064426710

`A215561(Δ[Δ[A006504(n+1)]])`
-/

namespace A147686.P3864063112064426710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (f1 (n + 1) - f1 n).toNat

end

end A147686.P3864063112064426710

/-!
# A147687: Late-growing permutations: number of permutations of 5 indistinguishable copies of 1..n with every partial sum <= the same partial sum averaged over all permutations.

The programs for A147687, there is no canonical definition to state claims against.
-/

/-! ## A147687.P3551704312793501917

`A215561(eq[7, A200370(n+1)])`
-/

namespace A147687.P3551704312793501917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A147687.P3551704312793501917

/-! ## A147687.P7284655928793438275

`A215561(Δ[n²]+A167499(n+4)+1)`
-/

namespace A147687.P7284655928793438275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A167499 (n + 4) + 1)).toNat

end

end A147687.P7284655928793438275

/-!
# A147688: a(n) = ((6 + sqrt(8))^n + (6 - sqrt(8))^n)/2.

The programs for A147688, the canonical program `A147688.P12197347597121530615` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147688 has offset 0).

The definition of A147688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147688.P12197347597121530615

`2^n*A083878(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147688

/-- `2^n*A083878(n)` -/
def P12197347597121530615.Spec : Prop :=
  ∀ n, P12197347597121530615.a n = A147688 n

theorem P12197347597121530615.correct : P12197347597121530615.Spec := by
  intro n
  simp only [A147688]

end A147688

/-! ## A147688.P8650013587439917968

`12*a(n-1)-28*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A147688.P8650013587439917968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  12 * a (n - 1) - 28 * a (n - 2)

end

end A147688.P8650013587439917968

namespace A147688

/-- `12*a(n-1)-28*a(n-2)` -/
def P8650013587439917968.Spec : Prop :=
  ∀ n, P8650013587439917968.a n = A147688 n

end A147688

/-! ## A147688.P6424936681136094914

`((6+sqrt(8))^n+(6-sqrt(8))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147688.P6424936681136094914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (8 : ℝ)) ^ n + (6 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A147688.P6424936681136094914

namespace A147688

/-- `((6+sqrt(8))^n+(6-sqrt(8))^n)/2` -/
def P6424936681136094914.Spec : Prop :=
  ∀ n, P6424936681136094914.a n = (A147688 n : ℝ)

end A147688

/-! ## A147688.P2163993217120639182

`lcm(A000079(n), A083878(n))`
-/

namespace A147688.P2163993217120639182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A083878 n)

end

end A147688.P2163993217120639182

namespace A147688

/-- `lcm(A000079(n), A083878(n))` -/
def P2163993217120639182.Spec : Prop :=
  ∀ n, (P2163993217120639182.a n : ℤ) = A147688 n

end A147688

/-! ## A147688.P14915067283180914341

`∑[A034999(n)]*A000079(n)`
-/

namespace A147688.P14915067283180914341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A147688.P14915067283180914341

namespace A147688

/-- `∑[A034999(n)]*A000079(n)` -/
def P14915067283180914341.Spec : Prop :=
  ∀ n, P14915067283180914341.a n = A147688 n

end A147688

/-! ## A147688.P5869380541847244012

`A083878(n)*A143095(2*n)`
-/

namespace A147688.P5869380541847244012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n * A143095 (2 * n)

end

end A147688.P5869380541847244012

namespace A147688

/-- `A083878(n)*A143095(2*n)` -/
def P5869380541847244012.Spec : Prop :=
  ∀ n, P5869380541847244012.a n = A147688 n

end A147688

/-! ## A147688.P8323317248564662061

`∑[A011782(n)]*∑[A034999(n)]`
-/

namespace A147688.P8323317248564662061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A147688.P8323317248564662061

namespace A147688

/-- `∑[A011782(n)]*∑[A034999(n)]` -/
def P8323317248564662061.Spec : Prop :=
  ∀ n, P8323317248564662061.a n = A147688 n

end A147688

/-! ## A147688.P8870164991041253151

`A083878(n)*A135530(2*n+1)`
-/

namespace A147688.P8870164991041253151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n * A135530 (2 * n + 1)

end

end A147688.P8870164991041253151

namespace A147688

/-- `A083878(n)*A135530(2*n+1)` -/
def P8870164991041253151.Spec : Prop :=
  ∀ n, P8870164991041253151.a n = A147688 n

end A147688

/-! ## A147688.P3923551328981504586

`A083878(n)*A164073(2*n+1)`
-/

namespace A147688.P3923551328981504586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n * A164073 (2 * n + 1)

end

end A147688.P3923551328981504586

namespace A147688

/-- `A083878(n)*A164073(2*n+1)` -/
def P3923551328981504586.Spec : Prop :=
  ∀ n, P3923551328981504586.a n = A147688 n

end A147688

/-! ## A147688.P6409071904721848020

`record[A083878(A025581(n))]*A000079(n)`
-/

namespace A147688.P6409071904721848020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A147688.P6409071904721848020

namespace A147688

/-- `record[A083878(A025581(n))]*A000079(n)` -/
def P6409071904721848020.Spec : Prop :=
  ∀ n, P6409071904721848020.a n = A147688 n

end A147688

/-!
# A147689: a(n) = ((7 + sqrt(8))^n + (7 - sqrt(8))^n)/2.

The programs for A147689, the canonical program `A147689.P8397445683479709366` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147689 has offset 0).

The definition of A147689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147689.P8397445683479709366

`14*a(n-1)-41*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147689

/-- `14*a(n-1)-41*a(n-2)` -/
def P8397445683479709366.Spec : Prop :=
  ∀ n, P8397445683479709366.a n = A147689 n

theorem P8397445683479709366.correct : P8397445683479709366.Spec := by
  intro n
  simp only [A147689]

end A147689

/-! ## A147689.P8636415051796496753

`((7+sqrt(8))^n+(7-sqrt(8))^n)/2`
-/

namespace A147689.P8636415051796496753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (8 : ℝ)) ^ n + (7 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A147689.P8636415051796496753

namespace A147689

/-- `((7+sqrt(8))^n+(7-sqrt(8))^n)/2` -/
def P8636415051796496753.Spec : Prop :=
  ∀ n, P8636415051796496753.a n = (A147689 n : ℝ)

theorem P8636415051796496753.correct : P8636415051796496753.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147689, Nat.add_sub_cancel, A147689.P8636415051796496753.a, A147689.P8397445683479709366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147689, Nat.add_sub_cancel, A147689.P8636415051796496753.a, A147689.P8397445683479709366.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147689

/-!
# A147690: a(0)=1; thereafter a(n+1)=F(n+3)*a(n)+F(n+3) where F_n is Fibonacci's sequence 0,1,1,2,3,5,8, etc.

The programs for A147690, there is no canonical definition to state claims against.
-/

/-! ## A147690.P14186535380341385574

`A176343(n+2)-1`
-/

namespace A147690.P14186535380341385574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176343 (n + 2) - 1

end

end A147690.P14186535380341385574

/-! ## A147690.P17331546385420970568

`(a(n-1)+1)*Δ[A018910(n)]` with `a(0)=1`
-/

namespace A147690.P17331546385420970568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * (f1 (n + 1) - f1 n)

end

end A147690.P17331546385420970568

/-! ## A147690.P14166073478430837627

`(a(n-1)+1)*Δ[A020695(n)]` with `a(0)=1`
-/

namespace A147690.P14166073478430837627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * (f1 (n + 1) - f1 n)

end

end A147690.P14166073478430837627

/-! ## A147690.P3723524310323559516

`(a(n-1)+1)*record[A212804(n)]` with `a(0)=1`
-/

namespace A147690.P3723524310323559516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147690.P3723524310323559516

/-! ## A147690.P7363401011336541233

`(a(n-1)+1)*A000045(n+2)` with `a(0)=1`
-/

namespace A147690.P7363401011336541233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * A000045 (n + 2)

end

end A147690.P7363401011336541233

/-!
# A147691: G.f.: x*(1+x+x^2)*(1+6*x+8*x^2+4*x^3-x^4)/((1+x)^2*(1-x)^4).

The programs for A147691, there is no canonical definition to state claims against.
-/

/-! ## A147691.P8148431323791682492

`A327326(eq[1, A286001(n+1)])`
-/

namespace A147691.P8148431323791682492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A147691.P8148431323791682492

/-!
# A147693: Irregular triangle read by rows: T(n, k) = n mod prime(k), n >= 2, 1 <= k <= PrimePi(n), where PrimePi(n) = A000720(n).

The programs for A147693, the canonical program `A147693.P9391154294968701023` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147693 has offset 2).

The definition of A147693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147693.P9391154294968701023

`A249728(n+2)%A000040(A249727(n+2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A147693

/-- `A249728(n+2)%A000040(A249727(n+2))` -/
def P9391154294968701023.Spec : Prop :=
  ∀ n, P9391154294968701023.a n = A147693 (n + 2)

theorem P9391154294968701023.correct : P9391154294968701023.Spec := by
  intro n
  simp only [A147693, Nat.add_sub_cancel]

end A147693

/-! ## A147693.P11806932677444757706

`A249728(n+2)%p?[A002262(n)]`
-/

namespace A147693.P11806932677444757706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249728 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147693.P11806932677444757706

namespace A147693

/-- `A249728(n+2)%p?[A002262(n)]` -/
def P11806932677444757706.Spec : Prop :=
  ∀ n, P11806932677444757706.a n = A147693 (n + 2)

end A147693

/-! ## A147693.P1460263643945485356

`A259029(A022144(n)+A000032(n+3))`
-/

namespace A147693.P1460263643945485356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A022144 n + A000032 (n + 3)).toNat

end

end A147693.P1460263643945485356

namespace A147693

/-- `A259029(A022144(n)+A000032(n+3))` -/
def P1460263643945485356.Spec : Prop :=
  ∀ n, P1460263643945485356.a n = A147693 (n + 2)

end A147693

/-! ## A147693.P15452167861177444189

`A002262(A122196(n+1)%A272763(n))`
-/

namespace A147693.P15452167861177444189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.tmod (A122196 (n + 1)) (A272763 n)).toNat

end

end A147693.P15452167861177444189

namespace A147693

/-- `A002262(A122196(n+1)%A272763(n))` -/
def P15452167861177444189.Spec : Prop :=
  ∀ n, P15452167861177444189.a n = A147693 (n + 2)

end A147693

/-! ## A147693.P7906389067516835608

`A081603(A032852(n+1)%A336906(n))`
-/

namespace A147693.P7906389067516835608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (Int.tmod (A032852 (n + 1)) (A336906 n)).toNat

end

end A147693.P7906389067516835608

namespace A147693

/-- `A081603(A032852(n+1)%A336906(n))` -/
def P7906389067516835608.Spec : Prop :=
  ∀ n, P7906389067516835608.a n = A147693 (n + 2)

end A147693

/-!
# A147696: Triangle read by rows: numbers n and columns k such that T(n, k) is n mod k.

The programs for A147696, there is no canonical definition to state claims against.
-/

/-! ## A147696.P5878899387135523865

`A124760(or(5^(n%6), A323057(n+1)))`
-/

namespace A147696.P5878899387135523865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (Int.lor (5 ^ (n % 6) : ℤ) (A323057 (n + 1))).toNat

end

end A147696.P5878899387135523865

/-! ## A147696.P2845813459020749986

`A019425(n)%A000120(A087357(n+1))`
-/

namespace A147696.P2845813459020749986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019425 n) (A000120 (A087357 (n + 1)).toNat)

end

end A147696.P2845813459020749986

/-! ## A147696.P11035232098254805700

`and(A048158(A100179(n+1)), A204697(n))`
-/

namespace A147696.P11035232098254805700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048158 (A100179 (n + 1)).toNat) (A204697 n)

end

end A147696.P11035232098254805700

/-! ## A147696.P9755912395874469045

`A026492(A000288(n))-A267417(3*n)`
-/

namespace A147696.P9755912395874469045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A000288 n).toNat - A267417 (3 * n)

end

end A147696.P9755912395874469045

/-! ## A147696.P14995388637531029990

`A316717(A116040(n+1))`
-/

namespace A147696.P14995388637531029990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A116040 (n + 1)).toNat

end

end A147696.P14995388637531029990

/-!
# A147699: Expansion of f(x) * f(x^5) / phi(-x^10)^2 in powers of x where f(), phi() are Ramanujan theta functions.

The programs for A147699, there is no canonical definition to state claims against.
-/

/-! ## A147699.P1708209411596382772

`A138532(2*n+1)`
-/

namespace A147699.P1708209411596382772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (2 * n + 1)

end

end A147699.P1708209411596382772

/-! ## A147699.P4921214480890824299

`-A145708(2*n+1)`
-/

namespace A147699.P4921214480890824299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145708 (2 * n + 1)

end

end A147699.P4921214480890824299

/-! ## A147699.P4266171307422868288

`A000007(n+1)-A145708(2*n+1)`
-/

namespace A147699.P4266171307422868288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145708 (2 * n + 1)

end

end A147699.P4266171307422868288

/-! ## A147699.P2418749419444623852

`A000035(2*n)-A145708(2*n+1)`
-/

namespace A147699.P2418749419444623852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A145708 (2 * n + 1)

end

end A147699.P2418749419444623852

/-! ## A147699.P14425759535356494317

`1-(A145708(2*n+1)+A000034(2*n))`
-/

namespace A147699.P14425759535356494317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A145708 (2 * n + 1) + A000034 (2 * n))

end

end A147699.P14425759535356494317

/-! ## A147699.P6339980058461860500

`1-(A145708(2*n+1)+A033999(2*n))`
-/

namespace A147699.P6339980058461860500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A145708 (2 * n + 1) + A033999 (2 * n))

end

end A147699.P6339980058461860500

/-! ## A147699.P7236087580297400917

`A033999(2*n+1)*A145708(2*n+1)`
-/

namespace A147699.P7236087580297400917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A145708 (2 * n + 1)

end

end A147699.P7236087580297400917

/-! ## A147699.P13438591553877939203

`(n-A008619(2*n))*A145708(2*n+1)`
-/

namespace A147699.P13438591553877939203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 (2 * n)) * A145708 (2 * n + 1)

end

end A147699.P13438591553877939203

/-! ## A147699.P9848787678859011434

`A145708(2*n+1)*A269529(A120880(2*n+1))`
-/

namespace A147699.P9848787678859011434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (2 * n + 1) * A269529 (A120880 (2 * n + 1)).toNat

end

end A147699.P9848787678859011434

/-! ## A147699.P11790744833637874691

`A036026(2*n)-(A145708(2*n+1)+A116494(2*n))`
-/

namespace A147699.P11790744833637874691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036026 (2 * n) - (A145708 (2 * n + 1) + A116494 (2 * n))

end

end A147699.P11790744833637874691

/-! ## A147699.P13271100453812077787

`A036026(2*n+1)/A116494(2*n+1)*A145708(2*n+1)`
-/

namespace A147699.P13271100453812077787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036026 (2 * n + 1) : ℚ) / (A116494 (2 * n + 1) : ℚ) * (A145708 (2 * n + 1) : ℚ)

end

end A147699.P13271100453812077787

/-! ## A147699.P17918356038198207834

`A034947(A005408(2*n+1))*A145708(2*n+1)`
-/

namespace A147699.P17918356038198207834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A005408 (2 * n + 1)).toNat * A145708 (2 * n + 1)

end

end A147699.P17918356038198207834

/-! ## A147699.P7657670495365482871

`A145708(A120880(2*n+1)²)-A145708(2*n+1)`
-/

namespace A147699.P7657670495365482871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (A120880 (2 * n + 1) ^ 2).toNat - A145708 (2 * n + 1)

end

end A147699.P7657670495365482871

/-! ## A147699.P10579633482712788638

`A138532(n+1+n)/A007318(∑[n])`
-/

namespace A147699.P10579633482712788638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138532 (n + 1 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A147699.P10579633482712788638

