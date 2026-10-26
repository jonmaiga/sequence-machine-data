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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A106400: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and -1's.

The programs for A106400, the canonical program `A106400.P11201390576172776043` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106400 has offset 0).

The definition of A106400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106400.P17288827334658541379

`(-1)^A000120(n)`
-/

namespace A106400.P17288827334658541379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000120 n : ℤ)

end

end A106400.P17288827334658541379

namespace A106400

/-- `(-1)^A000120(n)` -/
def P17288827334658541379.Spec : Prop :=
  ∀ n, P17288827334658541379.a n = (A106400 n : ℚ)

end A106400

/-! ## A106400.P11201390576172776043

`1-2*A010060(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106400

/-- `1-2*A010060(n)` -/
def P11201390576172776043.Spec : Prop :=
  ∀ n, P11201390576172776043.a n = A106400 n

theorem P11201390576172776043.correct : P11201390576172776043.Spec := by
  intro n
  simp only [A106400]

end A106400

/-! ## A106400.P10218343743659933064

`A008836(A005940(1+n))`
-/

namespace A106400.P10218343743659933064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A005940 (1 + n)).toNat

end

end A106400.P10218343743659933064

namespace A106400

/-- `A008836(A005940(1+n))` -/
def P10218343743659933064.Spec : Prop :=
  ∀ n, P10218343743659933064.a n = A106400 n

end A106400

/-! ## A106400.P18153402981228310537

`-a(and(n, n-1))` with `a(0)=1`
-/

namespace A106400.P18153402981228310537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A106400.P18153402981228310537

namespace A106400

/-- `-a(and(n, n-1))` -/
def P18153402981228310537.Spec : Prop :=
  ∀ n, P18153402981228310537.a n = A106400 n

end A106400

/-! ## A106400.P2109937101328203139

`-a(or(n, -n)+n)` with `a(0)=1`
-/

namespace A106400.P2109937101328203139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (Int.lor (n : ℤ) (-(n : ℤ)) + (n : ℤ)).toNat

end

end A106400.P2109937101328203139

namespace A106400

/-- `-a(or(n, -n)+n)` -/
def P2109937101328203139.Spec : Prop :=
  ∀ n, P2109937101328203139.a n = A106400 n

end A106400

/-! ## A106400.P10579799819701652520

`-(-1)^comp[xor(n, 2*n)]`
-/

namespace A106400.P10579799819701652520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A106400.P10579799819701652520

namespace A106400

/-- `-(-1)^comp[xor(n, 2*n)]` -/
def P10579799819701652520.Spec : Prop :=
  ∀ n, P10579799819701652520.a n = A106400 n

end A106400

/-! ## A106400.P3413029305253143925

`2*char[xor(n, 2*n)]-1`
-/

namespace A106400.P3413029305253143925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 1

end

end A106400.P3413029305253143925

namespace A106400

/-- `2*char[xor(n, 2*n)]-1` -/
def P3413029305253143925.Spec : Prop :=
  ∀ n, P3413029305253143925.a n = A106400 n

end A106400

/-! ## A106400.P1557377874037949628

`(-1)^n*a(floor(n/2))` with `a(0)=1`
-/

namespace A106400.P1557377874037949628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A106400.P1557377874037949628

namespace A106400

/-- `(-1)^n*a(floor(n/2))` -/
def P1557377874037949628.Spec : Prop :=
  ∀ n, P1557377874037949628.a n = A106400 n

end A106400

/-! ## A106400.P1079466066825379373

`a(floor(n/2))/(-1)^n` with `a(0)=1`
-/

namespace A106400.P1079466066825379373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ)

end

end A106400.P1079466066825379373

namespace A106400

/-- `a(floor(n/2))/(-1)^n` -/
def P1079466066825379373.Spec : Prop :=
  ∀ n, P1079466066825379373.a n = (A106400 n : ℚ)

end A106400

/-! ## A106400.P17377101510269319888

`and(2, a(and(n, n-1)))-1` with `a(0)=1`
-/

namespace A106400.P17377101510269319888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) - 1

end

end A106400.P17377101510269319888

namespace A106400

/-- `and(2, a(and(n, n-1)))-1` -/
def P17377101510269319888.Spec : Prop :=
  ∀ n, P17377101510269319888.a n = A106400 n

end A106400

/-! ## A106400.P17663598442894700533

`∏[-a(n-1)^val(n, 2)]` with `a(0)=1`
-/

namespace A106400.P17663598442894700533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) ^ SequenceMachineLib.valuation n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A106400.P17663598442894700533

namespace A106400

/-- `∏[-a(n-1)^val(n, 2)]` -/
def P17663598442894700533.Spec : Prop :=
  ∀ n, P17663598442894700533.a n = A106400 n

end A106400

/-! ## A106400.P10199204238977039868

`∑[A292118(n)]`
-/

namespace A106400.P10199204238977039868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106400.P10199204238977039868

namespace A106400

/-- `∑[A292118(n)]` -/
def P10199204238977039868.Spec : Prop :=
  ∀ n, P10199204238977039868.a n = A106400 n

end A106400

/-! ## A106400.P5569833397436402379

`2-A268676(n)`
-/

namespace A106400.P5569833397436402379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A268676 n

end

end A106400.P5569833397436402379

namespace A106400

/-- `2-A268676(n)` -/
def P5569833397436402379.Spec : Prop :=
  ∀ n, P5569833397436402379.a n = A106400 n

theorem P5569833397436402379.correct : P5569833397436402379.Spec := by
  intro n
  simp only [A106400, Nat.add_sub_cancel, A106400.P5569833397436402379.a, A106400.P11201390576172776043.a, A010060, A010060.P3080921269106500717.a, A268676, A268676.P8159254776456483871.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106400

/-! ## A106400.P5189979785865893631

`(-1)^A006068(n)`
-/

namespace A106400.P5189979785865893631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006068 n : ℤ)

end

end A106400.P5189979785865893631

namespace A106400

/-- `(-1)^A006068(n)` -/
def P5189979785865893631.Spec : Prop :=
  ∀ n, P5189979785865893631.a n = (A106400 n : ℚ)

end A106400

/-! ## A106400.P12814160127508281984

`(-1)^A033042(n)`
-/

namespace A106400.P12814160127508281984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033042 n : ℤ)

end

end A106400.P12814160127508281984

namespace A106400

/-- `(-1)^A033042(n)` -/
def P12814160127508281984.Spec : Prop :=
  ∀ n, P12814160127508281984.a n = (A106400 n : ℚ)

end A106400

/-! ## A106400.P1812356414017154136

`-a(A053645(n))` with `a(0)=1`
-/

namespace A106400.P1812356414017154136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (A053645 n).toNat

end

end A106400.P1812356414017154136

namespace A106400

/-- `-a(A053645(n))` -/
def P1812356414017154136.Spec : Prop :=
  ∀ n, P1812356414017154136.a n = A106400 n

end A106400

/-! ## A106400.P8142528809568324616

`cos(π*A010060(n))`
-/

namespace A106400.P8142528809568324616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * (A010060 n : ℝ))

end

end A106400.P8142528809568324616

namespace A106400

/-- `cos(π*A010060(n))` -/
def P8142528809568324616.Spec : Prop :=
  ∀ n, P8142528809568324616.a n = (A106400 n : ℝ)

end A106400

/-! ## A106400.P93461776969994749

`2*A010059(n)-1`
-/

namespace A106400.P93461776969994749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010059 n - 1

end

end A106400.P93461776969994749

namespace A106400

/-- `2*A010059(n)-1` -/
def P93461776969994749.Spec : Prop :=
  ∀ n, P93461776969994749.a n = A106400 n

theorem P93461776969994749.correct : P93461776969994749.Spec := by
  intro n
  simp only [A106400, Nat.add_sub_cancel, A106400.P93461776969994749.a, A106400.P11201390576172776043.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106400

/-! ## A106400.P17541248608362614691

`3-2*A001285(n)`
-/

namespace A106400.P17541248608362614691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A001285 n

end

end A106400.P17541248608362614691

namespace A106400

/-- `3-2*A001285(n)` -/
def P17541248608362614691.Spec : Prop :=
  ∀ n, P17541248608362614691.a n = A106400 n

theorem P17541248608362614691.correct : P17541248608362614691.Spec := by
  intro n
  simp only [A106400, Nat.add_sub_cancel, A106400.P17541248608362614691.a, A106400.P11201390576172776043.a, A001285, A001285.P11616636227895161122.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106400

/-! ## A106400.P6039445209421746847

`-a(A025480(n-1))` with `a(0)=1`
-/

namespace A106400.P6039445209421746847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (A025480 (n - 1)).toNat

end

end A106400.P6039445209421746847

namespace A106400

/-- `-a(A025480(n-1))` -/
def P6039445209421746847.Spec : Prop :=
  ∀ n, P6039445209421746847.a n = A106400 n

end A106400

/-!
# A106401: Expansion of (eta(q) * eta(q^9))^3 / eta(q^3)^2 in powers of q.

The programs for A106401, the canonical program `A106401.P14038600827610859030` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106401 has offset 1).

The definition of A106401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106401.P14038600827610859030

`((4*n+2)%3-1)*∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106401

/-- `((4*n+2)%3-1)*∑{d}[n+1, #]` -/
def P14038600827610859030.Spec : Prop :=
  ∀ n, P14038600827610859030.a n = A106401 (n + 1)

theorem P14038600827610859030.correct : P14038600827610859030.Spec := by
  intro n
  simp only [A106401, Nat.add_sub_cancel]

end A106401

/-! ## A106401.P4322109507218126281

`((n+2)%3-1)*A000203(n+1)`
-/

namespace A106401.P4322109507218126281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 2) % 3 : ℕ) : ℤ) - 1) * A000203 (n + 1)

end

end A106401.P4322109507218126281

namespace A106401

/-- `((n+2)%3-1)*A000203(n+1)` -/
def P4322109507218126281.Spec : Prop :=
  ∀ n, P4322109507218126281.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P11569828638233457056

`∑[∑{d}[n+1, #]-∑{d}[n, #]]*A049347(n)`
-/

namespace A106401.P11569828638233457056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A049347 n

end

end A106401.P11569828638233457056

namespace A106401

/-- `∑[∑{d}[n+1, #]-∑{d}[n, #]]*A049347(n)` -/
def P11569828638233457056.Spec : Prop :=
  ∀ n, P11569828638233457056.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P7793288137501719903

`A000203(n+1)*A049347(n)`
-/

namespace A106401.P7793288137501719903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A049347 n

end

end A106401.P7793288137501719903

namespace A106401

/-- `A000203(n+1)*A049347(n)` -/
def P7793288137501719903.Spec : Prop :=
  ∀ n, P7793288137501719903.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P6436164234896723315

`A046913(n+1)*A049347(n)`
-/

namespace A106401.P6436164234896723315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) * A049347 n

end

end A106401.P6436164234896723315

namespace A106401

/-- `A046913(n+1)*A049347(n)` -/
def P6436164234896723315.Spec : Prop :=
  ∀ n, P6436164234896723315.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P2578712679861180795

`A049347(n)*A078708(n+1)`
-/

namespace A106401.P2578712679861180795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A078708 (n + 1)

end

end A106401.P2578712679861180795

namespace A106401

/-- `A049347(n)*A078708(n+1)` -/
def P2578712679861180795.Spec : Prop :=
  ∀ n, P2578712679861180795.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P992139114585538587

`A010892(n)*A143348(n+1)`
-/

namespace A106401.P992139114585538587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A143348 (n + 1)

end

end A106401.P992139114585538587

namespace A106401

/-- `A010892(n)*A143348(n+1)` -/
def P992139114585538587.Spec : Prop :=
  ∀ n, P992139114585538587.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P11816132209685839611

`A049347(n)*A116607(n+1)`
-/

namespace A106401.P11816132209685839611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A116607 (n + 1)

end

end A106401.P11816132209685839611

namespace A106401

/-- `A049347(n)*A116607(n+1)` -/
def P11816132209685839611.Spec : Prop :=
  ∀ n, P11816132209685839611.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P1196829518755982154

`A049347(n)*A284326(n+1)`
-/

namespace A106401.P1196829518755982154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A284326 (n + 1)

end

end A106401.P1196829518755982154

namespace A106401

/-- `A049347(n)*A284326(n+1)` -/
def P1196829518755982154.Spec : Prop :=
  ∀ n, P1196829518755982154.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P16566919152503371536

`(1-A080425(n))*A000203(n+1)`
-/

namespace A106401.P16566919152503371536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080425 n) * A000203 (n + 1)

end

end A106401.P16566919152503371536

namespace A106401

/-- `(1-A080425(n))*A000203(n+1)` -/
def P16566919152503371536.Spec : Prop :=
  ∀ n, P16566919152503371536.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P13770039952583350091

`(2-A130784(n))*A000203(n+1)`
-/

namespace A106401.P13770039952583350091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130784 n) * A000203 (n + 1)

end

end A106401.P13770039952583350091

namespace A106401

/-- `(2-A130784(n))*A000203(n+1)` -/
def P13770039952583350091.Spec : Prop :=
  ∀ n, P13770039952583350091.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P832680094419948979

`(A236348(n)-n)*A000203(n+1)`
-/

namespace A106401.P832680094419948979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236348 n - (n : ℤ)) * A000203 (n + 1)

end

end A106401.P832680094419948979

namespace A106401

/-- `(A236348(n)-n)*A000203(n+1)` -/
def P832680094419948979.Spec : Prop :=
  ∀ n, P832680094419948979.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P15868674625046798591

`∑{d}[A162397(n+1), #*A049347(n)]`
-/

namespace A106401.P15868674625046798591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A049347 n

end

end A106401.P15868674625046798591

namespace A106401

/-- `∑{d}[A162397(n+1), #*A049347(n)]` -/
def P15868674625046798591.Spec : Prop :=
  ∀ n, P15868674625046798591.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P9469030246138044916

`A000203(n+1)*A102283(n+1)`
-/

namespace A106401.P9469030246138044916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A102283 (n + 1)

end

end A106401.P9469030246138044916

namespace A106401

/-- `A000203(n+1)*A102283(n+1)` -/
def P9469030246138044916.Spec : Prop :=
  ∀ n, P9469030246138044916.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P4950091850069413143

`A000203(n+1)*A106510(n+1)`
-/

namespace A106401.P4950091850069413143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A106510 (n + 1)

end

end A106401.P4950091850069413143

namespace A106401

/-- `A000203(n+1)*A106510(n+1)` -/
def P4950091850069413143.Spec : Prop :=
  ∀ n, P4950091850069413143.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P16098425067494499534

`A046913(n+1)*A102283(n+1)`
-/

namespace A106401.P16098425067494499534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) * A102283 (n + 1)

end

end A106401.P16098425067494499534

namespace A106401

/-- `A046913(n+1)*A102283(n+1)` -/
def P16098425067494499534.Spec : Prop :=
  ∀ n, P16098425067494499534.a n = A106401 (n + 1)

end A106401

/-! ## A106401.P3243927560294589272

`A049347(n)*A100977(n+1)`
-/

namespace A106401.P3243927560294589272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A100977 (n + 1)

end

end A106401.P3243927560294589272

namespace A106401

/-- `A049347(n)*A100977(n+1)` -/
def P3243927560294589272.Spec : Prop :=
  ∀ n, P3243927560294589272.a n = A106401 (n + 1)

end A106401

/-!
# A106402: Expansion of eta(q^3)^9 / eta(q)^3 in powers of q.

The programs for A106402, the canonical program `A106402.P14799609536326277547` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106402 has offset 1).

The definition of A106402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106402.P14799609536326277547

`∑{d}[n+1, A002324(#)*A007434((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106402

/-- `∑{d}[n+1, A002324(#)*A007434((n+1)/#)]` -/
def P14799609536326277547.Spec : Prop :=
  ∀ n, P14799609536326277547.a n = A106402 (n + 1)

theorem P14799609536326277547.correct : P14799609536326277547.Spec := by
  intro n
  simp only [A106402, Nat.add_sub_cancel]

end A106402

/-! ## A106402.P5790119260567176463

`∑{d}[n+1, A122373(#)*A154269((n+1)/#)]`
-/

namespace A106402.P5790119260567176463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122373 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106402.P5790119260567176463

namespace A106402

/-- `∑{d}[n+1, A122373(#)*A154269((n+1)/#)]` -/
def P5790119260567176463.Spec : Prop :=
  ∀ n, P5790119260567176463.a n = A106402 (n + 1)

end A106402

/-! ## A106402.P14874150672873787104

`∑{d}[n+1, A002618(#)*A326401((n+1)/#)]`
-/

namespace A106402.P14874150672873787104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A326401 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106402.P14874150672873787104

namespace A106402

/-- `∑{d}[n+1, A002618(#)*A326401((n+1)/#)]` -/
def P14874150672873787104.Spec : Prop :=
  ∀ n, P14874150672873787104.a n = A106402 (n + 1)

end A106402

/-! ## A106402.P10253372334300436984

`∑{d}[n+1, A112300(#)*A328407((n+1)/#)]`
-/

namespace A106402.P10253372334300436984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112300 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106402.P10253372334300436984

namespace A106402

/-- `∑{d}[n+1, A112300(#)*A328407((n+1)/#)]` -/
def P10253372334300436984.Spec : Prop :=
  ∀ n, P10253372334300436984.a n = A106402 (n + 1)

end A106402

/-! ## A106402.P15914525833434007055

`abs(A181977(3*(n+1))/3)`
-/

namespace A106402.P15914525833434007055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A181977 (3 * (n + 1)) : ℚ) / 3|

end

end A106402.P15914525833434007055

namespace A106402

/-- `abs(A181977(3*(n+1))/3)` -/
def P15914525833434007055.Spec : Prop :=
  ∀ n, P15914525833434007055.a n = (A106402 (n + 1) : ℚ)

end A106402

/-!
# A106404: Number of even semiprimes dividing n.

The programs for A106404, the canonical program `A106404.P11986901570279237370` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106404 has offset 1).

The definition of A106404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106404.P2935738291234369866

`A086971(n+1)-A106405(n+1)`
-/

namespace A106404.P2935738291234369866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A106405 (n + 1)

end

end A106404.P2935738291234369866

namespace A106404

/-- `A086971(n+1)-A106405(n+1)` -/
def P2935738291234369866.Spec : Prop :=
  ∀ n, P2935738291234369866.a n = A106404 (n + 1)

theorem P2935738291234369866.correct : P2935738291234369866.Spec := by
  intro n
  simp only [A106404, Nat.add_sub_cancel, A106404.P2935738291234369866.a, A106404.P11986901570279237370.f1, A106404.P11986901570279237370.a, A001221, A001221.P10258181745752134128.a, A086971, A086971.P8267424955413097261.a, A106405, A106405.P14402904271098237239.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A056170, A056170.P910878729848546389.a, A059841, A059841.P7264174615531153985.a, A079275, A079275.P13384608062085188173.a, A056169, A056169.P17430176249366647977.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106404

/-! ## A106404.P13174596414325180194

`∑{d}[n+1, A353478(#)]`
-/

namespace A106404.P13174596414325180194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353478 d

end

end A106404.P13174596414325180194

namespace A106404

/-- `∑{d}[n+1, A353478(#)]` -/
def P13174596414325180194.Spec : Prop :=
  ∀ n, P13174596414325180194.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P3357926178907144427

`∑{e}[A264782(n+1), #]`
-/

namespace A106404.P3357926178907144427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106404.P3357926178907144427

namespace A106404

/-- `∑{e}[A264782(n+1), #]` -/
def P3357926178907144427.Spec : Prop :=
  ∀ n, (P3357926178907144427.a n : ℤ) = A106404 (n + 1)

end A106404

/-! ## A106404.P11986901570279237370

`A001221(gcd(xor(1, -n), ∑[n]))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106404

/-- `A001221(gcd(xor(1, -n), ∑[n]))` -/
def P11986901570279237370.Spec : Prop :=
  ∀ n, P11986901570279237370.a n = A106404 (n + 1)

theorem P11986901570279237370.correct : P11986901570279237370.Spec := by
  intro n
  simp only [A106404, Nat.add_sub_cancel]

end A106404

/-! ## A106404.P5570997372504293606

`A001221(gcd(n+1, ceil(n/2)))`
-/

namespace A106404.P5570997372504293606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

end

end A106404.P5570997372504293606

namespace A106404

/-- `A001221(gcd(n+1, ceil(n/2)))` -/
def P5570997372504293606.Spec : Prop :=
  ∀ n, P5570997372504293606.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P4989128955523678249

`A001221(ceil(n/2)^(n%2))`
-/

namespace A106404.P4989128955523678249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌈(n : ℚ) / 2⌉ ^ (n % 2)).toNat

end

end A106404.P4989128955523678249

namespace A106404

/-- `A001221(ceil(n/2)^(n%2))` -/
def P4989128955523678249.Spec : Prop :=
  ∀ n, P4989128955523678249.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P15058193509226588070

`∑{p}[∑[n]%(n+1), A001222(#)]`
-/

namespace A106404.P15058193509226588070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A106404.P15058193509226588070

namespace A106404

/-- `∑{p}[∑[n]%(n+1), A001222(#)]` -/
def P15058193509226588070.Spec : Prop :=
  ∀ n, P15058193509226588070.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P1029483822758820395

`A001221(ceil(n/2))-a(n-1)` with `a(0)=0`
-/

namespace A106404.P1029483822758820395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001221 ⌈(n : ℚ) / 2⌉.toNat - a (n - 1)

end

end A106404.P1029483822758820395

namespace A106404

/-- `A001221(ceil(n/2))-a(n-1)` -/
def P1029483822758820395.Spec : Prop :=
  ∀ n, P1029483822758820395.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P4230395497329741839

`A001221(∑[∑[ogf((1+x-x^2)/(1+2x+x^2))]])`
-/

namespace A106404.P4230395497329741839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106404.P4230395497329741839

namespace A106404

/-- `A001221(∑[∑[ogf((1+x-x^2)/(1+2x+x^2))]])` -/
def P4230395497329741839.Spec : Prop :=
  ∀ n, P4230395497329741839.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P13600677823285396552

`A001221(∑[char[2*n]])*char[2*n+1]`
-/

namespace A106404.P13600677823285396552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A106404.P13600677823285396552

namespace A106404

/-- `A001221(∑[char[2*n]])*char[2*n+1]` -/
def P13600677823285396552.Spec : Prop :=
  ∀ n, P13600677823285396552.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P13153994525323075393

`A001221(A152271(n))`
-/

namespace A106404.P13153994525323075393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A152271 n).toNat

end

end A106404.P13153994525323075393

namespace A106404

/-- `A001221(A152271(n))` -/
def P13153994525323075393.Spec : Prop :=
  ∀ n, P13153994525323075393.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P13692342860332370055

`A001221(A133265(n)/2)`
-/

namespace A106404.P13692342860332370055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A106404.P13692342860332370055

namespace A106404

/-- `A001221(A133265(n)/2)` -/
def P13692342860332370055.Spec : Prop :=
  ∀ n, P13692342860332370055.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P16673929873283646160

`A001221(A158416(abs(1-n)))`
-/

namespace A106404.P16673929873283646160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A158416 |1 - (n : ℤ)|.toNat).toNat

end

end A106404.P16673929873283646160

namespace A106404

/-- `A001221(A158416(abs(1-n)))` -/
def P16673929873283646160.Spec : Prop :=
  ∀ n, P16673929873283646160.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P15750416312353868695

`A001221((A093178(n)+1)/2)`
-/

namespace A106404.P15750416312353868695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)).toNat

end

end A106404.P15750416312353868695

namespace A106404

/-- `A001221((A093178(n)+1)/2)` -/
def P15750416312353868695.Spec : Prop :=
  ∀ n, P15750416312353868695.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P18217451115549814280

`A001221((n+1)/A141310(n))`
-/

namespace A106404.P18217451115549814280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A141310 n : ℚ))).toNat

end

end A106404.P18217451115549814280

namespace A106404

/-- `A001221((n+1)/A141310(n))` -/
def P18217451115549814280.Spec : Prop :=
  ∀ n, P18217451115549814280.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P6755902097252070822

`A001221(n+1)-A205745(n+1)`
-/

namespace A106404.P6755902097252070822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A205745 (n + 1)

end

end A106404.P6755902097252070822

namespace A106404

/-- `A001221(n+1)-A205745(n+1)` -/
def P6755902097252070822.Spec : Prop :=
  ∀ n, P6755902097252070822.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P10758110499096090454

`A205745(n+1)-A305614(n+1)`
-/

namespace A106404.P10758110499096090454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (n + 1) - A305614 (n + 1)

end

end A106404.P10758110499096090454

namespace A106404

/-- `A205745(n+1)-A305614(n+1)` -/
def P10758110499096090454.Spec : Prop :=
  ∀ n, P10758110499096090454.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P15173317623030638748

`∑{d}[n+1, A143519(#)*A183063((n+1)/#)]`
-/

namespace A106404.P15173317623030638748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A183063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106404.P15173317623030638748

namespace A106404

/-- `∑{d}[n+1, A143519(#)*A183063((n+1)/#)]` -/
def P15173317623030638748.Spec : Prop :=
  ∀ n, P15173317623030638748.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P13183693303538552179

`∑{d}[n+1, A001221(#)*A063524((n+1)/#-1)]`
-/

namespace A106404.P13183693303538552179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A106404.P13183693303538552179

namespace A106404

/-- `∑{d}[n+1, A001221(#)*A063524((n+1)/#-1)]` -/
def P13183693303538552179.Spec : Prop :=
  ∀ n, P13183693303538552179.a n = A106404 (n + 1)

end A106404

/-! ## A106404.P6099342480901444803

`Δ[A008619(n)]*A001221(A008619(n))`
-/

namespace A106404.P6099342480901444803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001221 (A008619 n).toNat

end

end A106404.P6099342480901444803

namespace A106404

/-- `Δ[A008619(n)]*A001221(A008619(n))` -/
def P6099342480901444803.Spec : Prop :=
  ∀ n, P6099342480901444803.a n = A106404 (n + 1)

end A106404

/-!
# A106405: Number of odd semiprimes dividing n.

The programs for A106405, the canonical program `A106405.P14402904271098237239` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106405 has offset 1).

The definition of A106405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, A106404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106405.P14402904271098237239

`A086971(n+1)-A106404(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106405

/-- `A086971(n+1)-A106404(n+1)` -/
def P14402904271098237239.Spec : Prop :=
  ∀ n, P14402904271098237239.a n = A106405 (n + 1)

theorem P14402904271098237239.correct : P14402904271098237239.Spec := by
  intro n
  simp only [A106405, Nat.add_sub_cancel]

end A106405

/-! ## A106405.P2369791379344797158

`∑{d}[n+1, A353480(#)]`
-/

namespace A106405.P2369791379344797158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353480 d

end

end A106405.P2369791379344797158

namespace A106405

/-- `∑{d}[n+1, A353480(#)]` -/
def P2369791379344797158.Spec : Prop :=
  ∀ n, P2369791379344797158.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P3831270831737548777

`A086971(A000265(n+1))`
-/

namespace A106405.P3831270831737548777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A000265 (n + 1)).toNat

end

end A106405.P3831270831737548777

namespace A106405

/-- `A086971(A000265(n+1))` -/
def P3831270831737548777.Spec : Prop :=
  ∀ n, P3831270831737548777.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P14240311522720263305

`∑{d}[A000265(n+1), A064911(#)]`
-/

namespace A106405.P14240311522720263305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064911 d

end

end A106405.P14240311522720263305

namespace A106405

/-- `∑{d}[A000265(n+1), A064911(#)]` -/
def P14240311522720263305.Spec : Prop :=
  ∀ n, P14240311522720263305.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P16777975322452178243

`A086971(n+1)+A305614(n+1)-A205745(n+1)`
-/

namespace A106405.P16777975322452178243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) + (A305614 (n + 1) - A205745 (n + 1))

end

end A106405.P16777975322452178243

namespace A106405

/-- `A086971(n+1)+A305614(n+1)-A205745(n+1)` -/
def P16777975322452178243.Spec : Prop :=
  ∀ n, P16777975322452178243.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P13320662660195895937

`A086971(sqrt(A191871(n+1)))`
-/

namespace A106405.P13320662660195895937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway (Real.sqrt (A191871 (n + 1) : ℝ))).toNat

end

end A106405.P13320662660195895937

namespace A106405

/-- `A086971(sqrt(A191871(n+1)))` -/
def P13320662660195895937.Spec : Prop :=
  ∀ n, P13320662660195895937.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P5907285749499649297

`A086971(2*(n+1))-A001221(n+1)`
-/

namespace A106405.P5907285749499649297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (2 * (n + 1)) - A001221 (n + 1)

end

end A106405.P5907285749499649297

namespace A106405

/-- `A086971(2*(n+1))-A001221(n+1)` -/
def P5907285749499649297.Spec : Prop :=
  ∀ n, P5907285749499649297.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P87316645289867341

`A218446(A001227(n+1)%A338119(n+1))`
-/

namespace A106405.P87316645289867341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218446 (Int.tmod (A001227 (n + 1)) (A338119 (n + 1))).toNat

end

end A106405.P87316645289867341

namespace A106405

/-- `A218446(A001227(n+1)%A338119(n+1))` -/
def P87316645289867341.Spec : Prop :=
  ∀ n, P87316645289867341.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P17518968898238123272

`A007949(A001227(n+1)!)`
-/

namespace A106405.P17518968898238123272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (Nat.factorial (A001227 (n + 1)).toNat)

end

end A106405.P17518968898238123272

namespace A106405

/-- `A007949(A001227(n+1)!)` -/
def P17518968898238123272.Spec : Prop :=
  ∀ n, P17518968898238123272.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P1401476298329295514

`A160381(A076279(∑{d}[n+1, #%2])²)`
-/

namespace A106405.P1401476298329295514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A076279 (∑ d ∈ Nat.divisors (f1 n), d % 2) ^ 2).toNat

end

end A106405.P1401476298329295514

namespace A106405

/-- `A160381(A076279(∑{d}[n+1, #%2])²)` -/
def P1401476298329295514.Spec : Prop :=
  ∀ n, P1401476298329295514.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P12507551897741682916

`A081757(A001227((n+1)²))`
-/

namespace A106405.P12507551897741682916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081757 (A001227 ((n + 1) ^ 2)).toNat

end

end A106405.P12507551897741682916

namespace A106405

/-- `A081757(A001227((n+1)²))` -/
def P12507551897741682916.Spec : Prop :=
  ∀ n, P12507551897741682916.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P14858808863493475521

`A102210(A001227((n+1)²)²)`
-/

namespace A106405.P14858808863493475521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A001227 ((n + 1) ^ 2) ^ 2).toNat

end

end A106405.P14858808863493475521

namespace A106405

/-- `A102210(A001227((n+1)²)²)` -/
def P14858808863493475521.Spec : Prop :=
  ∀ n, P14858808863493475521.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P10892848215574868783

`A260804(A001227(∑[2*n+1]))`
-/

namespace A106405.P10892848215574868783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 (A001227 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A106405.P10892848215574868783

namespace A106405

/-- `A260804(A001227(∑[2*n+1]))` -/
def P10892848215574868783.Spec : Prop :=
  ∀ n, P10892848215574868783.a n = A106405 (n + 1)

end A106405

/-! ## A106405.P13073187542812951607

`A005087(A055079(A033272((n+1)²)))`
-/

namespace A106405.P13073187542812951607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A055079 (A033272 ((n + 1) ^ 2)).toNat).toNat

end

end A106405.P13073187542812951607

namespace A106405

/-- `A005087(A055079(A033272((n+1)²)))` -/
def P13073187542812951607.Spec : Prop :=
  ∀ n, P13073187542812951607.a n = A106405 (n + 1)

end A106405

/-!
# A106406: Expansion of (eta(q) * eta(q^15))^2 / (eta(q^3) * eta(q^5)) in powers of q.

The programs for A106406, the canonical program `A106406.P4697066817598156544` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106406 has offset 1).

The definition of A106406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106406.P4697066817598156544

`A001511(n+1)*A121362(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106406

/-- `A001511(n+1)*A121362(n+1)` -/
def P4697066817598156544.Spec : Prop :=
  ∀ n, P4697066817598156544.a n = A106406 (n + 1)

theorem P4697066817598156544.correct : P4697066817598156544.Spec := by
  intro n
  simp only [A106406, Nat.add_sub_cancel]

end A106406

/-! ## A106406.P13153288810830058673

`2*A121362(n+1)-A140728(n+1)`
-/

namespace A106406.P13153288810830058673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121362 (n + 1) - A140728 (n + 1)

end

end A106406.P13153288810830058673

namespace A106406

/-- `2*A121362(n+1)-A140728(n+1)` -/
def P13153288810830058673.Spec : Prop :=
  ∀ n, P13153288810830058673.a n = A106406 (n + 1)

theorem P13153288810830058673.correct : P13153288810830058673.Spec := by
  intro n
  simp only [A106406, Nat.add_sub_cancel, A106406.P13153288810830058673.a, A106406.P4697066817598156544.a, A001511, A001511.P17146462531039486101.a, A121362, A121362.P4931692809741161158.a, A140728, A140728.P15054832237717628178.a, A006519, A006519.P10435570611646570274.a, A128616, A128616.P5791470407128350833.a, A128617, A128617.P2599063269449293282.a, A082451, A082451.P7121663205053929701.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A171977, A171977.P14092944863121073856.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A038712, A038712.P3404197303190209645.a, A081603, A081603.P9418366050176887204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106406

/-! ## A106406.P607724447285028110

`∑{d}[n+1, A121362(#)*A154269((n+1)/#)]`
-/

namespace A106406.P607724447285028110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121362 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106406.P607724447285028110

namespace A106406

/-- `∑{d}[n+1, A121362(#)*A154269((n+1)/#)]` -/
def P607724447285028110.Spec : Prop :=
  ∀ n, P607724447285028110.a n = A106406 (n + 1)

end A106406

/-! ## A106406.P3603621397985122754

`A140728(2*(n+1))+A121362(n+1)`
-/

namespace A106406.P3603621397985122754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140728 (2 * (n + 1)) + A121362 (n + 1)

end

end A106406.P3603621397985122754

namespace A106406

/-- `A140728(2*(n+1))+A121362(n+1)` -/
def P3603621397985122754.Spec : Prop :=
  ∀ n, P3603621397985122754.a n = A106406 (n + 1)

end A106406

/-! ## A106406.P1357627409152851571

`A121362(n+1)-A140727(2*(n+1))`
-/

namespace A106406.P1357627409152851571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121362 (n + 1) - A140727 (2 * (n + 1))

end

end A106406.P1357627409152851571

namespace A106406

/-- `A121362(n+1)-A140727(2*(n+1))` -/
def P1357627409152851571.Spec : Prop :=
  ∀ n, P1357627409152851571.a n = A106406 (n + 1)

end A106406

/-! ## A106406.P2434985751095991085

`A140727(A195161(n+1))`
-/

namespace A106406.P2434985751095991085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (A195161 (n + 1)).toNat

end

end A106406.P2434985751095991085

namespace A106406

/-- `A140727(A195161(n+1))` -/
def P2434985751095991085.Spec : Prop :=
  ∀ n, P2434985751095991085.a n = A106406 (n + 1)

end A106406

/-! ## A106406.P735731104285649177

`A140727(4*(n+1))`
-/

namespace A106406.P735731104285649177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (4 * (n + 1))

end

end A106406.P735731104285649177

namespace A106406

/-- `A140727(4*(n+1))` -/
def P735731104285649177.Spec : Prop :=
  ∀ n, P735731104285649177.a n = A106406 (n + 1)

end A106406

/-! ## A106406.P2741381205544173264

`A140728(2*6*(n+1))`
-/

namespace A106406.P2741381205544173264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140728 (2 * (6 * (n + 1)))

end

end A106406.P2741381205544173264

namespace A106406

/-- `A140728(2*6*(n+1))` -/
def P2741381205544173264.Spec : Prop :=
  ∀ n, P2741381205544173264.a n = A106406 (n + 1)

end A106406

/-!
# A106407: Expansion of x((1-x)(1-x^2)(1-x^4)(1-x^8)...)^2.

The programs for A106407, there is no canonical definition to state claims against.
-/

/-! ## A106407.P14370331120693210732

`n+1-2*A108804(2*n+1)`
-/

namespace A106407.P14370331120693210732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A108804 (2 * n + 1)

end

end A106407.P14370331120693210732

/-! ## A106407.P12725120604678835698

`n+1-2*A247303(2*n+1)`
-/

namespace A106407.P12725120604678835698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A247303 (2 * n + 1)

end

end A106407.P12725120604678835698

/-! ## A106407.P8053116159472622034

`n+1-4*A133009(2*n+1)`
-/

namespace A106407.P8053116159472622034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 4 * A133009 (2 * n + 1)

end

end A106407.P8053116159472622034

/-! ## A106407.P12002883306879963123

`n+1-A042948(A247303(2*n+1))`
-/

namespace A106407.P12002883306879963123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A042948 (A247303 (2 * n + 1)).toNat

end

end A106407.P12002883306879963123

/-! ## A106407.P1510684586638725722

`A108804(4*n+3)-(n+1)`
-/

namespace A106407.P1510684586638725722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 (4 * n + 3) - (n + 1 : ℤ)

end

end A106407.P1510684586638725722

/-! ## A106407.P2672707365101491918

`A247303(A004767(n))-(n+1)`
-/

namespace A106407.P2672707365101491918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 (A004767 n).toNat - (n + 1 : ℤ)

end

end A106407.P2672707365101491918

/-!
# A106408: Triangle, read by rows, where T(1,1) = 1; T(2,1) = T(2,2) = 2; for n > 2, T(n,n) = T(n-1,n-1) + T(n-2,n-2); T(n+1,n) = 2 * T(n,n); for all other entries, T(n,k) = T(n-1,k) + T(n-2,k).

The programs for A106408, there is no canonical definition to state claims against.
-/

/-! ## A106408.P456069915975330851

`A058071((n-comp[∑[n]])²-n)`
-/

namespace A106408.P456069915975330851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A106408.P456069915975330851

/-! ## A106408.P10383631206006898088

`A003965(A146985(n))`
-/

namespace A106408.P10383631206006898088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A146985 n).toNat

end

end A106408.P10383631206006898088

/-! ## A106408.P565027159907665022

`A245564(A089633(n))`
-/

namespace A106408.P565027159907665022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A089633 n).toNat

end

end A106408.P565027159907665022

/-! ## A106408.P12303257281534080551

`A127830(A190620(n+1))`
-/

namespace A106408.P12303257281534080551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127830 (A190620 (n + 1)).toNat

end

end A106408.P12303257281534080551

/-! ## A106408.P6216917544504596670

`A098356(lt[1, A224697(n)])`
-/

namespace A106408.P6216917544504596670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106408.P6216917544504596670

/-! ## A106408.P10498134029261516864

`A108038(n)+A058071(n)`
-/

namespace A106408.P10498134029261516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 n + A058071 n

end

end A106408.P10498134029261516864

/-! ## A106408.P17287617305748792746

`A131410(n+1)+A039913(n)`
-/

namespace A106408.P17287617305748792746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A039913 n

end

end A106408.P17287617305748792746

/-! ## A106408.P14113982840297051804

`A108035(n+1)+A098356(n)`
-/

namespace A106408.P14113982840297051804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) + A098356 n

end

end A106408.P14113982840297051804

/-! ## A106408.P7640538331693376623

`∏{e}[A036561(n), A000045(#+2)]`
-/

namespace A106408.P7640538331693376623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p + 2)

end

end A106408.P7640538331693376623

/-! ## A106408.P2973401295187264628

`∏{e}[A175840(n), A000045(#+2)]`
-/

namespace A106408.P2973401295187264628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p + 2)

end

end A106408.P2973401295187264628

/-!
# A106409: n XOR (greatest proper divisor of n).

The programs for A106409, there is no canonical definition to state claims against.
-/

/-! ## A106409.P16994912180209645191

`xor(n+1, A032742(n+1))`
-/

namespace A106409.P16994912180209645191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A032742 (n + 1))

end

end A106409.P16994912180209645191

/-! ## A106409.P5857223666326050790

`xor(n+1-A060681(n+1), n+1)`
-/

namespace A106409.P5857223666326050790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) - A060681 (n + 1)) (n + 1 : ℤ)

end

end A106409.P5857223666326050790

/-! ## A106409.P11494351869502641196

`xor(n+1, (n+1)/A020639(n+1))`
-/

namespace A106409.P11494351869502641196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ)))

end

end A106409.P11494351869502641196

/-! ## A106409.P7664184464728504967

`A318514(n+1)-A318515(n+1)`
-/

namespace A106409.P7664184464728504967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318514 (n + 1) - A318515 (n + 1)

end

end A106409.P7664184464728504967

/-! ## A106409.P11162741200177446486

`xor(n+1, A117818(A005451(n+1)))`
-/

namespace A106409.P11162741200177446486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A117818 (A005451 (n + 1)).toNat)

end

end A106409.P11162741200177446486

/-! ## A106409.P11334224635733551036

`xor(n+1, xor(A318505(n+1), A318507(n+1)))`
-/

namespace A106409.P11334224635733551036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (Int.xor (A318505 (n + 1)) (A318507 (n + 1)))

end

end A106409.P11334224635733551036

/-! ## A106409.P8175621938854047410

`xor(n+1, A054576(2*(n+1)))`
-/

namespace A106409.P8175621938854047410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A054576 (2 * (n + 1)))

end

end A106409.P8175621938854047410

/-! ## A106409.P9727466558637090404

`xor(n+1, A283464(A266645(n+1)))`
-/

namespace A106409.P9727466558637090404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A283464 (A266645 (n + 1)).toNat)

end

end A106409.P9727466558637090404

/-! ## A106409.P6934775099339497450

`xor(n+1, A283463(A266646(n+1)))`
-/

namespace A106409.P6934775099339497450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A283463 (A266646 (n + 1)).toNat)

end

end A106409.P6934775099339497450

/-!
# A106410: Length of side opposite the lesser of the two angles, one being the double of the other, of a primitive integer-sided triangle, sorted on perimeter(A106499).

The programs for A106410, there is no canonical definition to state claims against.
-/

/-! ## A106410.P33656972954075925

`A106500(n+1)²`
-/

namespace A106410.P33656972954075925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106500 (n + 1) ^ 2

end

end A106410.P33656972954075925

/-! ## A106410.P13696099427017276030

`A000463(2*A106500(n+1))`
-/

namespace A106410.P13696099427017276030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A106500 (n + 1)).toNat

end

end A106410.P13696099427017276030

/-! ## A106410.P1386585425081357384

`A002620(2*A106500(n+1))`
-/

namespace A106410.P1386585425081357384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A106500 (n + 1)).toNat

end

end A106410.P1386585425081357384

/-! ## A106410.P11499889797296261334

`A106500(A000027(n+1))^2`
-/

namespace A106410.P11499889797296261334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106500 (A000027 (n + 1)).toNat ^ 2

end

end A106410.P11499889797296261334

/-! ## A106410.P15816460882289298188

`A075054(A106500(n+1)^2)`
-/

namespace A106410.P15816460882289298188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A106500 (n + 1) ^ 2).toNat

end

end A106410.P15816460882289298188

/-! ## A106410.P1282898364573074770

`A000290(or(char[10], A106500(n+1)))`
-/

namespace A106410.P1282898364573074770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A106500 (n + 1))).toNat

end

end A106410.P1282898364573074770

/-! ## A106410.P13183110163873875604

`A000290(A106500(n+1)%(n+3))`
-/

namespace A106410.P13183110163873875604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A106500 (n + 1)) (n + 3 : ℤ)).toNat

end

end A106410.P13183110163873875604

/-! ## A106410.P5527962370035181252

`A106501(n+1)²-A106506(n+1)`
-/

namespace A106410.P5527962370035181252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106501 (n + 1) ^ 2 - A106506 (n + 1)

end

end A106410.P5527962370035181252

/-! ## A106410.P15718246915329167225

`A106500(n+1)^A020639(2*(n+1))`
-/

namespace A106410.P15718246915329167225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106500 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A106410.P15718246915329167225

/-! ## A106410.P2765327610801014855

`A106500(n+1)^A000040(gcd(n, n+1))`
-/

namespace A106410.P2765327610801014855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106500 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A106410.P2765327610801014855

/-!
# A106411: Smallest number beginning with 1 that is the product of exactly n distinct primes.

The programs for A106411, there is no canonical definition to state claims against.
-/

/-! ## A106411.P7707021429012148560

`A275494(A204060(2*n+1))+A077326(n)`
-/

namespace A106411.P7707021429012148560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275494 (A204060 (2 * n + 1)).toNat + A077326 n

end

end A106411.P7707021429012148560

/-! ## A106411.P4148484947519151598

`A160145(A026523(n+3))+A077326(n)`
-/

namespace A106411.P4148484947519151598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 (A026523 (n + 3)).toNat + A077326 n

end

end A106411.P4148484947519151598

/-!
# A106415: Smallest number beginning with 5 that is the product of exactly n distinct primes.

The programs for A106415, there is no canonical definition to state claims against.
-/

/-! ## A106415.P17821358237013085662

`xor(A106385(n+1)-1, A077330(n+1))`
-/

namespace A106415.P17821358237013085662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106385 (n + 1) - 1) (A077330 (n + 1))

end

end A106415.P17821358237013085662

/-!
# A106420: Length of side opposite the greater of the two angles, one being the double of the other, of a primitive integer-sided triangle, sorted on perimeter (A106499).

The programs for A106420, there is no canonical definition to state claims against.
-/

/-! ## A106420.P1809528188303677733

`A106500(n+1)*A106501(n+1)`
-/

namespace A106420.P1809528188303677733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106500 (n + 1) * A106501 (n + 1)

end

end A106420.P1809528188303677733

/-! ## A106420.P5784669385172643150

`A106499(n+1)-A106501(n+1)²`
-/

namespace A106420.P5784669385172643150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106499 (n + 1) - A106501 (n + 1) ^ 2

end

end A106420.P5784669385172643150

/-! ## A106420.P6211537492679833557

`sqrt(A106410(n+1))*A106501(n+1)`
-/

namespace A106420.P6211537492679833557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106410 (n + 1) : ℝ) * (A106501 (n + 1) : ℝ)

end

end A106420.P6211537492679833557

/-! ## A106420.P8595090067031042583

`A106499(C(n+1, n))%A106501(n+1)²`
-/

namespace A106420.P8595090067031042583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106499 (Nat.choose (n + 1) n)) (A106501 (n + 1) ^ 2)

end

end A106420.P8595090067031042583

/-! ## A106420.P11180831134434673356

`lcm(A106500(A000027(n+1)), A106501(n+1))`
-/

namespace A106420.P11180831134434673356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106500 (A000027 (n + 1)).toNat) (A106501 (n + 1))

end

end A106420.P11180831134434673356

/-! ## A106420.P11648990907966583865

`A106499(n+1)%A106501(A000027(n+1))²`
-/

namespace A106420.P11648990907966583865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106499 (n + 1)) (A106501 (A000027 (n + 1)).toNat ^ 2)

end

end A106420.P11648990907966583865

/-! ## A106420.P4526794399462679456

`A106499(n+1)-(A106506(n+1)+A106410(n+1))`
-/

namespace A106420.P4526794399462679456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106499 (n + 1) - (A106506 (n + 1) + A106410 (n + 1))

end

end A106420.P4526794399462679456

/-! ## A106420.P261153941697595331

`A106499(n+1)-(A106506(n+1)+A106500(n+1)²)`
-/

namespace A106420.P261153941697595331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106499 (n + 1) - (A106506 (n + 1) + A106500 (n + 1) ^ 2)

end

end A106420.P261153941697595331

/-! ## A106420.P16823330204322195099

`A000188(A106410(n+1))*A106501(A090108(n+1))`
-/

namespace A106420.P16823330204322195099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A106410 (n + 1)).toNat * A106501 (A090108 (n + 1)).toNat

end

end A106420.P16823330204322195099

/-!
# A106422: Smallest number beginning with 2 and having exactly n prime divisors counted with multiplicity.

The programs for A106422, there is no canonical definition to state claims against.
-/

/-! ## A106422.P14533301100698446754

`A126257(A106424(n+2))`
-/

namespace A106422.P14533301100698446754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A106424 (n + 2)).toNat

end

end A106422.P14533301100698446754

/-! ## A106422.P7968769533709421109

`A106424(n+2)/A001221(A106423(2*(n+2)))`
-/

namespace A106422.P7968769533709421109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106424 (n + 2) : ℚ) / (A001221 (A106423 (2 * (n + 2))).toNat : ℚ)

end

end A106422.P7968769533709421109

/-!
# A106423: Smallest number beginning with 3 and having exactly n prime divisors counted with multiplicity.

The programs for A106423, there is no canonical definition to state claims against.
-/

/-! ## A106423.P1825546657160360042

`A005679(A063263(n+1))*A106421(n)`
-/

namespace A106423.P1825546657160360042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (A063263 (n + 1)).toNat * A106421 n

end

end A106423.P1825546657160360042

/-! ## A106423.P8408628536238928668

`A106421(n)*A305390(A106421(2*(n+2)))`
-/

namespace A106423.P8408628536238928668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106421 n * A305390 (A106421 (2 * (n + 2))).toNat

end

end A106423.P8408628536238928668

/-!
# A106430: Ordered and uniqued length of side opposite the greater of the two angles, one being the double of the other, of a primitive integer-sided triangle.

The programs for A106430, there is no canonical definition to state claims against.
-/

/-! ## A106430.P17070042317656998024

`A280680(3*n+1)`
-/

namespace A106430.P17070042317656998024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (3 * n + 1)

end

end A106430.P17070042317656998024

/-! ## A106430.P3916465502126512600

`sqrt(A280679(3*n+1))`
-/

namespace A106430.P3916465502126512600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280679 (3 * n + 1) : ℝ)

end

end A106430.P3916465502126512600

/-! ## A106430.P8942436002435656345

`or(char[2], A280680(A016777(n)))`
-/

namespace A106430.P8942436002435656345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280680 (A016777 n).toNat)

end

end A106430.P8942436002435656345

/-! ## A106430.P11733373796467000250

`A280680(A016777(n))%A146081(n)`
-/

namespace A106430.P11733373796467000250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280680 (A016777 n).toNat) (A146081 n)

end

end A106430.P11733373796467000250

/-! ## A106430.P15367128320343987747

`lcm(A057077(n), A280680(A016777(n)))`
-/

namespace A106430.P15367128320343987747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A280680 (A016777 n).toNat)

end

end A106430.P15367128320343987747

/-! ## A106430.P17226682164268744611

`A033999(n)²*A280680(A016777(n))`
-/

namespace A106430.P17226682164268744611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A280680 (A016777 n).toNat

end

end A106430.P17226682164268744611

/-! ## A106430.P5552503098860215541

`A057077(2*n)²*A280680(A016777(n))`
-/

namespace A106430.P5552503098860215541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) ^ 2 * A280680 (A016777 n).toNat

end

end A106430.P5552503098860215541

/-! ## A106430.P7729386773239106751

`A280680(A016777(n))-C(n, 2)*A130706(n)`
-/

namespace A106430.P7729386773239106751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (A016777 n).toNat - (Nat.choose n 2 : ℤ) * A130706 n

end

end A106430.P7729386773239106751

/-! ## A106430.P974390053226716081

`A280680(A016777(n))/A014963(C(n+4, 2))`
-/

namespace A106430.P974390053226716081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (A016777 n).toNat : ℚ) / (A014963 (Nat.choose (n + 4) 2) : ℚ)

end

end A106430.P974390053226716081

/-! ## A106430.P14298080430249808074

`A280680(A016777(n))/A089309(A249356(n+1))`
-/

namespace A106430.P14298080430249808074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (A016777 n).toNat : ℚ) / (A089309 (A249356 (n + 1)).toNat : ℚ)

end

end A106430.P14298080430249808074

/-!
# A106431: Even elements of A085493.

The programs for A106431, there is no canonical definition to state claims against.
-/

/-! ## A106431.P7001658447737945595

`A005231(n+1)-1`
-/

namespace A106431.P7001658447737945595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1) - 1

end

end A106431.P7001658447737945595

/-! ## A106431.P13193390671377980582

`xor(1, A005231(-xor(n, -1)))`
-/

namespace A106431.P13193390671377980582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A005231 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A106431.P13193390671377980582

/-! ## A106431.P4458333303214556477

`xor(1, A005231(Δ[n²]-n))`
-/

namespace A106431.P4458333303214556477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A005231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A106431.P4458333303214556477

/-! ## A106431.P307896613990937616

`2*floor(A005231(gcd(n², ∑[2*n])+1)/2)`
-/

namespace A106431.P307896613990937616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A005231 (Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) + 1) : ℚ) / 2⌋

end

end A106431.P307896613990937616

/-! ## A106431.P12158536907630464541

`record[A005231(A329048(n))-1]`
-/

namespace A106431.P12158536907630464541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A329048 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106431.P12158536907630464541

/-! ## A106431.P13415185549537082269

`∪[A156942(n+1), A174865(n+1)]-1`
-/

namespace A106431.P13415185549537082269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A106431.P13415185549537082269

/-! ## A106431.P12612180226917527013

`∪[A174865(n+1), A357607(n+1)]-1`
-/

namespace A106431.P12612180226917527013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A106431.P12612180226917527013

/-! ## A106431.P7845415308709496370

`A153881(n+2)+A005231(n+1)`
-/

namespace A106431.P7845415308709496370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A005231 (n + 1)

end

end A106431.P7845415308709496370

/-! ## A106431.P9577108545280490753

`A106743(A000040(n+1))+A005231(n+1)`
-/

namespace A106431.P9577108545280490753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A005231 (n + 1)

end

end A106431.P9577108545280490753

/-! ## A106431.P7099867672037294409

`record[A005231(A263274(n))-1]`
-/

namespace A106431.P7099867672037294409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A263274 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106431.P7099867672037294409

/-! ## A106431.P6393550895033583172

`record[A005231(A102885(n))-1]`
-/

namespace A106431.P6393550895033583172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A102885 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106431.P6393550895033583172

/-! ## A106431.P3017580643116198978

`A066182(A005231(n+1))`
-/

namespace A106431.P3017580643116198978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A005231 (n + 1)).toNat

end

end A106431.P3017580643116198978

/-!
# A106433: Weight distribution of [113,57,15] binary quadratic-residue (or QR) code.

The programs for A106433, there is no canonical definition to state claims against.
-/

/-! ## A106433.P2752077111797633270

`C(A053698(n), C(n, 2)+n*(16*n-6))`
-/

namespace A106433.P2752077111797633270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053698 n).toNat ((Nat.choose n 2 : ℤ) + (n : ℤ) * ((16 * n : ℤ) - 6)).toNat

end

end A106433.P2752077111797633270

/-! ## A106433.P18392501388044262964

`A048385(A205295(n)^3)`
-/

namespace A106433.P18392501388044262964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A205295 n ^ 3).toNat

end

end A106433.P18392501388044262964

/-! ## A106433.P12262848381365515372

`A053698(n)*A317542(A265076(n))`
-/

namespace A106433.P12262848381365515372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n * A317542 (A265076 n).toNat

end

end A106433.P12262848381365515372

/-! ## A106433.P15071794167808857946

`A053698(n)%A288301(A288323(n))`
-/

namespace A106433.P15071794167808857946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053698 n) (A288301 (A288323 n).toNat)

end

end A106433.P15071794167808857946

/-! ## A106433.P5331272736129715349

`and(A035731(n), A309258(A344610(n)))`
-/

namespace A106433.P5331272736129715349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035731 n) (A309258 (A344610 n).toNat)

end

end A106433.P5331272736129715349

/-!
# A106434: The (1,1)-entry of the matrix A^n, where A = [0,1;2,3].

The programs for A106434, the canonical program `A106434.P6872189398134955090` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106434 has offset 1).

The definition of A106434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106434.P6872189398134955090

`3*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106434

/-- `3*a(n-1)+2*a(n-2)` -/
def P6872189398134955090.Spec : Prop :=
  ∀ n, (P6872189398134955090.a n : ℤ) = A106434 (n + 1)

theorem P6872189398134955090.correct : P6872189398134955090.Spec := by
  intro n
  simp only [A106434, Nat.add_sub_cancel]

end A106434

/-! ## A106434.P1949886360145516903

`ogf(2x/(1-3x-2x^2))`
-/

namespace A106434.P1949886360145516903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -3, -2] n

end

end A106434.P1949886360145516903

namespace A106434

/-- `ogf(2x/(1-3x-2x^2))` -/
def P1949886360145516903.Spec : Prop :=
  ∀ n, P1949886360145516903.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P5281849900348728825

`2*a(n-2)-(a(n-1)-4*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A106434.P5281849900348728825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A106434.P5281849900348728825

namespace A106434

/-- `2*a(n-2)-(a(n-1)-4*a(n-1))` -/
def P5281849900348728825.Spec : Prop :=
  ∀ n, P5281849900348728825.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P1624285314637994070

`a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A106434.P1624285314637994070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A106434.P1624285314637994070

namespace A106434

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P1624285314637994070.Spec : Prop :=
  ∀ n, (P1624285314637994070.a n : ℤ) = A106434 (n + 1)

theorem P1624285314637994070.correct : P1624285314637994070.Spec := by
  intro n
  simp only [A106434, Nat.add_sub_cancel, A106434.P1624285314637994070.a, A106434.P6872189398134955090.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A106434

/-! ## A106434.P5897841134642975557

`Δ[A230269(n+1)]`
-/

namespace A106434.P5897841134642975557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106434.P5897841134642975557

namespace A106434

/-- `Δ[A230269(n+1)]` -/
def P5897841134642975557.Spec : Prop :=
  ∀ n, P5897841134642975557.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P10606471799257067508

`∑[A322940(n)]-1`
-/

namespace A106434.P10606471799257067508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A106434.P10606471799257067508

namespace A106434

/-- `∑[A322940(n)]-1` -/
def P10606471799257067508.Spec : Prop :=
  ∀ n, P10606471799257067508.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P8759493725991210045

`A007483(n)-A007482(n)`
-/

namespace A106434.P8759493725991210045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A007482 n

end

end A106434.P8759493725991210045

namespace A106434

/-- `A007483(n)-A007482(n)` -/
def P8759493725991210045.Spec : Prop :=
  ∀ n, P8759493725991210045.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P2610507185920861232

`A055099(n)-A104934(n)`
-/

namespace A106434.P2610507185920861232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n - A104934 n

end

end A106434.P2610507185920861232

namespace A106434

/-- `A055099(n)-A104934(n)` -/
def P2610507185920861232.Spec : Prop :=
  ∀ n, P2610507185920861232.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P10779908593670034017

`A180144(n)-A052986(n)`
-/

namespace A106434.P10779908593670034017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n - A052986 n

end

end A106434.P10779908593670034017

namespace A106434

/-- `A180144(n)-A052986(n)` -/
def P10779908593670034017.Spec : Prop :=
  ∀ n, P10779908593670034017.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P6216494910241789396

`A007483(n)-A007455(2*n)`
-/

namespace A106434.P6216494910241789396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A007455 (2 * n)

end

end A106434.P6216494910241789396

namespace A106434

/-- `A007483(n)-A007455(2*n)` -/
def P6216494910241789396.Spec : Prop :=
  ∀ n, P6216494910241789396.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P17315489157144640965

`A007483(n)-A007481(2*n)`
-/

namespace A106434.P17315489157144640965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A007481 (2 * n)

end

end A106434.P17315489157144640965

namespace A106434

/-- `A007483(n)-A007481(2*n)` -/
def P17315489157144640965.Spec : Prop :=
  ∀ n, P17315489157144640965.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P13965573083873446823

`2*(A007483(n)-A055099(n))`
-/

namespace A106434.P13965573083873446823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007483 n - A055099 n)

end

end A106434.P13965573083873446823

namespace A106434

/-- `2*(A007483(n)-A055099(n))` -/
def P13965573083873446823.Spec : Prop :=
  ∀ n, P13965573083873446823.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P300093262469157528

`2*(A055099(n)-A007482(n))`
-/

namespace A106434.P300093262469157528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055099 n - A007482 n)

end

end A106434.P300093262469157528

namespace A106434

/-- `2*(A055099(n)-A007482(n))` -/
def P300093262469157528.Spec : Prop :=
  ∀ n, P300093262469157528.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P16540545109530734501

`2*(A007482(n)-A104934(n))`
-/

namespace A106434.P16540545109530734501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007482 n - A104934 n)

end

end A106434.P16540545109530734501

namespace A106434

/-- `2*(A007482(n)-A104934(n))` -/
def P16540545109530734501.Spec : Prop :=
  ∀ n, P16540545109530734501.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P8827058066545752070

`A230269(n+2)-A230269(n+1)`
-/

namespace A106434.P8827058066545752070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 2) - A230269 (n + 1)

end

end A106434.P8827058066545752070

namespace A106434

/-- `A230269(n+2)-A230269(n+1)` -/
def P8827058066545752070.Spec : Prop :=
  ∀ n, P8827058066545752070.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P10274602451563756355

`A007455(2*n+1)-A007482(n)`
-/

namespace A106434.P10274602451563756355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n + 1) - A007482 n

end

end A106434.P10274602451563756355

namespace A106434

/-- `A007455(2*n+1)-A007482(n)` -/
def P10274602451563756355.Spec : Prop :=
  ∀ n, P10274602451563756355.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P13750461251454232574

`A007455(2*n+1)-A007455(2*n)`
-/

namespace A106434.P13750461251454232574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n + 1) - A007455 (2 * n)

end

end A106434.P13750461251454232574

namespace A106434

/-- `A007455(2*n+1)-A007455(2*n)` -/
def P13750461251454232574.Spec : Prop :=
  ∀ n, P13750461251454232574.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P9928560179609812002

`A189604(n+1)-A055099(n)`
-/

namespace A106434.P9928560179609812002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 1) - A055099 n

end

end A106434.P9928560179609812002

namespace A106434

/-- `A189604(n+1)-A055099(n)` -/
def P9928560179609812002.Spec : Prop :=
  ∀ n, P9928560179609812002.a n = A106434 (n + 1)

end A106434

/-! ## A106434.P1412683958822709398

`(A007484(n)-A206776(n))/2`
-/

namespace A106434.P1412683958822709398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007484 n - A206776 n : ℚ) / 2

end

end A106434.P1412683958822709398

namespace A106434

/-- `(A007484(n)-A206776(n))/2` -/
def P1412683958822709398.Spec : Prop :=
  ∀ n, P1412683958822709398.a n = (A106434 (n + 1) : ℚ)

end A106434

/-! ## A106434.P17763086229478898767

`A007482(n+1)%A007482(n)`
-/

namespace A106434.P17763086229478898767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007482 (n + 1)) (A007482 n)

end

end A106434.P17763086229478898767

namespace A106434

/-- `A007482(n+1)%A007482(n)` -/
def P17763086229478898767.Spec : Prop :=
  ∀ n, P17763086229478898767.a n = A106434 (n + 1)

end A106434

/-!
# A106435: a(n) = 3*a(n-1) + 3*a(n-2), a(0)=0, a(1)=3.

The programs for A106435, the canonical program `A106435.P7544487101135393436` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106435 has offset 0).

The definition of A106435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A106435.P7544487101135393436`, by `A106435.P7544487101135393436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106435.P7544487101135393436

`3*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106435

/-- `3*a(n-1)+3*a(n-2)` -/
def P7544487101135393436.Spec : Prop :=
  ∀ n, (P7544487101135393436.a n : ℤ) = A106435 n

theorem P7544487101135393436.correct : P7544487101135393436.Spec := by
  intro n
  simp only [A106435]

end A106435

/-! ## A106435.P17602201093664151588

`ogf(3x/(1-3x-3x^2))`
-/

namespace A106435.P17602201093664151588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -3, -3] n

end

end A106435.P17602201093664151588

namespace A106435

/-- `ogf(3x/(1-3x-3x^2))` -/
def P17602201093664151588.Spec : Prop :=
  ∀ n, P17602201093664151588.a n = A106435 n

end A106435

/-! ## A106435.P2328097889645888751

`3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A106435.P2328097889645888751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A106435.P2328097889645888751

namespace A106435

/-- `3*(a(n-1)+a(n-2))` -/
def P2328097889645888751.Spec : Prop :=
  ∀ n, (P2328097889645888751.a n : ℤ) = A106435 n

theorem P2328097889645888751.correct : P2328097889645888751.Spec := by
  intro n
  simp only [A106435, Nat.add_sub_cancel, A106435.P2328097889645888751.a, A106435.P7544487101135393436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A106435

/-! ## A106435.P10219344455070694349

`3*(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A106435.P10219344455070694349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A106435.P10219344455070694349

namespace A106435

/-- `3*(a(n-1)-round(-a(n-2)))` -/
def P10219344455070694349.Spec : Prop :=
  ∀ n, P10219344455070694349.a n = A106435 n

end A106435

/-! ## A106435.P15249587963672601408

`3-3*(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A106435.P15249587963672601408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A106435.P15249587963672601408

namespace A106435

/-- `3-3*(1-a(n-1)-a(n-2))` -/
def P15249587963672601408.Spec : Prop :=
  ∀ n, P15249587963672601408.a n = A106435 n

end A106435

/-! ## A106435.P838532676808285350

`(a(n-1)+a(n-2))/(1-2/3)` with `a(0)=0, a(1)=3`
-/

namespace A106435.P838532676808285350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (2 : ℚ) / 3)

end

end A106435.P838532676808285350

namespace A106435

/-- `(a(n-1)+a(n-2))/(1-2/3)` -/
def P838532676808285350.Spec : Prop :=
  ∀ n, P838532676808285350.a n = (A106435 n : ℚ)

end A106435

/-! ## A106435.P15638155405918470894

`3*A030195(n)`
-/

namespace A106435.P15638155405918470894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A030195 n

end

end A106435.P15638155405918470894

namespace A106435

/-- `3*A030195(n)` -/
def P15638155405918470894.Spec : Prop :=
  ∀ n, P15638155405918470894.a n = A106435 n

end A106435

/-! ## A106435.P1893412679521923298

`3*(A202206(n)-A134927(n))`
-/

namespace A106435.P1893412679521923298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A202206 n - A134927 n)

end

end A106435.P1893412679521923298

namespace A106435

/-- `3*(A202206(n)-A134927(n))` -/
def P1893412679521923298.Spec : Prop :=
  ∀ n, P1893412679521923298.a n = A106435 n

end A106435

/-! ## A106435.P3652112287865333187

`A030195(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A106435.P3652112287865333187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030195 (n + 1) - a (n - 1)

end

end A106435.P3652112287865333187

namespace A106435

/-- `A030195(n+1)-a(n-1)` -/
def P3652112287865333187.Spec : Prop :=
  ∀ n, P3652112287865333187.a n = A106435 n

end A106435

/-! ## A106435.P12344912344951780880

`A125145(n)-A134927(n)`
-/

namespace A106435.P12344912344951780880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 n - A134927 n

end

end A106435.P12344912344951780880

namespace A106435

/-- `A125145(n)-A134927(n)` -/
def P12344912344951780880.Spec : Prop :=
  ∀ n, P12344912344951780880.a n = A106435 n

end A106435

/-! ## A106435.P10907284622135428937

`A108306(n)-A030195(n+1)`
-/

namespace A106435.P10907284622135428937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 n - A030195 (n + 1)

end

end A106435.P10907284622135428937

namespace A106435

/-- `A108306(n)-A030195(n+1)` -/
def P10907284622135428937.Spec : Prop :=
  ∀ n, P10907284622135428937.a n = A106435 n

end A106435

/-! ## A106435.P1622508000051470219

`A134927(n+1)-A030195(n+1)`
-/

namespace A106435.P1622508000051470219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134927 (n + 1) - A030195 (n + 1)

end

end A106435.P1622508000051470219

namespace A106435

/-- `A134927(n+1)-A030195(n+1)` -/
def P1622508000051470219.Spec : Prop :=
  ∀ n, P1622508000051470219.a n = A106435 n

end A106435

/-! ## A106435.P6484958882415533108

`A030195(n+1)+A030195(n+1)-A172012(n)`
-/

namespace A106435.P6484958882415533108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) + (A030195 (n + 1) - A172012 n)

end

end A106435.P6484958882415533108

namespace A106435

/-- `A030195(n+1)+A030195(n+1)-A172012(n)` -/
def P6484958882415533108.Spec : Prop :=
  ∀ n, P6484958882415533108.a n = A106435 n

end A106435

/-! ## A106435.P9238659925006751544

`A170930(n)/7`
-/

namespace A106435.P9238659925006751544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170930 n : ℚ) / 7

end

end A106435.P9238659925006751544

namespace A106435

/-- `A170930(n)/7` -/
def P9238659925006751544.Spec : Prop :=
  ∀ n, P9238659925006751544.a n = (A106435 n : ℚ)

end A106435

/-! ## A106435.P4509649348762249094

`Δ[A189737(n+1)/5]`
-/

namespace A106435.P4509649348762249094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189737 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106435.P4509649348762249094

namespace A106435

/-- `Δ[A189737(n+1)/5]` -/
def P4509649348762249094.Spec : Prop :=
  ∀ n, P4509649348762249094.a n = (A106435 n : ℚ)

end A106435

/-! ## A106435.P9047426323591421401

`A172012(n+1)-A030195(n+2)`
-/

namespace A106435.P9047426323591421401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 (n + 1) - A030195 (n + 2)

end

end A106435.P9047426323591421401

namespace A106435

/-- `A172012(n+1)-A030195(n+2)` -/
def P9047426323591421401.Spec : Prop :=
  ∀ n, P9047426323591421401.a n = A106435 n

end A106435

/-! ## A106435.P11803267757319443578

`A085480(n+2)-A030195(n+2)`
-/

namespace A106435.P11803267757319443578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085480 (n + 2) - A030195 (n + 2)

end

end A106435.P11803267757319443578

namespace A106435

/-- `A085480(n+2)-A030195(n+2)` -/
def P11803267757319443578.Spec : Prop :=
  ∀ n, P11803267757319443578.a n = A106435 n

end A106435

/-! ## A106435.P4212193562527804867

`A125145(n+1)%(A030195(n+1)+A030195(n+1))`
-/

namespace A106435.P4212193562527804867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125145 (n + 1)) (A030195 (n + 1) + A030195 (n + 1))

end

end A106435.P4212193562527804867

namespace A106435

/-- `A125145(n+1)%(A030195(n+1)+A030195(n+1))` -/
def P4212193562527804867.Spec : Prop :=
  ∀ n, P4212193562527804867.a n = A106435 n

end A106435

/-! ## A106435.P17828917876069829201

`A125145(n+2)-A172012(n+2)`
-/

namespace A106435.P17828917876069829201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (n + 2) - A172012 (n + 2)

end

end A106435.P17828917876069829201

namespace A106435

/-- `A125145(n+2)-A172012(n+2)` -/
def P17828917876069829201.Spec : Prop :=
  ∀ n, P17828917876069829201.a n = A106435 n

end A106435

/-! ## A106435.P10182749819950994777

`A125145(n+2)-A085480(n+3)`
-/

namespace A106435.P10182749819950994777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (n + 2) - A085480 (n + 3)

end

end A106435.P10182749819950994777

namespace A106435

/-- `A125145(n+2)-A085480(n+3)` -/
def P10182749819950994777.Spec : Prop :=
  ∀ n, P10182749819950994777.a n = A106435 n

end A106435

/-!
# A106436: Difference array of Bell numbers A000110 read by antidiagonals.

The programs for A106436, there is no canonical definition to state claims against.
-/

/-! ## A106436.P15161627204789017870

`A182930(A038722(n+1))`
-/

namespace A106436.P15161627204789017870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A038722 (n + 1)).toNat

end

end A106436.P15161627204789017870

/-! ## A106436.P9362961302794700811

`A182930(A061579(n)+1)`
-/

namespace A106436.P9362961302794700811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A061579 n + 1).toNat

end

end A106436.P9362961302794700811

/-! ## A106436.P17531845771442864995

`A182930(A114327(n)+1+n)`
-/

namespace A106436.P17531845771442864995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A114327 n + 1 + (n : ℤ)).toNat

end

end A106436.P17531845771442864995

/-! ## A106436.P4342430132380839584

`A182930(A093995(n+1)-n)`
-/

namespace A106436.P4342430132380839584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A106436.P4342430132380839584

/-! ## A106436.P7064622514947349876

`A182930(A002024(n+1)²-n)`
-/

namespace A106436.P7064622514947349876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A106436.P7064622514947349876

/-! ## A106436.P5918014323166578459

`A182930(A185869(n+1)-A016777(n))`
-/

namespace A106436.P5918014323166578459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A185869 (n + 1) - A016777 n).toNat

end

end A106436.P5918014323166578459

/-!
# A106438: G.f.: x(2-5x-2x^2)/(1-6x+9x^2-x^4).

The programs for A106438, there is no canonical definition to state claims against.
-/

/-! ## A106438.P12536778005491273795

`A215512(n)-A005134(A000213(n))`
-/

namespace A106438.P12536778005491273795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215512 n - A005134 (A000213 n).toNat

end

end A106438.P12536778005491273795

/-! ## A106438.P17014919030123412294

`A215512(n)-A208213(A217787(n))`
-/

namespace A106438.P17014919030123412294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215512 n - A208213 (A217787 n).toNat

end

end A106438.P17014919030123412294

/-!
# A106440: a(n) = binomial(2n+4,n)*binomial(n+4,4).

The programs for A106440, the canonical program `A106440.P1027485920737404973` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106440 has offset 0).

The definition of A106440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+4, n)*C(n+4, 4)` (program `A106440.P1027485920737404973`, by `A106440.P1027485920737404973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106440.P15662350045666486590

`(n+1)*A002803(n)`
-/

namespace A106440.P15662350045666486590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002803 n

end

end A106440.P15662350045666486590

namespace A106440

/-- `(n+1)*A002803(n)` -/
def P15662350045666486590.Spec : Prop :=
  ∀ n, P15662350045666486590.a n = A106440 n

end A106440

/-! ## A106440.P1027485920737404973

`C(2*n+4, n)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106440

/-- `C(2*n+4, n)*C(n+4, 4)` -/
def P1027485920737404973.Spec : Prop :=
  ∀ n, (P1027485920737404973.a n : ℤ) = A106440 n

theorem P1027485920737404973.correct : P1027485920737404973.Spec := by
  intro n
  simp only [A106440]

end A106440

/-! ## A106440.P4184460744194345127

`∑[n+1]*A002802(n)`
-/

namespace A106440.P4184460744194345127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002802 n

end

end A106440.P4184460744194345127

namespace A106440

/-- `∑[n+1]*A002802(n)` -/
def P4184460744194345127.Spec : Prop :=
  ∀ n, P4184460744194345127.a n = A106440 n

end A106440

/-! ## A106440.P10439190898233628228

`∑[(n+1)²]*A002457(n)`
-/

namespace A106440.P10439190898233628228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002457 n

end

end A106440.P10439190898233628228

namespace A106440

/-- `∑[(n+1)²]*A002457(n)` -/
def P10439190898233628228.Spec : Prop :=
  ∀ n, P10439190898233628228.a n = A106440 n

end A106440

/-! ## A106440.P10835856139913739485

`C(2*(n+2), 4)*A000984(n)`
-/

namespace A106440.P10835856139913739485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 4 : ℤ) * A000984 n

end

end A106440.P10835856139913739485

namespace A106440

/-- `C(2*(n+2), 4)*A000984(n)` -/
def P10835856139913739485.Spec : Prop :=
  ∀ n, P10835856139913739485.a n = A106440 n

end A106440

/-! ## A106440.P8956063039015385930

`A000108(n+1)*Δ[∑[∑[n]]²]`
-/

namespace A106440.P8956063039015385930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A106440.P8956063039015385930

namespace A106440

/-- `A000108(n+1)*Δ[∑[∑[n]]²]` -/
def P8956063039015385930.Spec : Prop :=
  ∀ n, P8956063039015385930.a n = A106440 n

end A106440

/-! ## A106440.P3294685835697048930

`∑[(n+1)²]*A056040(2*n+1)`
-/

namespace A106440.P3294685835697048930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056040 (2 * n + 1)

end

end A106440.P3294685835697048930

namespace A106440

/-- `∑[(n+1)²]*A056040(2*n+1)` -/
def P3294685835697048930.Spec : Prop :=
  ∀ n, P3294685835697048930.a n = A106440 n

end A106440

/-! ## A106440.P11327501490985536629

`A000984(n)*A053134(n)`
-/

namespace A106440.P11327501490985536629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A053134 n

end

end A106440.P11327501490985536629

namespace A106440

/-- `A000984(n)*A053134(n)` -/
def P11327501490985536629.Spec : Prop :=
  ∀ n, P11327501490985536629.a n = A106440 n

end A106440

/-! ## A106440.P1342848446171155487

`A001700(n)*A108678(n)`
-/

namespace A106440.P1342848446171155487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A108678 n

end

end A106440.P1342848446171155487

namespace A106440

/-- `A001700(n)*A108678(n)` -/
def P1342848446171155487.Spec : Prop :=
  ∀ n, P1342848446171155487.a n = A106440 n

end A106440

/-! ## A106440.P17678408761352236909

`A001405(2*n)*A053134(n)`
-/

namespace A106440.P17678408761352236909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A053134 n

end

end A106440.P17678408761352236909

namespace A106440

/-- `A001405(2*n)*A053134(n)` -/
def P17678408761352236909.Spec : Prop :=
  ∀ n, P17678408761352236909.a n = A106440 n

end A106440

/-! ## A106440.P11315106602932069392

`(n+1)*A000108(n)*A053134(n)`
-/

namespace A106440.P11315106602932069392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n * A053134 n)

end

end A106440.P11315106602932069392

namespace A106440

/-- `(n+1)*A000108(n)*A053134(n)` -/
def P11315106602932069392.Spec : Prop :=
  ∀ n, P11315106602932069392.a n = A106440 n

end A106440

/-! ## A106440.P6172528689785218948

`record[A006470(n+1)/2*A099363(n)]`
-/

namespace A106440.P6172528689785218948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006470 (n + 1) : ℚ) / 2 * (A099363 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106440.P6172528689785218948

namespace A106440

/-- `record[A006470(n+1)/2*A099363(n)]` -/
def P6172528689785218948.Spec : Prop :=
  ∀ n, P6172528689785218948.a n = (A106440 n : ℚ)

end A106440

/-! ## A106440.P17983551221589801879

`A000330(n+1)*A060747(n+1)*A000984(n)`
-/

namespace A106440.P17983551221589801879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A060747 (n + 1) * A000984 n

end

end A106440.P17983551221589801879

namespace A106440

/-- `A000330(n+1)*A060747(n+1)*A000984(n)` -/
def P17983551221589801879.Spec : Prop :=
  ∀ n, P17983551221589801879.a n = A106440 n

end A106440

/-! ## A106440.P1165901104134372971

`A000108(n+1)*A000217(n+1)*A000330(n+1)`
-/

namespace A106440.P1165901104134372971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000217 (n + 1) * A000330 (n + 1)

end

end A106440.P1165901104134372971

namespace A106440

/-- `A000108(n+1)*A000217(n+1)*A000330(n+1)` -/
def P1165901104134372971.Spec : Prop :=
  ∀ n, P1165901104134372971.a n = A106440 n

end A106440

/-! ## A106440.P4063975725791885419

`A002694(n+2)/A011782(n+1)*A003472(n+4)`
-/

namespace A106440.P4063975725791885419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002694 (n + 2) : ℚ) / (A011782 (n + 1) : ℚ) * (A003472 (n + 4) : ℚ)

end

end A106440.P4063975725791885419

namespace A106440

/-- `A002694(n+2)/A011782(n+1)*A003472(n+4)` -/
def P4063975725791885419.Spec : Prop :=
  ∀ n, P4063975725791885419.a n = (A106440 n : ℚ)

end A106440

/-! ## A106440.P14120774449742317691

`A006470(2*n+1)*A099363(2*n)/2`
-/

namespace A106440.P14120774449742317691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006470 (2 * n + 1) * A099363 (2 * n) : ℚ) / 2

end

end A106440.P14120774449742317691

namespace A106440

/-- `A006470(2*n+1)*A099363(2*n)/2` -/
def P14120774449742317691.Spec : Prop :=
  ∀ n, P14120774449742317691.a n = (A106440 n : ℚ)

end A106440

/-! ## A106440.P8047876772482748933

`(n+1)*A039599(A000217(n))*A053134(n)`
-/

namespace A106440.P8047876772482748933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039599 (A000217 n).toNat * A053134 n)

end

end A106440.P8047876772482748933

namespace A106440

/-- `(n+1)*A039599(A000217(n))*A053134(n)` -/
def P8047876772482748933.Spec : Prop :=
  ∀ n, P8047876772482748933.a n = A106440 n

end A106440

/-! ## A106440.P7102685684714598867

`A000330(n+1)/A068553(n+1)*A119634(n)`
-/

namespace A106440.P7102685684714598867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) : ℚ) / (A068553 (n + 1) : ℚ) * (A119634 n : ℚ)

end

end A106440.P7102685684714598867

namespace A106440

/-- `A000330(n+1)/A068553(n+1)*A119634(n)` -/
def P7102685684714598867.Spec : Prop :=
  ∀ n, P7102685684714598867.a n = (A106440 n : ℚ)

end A106440

/-! ## A106440.P14442237201881998671

`A000330(n+1)/A119636(n)*A119634(n+1)`
-/

namespace A106440.P14442237201881998671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) : ℚ) / (A119636 n : ℚ) * (A119634 (n + 1) : ℚ)

end

end A106440.P14442237201881998671

namespace A106440

/-- `A000330(n+1)/A119636(n)*A119634(n+1)` -/
def P14442237201881998671.Spec : Prop :=
  ∀ n, P14442237201881998671.a n = (A106440 n : ℚ)

end A106440

/-!
# A106441: a(n) is the least k > 1 such that sum_{i = 1..n} k^(A003418(n)/i) is divisible by n.

The programs for A106441, there is no canonical definition to state claims against.
-/

/-! ## A106441.P7508156706781638334

`A366922(A058206(n))`
-/

namespace A106441.P7508156706781638334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366922 (A058206 n).toNat

end

end A106441.P7508156706781638334

/-! ## A106441.P6424289709472227872

`A352541(A061395(n+1)^A002828(n))`
-/

namespace A106441.P6424289709472227872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 (SequenceMachineLib.roundAway ((A061395 (n + 1) : ℚ) ^ (A002828 n : ℤ))).toNat

end

end A106441.P6424289709472227872

/-! ## A106441.P16196373609707178758

`A116369(A002531(n)%A231263(n+1))`
-/

namespace A106441.P16196373609707178758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116369 (Int.tmod (A002531 n) (A231263 (n + 1))).toNat

end

end A106441.P16196373609707178758

/-! ## A106441.P7196841403385237925

`A226985(gcd(A216396(2*(n+2)), A325676(n)))`
-/

namespace A106441.P7196841403385237925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226985 (Int.gcd (A216396 (2 * (n + 2))) (A325676 n))

end

end A106441.P7196841403385237925

/-! ## A106441.P284075554944792846

`A118914(A000041(2*(n+1)))+A038374(n+1)`
-/

namespace A106441.P284075554944792846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A000041 (2 * (n + 1))).toNat + A038374 (n + 1)

end

end A106441.P284075554944792846

/-!
# A106442: Exponent-recursed cross-domain bijection from N to GF(2)[X]. Position of A075166(n) in A106456.

The programs for A106442, there is no canonical definition to state claims against.
-/

/-! ## A106442.P15895190572462905642

`A102716(A071773(n+1))*A106444(n)`
-/

namespace A106442.P15895190572462905642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A071773 (n + 1)).toNat * A106444 n

end

end A106442.P15895190572462905642

/-! ## A106442.P5716842640682846318

`A032049(A325562(n+1))*A106444(n)`
-/

namespace A106442.P5716842640682846318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032049 (A325562 (n + 1)).toNat * A106444 n

end

end A106442.P5716842640682846318

/-! ## A106442.P13806919100665518713

`A049100(A325385(n+1))*A106444(n)`
-/

namespace A106442.P13806919100665518713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (A325385 (n + 1)).toNat * A106444 n

end

end A106442.P13806919100665518713

/-! ## A106442.P1057172204585665082

`A106444(n)%A357198(n)`
-/

namespace A106442.P1057172204585665082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106444 n) (A357198 n)

end

end A106442.P1057172204585665082

/-! ## A106442.P11232426714564274880

`A106444(n*A032548(n+1))`
-/

namespace A106442.P11232426714564274880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 ((n : ℤ) * A032548 (n + 1)).toNat

end

end A106442.P11232426714564274880

/-!
# A106443: Exponent-recursed cross-domain bijection from GF(2)[X] to N. Position of A106456(n) in A075166.

The programs for A106443, there is no canonical definition to state claims against.
-/

/-! ## A106443.P17017822231100017635

`A106445(n*A032548(n+1))`
-/

namespace A106443.P17017822231100017635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 ((n : ℤ) * A032548 (n + 1)).toNat

end

end A106443.P17017822231100017635

/-! ## A106443.P6367744649098938149

`A106445(n^A032548(n+1))`
-/

namespace A106443.P6367744649098938149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A032548 (n + 1) : ℤ))).toNat

end

end A106443.P6367744649098938149

/-! ## A106443.P2634188534073483318

`A106445(n)+val(A157429(n+1)+1, 2)`
-/

namespace A106443.P2634188534073483318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 n + (SequenceMachineLib.valuation (A157429 (n + 1) + 1).toNat 2 : ℤ)

end

end A106443.P2634188534073483318

/-! ## A106443.P8317877974977992608

`A106445(n)+A000007(A055372(n))`
-/

namespace A106443.P8317877974977992608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 n + A000007 (A055372 n).toNat

end

end A106443.P8317877974977992608

/-! ## A106443.P6608884732103070107

`A106445(n)*A381635(A179879(n+1))`
-/

namespace A106443.P6608884732103070107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 n * A381635 (A179879 (n + 1)).toNat

end

end A106443.P6608884732103070107

/-!
# A106444: Exponent-recursed cross-domain bijection from N to GF(2)[X]. Variant of A091202 and A106442.

The programs for A106444, there is no canonical definition to state claims against.
-/

/-! ## A106444.P11349291159056273688

`A106442(n)%A272946(n)²`
-/

namespace A106444.P11349291159056273688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106442 n) (A272946 n ^ 2)

end

end A106444.P11349291159056273688

/-! ## A106444.P8354047539634587452

`A091202(n*A051119(A123726(n)))`
-/

namespace A106444.P8354047539634587452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 ((n : ℤ) * A051119 (A123726 n).toNat).toNat

end

end A106444.P8354047539634587452

/-! ## A106444.P12652376653133478837

`A091202(n*A008292(A253641(n)))`
-/

namespace A106444.P12652376653133478837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 ((n : ℤ) * A008292 (A253641 n).toNat).toNat

end

end A106444.P12652376653133478837

/-! ## A106444.P3942824704003037001

`A091202(n*A173740(A122855(n)))`
-/

namespace A106444.P3942824704003037001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 ((n : ℤ) * A173740 (A122855 n).toNat).toNat

end

end A106444.P3942824704003037001

/-! ## A106444.P264545690953445987

`A091202(n*A299038(A048298(n)))`
-/

namespace A106444.P264545690953445987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 ((n : ℤ) * A299038 (A048298 n).toNat).toNat

end

end A106444.P264545690953445987

/-! ## A106444.P7198043475740724716

`A091202(n*A330749(A123726(n)))`
-/

namespace A106444.P7198043475740724716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 ((n : ℤ) * A330749 (A123726 n).toNat).toNat

end

end A106444.P7198043475740724716

/-! ## A106444.P7915860265971034013

`A091202(n*A209417(A253641(n)))`
-/

namespace A106444.P7915860265971034013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 ((n : ℤ) * A209417 (A253641 n).toNat).toNat

end

end A106444.P7915860265971034013

/-! ## A106444.P6897336652733024198

`A008459(A163510(n+1))*A091202(n)`
-/

namespace A106444.P6897336652733024198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 (A163510 (n + 1)).toNat * A091202 n

end

end A106444.P6897336652733024198

/-! ## A106444.P8122793162526876876

`gcd(A000005(n+1)*A091202(n), A106442(n))`
-/

namespace A106444.P8122793162526876876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1) * A091202 n) (A106442 n)

end

end A106444.P8122793162526876876

/-! ## A106444.P3100415539828711483

`A091202(A091205(A106446(n)))`
-/

namespace A106444.P3100415539828711483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A091205 (A106446 n).toNat).toNat

end

end A106444.P3100415539828711483

/-!
# A106445: Exponent-recursed cross-domain bijection from GF(2)[X] to N. Variant of A091203 and A106443.

The programs for A106445, there is no canonical definition to state claims against.
-/

/-! ## A106445.P10304731772431604116

`A106443(n)%A272946(n)²`
-/

namespace A106445.P10304731772431604116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106443 n) (A272946 n ^ 2)

end

end A106445.P10304731772431604116

/-! ## A106445.P5089323556330929743

`gcd(A106442(n)-A106444(n), A106443(n))`
-/

namespace A106445.P5089323556330929743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106442 n - A106444 n) (A106443 n)

end

end A106445.P5089323556330929743

/-! ## A106445.P3644053920458529531

`A091203(n)+A106447(n)-A091205(n)`
-/

namespace A106445.P3644053920458529531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n + (A106447 n - A091205 n)

end

end A106445.P3644053920458529531

/-! ## A106445.P15229016081176044827

`A091203(A091204(A106447(n)))`
-/

namespace A106445.P15229016081176044827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A091204 (A106447 n).toNat).toNat

end

end A106445.P15229016081176044827

/-! ## A106445.P14575744623913010413

`A091203(n-(A091205(n)-A106447(n)))`
-/

namespace A106445.P14575744623913010413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 ((n : ℤ) - (A091205 n - A106447 n)).toNat

end

end A106445.P14575744623913010413

/-!
# A106446: Doubly-recursed cross-domain bijection from N to GF(2)[X]. Variant of A091204 and A106444.

The programs for A106446, there is no canonical definition to state claims against.
-/

/-! ## A106446.P6597392581815353662

`A091204(A091203(A106444(n)))`
-/

namespace A106446.P6597392581815353662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A091203 (A106444 n).toNat).toNat

end

end A106446.P6597392581815353662

/-! ## A106446.P18096110714872333542

`A091204(n*A051119(A123726(n)))`
-/

namespace A106446.P18096110714872333542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 ((n : ℤ) * A051119 (A123726 n).toNat).toNat

end

end A106446.P18096110714872333542

/-! ## A106446.P1403641843440529157

`A091204(n*A008292(A253641(n)))`
-/

namespace A106446.P1403641843440529157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 ((n : ℤ) * A008292 (A253641 n).toNat).toNat

end

end A106446.P1403641843440529157

/-! ## A106446.P13823382464006263052

`A091204(n*A008304(A253641(n)))`
-/

namespace A106446.P13823382464006263052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 ((n : ℤ) * A008304 (A253641 n).toNat).toNat

end

end A106446.P13823382464006263052

/-! ## A106446.P1170958146048963394

`A081577(A182660(n))*A091204(n)`
-/

namespace A106446.P1170958146048963394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A182660 n).toNat * A091204 n

end

end A106446.P1170958146048963394

/-! ## A106446.P7768663940096106448

`A091204(n*A173740(A122855(n)))`
-/

namespace A106446.P7768663940096106448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 ((n : ℤ) * A173740 (A122855 n).toNat).toNat

end

end A106446.P7768663940096106448

/-! ## A106446.P5341706280414624293

`A091204(n*A299038(A048298(n)))`
-/

namespace A106446.P5341706280414624293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 ((n : ℤ) * A299038 (A048298 n).toNat).toNat

end

end A106446.P5341706280414624293

/-! ## A106446.P7933787728464666777

`A091204(n)+A106444(n)-A091202(n)`
-/

namespace A106446.P7933787728464666777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 n + (A106444 n - A091202 n)

end

end A106446.P7933787728464666777

/-! ## A106446.P13483704035779179432

`A091204(n-(A091202(n)-A106444(n)))`
-/

namespace A106446.P13483704035779179432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 ((n : ℤ) - (A091202 n - A106444 n)).toNat

end

end A106446.P13483704035779179432

/-! ## A106446.P3796404113483168009

`A091204(n)*A208332(A046601(A323712(n+1)))`
-/

namespace A106446.P3796404113483168009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 n * A208332 (A046601 (A323712 (n + 1)).toNat).toNat

end

end A106446.P3796404113483168009

/-!
# A106447: Doubly-recursed cross-domain bijection from GF(2)[X] to N. Variant of A091205 and A106445.

The programs for A106447, there is no canonical definition to state claims against.
-/

/-! ## A106447.P16318075568100516964

`A091205(n)+A106445(n)-A091203(n)`
-/

namespace A106447.P16318075568100516964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n + (A106445 n - A091203 n)

end

end A106447.P16318075568100516964

/-! ## A106447.P7788080245365315661

`A091205(n)-(A091203(n)-A106445(n))*A091247(n)`
-/

namespace A106447.P7788080245365315661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n - (A091203 n - A106445 n) * A091247 n

end

end A106447.P7788080245365315661

/-! ## A106447.P9939291796758118743

`A091205(A091202(A106445(n)))`
-/

namespace A106447.P9939291796758118743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (A091202 (A106445 n).toNat).toNat

end

end A106447.P9939291796758118743

/-! ## A106447.P6692037987551324410

`A091205(n-(A091203(n)-A106445(n)))`
-/

namespace A106447.P6692037987551324410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 ((n : ℤ) - (A091203 n - A106445 n)).toNat

end

end A106447.P6692037987551324410

/-!
# A106448: Table of (x+y)/gcd(x,y) where (x,y) runs through the pairs (1,1), (1,2), (2,1), (1,3), (2,2), (3,1), ...

The programs for A106448, the canonical program `A106448.P7960976003115073161` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106448 has offset 1).

The definition of A106448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106448.P7960976003115073161

`(comp[∑[n]]-n)/A003989(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106448

/-- `(comp[∑[n]]-n)/A003989(n+1)` -/
def P7960976003115073161.Spec : Prop :=
  ∀ n, P7960976003115073161.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P12075542470134895166

`A014410(n+2)/A050169(n+1)`
-/

namespace A106448.P12075542470134895166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) : ℚ) / (A050169 (n + 1) : ℚ)

end

end A106448.P12075542470134895166

namespace A106448

/-- `A014410(n+2)/A050169(n+1)` -/
def P12075542470134895166.Spec : Prop :=
  ∀ n, P12075542470134895166.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P2379270495269251500

`A074712(n+1)/A003989(n+1)+1`
-/

namespace A106448.P2379270495269251500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074712 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ) + 1

end

end A106448.P2379270495269251500

namespace A106448

/-- `A074712(n+1)/A003989(n+1)+1` -/
def P2379270495269251500.Spec : Prop :=
  ∀ n, P2379270495269251500.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P16291185743024811281

`(A074909(n+1)+A074909(n))/A050169(n+1)`
-/

namespace A106448.P16291185743024811281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) + A074909 n : ℚ) / (A050169 (n + 1) : ℚ)

end

end A106448.P16291185743024811281

namespace A106448

/-- `(A074909(n+1)+A074909(n))/A050169(n+1)` -/
def P16291185743024811281.Spec : Prop :=
  ∀ n, P16291185743024811281.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P8096805345881048967

`A003057(n+2)/gcd(A003057(n+2), A128227(n))`
-/

namespace A106448.P8096805345881048967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (Int.gcd (A003057 (n + 2)) (A128227 n) : ℚ)

end

end A106448.P8096805345881048967

namespace A106448

/-- `A003057(n+2)/gcd(A003057(n+2), A128227(n))` -/
def P8096805345881048967.Spec : Prop :=
  ∀ n, P8096805345881048967.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P6264469913755548941

`A003990(n+1)/A257522(n+1)*A357372(n+1)`
-/

namespace A106448.P6264469913755548941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A257522 (n + 1) : ℚ) * (A357372 (n + 1) : ℚ)

end

end A106448.P6264469913755548941

namespace A106448

/-- `A003990(n+1)/A257522(n+1)*A357372(n+1)` -/
def P6264469913755548941.Spec : Prop :=
  ∀ n, P6264469913755548941.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P9663852850697617700

`A054531(comp[∑[n]])`
-/

namespace A106448.P9663852850697617700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A106448.P9663852850697617700

namespace A106448

/-- `A054531(comp[∑[n]])` -/
def P9663852850697617700.Spec : Prop :=
  ∀ n, P9663852850697617700.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P8131053623972718699

`A054531(∑[char[∑[n+1]]]+2+n)%(n+7)`
-/

namespace A106448.P8131053623972718699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054531 (∑ j ∈ Finset.range (n + 1), f1 j + 2 + n)) (n + 7 : ℤ)

end

end A106448.P8131053623972718699

namespace A106448

/-- `A054531(∑[char[∑[n+1]]]+2+n)%(n+7)` -/
def P8131053623972718699.Spec : Prop :=
  ∀ n, P8131053623972718699.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P3060440801314761107

`A277227(comp[∑[n]]+1)`
-/

namespace A106448.P3060440801314761107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A106448.P3060440801314761107

namespace A106448

/-- `A277227(comp[∑[n]]+1)` -/
def P3060440801314761107.Spec : Prop :=
  ∀ n, P3060440801314761107.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P12655956725815178059

`root(A277227(comp[C(n, 2)]+1), 2)²`
-/

namespace A106448.P12655956725815178059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A277227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A106448.P12655956725815178059

namespace A106448

/-- `root(A277227(comp[C(n, 2)]+1), 2)²` -/
def P12655956725815178059.Spec : Prop :=
  ∀ n, P12655956725815178059.a n = (A106448 (n + 1) : ℝ)

end A106448

/-! ## A106448.P12141308981686100449

`A316436(A098350(n+1))`
-/

namespace A106448.P12141308981686100449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A098350 (n + 1)).toNat

end

end A106448.P12141308981686100449

namespace A106448

/-- `A316436(A098350(n+1))` -/
def P12141308981686100449.Spec : Prop :=
  ∀ n, P12141308981686100449.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P1112735310773848326

`A391490(A118011(n+1))`
-/

namespace A106448.P1112735310773848326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391490 (A118011 (n + 1)).toNat

end

end A106448.P1112735310773848326

namespace A106448

/-- `A391490(A118011(n+1))` -/
def P1112735310773848326.Spec : Prop :=
  ∀ n, P1112735310773848326.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P11808195510768951385

`A075119(A189151(n+1))`
-/

namespace A106448.P11808195510768951385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A189151 (n + 1)).toNat

end

end A106448.P11808195510768951385

namespace A106448

/-- `A075119(A189151(n+1))` -/
def P11808195510768951385.Spec : Prop :=
  ∀ n, P11808195510768951385.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P6504742752626917949

`A112543(A038722(n+1))+A112543(n+1)`
-/

namespace A106448.P6504742752626917949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A038722 (n + 1)).toNat + A112543 (n + 1)

end

end A106448.P6504742752626917949

namespace A106448

/-- `A112543(A038722(n+1))+A112543(n+1)` -/
def P6504742752626917949.Spec : Prop :=
  ∀ n, P6504742752626917949.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P15965275134536510491

`A112543(n+1)+A002260(n+1)/A003989(n+1)`
-/

namespace A106448.P15965275134536510491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112543 (n + 1) : ℚ) + (A002260 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A106448.P15965275134536510491

namespace A106448

/-- `A112543(n+1)+A002260(n+1)/A003989(n+1)` -/
def P15965275134536510491.Spec : Prop :=
  ∀ n, P15965275134536510491.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P12497311585733254925

`A014410(n+2)/gcd(A014410(n+2), A049323(n))`
-/

namespace A106448.P12497311585733254925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) : ℚ) / (Int.gcd (A014410 (n + 2)) (A049323 n) : ℚ)

end

end A106448.P12497311585733254925

namespace A106448

/-- `A014410(n+2)/gcd(A014410(n+2), A049323(n))` -/
def P12497311585733254925.Spec : Prop :=
  ∀ n, P12497311585733254925.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P16592435556501143557

`A112544(n+1)+A112543(n+1)`
-/

namespace A106448.P16592435556501143557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) + A112543 (n + 1)

end

end A106448.P16592435556501143557

namespace A106448

/-- `A112544(n+1)+A112543(n+1)` -/
def P16592435556501143557.Spec : Prop :=
  ∀ n, P16592435556501143557.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P14081228506026676700

`A112544(A038722(n+1))+A112544(n+1)`
-/

namespace A106448.P14081228506026676700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (A038722 (n + 1)).toNat + A112544 (n + 1)

end

end A106448.P14081228506026676700

namespace A106448

/-- `A112544(A038722(n+1))+A112544(n+1)` -/
def P14081228506026676700.Spec : Prop :=
  ∀ n, P14081228506026676700.a n = A106448 (n + 1)

end A106448

/-! ## A106448.P14866964674856669335

`A112544(n+1)+A004736(n+1)/A003989(n+1)`
-/

namespace A106448.P14866964674856669335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112544 (n + 1) : ℚ) + (A004736 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A106448.P14866964674856669335

namespace A106448

/-- `A112544(n+1)+A004736(n+1)/A003989(n+1)` -/
def P14866964674856669335.Spec : Prop :=
  ∀ n, P14866964674856669335.a n = (A106448 (n + 1) : ℚ)

end A106448

/-! ## A106448.P17831980329468603690

`A007306(A338579(n+2))`
-/

namespace A106448.P17831980329468603690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A338579 (n + 2)).toNat

end

end A106448.P17831980329468603690

namespace A106448

/-- `A007306(A338579(n+2))` -/
def P17831980329468603690.Spec : Prop :=
  ∀ n, P17831980329468603690.a n = A106448 (n + 1)

end A106448

/-!
# A106449: Square array (P(x) XOR P(y))/gcd(P(x),P(y)) where P(x) and P(y) are polynomials with coefficients in {0,1} given by the binary expansions of x and y, and all calculations are done in polynomial ring GF(2)[X], with the result converted back to a binary number, and then expressed in decimal. Array is symmetric, and is read by antidiagonals.

The programs for A106449, there is no canonical definition to state claims against.
-/

/-! ## A106449.P8612276746609524957

`A283987(A338579(n+2)%A007749(n+3))`
-/

namespace A106449.P8612276746609524957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283987 (Int.tmod (A338579 (n + 2)) (A007749 (n + 3))).toNat

end

end A106449.P8612276746609524957

/-! ## A106449.P15149058735584347079

`xor(A072030(n+1), A115092(A119687(n)))`
-/

namespace A106449.P15149058735584347079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072030 (n + 1)) (A115092 (A119687 n).toNat)

end

end A106449.P15149058735584347079

/-! ## A106449.P809479147502254640

`xor(A113881(n+1), A115092(A119687(n)))`
-/

namespace A106449.P809479147502254640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A113881 (n + 1)) (A115092 (A119687 n).toNat)

end

end A106449.P809479147502254640

/-! ## A106449.P3554862620179970289

`xor(A072030(n+1), A177702(A037952(n)))`
-/

namespace A106449.P3554862620179970289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072030 (n + 1)) (A177702 (A037952 n).toNat)

end

end A106449.P3554862620179970289

/-!
# A106450: a(n) = A004443(n) if n is odd, a(n) = A004443(n)/2 if n is even.

The programs for A106450, the canonical program `A106450.P16330840846666197299` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106450 has offset 0).

The definition of A106450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106450.P16330840846666197299

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=0, a(3)=1, a(4)=3, a(5)=7, a(6)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106450

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P16330840846666197299.Spec : Prop :=
  ∀ n, P16330840846666197299.a n = A106450 n

theorem P16330840846666197299.correct : P16330840846666197299.Spec := by
  intro n
  simp only [A106450]

end A106450

/-! ## A106450.P5684136268348923970

`xor(2, n)/A040001(n)`
-/

namespace A106450.P5684136268348923970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / (A040001 n : ℚ)

end

end A106450.P5684136268348923970

namespace A106450

/-- `xor(2, n)/A040001(n)` -/
def P5684136268348923970.Spec : Prop :=
  ∀ n, P5684136268348923970.a n = (A106450 n : ℚ)

end A106450

/-! ## A106450.P15435698215032704904

`xor(2, n)/gcd(2, A010000(n))`
-/

namespace A106450.P15435698215032704904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / (Int.gcd 2 (A010000 n) : ℚ)

end

end A106450.P15435698215032704904

namespace A106450

/-- `xor(2, n)/gcd(2, A010000(n))` -/
def P15435698215032704904.Spec : Prop :=
  ∀ n, P15435698215032704904.a n = (A106450 n : ℚ)

end A106450

/-! ## A106450.P17724621527656699006

`A004443(n)/A040001(n)`
-/

namespace A106450.P17724621527656699006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004443 n : ℚ) / (A040001 n : ℚ)

end

end A106450.P17724621527656699006

namespace A106450

/-- `A004443(n)/A040001(n)` -/
def P17724621527656699006.Spec : Prop :=
  ∀ n, P17724621527656699006.a n = (A106450 n : ℚ)

end A106450

/-! ## A106450.P4716429734372844933

`A026741(xor(2, n))+A000007(n)`
-/

namespace A106450.P4716429734372844933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Nat.xor 2 n) + A000007 n

end

end A106450.P4716429734372844933

namespace A106450

/-- `A026741(xor(2, n))+A000007(n)` -/
def P4716429734372844933.Spec : Prop :=
  ∀ n, P4716429734372844933.a n = A106450 n

end A106450

/-! ## A106450.P5364803180184947986

`xor(n/(2-and(1, n)), A000034(A028310(n)))`
-/

namespace A106450.P5364803180184947986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))) (A000034 (A028310 n).toNat)

end

end A106450.P5364803180184947986

namespace A106450

/-- `xor(n/(2-and(1, n)), A000034(A028310(n)))` -/
def P5364803180184947986.Spec : Prop :=
  ∀ n, P5364803180184947986.a n = A106450 n

end A106450

/-! ## A106450.P11968051968437403335

`A026741(xor(2, n))%A228353(a(n-1)+1)` with `a(0)=2`
-/

namespace A106450.P11968051968437403335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A026741 (Nat.xor 2 n)) (A228353 (a (n - 1) + 1).toNat)

end

end A106450.P11968051968437403335

namespace A106450

/-- `A026741(xor(2, n))%A228353(a(n-1)+1)` -/
def P11968051968437403335.Spec : Prop :=
  ∀ n, P11968051968437403335.a n = A106450 n

end A106450

/-! ## A106450.P9802193956762378183

`xor(A000034(A028310(n)), A026741(n))`
-/

namespace A106450.P9802193956762378183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (A028310 n).toNat) (A026741 n)

end

end A106450.P9802193956762378183

namespace A106450

/-- `xor(A000034(A028310(n)), A026741(n))` -/
def P9802193956762378183.Spec : Prop :=
  ∀ n, P9802193956762378183.a n = A106450 n

end A106450

/-! ## A106450.P13681486183654823335

`xor(2, n)/A204897(3*n+1)`
-/

namespace A106450.P13681486183654823335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / (A204897 (3 * n + 1) : ℚ)

end

end A106450.P13681486183654823335

namespace A106450

/-- `xor(2, n)/A204897(3*n+1)` -/
def P13681486183654823335.Spec : Prop :=
  ∀ n, P13681486183654823335.a n = (A106450 n : ℚ)

end A106450

/-! ## A106450.P16217339989167832134

`xor(n/(2-and(1, n)), A000034(A008486(n)))`
-/

namespace A106450.P16217339989167832134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))) (A000034 (A008486 n).toNat)

end

end A106450.P16217339989167832134

namespace A106450

/-- `xor(n/(2-and(1, n)), A000034(A008486(n)))` -/
def P16217339989167832134.Spec : Prop :=
  ∀ n, P16217339989167832134.a n = A106450 n

end A106450

/-! ## A106450.P16349465782874387240

`xor(n/(2-and(1, n)), A000034(A298028(n)))`
-/

namespace A106450.P16349465782874387240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))) (A000034 (A298028 n).toNat)

end

end A106450.P16349465782874387240

namespace A106450

/-- `xor(n/(2-and(1, n)), A000034(A298028(n)))` -/
def P16349465782874387240.Spec : Prop :=
  ∀ n, P16349465782874387240.a n = A106450 n

end A106450

/-! ## A106450.P7509431693588741345

`xor(2, n)/gcd(4, A182522(n))`
-/

namespace A106450.P7509431693588741345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / (Int.gcd 4 (A182522 n) : ℚ)

end

end A106450.P7509431693588741345

namespace A106450

/-- `xor(2, n)/gcd(4, A182522(n))` -/
def P7509431693588741345.Spec : Prop :=
  ∀ n, P7509431693588741345.a n = (A106450 n : ℚ)

end A106450

/-!
# A106451: Position of A106455(n+1) in A014486.

The programs for A106451, there is no canonical definition to state claims against.
-/

/-! ## A106451.P2226685517735528742

`A106453(n+1)-1`
-/

namespace A106451.P2226685517735528742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106453 (n + 1) - 1

end

end A106451.P2226685517735528742

/-! ## A106451.P9798868869499475835

`A134824(n+2)+A106453(n+1)`
-/

namespace A106451.P9798868869499475835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A106453 (n + 1)

end

end A106451.P9798868869499475835

/-! ## A106451.P1187740307465676211

`A260196(n+2)+A106453(n+1)`
-/

namespace A106451.P1187740307465676211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A106453 (n + 1)

end

end A106451.P1187740307465676211

/-! ## A106451.P16083353318971720593

`A153881(3*(n+1))+A106453(n+1)`
-/

namespace A106451.P16083353318971720593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * (n + 1)) + A106453 (n + 1)

end

end A106451.P16083353318971720593

/-! ## A106451.P10607287057918395849

`A106510(3*n+2)+A106453(n+1)`
-/

namespace A106451.P10607287057918395849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (3 * n + 2) + A106453 (n + 1)

end

end A106451.P10607287057918395849

/-! ## A106451.P133337675081053035

`A001478(n+1)+A106453(n+1)+n`
-/

namespace A106451.P133337675081053035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A106453 (n + 1) + (n : ℤ))

end

end A106451.P133337675081053035

/-! ## A106451.P14888675892307617589

`log2(1/2)+A106453(n+1)+A007318(n)%((-1)^n)`
-/

namespace A106451.P14888675892307617589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (A106453 (n + 1) + Int.tmod (A007318 n) ((-1) ^ n) : ℝ)

end

end A106451.P14888675892307617589

/-! ## A106451.P13863660771527300858

`A118830(A016813(n))+A106453(n+1)`
-/

namespace A106451.P13863660771527300858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A016813 n).toNat + A106453 (n + 1)

end

end A106451.P13863660771527300858

/-! ## A106451.P16328437350822848945

`A118830(A017281(n))+A106453(n+1)`
-/

namespace A106451.P16328437350822848945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A017281 n).toNat + A106453 (n + 1)

end

end A106451.P16328437350822848945

/-! ## A106451.P10292634241831216258

`A107393(A000040(n+1))+A106453(n+1)`
-/

namespace A106451.P10292634241831216258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000040 (n + 1)).toNat + A106453 (n + 1)

end

end A106451.P10292634241831216258

/-!
# A106452: Position of A014486(n) in A106455, minus one.

The programs for A106452, there is no canonical definition to state claims against.
-/

/-! ## A106452.P2490954610709302540

`A106454(n+1)-1`
-/

namespace A106452.P2490954610709302540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106454 (n + 1) - 1

end

end A106452.P2490954610709302540

/-! ## A106452.P5665234287006903141

`A134824(n+2)+A106454(n+1)`
-/

namespace A106452.P5665234287006903141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A106454 (n + 1)

end

end A106452.P5665234287006903141

/-! ## A106452.P3766757369695645062

`A153881(n+2)+A106454(n+1)`
-/

namespace A106452.P3766757369695645062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A106454 (n + 1)

end

end A106452.P3766757369695645062

/-! ## A106452.P10428446269594011149

`A260196(n+2)+A106454(n+1)`
-/

namespace A106452.P10428446269594011149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A106454 (n + 1)

end

end A106452.P10428446269594011149

/-! ## A106452.P2965366487513109829

`abs(A106454(n+1)+A057428(n+1))`
-/

namespace A106452.P2965366487513109829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106454 (n + 1) + A057428 (n + 1)|

end

end A106452.P2965366487513109829

/-! ## A106452.P17314354229285456607

`A106510(3*n+2)+A106454(n+1)`
-/

namespace A106452.P17314354229285456607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (3 * n + 2) + A106454 (n + 1)

end

end A106452.P17314354229285456607

/-! ## A106452.P9621049628873257725

`A262352(xor(n, n+1))+A106454(n+1)`
-/

namespace A106452.P9621049628873257725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (Nat.xor n (n + 1)) + A106454 (n + 1)

end

end A106452.P9621049628873257725

/-! ## A106452.P12102155997060411107

`abs(A106454(n+1)+A033999(4*n+1))`
-/

namespace A106452.P12102155997060411107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106454 (n + 1) + A033999 (4 * n + 1)|

end

end A106452.P12102155997060411107

/-! ## A106452.P18167412736997290368

`A118830(A000265(n+1))+A106454(n+1)`
-/

namespace A106452.P18167412736997290368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A000265 (n + 1)).toNat + A106454 (n + 1)

end

end A106452.P18167412736997290368

/-! ## A106452.P1855794569268532604

`abs(A106454(n+1)+A008683(A045357(n+1)))`
-/

namespace A106452.P1855794569268532604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106454 (n + 1) + A008683 (A045357 (n + 1)).toNat|

end

end A106452.P1855794569268532604

/-!
# A106453: Position of A106455(n) in A014486 plus one.

The programs for A106453, there is no canonical definition to state claims against.
-/

/-! ## A106453.P12520862501564660241

`A106451(n)+1`
-/

namespace A106453.P12520862501564660241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106451 n + 1

end

end A106453.P12520862501564660241

/-! ## A106453.P2180177991779552651

`1-(A005926(n²)-A106451(n))`
-/

namespace A106453.P2180177991779552651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A005926 (n ^ 2) - A106451 n)

end

end A106453.P2180177991779552651

/-! ## A106453.P9931928428409895444

`A000124(n)-(∑[n]-A106451(n))`
-/

namespace A106453.P9931928428409895444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A106451 n)

end

end A106453.P9931928428409895444

/-! ## A106453.P17979997434302734338

`2-(A000034(2*n)-A106451(n))`
-/

namespace A106453.P17979997434302734338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (2 * n) - A106451 n)

end

end A106453.P17979997434302734338

/-! ## A106453.P7208659729069114004

`A005408(n)-(2*n-A106451(n))`
-/

namespace A106453.P7208659729069114004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A106451 n)

end

end A106453.P7208659729069114004

/-! ## A106453.P6463547001405601013

`∑[A028310(n)]-(∑[n]-A106451(n))`
-/

namespace A106453.P6463547001405601013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A106451 n)

end

end A106453.P6463547001405601013

/-! ## A106453.P3605175870588419413

`A000096(n)-(n-1)-(∑[n]-A106451(n))`
-/

namespace A106453.P3605175870588419413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ((n : ℤ) - 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A106451 n)

end

end A106453.P3605175870588419413

/-! ## A106453.P3872372903271771175

`1-(A008683(Δ[xor(1, 7*n)]-1)-A106451(n))`
-/

namespace A106453.P3872372903271771175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat - A106451 n)

end

end A106453.P3872372903271771175

/-! ## A106453.P13132840570588482207

`abs(A008683(A051698(n))-A106451(n))`
-/

namespace A106453.P13132840570588482207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A051698 n).toNat - A106451 n|

end

end A106453.P13132840570588482207

/-! ## A106453.P17530752796194932001

`A075163(A106443(n+1))`
-/

namespace A106453.P17530752796194932001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (A106443 (n + 1)).toNat

end

end A106453.P17530752796194932001

/-!
# A106454: Position of A014486(n-1) in A106455.

The programs for A106454, there is no canonical definition to state claims against.
-/

/-! ## A106454.P14883057716370461376

`A106452(n)+1`
-/

namespace A106454.P14883057716370461376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106452 n + 1

end

end A106454.P14883057716370461376

/-! ## A106454.P6421496703759831638

`2-(A097807(n)²-A106452(n))`
-/

namespace A106454.P6421496703759831638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A097807 n ^ 2 - A106452 n)

end

end A106454.P6421496703759831638

/-! ## A106454.P8809890557768733538

`A005408(n)-(2*n-A106452(n))`
-/

namespace A106454.P8809890557768733538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A106452 n)

end

end A106454.P8809890557768733538

/-! ## A106454.P8067210367250235357

`A008619(2*n)-(n-A106452(n))`
-/

namespace A106454.P8067210367250235357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A106452 n)

end

end A106454.P8067210367250235357

/-! ## A106454.P10855906988775332173

`A028242(2*n)-(n-A106452(n))`
-/

namespace A106454.P10855906988775332173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - ((n : ℤ) - A106452 n)

end

end A106454.P10855906988775332173

/-! ## A106454.P9720461313843841382

`A008611(3*n)-(n-A106452(n))`
-/

namespace A106454.P9720461313843841382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - ((n : ℤ) - A106452 n)

end

end A106454.P9720461313843841382

/-! ## A106454.P15524956989657250178

`2-(abs(A004442(n)-n)-A106452(n))`
-/

namespace A106454.P15524956989657250178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (|A004442 n - (n : ℤ)| - A106452 n)

end

end A106454.P15524956989657250178

/-! ## A106454.P15190331925153337175

`A020639(Δ[(2*n)²])-(1-A106452(n))`
-/

namespace A106454.P15190331925153337175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (1 - A106452 n)

end

end A106454.P15190331925153337175

/-! ## A106454.P10675608976915824508

`A016777(n)-2*n-(n-A106452(n))`
-/

namespace A106454.P10675608976915824508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (2 * n : ℤ) - ((n : ℤ) - A106452 n)

end

end A106454.P10675608976915824508

/-!
# A106455: Sequence A106456 interpreted as binary numbers and converted to decimal.

The programs for A106455, there is no canonical definition to state claims against.
-/

/-! ## A106455.P1487517033122098125

`A014486(A106451(n))`
-/

namespace A106455.P1487517033122098125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A106451 n).toNat

end

end A106455.P1487517033122098125

/-! ## A106455.P5155518861895547624

`A075165(A106443(n+1))`
-/

namespace A106455.P5155518861895547624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075165 (A106443 (n + 1)).toNat

end

end A106455.P5155518861895547624

/-! ## A106455.P2628316973607181511

`A075165(A106445(n+1))`
-/

namespace A106455.P2628316973607181511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075165 (A106445 (n + 1)).toNat

end

end A106455.P2628316973607181511

/-! ## A106455.P1292822018853805241

`A014486(A106453(n+1)-1)`
-/

namespace A106455.P1292822018853805241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A106453 (n + 1) - 1).toNat

end

end A106455.P1292822018853805241

/-! ## A106455.P162046311670380609

`2*A057520(A106453(n+1)-1)`
-/

namespace A106455.P162046311670380609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 (A106453 (n + 1) - 1).toNat

end

end A106455.P162046311670380609

/-!
# A106456: Natural numbers mapped to Dyck path encodings of the rooted plane trees obtained by recursing on the exponents of the GF(2)[X] factorization of n.

The programs for A106456, there is no canonical definition to state claims against.
-/

/-! ## A106456.P5997388906639397804

`A063171(A106451(n))`
-/

namespace A106456.P5997388906639397804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A106451 n).toNat

end

end A106456.P5997388906639397804

/-! ## A106456.P10509026102582526698

`A007088(A106455(n+1))`
-/

namespace A106456.P10509026102582526698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A106455 (n + 1)).toNat

end

end A106456.P10509026102582526698

/-! ## A106456.P4453687512439415278

`A075166(A106443(n+1))`
-/

namespace A106456.P4453687512439415278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075166 (A106443 (n + 1)).toNat

end

end A106456.P4453687512439415278

/-! ## A106456.P241807501941531946

`A063171(A106453(n+1)-1)`
-/

namespace A106456.P241807501941531946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A106453 (n + 1) - 1).toNat

end

end A106456.P241807501941531946

/-! ## A106456.P5023335121565482284

`A185544(2*A106455(n+1))`
-/

namespace A106456.P5023335121565482284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A106455 (n + 1)).toNat

end

end A106456.P5023335121565482284

/-!
# A106457: Number of edges in each rooted plane tree produced with the GF(2)[X] factorization unranking algorithm presented in A106456.

The programs for A106457, there is no canonical definition to state claims against.
-/

/-! ## A106457.P1712397302848255974

`A075167(A091203(n+1))`
-/

namespace A106457.P1712397302848255974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A091203 (n + 1)).toNat

end

end A106457.P1712397302848255974

/-! ## A106457.P8851456748073721927

`A075167(A106443(n+1))`
-/

namespace A106457.P8851456748073721927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A106443 (n + 1)).toNat

end

end A106457.P8851456748073721927

/-! ## A106457.P8459422685768629154

`A075167(A106445(n+1))`
-/

namespace A106457.P8459422685768629154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A106445 (n + 1)).toNat

end

end A106457.P8459422685768629154

/-! ## A106457.P2487538266177879548

`A072643(A106451(n))`
-/

namespace A106457.P2487538266177879548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A106451 n).toNat

end

end A106457.P2487538266177879548

/-! ## A106457.P6176082373102384407

`val(A001316(A106455(n+1)), 2)`
-/

namespace A106457.P6176082373102384407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A106455 (n + 1)).toNat).toNat 2

end

end A106457.P6176082373102384407

/-!
# A106458: Bernoulli number denominators, with zeros at the odd places.

The programs for A106458, the canonical program `A106458.P14236867750960473555` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106458 has offset 0).

The definition of A106458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106458.P14236867750960473555

`A027642(n)*A266591(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106458

/-- `A027642(n)*A266591(n)` -/
def P14236867750960473555.Spec : Prop :=
  ∀ n, P14236867750960473555.a n = A106458 n

theorem P14236867750960473555.correct : P14236867750960473555.Spec := by
  intro n
  simp only [A106458]

end A106458

/-! ## A106458.P14446406366569979987

`A141056(n)*A266591(n)`
-/

namespace A106458.P14446406366569979987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n * A266591 n

end

end A106458.P14446406366569979987

namespace A106458

/-- `A141056(n)*A266591(n)` -/
def P14446406366569979987.Spec : Prop :=
  ∀ n, P14446406366569979987.a n = A106458 n

end A106458

/-! ## A106458.P15552359337062229901

`C(A027642(n), A135517(n))`
-/

namespace A106458.P15552359337062229901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027642 n).toNat (A135517 n).toNat

end

end A106458.P15552359337062229901

namespace A106458

/-- `C(A027642(n), A135517(n))` -/
def P15552359337062229901.Spec : Prop :=
  ∀ n, (P15552359337062229901.a n : ℤ) = A106458 n

end A106458

/-! ## A106458.P2053352036407581142

`and(A027642(n), A141056(n))`
-/

namespace A106458.P2053352036407581142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 n) (A141056 n)

end

end A106458.P2053352036407581142

namespace A106458

/-- `and(A027642(n), A141056(n))` -/
def P2053352036407581142.Spec : Prop :=
  ∀ n, P2053352036407581142.a n = A106458 n

end A106458

/-! ## A106458.P17190181728309199805

`and(-A000034(n), A027642(n))`
-/

namespace A106458.P17190181728309199805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A027642 n)

end

end A106458.P17190181728309199805

namespace A106458

/-- `and(-A000034(n), A027642(n))` -/
def P17190181728309199805.Spec : Prop :=
  ∀ n, P17190181728309199805.a n = A106458 n

end A106458

/-! ## A106458.P16611594531048195964

`C(A141056(n), A135517(n)²)`
-/

namespace A106458.P16611594531048195964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141056 n).toNat (A135517 n ^ 2).toNat

end

end A106458.P16611594531048195964

namespace A106458

/-- `C(A141056(n), A135517(n)²)` -/
def P16611594531048195964.Spec : Prop :=
  ∀ n, (P16611594531048195964.a n : ℤ) = A106458 n

end A106458

/-! ## A106458.P4799741086417475064

`and(A027642(n), A118830(n+1))`
-/

namespace A106458.P4799741086417475064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 n) (A118830 (n + 1))

end

end A106458.P4799741086417475064

namespace A106458

/-- `and(A027642(n), A118830(n+1))` -/
def P4799741086417475064.Spec : Prop :=
  ∀ n, P4799741086417475064.a n = A106458 n

end A106458

/-! ## A106458.P8223646894657543187

`A027642(n)-char[A165754(2*n)]`
-/

namespace A106458.P8223646894657543187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106458.P8223646894657543187

namespace A106458

/-- `A027642(n)-char[A165754(2*n)]` -/
def P8223646894657543187.Spec : Prop :=
  ∀ n, P8223646894657543187.a n = A106458 n

end A106458

/-! ## A106458.P15427075898663435470

`A027642(n)+A027642(A093178(n))-2`
-/

namespace A106458.P15427075898663435470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n + (A027642 (A093178 n).toNat - 2)

end

end A106458.P15427075898663435470

namespace A106458

/-- `A027642(n)+A027642(A093178(n))-2` -/
def P15427075898663435470.Spec : Prop :=
  ∀ n, P15427075898663435470.a n = A106458 n

end A106458

/-! ## A106458.P15729180993223860681

`C(A027642(n), A225821(n+1))*A225821(n+1)`
-/

namespace A106458.P15729180993223860681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A027642 n).toNat (A225821 (n + 1)).toNat : ℤ) * A225821 (n + 1)

end

end A106458.P15729180993223860681

namespace A106458

/-- `C(A027642(n), A225821(n+1))*A225821(n+1)` -/
def P15729180993223860681.Spec : Prop :=
  ∀ n, P15729180993223860681.a n = A106458 n

end A106458

/-! ## A106458.P3810883562406176425

`A027642(n)-A000035(A000035(n)*A027642(n))`
-/

namespace A106458.P3810883562406176425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n - A000035 (A000035 n * A027642 n).toNat

end

end A106458.P3810883562406176425

namespace A106458

/-- `A027642(n)-A000035(A000035(n)*A027642(n))` -/
def P3810883562406176425.Spec : Prop :=
  ∀ n, P3810883562406176425.a n = A106458 n

end A106458

/-! ## A106458.P10514662005361521616

`and(-A027642(n+3), A027642(n))`
-/

namespace A106458.P10514662005361521616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A027642 (n + 3)) (A027642 n)

end

end A106458.P10514662005361521616

namespace A106458

/-- `and(-A027642(n+3), A027642(n))` -/
def P10514662005361521616.Spec : Prop :=
  ∀ n, P10514662005361521616.a n = A106458 n

end A106458

/-! ## A106458.P13851632224652996349

`A051717(n)-a(n-1)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A106458.P13851632224652996349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A051717 n - a (n - 1)

end

end A106458.P13851632224652996349

namespace A106458

/-- `A051717(n)-a(n-1)` -/
def P13851632224652996349.Spec : Prop :=
  ∀ n, P13851632224652996349.a n = A106458 n

end A106458

/-! ## A106458.P1897325717753056347

`and(A027642(lcm(2, n)), A027642(n))`
-/

namespace A106458.P1897325717753056347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 (Nat.lcm 2 n)) (A027642 n)

end

end A106458.P1897325717753056347

namespace A106458

/-- `and(A027642(lcm(2, n)), A027642(n))` -/
def P1897325717753056347.Spec : Prop :=
  ∀ n, P1897325717753056347.a n = A106458 n

end A106458

/-! ## A106458.P3756287771501281320

`and(A027642(n*A000034(n)), A027642(n))`
-/

namespace A106458.P3756287771501281320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 ((n : ℤ) * A000034 n).toNat) (A027642 n)

end

end A106458.P3756287771501281320

namespace A106458

/-- `and(A027642(n*A000034(n)), A027642(n))` -/
def P3756287771501281320.Spec : Prop :=
  ∀ n, P3756287771501281320.a n = A106458 n

end A106458

/-! ## A106458.P10754160171709649641

`A164020(n)*A266591(n)`
-/

namespace A106458.P10754160171709649641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 n * A266591 n

end

end A106458.P10754160171709649641

namespace A106458

/-- `A164020(n)*A266591(n)` -/
def P10754160171709649641.Spec : Prop :=
  ∀ n, P10754160171709649641.a n = A106458 n

end A106458

/-! ## A106458.P11455037789238451774

`and(A027642(n), A164020(n))`
-/

namespace A106458.P11455037789238451774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 n) (A164020 n)

end

end A106458.P11455037789238451774

namespace A106458

/-- `and(A027642(n), A164020(n))` -/
def P11455037789238451774.Spec : Prop :=
  ∀ n, P11455037789238451774.a n = A106458 n

end A106458

/-! ## A106458.P14259903402039583813

`and(A027642(n), A095121(n))`
-/

namespace A106458.P14259903402039583813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 n) (A095121 n)

end

end A106458.P14259903402039583813

namespace A106458

/-- `and(A027642(n), A095121(n))` -/
def P14259903402039583813.Spec : Prop :=
  ∀ n, P14259903402039583813.a n = A106458 n

end A106458

/-! ## A106458.P1244068412464595420

`and(A094360(n), A141056(n))`
-/

namespace A106458.P1244068412464595420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094360 n) (A141056 n)

end

end A106458.P1244068412464595420

namespace A106458

/-- `and(A094360(n), A141056(n))` -/
def P1244068412464595420.Spec : Prop :=
  ∀ n, P1244068412464595420.a n = A106458 n

end A106458

/-! ## A106458.P18083368032754259673

`and(A027642(n), A282414(n))`
-/

namespace A106458.P18083368032754259673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027642 n) (A282414 n)

end

end A106458.P18083368032754259673

namespace A106458

/-- `and(A027642(n), A282414(n))` -/
def P18083368032754259673.Spec : Prop :=
  ∀ n, P18083368032754259673.a n = A106458 n

end A106458

/-!
# A106459: Expansion of f(-x, -x^3) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A106459, the canonical program `A106459.P15170386012482602511` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106459 has offset 0).

The definition of A106459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106459.P6940443979983689484

`-T(n-2,k)` with `a(0)=1, a(1)=-1`
-/

namespace A106459.P6940443979983689484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  -SequenceMachineLib.triUp2 a n

end

end A106459.P6940443979983689484

namespace A106459

/-- `-T(n-2,k)` -/
def P6940443979983689484.Spec : Prop :=
  ∀ n, P6940443979983689484.a n = A106459 n

end A106459

/-! ## A106459.P18190482779143285807

`xor(n, char[∑[n]])-n`
-/

namespace A106459.P18190482779143285807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ) - (n : ℤ)

end

end A106459.P18190482779143285807

namespace A106459

/-- `xor(n, char[∑[n]])-n` -/
def P18190482779143285807.Spec : Prop :=
  ∀ n, P18190482779143285807.a n = A106459 n

end A106459

/-! ## A106459.P16989600282804069303

`(-1)^n*char[∑[n]]`
-/

namespace A106459.P16989600282804069303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A106459.P16989600282804069303

namespace A106459

/-- `(-1)^n*char[∑[n]]` -/
def P16989600282804069303.Spec : Prop :=
  ∀ n, P16989600282804069303.a n = A106459 n

end A106459

/-! ## A106459.P14095025670387283104

`(-and(1, char[∑[n]]))^n`
-/

namespace A106459.P14095025670387283104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ)) ^ n

end

end A106459.P14095025670387283104

namespace A106459

/-- `(-and(1, char[∑[n]]))^n` -/
def P14095025670387283104.Spec : Prop :=
  ∀ n, P14095025670387283104.a n = A106459 n

end A106459

/-! ## A106459.P12776910328069736506

`char[C(n, 2)]/(-1)^n`
-/

namespace A106459.P12776910328069736506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / ((-1) ^ n : ℚ)

end

end A106459.P12776910328069736506

namespace A106459

/-- `char[C(n, 2)]/(-1)^n` -/
def P12776910328069736506.Spec : Prop :=
  ∀ n, P12776910328069736506.a n = (A106459 n : ℚ)

end A106459

/-! ## A106459.P14602277234114054157

`col(n)*T(n-1,k)-T(n-2,k)` with `a(0)=1, a(1)=-1`
-/

namespace A106459.P14602277234114054157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n

end

end A106459.P14602277234114054157

namespace A106459

/-- `col(n)*T(n-1,k)-T(n-2,k)` -/
def P14602277234114054157.Spec : Prop :=
  ∀ n, P14602277234114054157.a n = A106459 n

end A106459

/-! ## A106459.P633975468063009

`((-1)^n)%(char[∑[n]]+1)`
-/

namespace A106459.P633975468063009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ n) (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A106459.P633975468063009

namespace A106459

/-- `((-1)^n)%(char[∑[n]]+1)` -/
def P633975468063009.Spec : Prop :=
  ∀ n, P633975468063009.a n = A106459 n

end A106459

/-! ## A106459.P10430234130692730374

`char[∑[n]]/ratio[1-and(2, n)]`
-/

namespace A106459.P10430234130692730374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

end

end A106459.P10430234130692730374

namespace A106459

/-- `char[∑[n]]/ratio[1-and(2, n)]` -/
def P10430234130692730374.Spec : Prop :=
  ∀ n, P10430234130692730374.a n = (A106459 n : ℚ)

end A106459

/-! ## A106459.P15170386012482602511

`(1-A035214(n))^n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106459

/-- `(1-A035214(n))^n` -/
def P15170386012482602511.Spec : Prop :=
  ∀ n, P15170386012482602511.a n = A106459 n

theorem P15170386012482602511.correct : P15170386012482602511.Spec := by
  intro n
  simp only [A106459]

end A106459

/-! ## A106459.P4766837658374364907

`(A123110(n)-1)^n`
-/

namespace A106459.P4766837658374364907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123110 n - 1) ^ n

end

end A106459.P4766837658374364907

namespace A106459

/-- `(A123110(n)-1)^n` -/
def P4766837658374364907.Spec : Prop :=
  ∀ n, P4766837658374364907.a n = A106459 n

end A106459

/-! ## A106459.P7760240407062229761

`(A238303(n)-2)^n`
-/

namespace A106459.P7760240407062229761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238303 n - 2) ^ n

end

end A106459.P7760240407062229761

namespace A106459

/-- `(A238303(n)-2)^n` -/
def P7760240407062229761.Spec : Prop :=
  ∀ n, P7760240407062229761.a n = A106459 n

end A106459

/-! ## A106459.P5176810005943759152

`A059778(n)-a(n-1)` with `a(0)=1`
-/

namespace A106459.P5176810005943759152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059778 n - a (n - 1)

end

end A106459.P5176810005943759152

namespace A106459

/-- `A059778(n)-a(n-1)` -/
def P5176810005943759152.Spec : Prop :=
  ∀ n, P5176810005943759152.a n = A106459 n

end A106459

/-! ## A106459.P11423017333339791938

`(char[comp[A000217(n)]]-1)^n`
-/

namespace A106459.P11423017333339791938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ n

end

end A106459.P11423017333339791938

namespace A106459

/-- `(char[comp[A000217(n)]]-1)^n` -/
def P11423017333339791938.Spec : Prop :=
  ∀ n, P11423017333339791938.a n = A106459 n

end A106459

/-! ## A106459.P13811457820691529672

`A046978(A213022(n))`
-/

namespace A106459.P13811457820691529672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A213022 n).toNat

end

end A106459.P13811457820691529672

namespace A106459

/-- `A046978(A213022(n))` -/
def P13811457820691529672.Spec : Prop :=
  ∀ n, P13811457820691529672.a n = A106459 n

end A106459

/-! ## A106459.P3610258675812983769

`A091337(A198954(n))`
-/

namespace A106459.P3610258675812983769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A198954 n).toNat

end

end A106459.P3610258675812983769

namespace A106459

/-- `A091337(A198954(n))` -/
def P3610258675812983769.Spec : Prop :=
  ∀ n, P3610258675812983769.a n = A106459 n

end A106459

/-! ## A106459.P4676454258980231196

`A101455(A213622(n))`
-/

namespace A106459.P4676454258980231196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A213622 n).toNat

end

end A106459.P4676454258980231196

namespace A106459

/-- `A101455(A213622(n))` -/
def P4676454258980231196.Spec : Prop :=
  ∀ n, P4676454258980231196.a n = A106459 n

end A106459

/-! ## A106459.P7616935697681690784

`A091337(A298420(n))`
-/

namespace A106459.P7616935697681690784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A298420 n).toNat

end

end A106459.P7616935697681690784

namespace A106459

/-- `A091337(A298420(n))` -/
def P7616935697681690784.Spec : Prop :=
  ∀ n, P7616935697681690784.a n = A106459 n

end A106459

/-! ## A106459.P4622672909559235521

`A091337(A143593(n+1))`
-/

namespace A106459.P4622672909559235521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A143593 (n + 1)).toNat

end

end A106459.P4622672909559235521

namespace A106459

/-- `A091337(A143593(n+1))` -/
def P4622672909559235521.Spec : Prop :=
  ∀ n, P4622672909559235521.a n = A106459 n

end A106459

/-! ## A106459.P6381271437757586316

`A091337(A143956(n+1))`
-/

namespace A106459.P6381271437757586316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A143956 (n + 1)).toNat

end

end A106459.P6381271437757586316

namespace A106459

/-- `A091337(A143956(n+1))` -/
def P6381271437757586316.Spec : Prop :=
  ∀ n, P6381271437757586316.a n = A106459 n

end A106459

/-! ## A106459.P364935613441197615

`A091337(A185782(n+1))`
-/

namespace A106459.P364935613441197615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A185782 (n + 1)).toNat

end

end A106459.P364935613441197615

namespace A106459

/-- `A091337(A185782(n+1))` -/
def P364935613441197615.Spec : Prop :=
  ∀ n, P364935613441197615.a n = A106459 n

end A106459

/-!
# A106460: Binomial transform of A090039.

The programs for A106460, there is no canonical definition to state claims against.
-/

/-! ## A106460.P3036779597790612976

`A248231(A051043(n))`
-/

namespace A106460.P3036779597790612976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A051043 n).toNat

end

end A106460.P3036779597790612976

/-! ## A106460.P16563204078053779460

`A248231(A123620(n))`
-/

namespace A106460.P16563204078053779460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A123620 n).toNat

end

end A106460.P16563204078053779460

/-!
# A106461: Binomial transform of the Tower of Hanoi sequence.

The programs for A106461, there is no canonical definition to state claims against.
-/

/-! ## A106461.P8228631004948622974

`A005041(A062561(n)+1)`
-/

namespace A106461.P8228631004948622974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A062561 n + 1).toNat

end

end A106461.P8228631004948622974

/-! ## A106461.P15595524562285260496

`A001462(A018919(n))-(n+1)`
-/

namespace A106461.P15595524562285260496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A018919 n).toNat - (n + 1 : ℤ)

end

end A106461.P15595524562285260496

/-! ## A106461.P2361900073250004281

`A026819(A261232(n)+A000340(n))`
-/

namespace A106461.P2361900073250004281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A261232 n + A000340 n).toNat

end

end A106461.P2361900073250004281

/-! ## A106461.P12313065337361908973

`A086008(A261600(n))+A035528(2*n+1)`
-/

namespace A106461.P12313065337361908973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A261600 n).toNat + A035528 (2 * n + 1)

end

end A106461.P12313065337361908973

/-!
# A106462: Binomial transform of A007318 (Pascal's triangle by rows).

The programs for A106462, there is no canonical definition to state claims against.
-/

/-! ## A106462.P15505724318235658057

`A172471(4^n-2^n*C(n, 2))`
-/

namespace A106462.P15505724318235658057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (4 ^ n - 2 ^ n * Nat.choose n 2)

end

end A106462.P15505724318235658057

/-! ## A106462.P15362050787673566506

`A005041(A150143(n))`
-/

namespace A106462.P15362050787673566506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A150143 n).toNat

end

end A106462.P15362050787673566506

/-! ## A106462.P1600558767985061984

`A005041(A150144(n))`
-/

namespace A106462.P1600558767985061984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A150144 n).toNat

end

end A106462.P1600558767985061984

/-! ## A106462.P8144076326723985275

`A383074(A304781(n))`
-/

namespace A106462.P8144076326723985275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A304781 n).toNat

end

end A106462.P8144076326723985275

/-!
# A106463: Real parts of binomial transform of the Gaussian primes.

The programs for A106463, there is no canonical definition to state claims against.
-/

/-! ## A106463.P129573638758238055

`char[8]+A137221(n)+record[A229120(n+1)]`
-/

namespace A106463.P129573638758238055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A137221 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A106463.P129573638758238055

/-! ## A106463.P189205375901973184

`A099325(n)+A000194(A271271(n))`
-/

namespace A106463.P189205375901973184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + A000194 (A271271 n).toNat

end

end A106463.P189205375901973184

/-! ## A106463.P11417735763102973063

`A185284(A000124(n))+A065979(n+1)`
-/

namespace A106463.P11417735763102973063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A065979 (n + 1)

end

end A106463.P11417735763102973063

/-! ## A106463.P14963989675166254681

`A185284(A046938(n))+A065979(n+1)`
-/

namespace A106463.P14963989675166254681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A046938 n).toNat + A065979 (n + 1)

end

end A106463.P14963989675166254681

/-!
# A106464: Antidiagonal sums of number triangle A003989.

The programs for A106464, the canonical program `A106464.P950177952330348354` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106464 has offset 0).

The definition of A106464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106464.P950177952330348354

`A006579(n+3)-A060992(n+3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106464

/-- `A006579(n+3)-A060992(n+3)` -/
def P950177952330348354.Spec : Prop :=
  ∀ n, P950177952330348354.a n = A106464 n

theorem P950177952330348354.correct : P950177952330348354.Spec := by
  intro n
  simp only [A106464]

end A106464

/-!
# A106465: Triangle read by rows, T(n, k) = 1 if n mod 2 = 1, otherwise (k + 1) mod 2.

The programs for A106465, the canonical program `A106465.P3380184419044923541` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106465 has offset 0).

The definition of A106465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106465.P3380184419044923541

`C(row(n)%2, col(n)%2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106465

/-- `C(row(n)%2, col(n)%2)` -/
def P3380184419044923541.Spec : Prop :=
  ∀ n, (P3380184419044923541.a n : ℤ) = A106465 n

theorem P3380184419044923541.correct : P3380184419044923541.Spec := by
  intro n
  simp only [A106465]

end A106465

/-! ## A106465.P15789771750104107845

`floor(sqrt((comp[∑[n]]+n)%4))`
-/

namespace A106465.P15789771750104107845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 4)

end

end A106465.P15789771750104107845

namespace A106465

/-- `floor(sqrt((comp[∑[n]]+n)%4))` -/
def P15789771750104107845.Spec : Prop :=
  ∀ n, (P15789771750104107845.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P3924727340244085881

`((comp[∑[n]]+n)²%8)%3`
-/

namespace A106465.P3924727340244085881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) ^ 2 % 8 % 3

end

end A106465.P3924727340244085881

namespace A106465

/-- `((comp[∑[n]]+n)²%8)%3` -/
def P3924727340244085881.Spec : Prop :=
  ∀ n, (P3924727340244085881.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P12551303039227616060

`C(2, val((comp[∑[n]]+n)², 2))`
-/

namespace A106465.P12551303039227616060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.valuation ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) ^ 2) 2)

end

end A106465.P12551303039227616060

namespace A106465

/-- `C(2, val((comp[∑[n]]+n)², 2))` -/
def P12551303039227616060.Spec : Prop :=
  ∀ n, (P12551303039227616060.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P9505831120727518585

`val(comp[∑[n]]+n, 2)!%2`
-/

namespace A106465.P9505831120727518585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) 2) % 2

end

end A106465.P9505831120727518585

namespace A106465

/-- `val(comp[∑[n]]+n, 2)!%2` -/
def P9505831120727518585.Spec : Prop :=
  ∀ n, (P9505831120727518585.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P809745102784172909

`ceil(and(3, comp[∑[n]]+n)/3)`
-/

namespace A106465.P809745102784172909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 3 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) / 3⌉

end

end A106465.P809745102784172909

namespace A106465

/-- `ceil(and(3, comp[∑[n]]+n)/3)` -/
def P809745102784172909.Spec : Prop :=
  ∀ n, P809745102784172909.a n = A106465 n

end A106465

/-! ## A106465.P10499893890696279977

`(lcm(2, comp[∑[n]]+n)/2)%2`
-/

namespace A106465.P10499893890696279977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.lcm 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) / 2)) 2

end

end A106465.P10499893890696279977

namespace A106465

/-- `(lcm(2, comp[∑[n]]+n)/2)%2` -/
def P10499893890696279977.Spec : Prop :=
  ∀ n, P10499893890696279977.a n = A106465 n

end A106465

/-! ## A106465.P6252901352864518090

`C(2, val(comp[∑[n]]+n, 4)+2)`
-/

namespace A106465.P6252901352864518090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) 4 + 2)

end

end A106465.P6252901352864518090

namespace A106465

/-- `C(2, val(comp[∑[n]]+n, 4)+2)` -/
def P6252901352864518090.Spec : Prop :=
  ∀ n, (P6252901352864518090.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P8072093550202696223

`∑[(char[∑[n]]-1)^n]²%3`
-/

namespace A106465.P8072093550202696223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) 3

end

end A106465.P8072093550202696223

namespace A106465

/-- `∑[(char[∑[n]]-1)^n]²%3` -/
def P8072093550202696223.Spec : Prop :=
  ∀ n, P8072093550202696223.a n = A106465 n

end A106465

/-! ## A106465.P2146069420501335351

`char[comp[(n-comp[∑[n]])²+2*n]]`
-/

namespace A106465.P2146069420501335351
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)) ^ 2 + (2 * n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A106465.P2146069420501335351

namespace A106465

/-- `char[comp[(n-comp[∑[n]])²+2*n]]` -/
def P2146069420501335351.Spec : Prop :=
  ∀ n, (P2146069420501335351.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P1227633161930063030

`round(1/(n+2))^val(comp[∑[n]]+n, 4)`
-/

namespace A106465.P1227633161930063030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (n + 2 : ℚ)) ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) 4

end

end A106465.P1227633161930063030

namespace A106465

/-- `round(1/(n+2))^val(comp[∑[n]]+n, 4)` -/
def P1227633161930063030.Spec : Prop :=
  ∀ n, P1227633161930063030.a n = A106465 n

end A106465

/-! ## A106465.P12401825438678244537

`(comp[C(or(1, n), 2)]%2)^(∑[char[∑[n]]]%2)`
-/

namespace A106465.P12401825438678244537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 2)

end

end A106465.P12401825438678244537

namespace A106465

/-- `(comp[C(or(1, n), 2)]%2)^(∑[char[∑[n]]]%2)` -/
def P12401825438678244537.Spec : Prop :=
  ∀ n, (P12401825438678244537.a n : ℤ) = A106465 n

end A106465

/-! ## A106465.P17408046976351106697

`1/2+1/2*(-1)^((row(n)+1)*col(n))`
-/

namespace A106465.P17408046976351106697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 + (1 : ℚ) / 2 * ((-1) ^ ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triCol n) : ℚ)

end

end A106465.P17408046976351106697

namespace A106465

/-- `1/2+1/2*(-1)^((row(n)+1)*col(n))` -/
def P17408046976351106697.Spec : Prop :=
  ∀ n, P17408046976351106697.a n = (A106465 n : ℚ)

end A106465

/-! ## A106465.P9349931407544040170

`and(1, A036065(n))`
-/

namespace A106465.P9349931407544040170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036065 n)

end

end A106465.P9349931407544040170

namespace A106465

/-- `and(1, A036065(n))` -/
def P9349931407544040170.Spec : Prop :=
  ∀ n, P9349931407544040170.a n = A106465 n

end A106465

/-! ## A106465.P9645657827051028443

`and(1, A048804(n))`
-/

namespace A106465.P9645657827051028443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048804 n)

end

end A106465.P9645657827051028443

namespace A106465

/-- `and(1, A048804(n))` -/
def P9645657827051028443.Spec : Prop :=
  ∀ n, P9645657827051028443.a n = A106465 n

end A106465

/-! ## A106465.P403700579701953516

`and(1, A077028(n))`
-/

namespace A106465.P403700579701953516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A077028 n)

end

end A106465.P403700579701953516

namespace A106465

/-- `and(1, A077028(n))` -/
def P403700579701953516.Spec : Prop :=
  ∀ n, P403700579701953516.a n = A106465 n

end A106465

/-! ## A106465.P17316495949364604929

`and(1, A082043(n))`
-/

namespace A106465.P17316495949364604929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A082043 n)

end

end A106465.P17316495949364604929

namespace A106465

/-- `and(1, A082043(n))` -/
def P17316495949364604929.Spec : Prop :=
  ∀ n, P17316495949364604929.a n = A106465 n

end A106465

/-! ## A106465.P16764129243469900147

`and(1, A176270(n))`
-/

namespace A106465.P16764129243469900147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A176270 n)

end

end A106465.P16764129243469900147

namespace A106465

/-- `and(1, A176270(n))` -/
def P16764129243469900147.Spec : Prop :=
  ∀ n, P16764129243469900147.a n = A106465 n

end A106465

/-! ## A106465.P10136456213331651078

`gcd(2, A004198(n))-1`
-/

namespace A106465.P10136456213331651078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004198 n) : ℤ) - 1

end

end A106465.P10136456213331651078

namespace A106465

/-- `gcd(2, A004198(n))-1` -/
def P10136456213331651078.Spec : Prop :=
  ∀ n, P10136456213331651078.a n = A106465 n

end A106465

/-! ## A106465.P8244468067246921836

`and(1, A003989(n+1))`
-/

namespace A106465.P8244468067246921836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003989 (n + 1))

end

end A106465.P8244468067246921836

namespace A106465

/-- `and(1, A003989(n+1))` -/
def P8244468067246921836.Spec : Prop :=
  ∀ n, P8244468067246921836.a n = A106465 n

end A106465

/-!
# A106466: Interleave 1,2,3,.. with 1,1,2,2,3,3,...

The programs for A106466, the canonical program `A106466.P13635453221219634513` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106466 has offset 0).

The definition of A106466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106466.P13635453221219634513

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106466

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P13635453221219634513.Spec : Prop :=
  ∀ n, P13635453221219634513.a n = A106466 n

theorem P13635453221219634513.correct : P13635453221219634513.Spec := by
  intro n
  simp only [A106466]

end A106466

/-! ## A106466.P11626637039900441471

`sin(π*n/2)/4+(n+2)*(-1)^n/8+3*(n+2)/8`
-/

namespace A106466.P11626637039900441471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.pi * (n : ℝ) / 2) / 4 + (((n + 2 : ℤ) * (-1) ^ n : ℚ) / 8 : ℝ) + ((3 * (n + 2) : ℚ) / 8 : ℝ)

end

end A106466.P11626637039900441471

namespace A106466

/-- `sin(π*n/2)/4+(n+2)*(-1)^n/8+3*(n+2)/8` -/
def P11626637039900441471.Spec : Prop :=
  ∀ n, P11626637039900441471.a n = (A106466 n : ℝ)

end A106466

/-! ## A106466.P12520446919691093549

`ceil(lcm(2, n+1)/4)`
-/

namespace A106466.P12520446919691093549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

end

end A106466.P12520446919691093549

namespace A106466

/-- `ceil(lcm(2, n+1)/4)` -/
def P12520446919691093549.Spec : Prop :=
  ∀ n, P12520446919691093549.a n = A106466 n

end A106466

/-! ## A106466.P17894198518774892856

`ceil(gcd(n+1, ∑[n])/2)`
-/

namespace A106466.P17894198518774892856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A106466.P17894198518774892856

namespace A106466

/-- `ceil(gcd(n+1, ∑[n])/2)` -/
def P17894198518774892856.Spec : Prop :=
  ∀ n, P17894198518774892856.a n = A106466 n

end A106466

/-! ## A106466.P11859464092338402339

`floor(lcm(n+3, 4/2)/4)`
-/

namespace A106466.P11859464092338402339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n + 3 : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) : ℚ) / 4⌋

end

end A106466.P11859464092338402339

namespace A106466

/-- `floor(lcm(n+3, 4/2)/4)` -/
def P11859464092338402339.Spec : Prop :=
  ∀ n, P11859464092338402339.a n = A106466 n

end A106466

/-! ## A106466.P16322066383734319474

`round(lcm(4, 2*(n+1))/8)`
-/

namespace A106466.P16322066383734319474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 4 (2 * (n + 1)) : ℚ) / 8)

end

end A106466.P16322066383734319474

namespace A106466

/-- `round(lcm(4, 2*(n+1))/8)` -/
def P16322066383734319474.Spec : Prop :=
  ∀ n, P16322066383734319474.a n = A106466 n

end A106466

/-! ## A106466.P4140308589496223315

`floor(n*gcd(2, n)/4)+1`
-/

namespace A106466.P4140308589496223315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.gcd 2 n : ℚ) / 4)⌋ + 1

end

end A106466.P4140308589496223315

namespace A106466

/-- `floor(n*gcd(2, n)/4)+1` -/
def P4140308589496223315.Spec : Prop :=
  ∀ n, P4140308589496223315.a n = A106466 n

end A106466

/-! ## A106466.P5965997929173251446

`floor(n/(3-(-1)^n))+1`
-/

namespace A106466.P5965997929173251446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (3 - (-1) ^ n : ℚ)⌋ + 1

end

end A106466.P5965997929173251446

namespace A106466

/-- `floor(n/(3-(-1)^n))+1` -/
def P5965997929173251446.Spec : Prop :=
  ∀ n, P5965997929173251446.a n = A106466 n

end A106466

/-! ## A106466.P12284605972934670790

`ceil(∑[n+2]%(n+3)/2)`
-/

namespace A106466.P12284605972934670790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3) : ℕ) : ℚ) / 2⌉

end

end A106466.P12284605972934670790

namespace A106466

/-- `ceil(∑[n+2]%(n+3)/2)` -/
def P12284605972934670790.Spec : Prop :=
  ∀ n, P12284605972934670790.a n = A106466 n

end A106466

/-! ## A106466.P11830274849871971518

`round((n+1)/gcd(4, 2*(n+1)))`
-/

namespace A106466.P11830274849871971518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 4 (2 * (n + 1)) : ℚ))

end

end A106466.P11830274849871971518

namespace A106466

/-- `round((n+1)/gcd(4, 2*(n+1)))` -/
def P11830274849871971518.Spec : Prop :=
  ∀ n, P11830274849871971518.a n = A106466 n

end A106466

/-! ## A106466.P5670594814006790944

`ceil((n+1)/(2*(and(1, n)+1)))`
-/

namespace A106466.P5670594814006790944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (2 * (Nat.land 1 n + 1) : ℚ)⌉

end

end A106466.P5670594814006790944

namespace A106466

/-- `ceil((n+1)/(2*(and(1, n)+1)))` -/
def P5670594814006790944.Spec : Prop :=
  ∀ n, P5670594814006790944.a n = A106466 n

end A106466

/-! ## A106466.P16814042746603899689

`round((n+1)/(2*and(1, n)+2))`
-/

namespace A106466.P16814042746603899689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 * Nat.land 1 n + 2 : ℚ))

end

end A106466.P16814042746603899689

namespace A106466

/-- `round((n+1)/(2*and(1, n)+2))` -/
def P16814042746603899689.Spec : Prop :=
  ∀ n, P16814042746603899689.a n = A106466 n

end A106466

/-! ## A106466.P17933163171586258231

`floor((n+3)/(2*and(1, n)+2))`
-/

namespace A106466.P17933163171586258231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (2 * Nat.land 1 n + 2 : ℚ)⌋

end

end A106466.P17933163171586258231

namespace A106466

/-- `floor((n+3)/(2*and(1, n)+2))` -/
def P17933163171586258231.Spec : Prop :=
  ∀ n, P17933163171586258231.a n = A106466 n

end A106466

/-! ## A106466.P17906663174707504018

`floor(gcd(n+3, C(n+3, 2))/2)`
-/

namespace A106466.P17906663174707504018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 3) (Nat.choose (n + 3) 2) : ℚ) / 2⌋

end

end A106466.P17906663174707504018

namespace A106466

/-- `floor(gcd(n+3, C(n+3, 2))/2)` -/
def P17906663174707504018.Spec : Prop :=
  ∀ n, P17906663174707504018.a n = A106466 n

end A106466

/-! ## A106466.P516064241305969807

`ceil((n+1)/(xor(1, n+3)-n))`
-/

namespace A106466.P516064241305969807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((Nat.xor 1 (n + 3) : ℤ) - (n : ℤ) : ℚ)⌉

end

end A106466.P516064241305969807

namespace A106466

/-- `ceil((n+1)/(xor(1, n+3)-n))` -/
def P516064241305969807.Spec : Prop :=
  ∀ n, P516064241305969807.a n = A106466 n

end A106466

/-! ## A106466.P12965128397986707040

`round((n+1)/(xor(1, n+3)-n))`
-/

namespace A106466.P12965128397986707040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.xor 1 (n + 3) : ℤ) - (n : ℤ) : ℚ))

end

end A106466.P12965128397986707040

namespace A106466

/-- `round((n+1)/(xor(1, n+3)-n))` -/
def P12965128397986707040.Spec : Prop :=
  ∀ n, P12965128397986707040.a n = A106466 n

end A106466

/-! ## A106466.P6575802247454546750

`floor((n+3)/(xor(1, n+3)-n))`
-/

namespace A106466.P6575802247454546750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / ((Nat.xor 1 (n + 3) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A106466.P6575802247454546750

namespace A106466

/-- `floor((n+3)/(xor(1, n+3)-n))` -/
def P6575802247454546750.Spec : Prop :=
  ∀ n, P6575802247454546750.a n = A106466 n

end A106466

/-! ## A106466.P6392250459218471034

`round(gcd((n+1)², ∑[n+1])/2)`
-/

namespace A106466.P6392250459218471034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A106466.P6392250459218471034

namespace A106466

/-- `round(gcd((n+1)², ∑[n+1])/2)` -/
def P6392250459218471034.Spec : Prop :=
  ∀ n, P6392250459218471034.a n = A106466 n

end A106466

/-! ## A106466.P7741662189875215184

`(∑[n]-a(n-2))%(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A106466.P7741662189875215184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)) (n + 1 : ℤ)

end

end A106466.P7741662189875215184

namespace A106466

/-- `(∑[n]-a(n-2))%(n+1)` -/
def P7741662189875215184.Spec : Prop :=
  ∀ n, P7741662189875215184.a n = A106466 n

end A106466

/-! ## A106466.P3266355183543681336

`∑[a(n-4)+(-1)^n]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A106466.P3266355183543681336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, -1] fun n f1 =>
  f1 (n - 4) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106466.P3266355183543681336

namespace A106466

/-- `∑[a(n-4)+(-1)^n]` -/
def P3266355183543681336.Spec : Prop :=
  ∀ n, P3266355183543681336.a n = A106466 n

end A106466

/-!
# A106467: Inverse of number triangle A106465.

The programs for A106467, the canonical program `A106467.P10514879498467039191` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106467 has offset 0).

The definition of A106467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106467.P10514879498467039191

`A087960(A025581(n))*A106468(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106467

/-- `A087960(A025581(n))*A106468(n)` -/
def P10514879498467039191.Spec : Prop :=
  ∀ n, P10514879498467039191.a n = A106467 n

theorem P10514879498467039191.correct : P10514879498467039191.Spec := by
  intro n
  simp only [A106467]

end A106467

/-! ## A106467.P13740128596747069466

`A008836(A004736(n+1))*A106468(n)`
-/

namespace A106467.P13740128596747069466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A004736 (n + 1)).toNat * A106468 n

end

end A106467.P13740128596747069466

namespace A106467

/-- `A008836(A004736(n+1))*A106468(n)` -/
def P13740128596747069466.Spec : Prop :=
  ∀ n, P13740128596747069466.a n = A106467 n

end A106467

/-! ## A106467.P10214090560958260769

`A087960(A061885(n))*A106468(n)`
-/

namespace A106467.P10214090560958260769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A061885 n).toNat * A106468 n

end

end A106467.P10214090560958260769

namespace A106467

/-- `A087960(A061885(n))*A106468(n)` -/
def P10214090560958260769.Spec : Prop :=
  ∀ n, P10214090560958260769.a n = A106467 n

end A106467

/-! ## A106467.P6226319402326916862

`(-and(1, A048805(n)))^A049780(n)`
-/

namespace A106467.P6226319402326916862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.land 1 (A048805 n) : ℚ) ^ (A049780 n : ℤ)

end

end A106467.P6226319402326916862

namespace A106467

/-- `(-and(1, A048805(n)))^A049780(n)` -/
def P6226319402326916862.Spec : Prop :=
  ∀ n, P6226319402326916862.a n = (A106467 n : ℚ)

end A106467

/-! ## A106467.P9010658207514439773

`(-and(1, A048805(n)))^A245300(n)`
-/

namespace A106467.P9010658207514439773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.land 1 (A048805 n) : ℚ) ^ (A245300 n : ℤ)

end

end A106467.P9010658207514439773

namespace A106467

/-- `(-and(1, A048805(n)))^A245300(n)` -/
def P9010658207514439773.Spec : Prop :=
  ∀ n, P9010658207514439773.a n = (A106467 n : ℚ)

end A106467

/-! ## A106467.P9432739776126217469

`A166698(A000123(A004736(n+1))-A106468(n))`
-/

namespace A106467.P9432739776126217469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A000123 (A004736 (n + 1)).toNat - A106468 n).toNat

end

end A106467.P9432739776126217469

namespace A106467

/-- `A166698(A000123(A004736(n+1))-A106468(n))` -/
def P9432739776126217469.Spec : Prop :=
  ∀ n, P9432739776126217469.a n = A106467 n

end A106467

/-! ## A106467.P6890050199376431660

`A033999(A245300(n))*A106468(n)`
-/

namespace A106467.P6890050199376431660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A245300 n).toNat * A106468 n

end

end A106467.P6890050199376431660

namespace A106467

/-- `A033999(A245300(n))*A106468(n)` -/
def P6890050199376431660.Spec : Prop :=
  ∀ n, P6890050199376431660.a n = A106467 n

end A106467

/-! ## A106467.P513990450292156437

`A166698(or(A106468(n), A130321(n)))`
-/

namespace A106467.P513990450292156437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (Int.lor (A106468 n) (A130321 n)).toNat

end

end A106467.P513990450292156437

namespace A106467

/-- `A166698(or(A106468(n), A130321(n)))` -/
def P513990450292156437.Spec : Prop :=
  ∀ n, P513990450292156437.a n = A106467 n

end A106467

/-! ## A106467.P130334034395752762

`A008683(A130330(n))*A106468(n)`
-/

namespace A106467.P130334034395752762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130330 n).toNat * A106468 n

end

end A106467.P130334034395752762

namespace A106467

/-- `A008683(A130330(n))*A106468(n)` -/
def P130334034395752762.Spec : Prop :=
  ∀ n, P130334034395752762.a n = A106467 n

end A106467

/-! ## A106467.P1123903702953645258

`A008683(A130330(n)+1-A106468(n))`
-/

namespace A106467.P1123903702953645258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130330 n + (1 - A106468 n)).toNat

end

end A106467.P1123903702953645258

namespace A106467

/-- `A008683(A130330(n)+1-A106468(n))` -/
def P1123903702953645258.Spec : Prop :=
  ∀ n, P1123903702953645258.a n = A106467 n

end A106467

/-! ## A106467.P16055478646453135517

`A008683(1-(A106468(n)-A130330(n)))`
-/

namespace A106467.P16055478646453135517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - (A106468 n - A130330 n)).toNat

end

end A106467.P16055478646453135517

namespace A106467

/-- `A008683(1-(A106468(n)-A130330(n)))` -/
def P16055478646453135517.Spec : Prop :=
  ∀ n, P16055478646453135517.a n = A106467 n

end A106467

/-! ## A106467.P11108853147823138494

`A166698(2*A130321(n)-A106468(n))`
-/

namespace A106467.P11108853147823138494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (2 * A130321 n - A106468 n).toNat

end

end A106467.P11108853147823138494

namespace A106467

/-- `A166698(2*A130321(n)-A106468(n))` -/
def P11108853147823138494.Spec : Prop :=
  ∀ n, P11108853147823138494.a n = A106467 n

end A106467

/-! ## A106467.P7370420137403432207

`A008683(A000079(A004736(n+1))-A106468(n))`
-/

namespace A106467.P7370420137403432207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000079 (A004736 (n + 1)).toNat - A106468 n).toNat

end

end A106467.P7370420137403432207

namespace A106467

/-- `A008683(A000079(A004736(n+1))-A106468(n))` -/
def P7370420137403432207.Spec : Prop :=
  ∀ n, P7370420137403432207.a n = A106467 n

end A106467

/-! ## A106467.P10402970004652884441

`A166698(A000079(A004736(n+1))-A106468(n))`
-/

namespace A106467.P10402970004652884441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A000079 (A004736 (n + 1)).toNat - A106468 n).toNat

end

end A106467.P10402970004652884441

namespace A106467

/-- `A166698(A000079(A004736(n+1))-A106468(n))` -/
def P10402970004652884441.Spec : Prop :=
  ∀ n, P10402970004652884441.a n = A106467 n

end A106467

/-! ## A106467.P15610131256010828845

`A166698(A130321(n)+A130321(n)-A106468(n))`
-/

namespace A106467.P15610131256010828845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A130321 n + (A130321 n - A106468 n)).toNat

end

end A106467.P15610131256010828845

namespace A106467

/-- `A166698(A130321(n)+A130321(n)-A106468(n))` -/
def P15610131256010828845.Spec : Prop :=
  ∀ n, P15610131256010828845.a n = A106467 n

end A106467

/-! ## A106467.P4919092423746075921

`A106468(n)*A106478(n)`
-/

namespace A106467.P4919092423746075921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106468 n * A106478 n

end

end A106467.P4919092423746075921

namespace A106467

/-- `A106468(n)*A106478(n)` -/
def P4919092423746075921.Spec : Prop :=
  ∀ n, P4919092423746075921.a n = A106467 n

end A106467

/-! ## A106467.P6378773335482891397

`and(1, A048805(n))*A106478(n)`
-/

namespace A106467.P6378773335482891397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048805 n) * A106478 n

end

end A106467.P6378773335482891397

namespace A106467

/-- `and(1, A048805(n))*A106478(n)` -/
def P6378773335482891397.Spec : Prop :=
  ∀ n, P6378773335482891397.a n = A106467 n

end A106467

/-! ## A106467.P3350504419602301506

`and(1, A338291(n))*A106478(n)`
-/

namespace A106467.P3350504419602301506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338291 n) * A106478 n

end

end A106467.P3350504419602301506

namespace A106467

/-- `and(1, A338291(n))*A106478(n)` -/
def P3350504419602301506.Spec : Prop :=
  ∀ n, P3350504419602301506.a n = A106467 n

end A106467

/-! ## A106467.P9629763846453210814

`and(1, A338817(n))*A106478(n)`
-/

namespace A106467.P9629763846453210814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338817 n) * A106478 n

end

end A106467.P9629763846453210814

namespace A106467

/-- `and(1, A338817(n))*A106478(n)` -/
def P9629763846453210814.Spec : Prop :=
  ∀ n, P9629763846453210814.a n = A106467 n

end A106467

/-!
# A106468: Absolute value of inverse of number triangle A106465.

The programs for A106468, the canonical program `A106468.P2153356384866535621` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106468 has offset 0).

The definition of A106468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106468.P10479303155846222667

`abs(A106467(n))`
-/

namespace A106468.P10479303155846222667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106467 n|

end

end A106468.P10479303155846222667

namespace A106468

/-- `abs(A106467(n))` -/
def P10479303155846222667.Spec : Prop :=
  ∀ n, P10479303155846222667.a n = A106468 n

end A106468

/-! ## A106468.P14090316606532389785

`A106467(char[1]+n)²`
-/

namespace A106468.P14090316606532389785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106467 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A106468.P14090316606532389785

namespace A106468

/-- `A106467(char[1]+n)²` -/
def P14090316606532389785.Spec : Prop :=
  ∀ n, P14090316606532389785.a n = A106468 n

end A106468

/-! ## A106468.P16450629803473772111

`dr(A106467(n-char[1]))`
-/

namespace A106468.P16450629803473772111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A106467 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A106468.P16450629803473772111

namespace A106468

/-- `dr(A106467(n-char[1]))` -/
def P16450629803473772111.Spec : Prop :=
  ∀ n, (P16450629803473772111.a n : ℤ) = A106468 n

end A106468

/-! ## A106468.P12877176232411518031

`and(1, A106467(char[2]+n))`
-/

namespace A106468.P12877176232411518031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A106467 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A106468.P12877176232411518031

namespace A106468

/-- `and(1, A106467(char[2]+n))` -/
def P12877176232411518031.Spec : Prop :=
  ∀ n, P12877176232411518031.a n = A106468 n

end A106468

/-! ## A106468.P588063082107503572

`A106467(n)^A000118(n)`
-/

namespace A106468.P588063082107503572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106467 n : ℚ) ^ (A000118 n : ℤ)

end

end A106468.P588063082107503572

namespace A106468

/-- `A106467(n)^A000118(n)` -/
def P588063082107503572.Spec : Prop :=
  ∀ n, P588063082107503572.a n = (A106468 n : ℚ)

end A106468

/-! ## A106468.P9887567879799669934

`A106467(n)^A000123(n)`
-/

namespace A106468.P9887567879799669934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106467 n : ℚ) ^ (A000123 n : ℤ)

end

end A106468.P9887567879799669934

namespace A106468

/-- `A106467(n)^A000123(n)` -/
def P9887567879799669934.Spec : Prop :=
  ∀ n, P9887567879799669934.a n = (A106468 n : ℚ)

end A106468

/-! ## A106468.P15900725172178940826

`A106467(n)^A014486(n)`
-/

namespace A106468.P15900725172178940826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106467 n : ℚ) ^ (A014486 n : ℤ)

end

end A106468.P15900725172178940826

namespace A106468

/-- `A106467(n)^A014486(n)` -/
def P15900725172178940826.Spec : Prop :=
  ∀ n, P15900725172178940826.a n = (A106468 n : ℚ)

end A106468

/-! ## A106468.P5285901414194442955

`gcd(A000038(n), A106467(n))`
-/

namespace A106468.P5285901414194442955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106467 n)

end

end A106468.P5285901414194442955

namespace A106468

/-- `gcd(A000038(n), A106467(n))` -/
def P5285901414194442955.Spec : Prop :=
  ∀ n, (P5285901414194442955.a n : ℤ) = A106468 n

end A106468

/-! ## A106468.P2153356384866535621

`and(A082043(n), A122431(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106468

/-- `and(A082043(n), A122431(n))` -/
def P2153356384866535621.Spec : Prop :=
  ∀ n, P2153356384866535621.a n = A106468 n

theorem P2153356384866535621.correct : P2153356384866535621.Spec := by
  intro n
  simp only [A106468]

end A106468

/-! ## A106468.P2647968126195680829

`and(A106467(n), A119335(n))`
-/

namespace A106468.P2647968126195680829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A119335 n)

end

end A106468.P2647968126195680829

namespace A106468

/-- `and(A106467(n), A119335(n))` -/
def P2647968126195680829.Spec : Prop :=
  ∀ n, P2647968126195680829.a n = A106468 n

end A106468

/-! ## A106468.P11203513835970468672

`and(A106465(n), A122431(n))`
-/

namespace A106468.P11203513835970468672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106465 n) (A122431 n)

end

end A106468.P11203513835970468672

namespace A106468

/-- `and(A106465(n), A122431(n))` -/
def P11203513835970468672.Spec : Prop :=
  ∀ n, P11203513835970468672.a n = A106468 n

end A106468

/-! ## A106468.P12737091780551290058

`and(A106467(n), A139553(n))`
-/

namespace A106468.P12737091780551290058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A139553 n)

end

end A106468.P12737091780551290058

namespace A106468

/-- `and(A106467(n), A139553(n))` -/
def P12737091780551290058.Spec : Prop :=
  ∀ n, P12737091780551290058.a n = A106468 n

end A106468

/-! ## A106468.P15341664938438328508

`and(A106467(n), A158388(n))`
-/

namespace A106468.P15341664938438328508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A158388 n)

end

end A106468.P15341664938438328508

namespace A106468

/-- `and(A106467(n), A158388(n))` -/
def P15341664938438328508.Spec : Prop :=
  ∀ n, P15341664938438328508.a n = A106468 n

end A106468

/-! ## A106468.P14282624203931620490

`A106467(n)^A000010(n+2)`
-/

namespace A106468.P14282624203931620490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106467 n : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A106468.P14282624203931620490

namespace A106468

/-- `A106467(n)^A000010(n+2)` -/
def P14282624203931620490.Spec : Prop :=
  ∀ n, P14282624203931620490.a n = (A106468 n : ℚ)

end A106468

/-! ## A106468.P14783799712745083464

`and(1, A048805(n))`
-/

namespace A106468.P14783799712745083464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048805 n)

end

end A106468.P14783799712745083464

namespace A106468

/-- `and(1, A048805(n))` -/
def P14783799712745083464.Spec : Prop :=
  ∀ n, P14783799712745083464.a n = A106468 n

end A106468

/-! ## A106468.P17747476655266844912

`and(1, A338291(n))`
-/

namespace A106468.P17747476655266844912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338291 n)

end

end A106468.P17747476655266844912

namespace A106468

/-- `and(1, A338291(n))` -/
def P17747476655266844912.Spec : Prop :=
  ∀ n, P17747476655266844912.a n = A106468 n

end A106468

/-! ## A106468.P17332125451290676279

`and(1, A338817(n))`
-/

namespace A106468.P17332125451290676279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338817 n)

end

end A106468.P17332125451290676279

namespace A106468

/-- `and(1, A338817(n))` -/
def P17332125451290676279.Spec : Prop :=
  ∀ n, P17332125451290676279.a n = A106468 n

end A106468

/-! ## A106468.P3790924694986793356

`A106467(n)/A106478(n)`
-/

namespace A106468.P3790924694986793356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106467 n : ℚ) / (A106478 n : ℚ)

end

end A106468.P3790924694986793356

namespace A106468

/-- `A106467(n)/A106478(n)` -/
def P3790924694986793356.Spec : Prop :=
  ∀ n, P3790924694986793356.a n = (A106468 n : ℚ)

end A106468

/-! ## A106468.P10962558990646359710

`and(A106467(n), A139551(n))`
-/

namespace A106468.P10962558990646359710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A139551 n)

end

end A106468.P10962558990646359710

namespace A106468

/-- `and(A106467(n), A139551(n))` -/
def P10962558990646359710.Spec : Prop :=
  ∀ n, P10962558990646359710.a n = A106468 n

end A106468

/-!
# A106469: Expansion of (1 + x^2)*(1 + 2*x)/(1 - x^2).

The programs for A106469, the canonical program `A106469.P384822403575432573` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106469 has offset 0).

The definition of A106469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2+2x^3)/(1-x^2))` (program `A106469.P384822403575432573`, by `A106469.P384822403575432573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106469.P14123824553125041630

`a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A106469.P14123824553125041630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 2)

end

end A106469.P14123824553125041630

namespace A106469

/-- `a(n-2)` -/
def P14123824553125041630.Spec : Prop :=
  ∀ n, (P14123824553125041630.a n : ℤ) = A106469 n

end A106469

/-! ## A106469.P384822403575432573

`ogf((1+2x+x^2+2x^3)/(1-x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106469

/-- `ogf((1+2x+x^2+2x^3)/(1-x^2))` -/
def P384822403575432573.Spec : Prop :=
  ∀ n, P384822403575432573.a n = A106469 n

theorem P384822403575432573.correct : P384822403575432573.Spec := by
  intro n
  simp only [A106469]

end A106469

/-!
# A106470: Inverse of number triangle A106468.

The programs for A106470, there is no canonical definition to state claims against.
-/

/-! ## A106470.P4747284420887074148

`(-(((comp[∑[n]]+n)²%8)%3))^A049780(n)`
-/

namespace A106470.P4747284420887074148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) ^ 2 % 8 % 3 : ℕ) : ℤ) : ℚ) ^ (A049780 n : ℤ)

end

end A106470.P4747284420887074148

/-! ## A106470.P5085701294724137761

`A056594(lcm(C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A106470.P5085701294724137761
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
  A056594 (Int.lcm (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n : ℤ) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)))

end

end A106470.P5085701294724137761

/-! ## A106470.P1214894834878304864

`A117569(or(C(∑[char[∑[n]]], 2)+1+n, C(comp[∑[n]]-n, 2)-n))`
-/

namespace A106470.P1214894834878304864
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
  A117569 (Int.lor (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n : ℤ) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A106470.P1214894834878304864

/-! ## A106470.P18043086369839372461

`A075553(A054238(n)+1)`
-/

namespace A106470.P18043086369839372461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A054238 n + 1).toNat

end

end A106470.P18043086369839372461

/-! ## A106470.P17845030248782344121

`A075553(xor(3, A054238(n)))`
-/

namespace A106470.P17845030248782344121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (Int.xor 3 (A054238 n)).toNat

end

end A106470.P17845030248782344121

/-! ## A106470.P4488120144442737426

`(-(A036065(n)%2))^A049780(n)`
-/

namespace A106470.P4488120144442737426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A036065 n) 2 : ℚ) ^ (A049780 n : ℤ)

end

end A106470.P4488120144442737426

/-! ## A106470.P3491478407151642846

`(-(A048804(n)%2))^A049780(n)`
-/

namespace A106470.P3491478407151642846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A048804 n) 2 : ℚ) ^ (A049780 n : ℤ)

end

end A106470.P3491478407151642846

/-! ## A106470.P8796949992817861145

`(-(A077028(n)%2))^A049780(n)`
-/

namespace A106470.P8796949992817861145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A077028 n) 2 : ℚ) ^ (A049780 n : ℤ)

end

end A106470.P8796949992817861145

/-! ## A106470.P18160265356972598754

`(-(A088699(n)%2))^A049780(n)`
-/

namespace A106470.P18160265356972598754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A088699 n) 2 : ℚ) ^ (A049780 n : ℤ)

end

end A106470.P18160265356972598754

/-! ## A106470.P689762386294338144

`(-(A296180(n)%2))^A049780(n)`
-/

namespace A106470.P689762386294338144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A296180 n) 2 : ℚ) ^ (A049780 n : ℤ)

end

end A106470.P689762386294338144

/-!
# A106471: A number triangle with duplicated columns of the form 2^n - Sum_{j=0..2k-1} C(n,j).

The programs for A106471, there is no canonical definition to state claims against.
-/

/-! ## A106471.P13832662503492863489

`abs(A228565(n)+A055641(A022112(n)))`
-/

namespace A106471.P13832662503492863489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228565 n + A055641 (A022112 n).toNat|

end

end A106471.P13832662503492863489

/-! ## A106471.P451369100604931933

`A169589(n)+A106493(A140303(n))`
-/

namespace A106471.P451369100604931933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169589 n + A106493 (A140303 n).toNat

end

end A106471.P451369100604931933

/-! ## A106471.P35489587949328285

`gcd(∑[ceil(6^n/2)]^n, A261642(n+1))`
-/

namespace A106471.P35489587949328285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 ^ n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n) (A261642 (n + 1))

end

end A106471.P35489587949328285

/-! ## A106471.P10524055965721618580

`(2^(C(comp[∑[n]]-n, 2)-(n+1)))^A187783(n)!`
-/

namespace A106471.P10524055965721618580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ Nat.factorial (A187783 n).toNat

end

end A106471.P10524055965721618580

/-! ## A106471.P14577636854854696128

`(2^(C(comp[∑[n]]-n, 2)-(n+1)))^A331161(n)!`
-/

namespace A106471.P14577636854854696128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ Nat.factorial (A331161 n).toNat

end

end A106471.P14577636854854696128

/-!
# A106472: Expansion of g.f. (1 - x)^2*(1 + x) / (1 - 2*x)^2.

The programs for A106472, the canonical program `A106472.P13877967675338357069` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106472 has offset 0).

The definition of A106472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2+x^3)/(1-4x+4x^2))` (program `A106472.P13877967675338357069`, by `A106472.P13877967675338357069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106472.P13877967675338357069

`ogf((1-x-x^2+x^3)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106472

/-- `ogf((1-x-x^2+x^3)/(1-4x+4x^2))` -/
def P13877967675338357069.Spec : Prop :=
  ∀ n, P13877967675338357069.a n = A106472 n

theorem P13877967675338357069.correct : P13877967675338357069.Spec := by
  intro n
  simp only [A106472]

end A106472

/-! ## A106472.P7217827291440030097

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=17`
-/

namespace A106472.P7217827291440030097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 17] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A106472.P7217827291440030097

namespace A106472

/-- `4*a(n-1)-4*a(n-2)` -/
def P7217827291440030097.Spec : Prop :=
  ∀ n, P7217827291440030097.a n = A106472 n

end A106472

/-! ## A106472.P14322992119206611784

`a(n-1)+A122391(n)+a(n-1)` with `a(0)=1`
-/

namespace A106472.P14322992119206611784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A122391 n + a (n - 1))

end

end A106472.P14322992119206611784

namespace A106472

/-- `a(n-1)+A122391(n)+a(n-1)` -/
def P14322992119206611784.Spec : Prop :=
  ∀ n, P14322992119206611784.a n = A106472 n

end A106472

/-! ## A106472.P3136408447043322507

`A111297(n)+A057711(n)`
-/

namespace A106472.P3136408447043322507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n + A057711 n

end

end A106472.P3136408447043322507

namespace A106472

/-- `A111297(n)+A057711(n)` -/
def P3136408447043322507.Spec : Prop :=
  ∀ n, P3136408447043322507.a n = A106472 n

end A106472

/-! ## A106472.P17842117053832127236

`A129954(n)+A049610(n)`
-/

namespace A106472.P17842117053832127236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n + A049610 n

end

end A106472.P17842117053832127236

namespace A106472

/-- `A129954(n)+A049610(n)` -/
def P17842117053832127236.Spec : Prop :=
  ∀ n, P17842117053832127236.a n = A106472 n

end A106472

/-! ## A106472.P10014605098270232306

`A131577(n)+A098156(n)`
-/

namespace A106472.P10014605098270232306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A098156 n

end

end A106472.P10014605098270232306

namespace A106472

/-- `A131577(n)+A098156(n)` -/
def P10014605098270232306.Spec : Prop :=
  ∀ n, P10014605098270232306.a n = A106472 n

theorem P10014605098270232306.correct : P10014605098270232306.Spec := by
  intro n
  simp only [A106472, Nat.add_sub_cancel, A106472.P10014605098270232306.a, A106472.P13877967675338357069.a, A098156, A098156.P17131941534347252642.a, A131577, A131577.P3998309598604981540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106472

/-! ## A106472.P12472770997832987065

`A166444(n)+A084860(n)`
-/

namespace A106472.P12472770997832987065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A084860 n

end

end A106472.P12472770997832987065

namespace A106472

/-- `A166444(n)+A084860(n)` -/
def P12472770997832987065.Spec : Prop :=
  ∀ n, P12472770997832987065.a n = A106472 n

end A106472

/-! ## A106472.P9912934186949956584

`A109975(n)+A049610(n+1)`
-/

namespace A106472.P9912934186949956584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n + A049610 (n + 1)

end

end A106472.P9912934186949956584

namespace A106472

/-- `A109975(n)+A049610(n+1)` -/
def P9912934186949956584.Spec : Prop :=
  ∀ n, P9912934186949956584.a n = A106472 n

end A106472

/-! ## A106472.P13415368865853556182

`A000079(n)+A057711(n)+A049610(n)`
-/

namespace A106472.P13415368865853556182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A057711 n + A049610 n)

end

end A106472.P13415368865853556182

namespace A106472

/-- `A000079(n)+A057711(n)+A049610(n)` -/
def P13415368865853556182.Spec : Prop :=
  ∀ n, P13415368865853556182.a n = A106472 n

end A106472

/-! ## A106472.P16268111208357540019

`A045623(n)+A045891(n)-A034008(n)`
-/

namespace A106472.P16268111208357540019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A045891 n - A034008 n)

end

end A106472.P16268111208357540019

namespace A106472

/-- `A045623(n)+A045891(n)-A034008(n)` -/
def P16268111208357540019.Spec : Prop :=
  ∀ n, P16268111208357540019.a n = A106472 n

end A106472

/-! ## A106472.P11830856865364890705

`A109975(n)+∑[A109975(n)]-A000079(n)`
-/

namespace A106472.P11830856865364890705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n + (∑ j ∈ Finset.range (n + 1), f1 j - A000079 n)

end

end A106472.P11830856865364890705

namespace A106472

/-- `A109975(n)+∑[A109975(n)]-A000079(n)` -/
def P11830856865364890705.Spec : Prop :=
  ∀ n, P11830856865364890705.a n = A106472 n

end A106472

/-! ## A106472.P10750461839053916171

`record[A034007(n)]+A139756(n)+A131577(n)`
-/

namespace A106472.P10750461839053916171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A139756 n + A131577 n)

end

end A106472.P10750461839053916171

namespace A106472

/-- `record[A034007(n)]+A139756(n)+A131577(n)` -/
def P10750461839053916171.Spec : Prop :=
  ∀ n, P10750461839053916171.a n = A106472 n

end A106472

/-! ## A106472.P16358808573024351177

`A109975(n+1)+A057711(n)-A109975(n)`
-/

namespace A106472.P16358808573024351177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) + (A057711 n - A109975 n)

end

end A106472.P16358808573024351177

namespace A106472

/-- `A109975(n+1)+A057711(n)-A109975(n)` -/
def P16358808573024351177.Spec : Prop :=
  ∀ n, P16358808573024351177.a n = A106472 n

end A106472

/-! ## A106472.P18291852566345420272

`A034007(n+1)+A045623(n)-A034008(n+1)`
-/

namespace A106472.P18291852566345420272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + (A045623 n - A034008 (n + 1))

end

end A106472.P18291852566345420272

namespace A106472

/-- `A034007(n+1)+A045623(n)-A034008(n+1)` -/
def P18291852566345420272.Spec : Prop :=
  ∀ n, P18291852566345420272.a n = A106472 n

end A106472

/-! ## A106472.P9772504997942450309

`A001792(n)-A049610(n)`
-/

namespace A106472.P9772504997942450309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A049610 n

end

end A106472.P9772504997942450309

namespace A106472

/-- `A001792(n)-A049610(n)` -/
def P9772504997942450309.Spec : Prop :=
  ∀ n, P9772504997942450309.a n = A106472 n

end A106472

/-! ## A106472.P619580997540621497

`∑[A045623(n)]-A049610(n)`
-/

namespace A106472.P619580997540621497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049610 n

end

end A106472.P619580997540621497

namespace A106472

/-- `∑[A045623(n)]-A049610(n)` -/
def P619580997540621497.Spec : Prop :=
  ∀ n, P619580997540621497.a n = A106472 n

end A106472

/-! ## A106472.P3552547587898249108

`A045623(n+1)-A111297(n)`
-/

namespace A106472.P3552547587898249108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - A111297 n

end

end A106472.P3552547587898249108

namespace A106472

/-- `A045623(n+1)-A111297(n)` -/
def P3552547587898249108.Spec : Prop :=
  ∀ n, P3552547587898249108.a n = A106472 n

end A106472

/-! ## A106472.P6308064852135748908

`A335903(n+1)-A001792(n)`
-/

namespace A106472.P6308064852135748908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335903 (n + 1) - A001792 n

end

end A106472.P6308064852135748908

namespace A106472

/-- `A335903(n+1)-A001792(n)` -/
def P6308064852135748908.Spec : Prop :=
  ∀ n, P6308064852135748908.a n = A106472 n

end A106472

/-! ## A106472.P14529035490804385437

`A049610(n+2)-A049610(n)`
-/

namespace A106472.P14529035490804385437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - A049610 n

end

end A106472.P14529035490804385437

namespace A106472

/-- `A049610(n+2)-A049610(n)` -/
def P14529035490804385437.Spec : Prop :=
  ∀ n, P14529035490804385437.a n = A106472 n

end A106472

/-! ## A106472.P10232040190343566732

`2*A045623(n)-A045891(n)`
-/

namespace A106472.P10232040190343566732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045623 n - A045891 n

end

end A106472.P10232040190343566732

namespace A106472

/-- `2*A045623(n)-A045891(n)` -/
def P10232040190343566732.Spec : Prop :=
  ∀ n, P10232040190343566732.a n = A106472 n

end A106472

/-!
# A106473: Rows of A003989 expressed as base 10 numbers.

The programs for A106473, there is no canonical definition to state claims against.
-/

/-! ## A106473.P17520487295801345937

`A285540(n)^A000045(A115716(n))`
-/

namespace A106473.P17520487295801345937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285540 n : ℚ) ^ (A000045 (A115716 n).toNat : ℤ)

end

end A106473.P17520487295801345937

/-! ## A106473.P2580071162056413006

`A285560(n)^A076259(A114239(n))`
-/

namespace A106473.P2580071162056413006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285560 n : ℚ) ^ (A076259 (A114239 n).toNat : ℤ)

end

end A106473.P2580071162056413006

/-!
# A106474: a(n) = A006579(4n+4)/4.

The programs for A106474, the canonical program `A106474.P7463800032369804084` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106474 has offset 0).

The definition of A106474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106474.P7463800032369804084

`A006579(4*n+4)/4`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106474

/-- `A006579(4*n+4)/4` -/
def P7463800032369804084.Spec : Prop :=
  ∀ n, P7463800032369804084.a n = (A106474 n : ℚ)

end A106474

/-! ## A106474.P15548475891213409030

`A368736(n+1)+A006579(n+1)`
-/

namespace A106474.P15548475891213409030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368736 (n + 1) + A006579 (n + 1)

end

end A106474.P15548475891213409030

namespace A106474

/-- `A368736(n+1)+A006579(n+1)` -/
def P15548475891213409030.Spec : Prop :=
  ∀ n, P15548475891213409030.a n = A106474 n

end A106474

/-! ## A106474.P13875279856380846568

`A106475(n)+3*A006579(n+1)`
-/

namespace A106474.P13875279856380846568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106475 n + 3 * A006579 (n + 1)

end

end A106474.P13875279856380846568

namespace A106474

/-- `A106475(n)+3*A006579(n+1)` -/
def P13875279856380846568.Spec : Prop :=
  ∀ n, P13875279856380846568.a n = A106474 n

end A106474

/-! ## A106474.P14983364325426150663

`2*A234307(n+1)-A018804(n+1)`
-/

namespace A106474.P14983364325426150663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234307 (n + 1) - A018804 (n + 1)

end

end A106474.P14983364325426150663

namespace A106474

/-- `2*A234307(n+1)-A018804(n+1)` -/
def P14983364325426150663.Spec : Prop :=
  ∀ n, P14983364325426150663.a n = A106474 n

end A106474

/-! ## A106474.P10241818025676190496

`∑{d}[n+1, A062570(#)*A065262((n+1)/#)]`
-/

namespace A106474.P10241818025676190496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A065262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106474.P10241818025676190496

namespace A106474

/-- `∑{d}[n+1, A062570(#)*A065262((n+1)/#)]` -/
def P10241818025676190496.Spec : Prop :=
  ∀ n, P10241818025676190496.a n = A106474 n

end A106474

/-! ## A106474.P12879847727089554360

`A018804(n+1)+A344598(n+1)-A344372(n+1)`
-/

namespace A106474.P12879847727089554360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A344598 (n + 1) - A344372 (n + 1))

end

end A106474.P12879847727089554360

namespace A106474

/-- `A018804(n+1)+A344598(n+1)-A344372(n+1)` -/
def P12879847727089554360.Spec : Prop :=
  ∀ n, P12879847727089554360.a n = A106474 n

end A106474

/-! ## A106474.P7634029525488220341

`A006579(2*(n+1))-A006579(n+1)`
-/

namespace A106474.P7634029525488220341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (2 * (n + 1)) - A006579 (n + 1)

end

end A106474.P7634029525488220341

namespace A106474

/-- `A006579(2*(n+1))-A006579(n+1)` -/
def P7634029525488220341.Spec : Prop :=
  ∀ n, P7634029525488220341.a n = A106474 n

end A106474

/-! ## A106474.P6523042551943268444

`A018804(2*(n+1))-A209295(n+1)`
-/

namespace A106474.P6523042551943268444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (2 * (n + 1)) - A209295 (n + 1)

end

end A106474.P6523042551943268444

namespace A106474

/-- `A018804(2*(n+1))-A209295(n+1)` -/
def P6523042551943268444.Spec : Prop :=
  ∀ n, P6523042551943268444.a n = A106474 n

end A106474

/-! ## A106474.P6007956337313410356

`A057979(A234307(2*(n+1))-n)`
-/

namespace A106474.P6007956337313410356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A234307 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A106474.P6007956337313410356

namespace A106474

/-- `A057979(A234307(2*(n+1))-n)` -/
def P6007956337313410356.Spec : Prop :=
  ∀ n, P6007956337313410356.a n = A106474 n

end A106474

/-! ## A106474.P11659758221872178956

`A059169(A006579(4*(n+1))+1)`
-/

namespace A106474.P11659758221872178956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A006579 (4 * (n + 1)) + 1).toNat

end

end A106474.P11659758221872178956

namespace A106474

/-- `A059169(A006579(4*(n+1))+1)` -/
def P11659758221872178956.Spec : Prop :=
  ∀ n, P11659758221872178956.a n = A106474 n

end A106474

/-!
# A106475: An alternating sum of greatest common divisors.

The programs for A106475, the canonical program `A106475.P1754682136822621499` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106475 has offset 0).

The definition of A106475 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106475.P1754682136822621499

`2*(n+1)-A344372(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106475

/-- `2*(n+1)-A344372(n+1)` -/
def P1754682136822621499.Spec : Prop :=
  ∀ n, P1754682136822621499.a n = A106475 n

theorem P1754682136822621499.correct : P1754682136822621499.Spec := by
  intro n
  simp only [A106475]

end A106475

/-! ## A106475.P13154731569104558577

`2*(n+1)+A199084(2*(n+1))`
-/

namespace A106475.P13154731569104558577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A199084 (2 * (n + 1))

end

end A106475.P13154731569104558577

namespace A106475

/-- `2*(n+1)+A199084(2*(n+1))` -/
def P13154731569104558577.Spec : Prop :=
  ∀ n, P13154731569104558577.a n = A106475 n

end A106475

/-! ## A106475.P5034106991624134622

`2*(n+1)-A344371(2*(n+1))`
-/

namespace A106475.P5034106991624134622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A344371 (2 * (n + 1))

end

end A106475.P5034106991624134622

namespace A106475

/-- `2*(n+1)-A344371(2*(n+1))` -/
def P5034106991624134622.Spec : Prop :=
  ∀ n, P5034106991624134622.a n = A106475 n

end A106475

/-! ## A106475.P6768643900908887260

`-A344373(2*(n+1))`
-/

namespace A106475.P6768643900908887260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344373 (2 * (n + 1))

end

end A106475.P6768643900908887260

namespace A106475

/-- `-A344373(2*(n+1))` -/
def P6768643900908887260.Spec : Prop :=
  ∀ n, P6768643900908887260.a n = A106475 n

end A106475

/-! ## A106475.P9860064813801219440

`A005408(n)+1-A344372(n+1)`
-/

namespace A106475.P9860064813801219440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A344372 (n + 1))

end

end A106475.P9860064813801219440

namespace A106475

/-- `A005408(n)+1-A344372(n+1)` -/
def P9860064813801219440.Spec : Prop :=
  ∀ n, P9860064813801219440.a n = A106475 n

theorem P9860064813801219440.correct : P9860064813801219440.Spec := by
  intro n
  simp only [A106475, Nat.add_sub_cancel, A106475.P9860064813801219440.a, A106475.P1754682136822621499.a, A005408, A005408.P17437947328870227736.a, A344372, A344372.P8730494171943305758.a, A332794, A332794.P344464151084610744.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A255655, A255655.P17610219700829856514.f1, A255655.P17610219700829856514.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A109386, A109386.P5253081201004666906.f1, A109386.P5253081201004666906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106475

/-! ## A106475.P3986893021925107180

`A368736(n+1)-2*A006579(n+1)`
-/

namespace A106475.P3986893021925107180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368736 (n + 1) - 2 * A006579 (n + 1)

end

end A106475.P3986893021925107180

namespace A106475

/-- `A368736(n+1)-2*A006579(n+1)` -/
def P3986893021925107180.Spec : Prop :=
  ∀ n, P3986893021925107180.a n = A106475 n

end A106475

/-! ## A106475.P3260848205115971012

`A344373(2*n+1)-A344373(2*(n+1))`
-/

namespace A106475.P3260848205115971012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344373 (2 * n + 1) - A344373 (2 * (n + 1))

end

end A106475.P3260848205115971012

namespace A106475

/-- `A344373(2*n+1)-A344373(2*(n+1))` -/
def P3260848205115971012.Spec : Prop :=
  ∀ n, P3260848205115971012.a n = A106475 n

end A106475

/-! ## A106475.P2542372452280310890

`∑{d}[n+1, A062570(#)*A114285((n+1)/#-1)]`
-/

namespace A106475.P2542372452280310890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A114285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A106475.P2542372452280310890

namespace A106475

/-- `∑{d}[n+1, A062570(#)*A114285((n+1)/#-1)]` -/
def P2542372452280310890.Spec : Prop :=
  ∀ n, P2542372452280310890.a n = A106475 n

end A106475

/-! ## A106475.P7767817706157187314

`n+1-A378298(2*(n+1))`
-/

namespace A106475.P7767817706157187314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378298 (2 * (n + 1))

end

end A106475.P7767817706157187314

namespace A106475

/-- `n+1-A378298(2*(n+1))` -/
def P7767817706157187314.Spec : Prop :=
  ∀ n, P7767817706157187314.a n = A106475 n

end A106475

/-! ## A106475.P11797899738602219998

`A004277(n+1)-A062803(2*(n+1))/2`
-/

namespace A106475.P11797899738602219998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) - (A062803 (2 * (n + 1)) : ℚ) / 2

end

end A106475.P11797899738602219998

namespace A106475

/-- `A004277(n+1)-A062803(2*(n+1))/2` -/
def P11797899738602219998.Spec : Prop :=
  ∀ n, P11797899738602219998.a n = (A106475 n : ℚ)

end A106475

/-! ## A106475.P11586426218104706920

`A004277(n+1)-(A007814(n+1)+1)*A255655(2*(n+1))`
-/

namespace A106475.P11586426218104706920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - (A007814 (n + 1) + 1) * A255655 (2 * (n + 1))

end

end A106475.P11586426218104706920

namespace A106475

/-- `A004277(n+1)-(A007814(n+1)+1)*A255655(2*(n+1))` -/
def P11586426218104706920.Spec : Prop :=
  ∀ n, P11586426218104706920.a n = A106475 n

end A106475

/-!
# A106476: Sequence array of Euler phi function.

The programs for A106476, the canonical program `A106476.P5315817967873188888` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106476 has offset 0).

The definition of A106476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106476.P11632213877814121615

`A000010(row(n)+1-col(n))`
-/

namespace A106476.P11632213877814121615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A106476.P11632213877814121615

namespace A106476

/-- `A000010(row(n)+1-col(n))` -/
def P11632213877814121615.Spec : Prop :=
  ∀ n, P11632213877814121615.a n = A106476 n

end A106476

/-! ## A106476.P4139243456772197705

`A000010(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A106476.P4139243456772197705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A106476.P4139243456772197705

namespace A106476

/-- `A000010(C(comp[∑[n]]-n, 2)-n)` -/
def P4139243456772197705.Spec : Prop :=
  ∀ n, P4139243456772197705.a n = A106476 n

end A106476

/-! ## A106476.P12766518519869799882

`A109606(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A106476.P12766518519869799882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A106476.P12766518519869799882

namespace A106476

/-- `A109606(C(comp[∑[n]]-n, 2)-n)+1` -/
def P12766518519869799882.Spec : Prop :=
  ∀ n, P12766518519869799882.a n = A106476 n

end A106476

/-! ## A106476.P11193717399450227178

`A039649(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A106476.P11193717399450227178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A106476.P11193717399450227178

namespace A106476

/-- `A039649(C(comp[∑[n]]-n, 2)-n)-1` -/
def P11193717399450227178.Spec : Prop :=
  ∀ n, P11193717399450227178.a n = A106476 n

end A106476

/-! ## A106476.P18217171376990631929

`A000010(∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A106476.P18217171376990631929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A106476.P18217171376990631929

namespace A106476

/-- `A000010(∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2)))` -/
def P18217171376990631929.Spec : Prop :=
  ∀ n, P18217171376990631929.a n = A106476 n

end A106476

/-! ## A106476.P6819427125895947041

`A000010((2*(∑[n]+1))%(comp[∑[n]]+1)/2)`
-/

namespace A106476.P6819427125895947041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) : ℕ) : ℚ) / 2)).toNat

end

end A106476.P6819427125895947041

namespace A106476

/-- `A000010((2*(∑[n]+1))%(comp[∑[n]]+1)/2)` -/
def P6819427125895947041.Spec : Prop :=
  ∀ n, P6819427125895947041.a n = A106476 n

end A106476

/-! ## A106476.P11737225203992232886

`A000010(eq[0, floor(sqrt(4*n+1))%2]-2*n)`
-/

namespace A106476.P11737225203992232886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 2 * n)

end

end A106476.P11737225203992232886

namespace A106476

/-- `A000010(eq[0, floor(sqrt(4*n+1))%2]-2*n)` -/
def P11737225203992232886.Spec : Prop :=
  ∀ n, P11737225203992232886.a n = A106476 n

end A106476

/-! ## A106476.P830825198396756997

`A002618(row(n)-col(n)+1)/(row(n)-col(n)+1)`
-/

namespace A106476.P830825198396756997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)

end

end A106476.P830825198396756997

namespace A106476

/-- `A002618(row(n)-col(n)+1)/(row(n)-col(n)+1)` -/
def P830825198396756997.Spec : Prop :=
  ∀ n, P830825198396756997.a n = (A106476 n : ℚ)

end A106476

/-! ## A106476.P12866363380628019871

`A000010((n-comp[∑[n]])²-eq[1, floor(2*sqrt(n))%2])`
-/

namespace A106476.P12866363380628019871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ)).toNat

end

end A106476.P12866363380628019871

namespace A106476

/-- `A000010((n-comp[∑[n]])²-eq[1, floor(2*sqrt(n))%2])` -/
def P12866363380628019871.Spec : Prop :=
  ∀ n, P12866363380628019871.a n = A106476 n

end A106476

/-! ## A106476.P16776370803268462951

`A067541(A099375(n))`
-/

namespace A106476.P16776370803268462951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A099375 n).toNat

end

end A106476.P16776370803268462951

namespace A106476

/-- `A067541(A099375(n))` -/
def P16776370803268462951.Spec : Prop :=
  ∀ n, P16776370803268462951.a n = A106476 n

end A106476

/-! ## A106476.P2087336599854409983

`A309563(A104571(n))`
-/

namespace A106476.P2087336599854409983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309563 (A104571 n).toNat

end

end A106476.P2087336599854409983

namespace A106476

/-- `A309563(A104571(n))` -/
def P2087336599854409983.Spec : Prop :=
  ∀ n, P2087336599854409983.a n = A106476 n

end A106476

/-! ## A106476.P964808974570669212

`A000010(A004736(n+1))`
-/

namespace A106476.P964808974570669212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004736 (n + 1)).toNat

end

end A106476.P964808974570669212

namespace A106476

/-- `A000010(A004736(n+1))` -/
def P964808974570669212.Spec : Prop :=
  ∀ n, P964808974570669212.a n = A106476 n

end A106476

/-! ## A106476.P15563871595551338027

`A000010(A025581(n)+1)`
-/

namespace A106476.P15563871595551338027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A025581 n + 1).toNat

end

end A106476.P15563871595551338027

namespace A106476

/-- `A000010(A025581(n)+1)` -/
def P15563871595551338027.Spec : Prop :=
  ∀ n, P15563871595551338027.a n = A106476 n

end A106476

/-! ## A106476.P5536323873393196333

`A002260(A286234(n+1))`
-/

namespace A106476.P5536323873393196333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286234 (n + 1)).toNat

end

end A106476.P5536323873393196333

namespace A106476

/-- `A002260(A286234(n+1))` -/
def P5536323873393196333.Spec : Prop :=
  ∀ n, P5536323873393196333.a n = A106476 n

end A106476

/-! ## A106476.P5315817967873188888

`A089929(A212012(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106476

/-- `A089929(A212012(n+1))` -/
def P5315817967873188888.Spec : Prop :=
  ∀ n, P5315817967873188888.a n = A106476 n

theorem P5315817967873188888.correct : P5315817967873188888.Spec := by
  intro n
  simp only [A106476]

end A106476

/-! ## A106476.P8805376604080531556

`A000010(A127739(n+1)-n)`
-/

namespace A106476.P8805376604080531556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A106476.P8805376604080531556

namespace A106476

/-- `A000010(A127739(n+1)-n)` -/
def P8805376604080531556.Spec : Prop :=
  ∀ n, P8805376604080531556.a n = A106476 n

end A106476

/-! ## A106476.P15349637669844725036

`A372606(n+1)/A372619(n+1)`
-/

namespace A106476.P15349637669844725036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372606 (n + 1) : ℚ) / (A372619 (n + 1) : ℚ)

end

end A106476.P15349637669844725036

namespace A106476

/-- `A372606(n+1)/A372619(n+1)` -/
def P15349637669844725036.Spec : Prop :=
  ∀ n, P15349637669844725036.a n = (A106476 n : ℚ)

end A106476

/-! ## A106476.P14001685931673295582

`A000010(∑[A010054(n)]-A002262(n))`
-/

namespace A106476.P14001685931673295582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j - A002262 n).toNat

end

end A106476.P14001685931673295582

namespace A106476

/-- `A000010(∑[A010054(n)]-A002262(n))` -/
def P14001685931673295582.Spec : Prop :=
  ∀ n, P14001685931673295582.a n = A106476 n

end A106476

/-! ## A106476.P676713965805294310

`A000010(A000217(A002024(n+1))-n)`
-/

namespace A106476.P676713965805294310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000217 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A106476.P676713965805294310

namespace A106476

/-- `A000010(A000217(A002024(n+1))-n)` -/
def P676713965805294310.Spec : Prop :=
  ∀ n, P676713965805294310.a n = A106476 n

end A106476

/-! ## A106476.P7782502849257867201

`A000010(A002024(n+1)-A002262(n))`
-/

namespace A106476.P7782502849257867201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1) - A002262 n).toNat

end

end A106476.P7782502849257867201

namespace A106476

/-- `A000010(A002024(n+1)-A002262(n))` -/
def P7782502849257867201.Spec : Prop :=
  ∀ n, P7782502849257867201.a n = A106476 n

end A106476

/-!
# A106477: Diagonal sums of Euler phi function sequence array.

The programs for A106477, the canonical program `A106477.P792080474902771144` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106477 has offset 0).

The definition of A106477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106477.P11065346038593082209

`a(n-2)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` with `a(0)=1, a(1)=1`
-/

namespace A106477.P11065346038593082209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A106477.P11065346038593082209

namespace A106477

/-- `a(n-2)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P11065346038593082209.Spec : Prop :=
  ∀ n, P11065346038593082209.a n = (A106477 n : ℚ)

end A106477

/-! ## A106477.P16232237317401911113

`or(1, ∑[A083239(n+1)])`
-/

namespace A106477.P16232237317401911113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106477.P16232237317401911113

namespace A106477

/-- `or(1, ∑[A083239(n+1)])` -/
def P16232237317401911113.Spec : Prop :=
  ∀ n, P16232237317401911113.a n = A106477 n

end A106477

/-! ## A106477.P3805634462670201265

`Δ[A103116(n)]-a(n-1)` with `a(0)=1`
-/

namespace A106477.P3805634462670201265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A106477.P3805634462670201265

namespace A106477

/-- `Δ[A103116(n)]-a(n-1)` -/
def P3805634462670201265.Spec : Prop :=
  ∀ n, P3805634462670201265.a n = A106477 n

end A106477

/-! ## A106477.P6767481193216109901

`A002088(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A106477.P6767481193216109901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002088 (n + 1) - a (n - 1)

end

end A106477.P6767481193216109901

namespace A106477

/-- `A002088(n+1)-a(n-1)` -/
def P6767481193216109901.Spec : Prop :=
  ∀ n, P6767481193216109901.a n = A106477 n

end A106477

/-! ## A106477.P792080474902771144

`A092249(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106477

/-- `A092249(n+1)-a(n-1)` -/
def P792080474902771144.Spec : Prop :=
  ∀ n, P792080474902771144.a n = A106477 n

theorem P792080474902771144.correct : P792080474902771144.Spec := by
  intro n
  simp only [A106477]

end A106477

/-! ## A106477.P3204116798862511599

`Δ[A005728(n)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106477.P3204116798862511599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A106477.P3204116798862511599

namespace A106477

/-- `Δ[A005728(n)]+a(n-2)` -/
def P3204116798862511599.Spec : Prop :=
  ∀ n, P3204116798862511599.a n = A106477 n

end A106477

/-! ## A106477.P905839500858248497

`A000010(n+1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106477.P905839500858248497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000010 (n + 1) + a (n - 2)

end

end A106477.P905839500858248497

namespace A106477

/-- `A000010(n+1)+a(n-2)` -/
def P905839500858248497.Spec : Prop :=
  ∀ n, P905839500858248497.a n = A106477 n

end A106477

/-! ## A106477.P16080310990184930475

`A002088(n+1)-A106481(n)`
-/

namespace A106477.P16080310990184930475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A106481 n

end

end A106477.P16080310990184930475

namespace A106477

/-- `A002088(n+1)-A106481(n)` -/
def P16080310990184930475.Spec : Prop :=
  ∀ n, P16080310990184930475.a n = A106477 n

end A106477

/-! ## A106477.P16966084157736898405

`A092249(n+1)-A106481(n)`
-/

namespace A106477.P16966084157736898405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - A106481 n

end

end A106477.P16966084157736898405

namespace A106477

/-- `A092249(n+1)-A106481(n)` -/
def P16966084157736898405.Spec : Prop :=
  ∀ n, P16966084157736898405.a n = A106477 n

theorem P16966084157736898405.correct : P16966084157736898405.Spec := by
  intro n
  simp only [A106477, Nat.add_sub_cancel, A106477.P16966084157736898405.a, A106477.P792080474902771144.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A106481, A106481.P12208794138596707601.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106477

/-! ## A106477.P7845457560067810433

`A106481(n+1)`
-/

namespace A106477.P7845457560067810433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (n + 1)

end

end A106477.P7845457560067810433

namespace A106477

/-- `A106481(n+1)` -/
def P7845457560067810433.Spec : Prop :=
  ∀ n, P7845457560067810433.a n = A106477 n

end A106477

/-! ## A106477.P2036334971686777937

`A225373(n+1)-1`
-/

namespace A106477.P2036334971686777937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225373 (n + 1) - 1

end

end A106477.P2036334971686777937

namespace A106477

/-- `A225373(n+1)-1` -/
def P2036334971686777937.Spec : Prop :=
  ∀ n, P2036334971686777937.a n = A106477 n

end A106477

/-! ## A106477.P6394652022913966668

`Δ[A005598(n)]-a(n-1)` with `a(0)=1`
-/

namespace A106477.P6394652022913966668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A106477.P6394652022913966668

namespace A106477

/-- `Δ[A005598(n)]-a(n-1)` -/
def P6394652022913966668.Spec : Prop :=
  ∀ n, P6394652022913966668.a n = A106477 n

end A106477

/-! ## A106477.P2916049081196410102

`filter[A106481(n), A098725(#)]`
-/

namespace A106477.P2916049081196410102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A106477.P2916049081196410102

namespace A106477

/-- `filter[A106481(n), A098725(#)]` -/
def P2916049081196410102.Spec : Prop :=
  ∀ n, P2916049081196410102.a n = A106477 n

end A106477

/-! ## A106477.P15642270718949347998

`filter[A106481(n), A115971(#)]`
-/

namespace A106477.P15642270718949347998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A106477.P15642270718949347998

namespace A106477

/-- `filter[A106481(n), A115971(#)]` -/
def P15642270718949347998.Spec : Prop :=
  ∀ n, P15642270718949347998.a n = A106477 n

end A106477

/-! ## A106477.P17213527414135003056

`filter[A106481(n), A166486(#)]`
-/

namespace A106477.P17213527414135003056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A106477.P17213527414135003056

namespace A106477

/-- `filter[A106481(n), A166486(#)]` -/
def P17213527414135003056.Spec : Prop :=
  ∀ n, P17213527414135003056.a n = A106477 n

end A106477

/-! ## A106477.P9042232590085731847

`filter[A106481(n), A168185(#)]`
-/

namespace A106477.P9042232590085731847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A106477.P9042232590085731847

namespace A106477

/-- `filter[A106481(n), A168185(#)]` -/
def P9042232590085731847.Spec : Prop :=
  ∀ n, P9042232590085731847.a n = A106477 n

end A106477

/-! ## A106477.P6138503665539989999

`filter[A106481(n), A097325(#)]`
-/

namespace A106477.P6138503665539989999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A106477.P6138503665539989999

namespace A106477

/-- `filter[A106481(n), A097325(#)]` -/
def P6138503665539989999.Spec : Prop :=
  ∀ n, P6138503665539989999.a n = A106477 n

end A106477

/-! ## A106477.P4849972493194309246

`filter[A106481(n), A316829(#)]`
-/

namespace A106477.P4849972493194309246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A106477.P4849972493194309246

namespace A106477

/-- `filter[A106481(n), A316829(#)]` -/
def P4849972493194309246.Spec : Prop :=
  ∀ n, P4849972493194309246.a n = A106477 n

end A106477

/-! ## A106477.P14840111725073104670

`filter[A106481(n), A168181(#)]`
-/

namespace A106477.P14840111725073104670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A106477.P14840111725073104670

namespace A106477

/-- `filter[A106481(n), A168181(#)]` -/
def P14840111725073104670.Spec : Prop :=
  ∀ n, P14840111725073104670.a n = A106477 n

end A106477

/-! ## A106477.P10391414324893279753

`A014681(A225373(n+1))`
-/

namespace A106477.P10391414324893279753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A225373 (n + 1)).toNat

end

end A106477.P10391414324893279753

namespace A106477

/-- `A014681(A225373(n+1))` -/
def P10391414324893279753.Spec : Prop :=
  ∀ n, P10391414324893279753.a n = A106477 n

end A106477

/-!
# A106478: Inverse of sequence array for Euler phi function.

The programs for A106478, there is no canonical definition to state claims against.
-/

/-! ## A106478.P16627749634766995827

`A106479(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A106478.P16627749634766995827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A106478.P16627749634766995827

/-! ## A106478.P17848511459368502436

`A106479(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A106478.P17848511459368502436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A106478.P17848511459368502436

/-! ## A106478.P11442456557933612999

`A106479(A025581(n))`
-/

namespace A106478.P11442456557933612999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (A025581 n).toNat

end

end A106478.P11442456557933612999

/-! ## A106478.P12875883080113066569

`A106479(log2(A130321(n)))`
-/

namespace A106478.P12875883080113066569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A106478.P12875883080113066569

/-! ## A106478.P12315285071080770360

`A106479(A025669(n+1))`
-/

namespace A106478.P12315285071080770360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (A025669 (n + 1)).toNat

end

end A106478.P12315285071080770360

/-! ## A106478.P13847054555792846466

`A106479(val(A036561(n), 2))`
-/

namespace A106478.P13847054555792846466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A106478.P13847054555792846466

/-! ## A106478.P14264404655784192739

`A106479(val(A130321(n), 2))`
-/

namespace A106478.P14264404655784192739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A106478.P14264404655784192739

/-! ## A106478.P17006086780457073245

`A106479(A004736(n+1)-1)`
-/

namespace A106478.P17006086780457073245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (A004736 (n + 1) - 1).toNat

end

end A106478.P17006086780457073245

/-!
# A106479: First column in inverse of Euler phi sequence matrix.

The programs for A106479, there is no canonical definition to state claims against.
-/

/-! ## A106479.P14953892795266944846

`Δ[A106480(abs(1-n))]`
-/

namespace A106479.P14953892795266944846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106480 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106479.P14953892795266944846

/-! ## A106479.P1001231281516211556

`A106478(∑[n])`
-/

namespace A106479.P1001231281516211556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106479.P1001231281516211556

/-! ## A106479.P16681000914762349417

`or(1, A106478(A000217(n)))`
-/

namespace A106479.P16681000914762349417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106478 (A000217 n).toNat)

end

end A106479.P16681000914762349417

/-! ## A106479.P12538158490770546241

`A106478(A000217(n))+A025443(n)`
-/

namespace A106479.P12538158490770546241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106478 (A000217 n).toNat + A025443 n

end

end A106479.P12538158490770546241

/-! ## A106479.P6249807258111940130

`A106478(A000217(n))%A013730(n)`
-/

namespace A106479.P6249807258111940130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106478 (A000217 n).toNat) (A013730 n)

end

end A106479.P6249807258111940130

/-!
# A106480: Row sums of inverse of sequence array for Euler phi function.

The programs for A106480, there is no canonical definition to state claims against.
-/

/-! ## A106480.P7457070442352162079

`∑[A106479(n)]`
-/

namespace A106480.P7457070442352162079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106480.P7457070442352162079

/-! ## A106480.P12144228632489851701

`A106479(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A106480.P12144228632489851701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106479 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A106480.P12144228632489851701

/-! ## A106480.P5005289131450123016

`∑[A106478(∑[n])]`
-/

namespace A106480.P5005289131450123016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106478 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106480.P5005289131450123016

/-!
# A106481: An Euler phi transform of 1/(1 - x^2).

The programs for A106481, the canonical program `A106481.P12208794138596707601` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106481 has offset 0).

The definition of A106481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106481.P9157029748830057933

`A225373(n)-1`
-/

namespace A106481.P9157029748830057933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225373 n - 1

end

end A106481.P9157029748830057933

namespace A106481

/-- `A225373(n)-1` -/
def P9157029748830057933.Spec : Prop :=
  ∀ n, P9157029748830057933.a n = A106481 n

theorem P9157029748830057933.correct : P9157029748830057933.Spec := by
  intro n
  simp only [A106481, Nat.add_sub_cancel, A106481.P9157029748830057933.a, A106481.P12208794138596707601.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A106477, A106477.P792080474902771144.a, A225373, A225373.P1027320793838939059.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106481

/-! ## A106481.P9457284477840323621

`A002088(n)-a(n-1)` with `a(0)=0`
-/

namespace A106481.P9457284477840323621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002088 n - a (n - 1)

end

end A106481.P9457284477840323621

namespace A106481

/-- `A002088(n)-a(n-1)` -/
def P9457284477840323621.Spec : Prop :=
  ∀ n, P9457284477840323621.a n = A106481 n

end A106481

/-! ## A106481.P12745853446441061297

`A000010(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A106481.P12745853446441061297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 n + a (n - 2)

end

end A106481.P12745853446441061297

namespace A106481

/-- `A000010(n)+a(n-2)` -/
def P12745853446441061297.Spec : Prop :=
  ∀ n, P12745853446441061297.a n = A106481 n

end A106481

/-! ## A106481.P3540735561594218170

`A015614(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A106481.P3540735561594218170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015614 n + (1 - a (n - 1))

end

end A106481.P3540735561594218170

namespace A106481

/-- `A015614(n)+1-a(n-1)` -/
def P3540735561594218170.Spec : Prop :=
  ∀ n, P3540735561594218170.a n = A106481 n

end A106481

/-! ## A106481.P12216243618472124386

`A015613(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A106481.P12216243618472124386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015613 n - a (n - 1) + (n : ℤ)

end

end A106481.P12216243618472124386

namespace A106481

/-- `A015613(n)-a(n-1)+n` -/
def P12216243618472124386.Spec : Prop :=
  ∀ n, P12216243618472124386.a n = A106481 n

end A106481

/-! ## A106481.P6180112179178505005

`∑[A000010(lcm(2, n))-a(n-1)]` with `a(0)=0`
-/

namespace A106481.P6180112179178505005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 (Nat.lcm 2 n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106481.P6180112179178505005

namespace A106481

/-- `∑[A000010(lcm(2, n))-a(n-1)]` -/
def P6180112179178505005.Spec : Prop :=
  ∀ n, P6180112179178505005.a n = A106481 n

end A106481

/-! ## A106481.P11579392470169782669

`∑[A000010(2*n-n)-a(n-1)]` with `a(0)=0`
-/

namespace A106481.P11579392470169782669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106481.P11579392470169782669

namespace A106481

/-- `∑[A000010(2*n-n)-a(n-1)]` -/
def P11579392470169782669.Spec : Prop :=
  ∀ n, P11579392470169782669.a n = A106481 n

end A106481

/-! ## A106481.P13344451515049217185

`A000010(gcd(n, 2*n))-round(-a(n-2))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A106481.P13344451515049217185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (Nat.gcd n (2 * n)) - (-a (n - 2))

end

end A106481.P13344451515049217185

namespace A106481

/-- `A000010(gcd(n, 2*n))-round(-a(n-2))` -/
def P13344451515049217185.Spec : Prop :=
  ∀ n, P13344451515049217185.a n = A106481 n

end A106481

/-! ## A106481.P507226068897501662

`∑[∑{d}[n, n/#*A008683(#)]-a(n-1)]` with `a(0)=0`
-/

namespace A106481.P507226068897501662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  ∑ d ∈ Nat.divisors (f2 n), (n : ℚ) / (d : ℚ) * (A008683 d : ℚ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106481.P507226068897501662

namespace A106481

/-- `∑[∑{d}[n, n/#*A008683(#)]-a(n-1)]` -/
def P507226068897501662.Spec : Prop :=
  ∀ n, P507226068897501662.a n = (A106481 n : ℚ)

end A106481

/-! ## A106481.P9284608054230420259

`A002088(n+1)-A106477(n)`
-/

namespace A106481.P9284608054230420259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A106477 n

end

end A106481.P9284608054230420259

namespace A106481

/-- `A002088(n+1)-A106477(n)` -/
def P9284608054230420259.Spec : Prop :=
  ∀ n, P9284608054230420259.a n = A106481 n

end A106481

/-! ## A106481.P12208794138596707601

`A092249(n+1)-A106477(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A106481

/-- `A092249(n+1)-A106477(n)` -/
def P12208794138596707601.Spec : Prop :=
  ∀ n, P12208794138596707601.a n = A106481 n

theorem P12208794138596707601.correct : P12208794138596707601.Spec := by
  intro n
  simp only [A106481]

end A106481

/-! ## A106481.P13316028303228293068

`A106477(n+1)-A000010(n+2)`
-/

namespace A106481.P13316028303228293068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106477 (n + 1) - A000010 (n + 2)

end

end A106481.P13316028303228293068

namespace A106481

/-- `A106477(n+1)-A000010(n+2)` -/
def P13316028303228293068.Spec : Prop :=
  ∀ n, P13316028303228293068.a n = A106481 n

end A106481

/-! ## A106481.P15788055458845903354

`∑[A000010(n²)/n-a(n-1)]` with `a(0)=0`
-/

namespace A106481.P15788055458845903354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (A000010 (n ^ 2) : ℚ) / (n : ℚ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106481.P15788055458845903354

namespace A106481

/-- `∑[A000010(n²)/n-a(n-1)]` -/
def P15788055458845903354.Spec : Prop :=
  ∀ n, P15788055458845903354.a n = (A106481 n : ℚ)

end A106481

/-! ## A106481.P18324524266617256096

`A023443(A225373(n))`
-/

namespace A106481.P18324524266617256096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A225373 n).toNat

end

end A106481.P18324524266617256096

namespace A106481

/-- `A023443(A225373(n))` -/
def P18324524266617256096.Spec : Prop :=
  ∀ n, P18324524266617256096.a n = A106481 n

end A106481

/-!
# A106482: Number of prime factors (with multiplicity) of A007588(n).

The programs for A106482, there is no canonical definition to state claims against.
-/

/-! ## A106482.P7481805930554382589

`∑{e}[2*n^3-n, #]`
-/

namespace A106482.P7481805930554382589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106482.P7481805930554382589

/-! ## A106482.P17095101600481772932

`dr(∑{e}[A007588(n), #])`
-/

namespace A106482.P17095101600481772932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A106482.P17095101600481772932

/-! ## A106482.P15306396890285026241

`A118764(∑{e}[n*(2*n²-1), #])`
-/

namespace A106482.P15306396890285026241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P15306396890285026241

/-! ## A106482.P6285243467352350137

`A000030(∑{e}[A007588(n), #])`
-/

namespace A106482.P6285243467352350137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P6285243467352350137

/-! ## A106482.P784921598715967444

`A004086(∑{e}[A007588(n), #])`
-/

namespace A106482.P784921598715967444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P784921598715967444

/-! ## A106482.P3644703766652801020

`A007095(∑{e}[A007588(n), #])`
-/

namespace A106482.P3644703766652801020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P3644703766652801020

/-! ## A106482.P6325347010787029300

`A007953(∑{e}[A007588(n), #])`
-/

namespace A106482.P6325347010787029300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P6325347010787029300

/-! ## A106482.P16402947262041001668

`A031347(∑{e}[A007588(n), #])`
-/

namespace A106482.P16402947262041001668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P16402947262041001668

/-! ## A106482.P11852269235789174361

`A032517(∑{e}[A007588(n), #])`
-/

namespace A106482.P11852269235789174361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032517 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P11852269235789174361

/-! ## A106482.P10446763723901244523

`A055570(∑{e}[A007588(n), #])`
-/

namespace A106482.P10446763723901244523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106482.P10446763723901244523

/-!
# A106483: Primes p such that 2*p^2 - 1 is also prime.

The programs for A106483, the canonical program `A106483.P4961577248229509326` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106483 has offset 1).

The definition of A106483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092058, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106483.P4961577248229509326

`A000040(A092058(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106483

/-- `A000040(A092058(n+1))` -/
def P4961577248229509326.Spec : Prop :=
  ∀ n, P4961577248229509326.a n = A106483 (n + 1)

theorem P4961577248229509326.correct : P4961577248229509326.Spec := by
  intro n
  simp only [A106483, Nat.add_sub_cancel]

end A106483

/-! ## A106483.P9813263479096871415

`A000040(eq[1, A224489(n+1)]+1)`
-/

namespace A106483.P9813263479096871415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106483.P9813263479096871415

namespace A106483

/-- `A000040(eq[1, A224489(n+1)]+1)` -/
def P9813263479096871415.Spec : Prop :=
  ∀ n, P9813263479096871415.a n = A106483 (n + 1)

end A106483

/-! ## A106483.P304131206504727678

`record[A000040(n+1)/A224489(n+1)]`
-/

namespace A106483.P304131206504727678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A224489 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106483.P304131206504727678

namespace A106483

/-- `record[A000040(n+1)/A224489(n+1)]` -/
def P304131206504727678.Spec : Prop :=
  ∀ n, P304131206504727678.a n = (A106483 (n + 1) : ℚ)

end A106483

/-! ## A106483.P16003532901284852066

`sqrt((A092057(n+1)+1)/2)`
-/

namespace A106483.P16003532901284852066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A092057 (n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A106483.P16003532901284852066

namespace A106483

/-- `sqrt((A092057(n+1)+1)/2)` -/
def P16003532901284852066.Spec : Prop :=
  ∀ n, P16003532901284852066.a n = (A106483 (n + 1) : ℝ)

end A106483

/-! ## A106483.P11092851764395442531

`A182986(A092058(n+1)+1)`
-/

namespace A106483.P11092851764395442531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A092058 (n + 1) + 1).toNat

end

end A106483.P11092851764395442531

namespace A106483

/-- `A182986(A092058(n+1)+1)` -/
def P11092851764395442531.Spec : Prop :=
  ∀ n, P11092851764395442531.a n = A106483 (n + 1)

end A106483

/-! ## A106483.P2849480710133786584

`p?[A066049(n+1)]`
-/

namespace A106483.P2849480710133786584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106483.P2849480710133786584

namespace A106483

/-- `p?[A066049(n+1)]` -/
def P2849480710133786584.Spec : Prop :=
  ∀ n, P2849480710133786584.a n = A106483 (n + 1)

end A106483

/-! ## A106483.P17037730967049562337

`filter[A066049(n+1), A010051(#)]`
-/

namespace A106483.P17037730967049562337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106483.P17037730967049562337

namespace A106483

/-- `filter[A066049(n+1), A010051(#)]` -/
def P17037730967049562337.Spec : Prop :=
  ∀ n, P17037730967049562337.a n = A106483 (n + 1)

end A106483

/-! ## A106483.P4086569903094124870

`∩[A000040(n+1), A066049(n+1)]`
-/

namespace A106483.P4086569903094124870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P4086569903094124870

namespace A106483

/-- `∩[A000040(n+1), A066049(n+1)]` -/
def P4086569903094124870.Spec : Prop :=
  ∀ n, (P4086569903094124870.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P4977765378384698116

`∩[A008578(n+1), A066049(n+1)]`
-/

namespace A106483.P4977765378384698116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P4977765378384698116

namespace A106483

/-- `∩[A008578(n+1), A066049(n+1)]` -/
def P4977765378384698116.Spec : Prop :=
  ∀ n, (P4977765378384698116.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P10065675091364500929

`∩[A033946(n+1), A066049(n+1)]`
-/

namespace A106483.P10065675091364500929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P10065675091364500929

namespace A106483

/-- `∩[A033946(n+1), A066049(n+1)]` -/
def P10065675091364500929.Spec : Prop :=
  ∀ n, (P10065675091364500929.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P5285274500826486026

`∩[A045319(n+1), A066049(n+1)]`
-/

namespace A106483.P5285274500826486026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P5285274500826486026

namespace A106483

/-- `∩[A045319(n+1), A066049(n+1)]` -/
def P5285274500826486026.Spec : Prop :=
  ∀ n, (P5285274500826486026.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P6092375388091538506

`∩[A045320(n+1), A066049(n+1)]`
-/

namespace A106483.P6092375388091538506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P6092375388091538506

namespace A106483

/-- `∩[A045320(n+1), A066049(n+1)]` -/
def P6092375388091538506.Spec : Prop :=
  ∀ n, (P6092375388091538506.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P4942487692887479304

`∩[A066049(n+1), A158611(n+1)]`
-/

namespace A106483.P4942487692887479304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P4942487692887479304

namespace A106483

/-- `∩[A066049(n+1), A158611(n+1)]` -/
def P4942487692887479304.Spec : Prop :=
  ∀ n, (P4942487692887479304.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P3816188162273373451

`∩[A066049(n+1), A182986(n+1)]`
-/

namespace A106483.P3816188162273373451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P3816188162273373451

namespace A106483

/-- `∩[A066049(n+1), A182986(n+1)]` -/
def P3816188162273373451.Spec : Prop :=
  ∀ n, (P3816188162273373451.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P3401139778089362781

`∩[A326715(n+1), A066049(n+1)]`
-/

namespace A106483.P3401139778089362781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106483.P3401139778089362781

namespace A106483

/-- `∩[A326715(n+1), A066049(n+1)]` -/
def P3401139778089362781.Spec : Prop :=
  ∀ n, (P3401139778089362781.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P6862740840089046991

`eq[2, A106482(n)]`
-/

namespace A106483.P6862740840089046991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106483.P6862740840089046991

namespace A106483

/-- `eq[2, A106482(n)]` -/
def P6862740840089046991.Spec : Prop :=
  ∀ n, (P6862740840089046991.a n : ℤ) = A106483 (n + 1)

end A106483

/-! ## A106483.P17154417927663317306

`filter[A066049(n+1), A080339(#)]`
-/

namespace A106483.P17154417927663317306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A106483.P17154417927663317306

namespace A106483

/-- `filter[A066049(n+1), A080339(#)]` -/
def P17154417927663317306.Spec : Prop :=
  ∀ n, P17154417927663317306.a n = A106483 (n + 1)

end A106483

/-! ## A106483.P12340134404937650741

`p?[A246425(A090697(n+1)-1)]`
-/

namespace A106483.P12340134404937650741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A090697 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106483.P12340134404937650741

namespace A106483

/-- `p?[A246425(A090697(n+1)-1)]` -/
def P12340134404937650741.Spec : Prop :=
  ∀ n, P12340134404937650741.a n = A106483 (n + 1)

end A106483

/-!
# A106484: 

The programs for A106484, there is no canonical definition to state claims against.
-/

/-! ## A106484.P16253877991315453588

`2*a(n-1)^3-a(n-1)` with `a(0)=2`
-/

namespace A106484.P16253877991315453588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) ^ 3 - a (n - 1)

end

end A106484.P16253877991315453588

/-!
# A106485: CGT-tree negating involution of nonnegative integers.

The programs for A106485, there is no canonical definition to state claims against.
-/

/-! ## A106485.P7753211959361205537

`A126007(A057300(n))`
-/

namespace A106485.P7753211959361205537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (A057300 n).toNat

end

end A106485.P7753211959361205537

/-! ## A106485.P18254914670115412974

`A118759(A126008(n))`
-/

namespace A106485.P18254914670115412974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A126008 n).toNat

end

end A106485.P18254914670115412974

/-! ## A106485.P4542573409715258777

`A000194(A126008(n)²)`
-/

namespace A106485.P4542573409715258777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A126008 n ^ 2).toNat

end

end A106485.P4542573409715258777

/-! ## A106485.P5185956098982085407

`A000196(A126008(n)²)`
-/

namespace A106485.P5185956098982085407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A126008 n ^ 2).toNat

end

end A106485.P5185956098982085407

/-! ## A106485.P14577932262048260141

`A018851(A126008(n)²)`
-/

namespace A106485.P14577932262048260141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A126008 n ^ 2).toNat

end

end A106485.P14577932262048260141

/-! ## A106485.P13089336301247526666

`A037213(A126008(n)²)`
-/

namespace A106485.P13089336301247526666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A126008 n ^ 2).toNat

end

end A106485.P13089336301247526666

/-! ## A106485.P13953210615394895037

`A038690(A126008(n)²)`
-/

namespace A106485.P13953210615394895037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A126008 n ^ 2).toNat

end

end A106485.P13953210615394895037

/-! ## A106485.P7683668325324944745

`A126007(A341288(∑[n+3]))`
-/

namespace A106485.P7683668325324944745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (A341288 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A106485.P7683668325324944745

/-! ## A106485.P16473585723787826730

`A126008(A126007(A126007(n)))`
-/

namespace A106485.P16473585723787826730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126008 (A126007 (A126007 n).toNat).toNat

end

end A106485.P16473585723787826730

/-!
# A106486: Number of edges in combinatorial game trees.

The programs for A106486, the canonical program `A106486.P14247165119210834228` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106486 has offset 0).

The definition of A106486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106486.P14247165119210834228

`a(and(val(n, 4)+n, n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106486

/-- `a(and(val(n, 4)+n, n-1))+1` -/
def P14247165119210834228.Spec : Prop :=
  ∀ n, (P14247165119210834228.a n : ℤ) = A106486 n

theorem P14247165119210834228.correct : P14247165119210834228.Spec := by
  intro n
  simp only [A106486]

end A106486

/-! ## A106486.P6317894345015542539

`∑{p}[A019565(n), round(root(#, 3))]`
-/

namespace A106486.P6317894345015542539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.roundAway ((p : ℝ) ^ (1 / (3 : ℝ)))

end

end A106486.P6317894345015542539

namespace A106486

/-- `∑{p}[A019565(n), round(root(#, 3))]` -/
def P6317894345015542539.Spec : Prop :=
  ∀ n, P6317894345015542539.a n = A106486 n

end A106486

/-! ## A106486.P6029786980171954399

`A064415(A052330(n))`
-/

namespace A106486.P6029786980171954399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A052330 n).toNat

end

end A106486.P6029786980171954399

namespace A106486

/-- `A064415(A052330(n))` -/
def P6029786980171954399.Spec : Prop :=
  ∀ n, P6029786980171954399.a n = A106486 n

end A106486

/-! ## A106486.P16059519232341486439

`A064415(A121663(n))`
-/

namespace A106486.P16059519232341486439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A121663 n).toNat

end

end A106486.P16059519232341486439

namespace A106486

/-- `A064415(A121663(n))` -/
def P16059519232341486439.Spec : Prop :=
  ∀ n, P16059519232341486439.a n = A106486 n

end A106486

/-! ## A106486.P17576663337149514778

`∑{digits}[A048794(n), A000194(#)]`
-/

namespace A106486.P17576663337149514778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000194 x).sum

end

end A106486.P17576663337149514778

namespace A106486

/-- `∑{digits}[A048794(n), A000194(#)]` -/
def P17576663337149514778.Spec : Prop :=
  ∀ n, P17576663337149514778.a n = A106486 n

end A106486

/-! ## A106486.P15881968479607134157

`∑{digits}[A063013(n), A000194(#)]`
-/

namespace A106486.P15881968479607134157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000194 x).sum

end

end A106486.P15881968479607134157

namespace A106486

/-- `∑{digits}[A063013(n), A000194(#)]` -/
def P15881968479607134157.Spec : Prop :=
  ∀ n, P15881968479607134157.a n = A106486 n

end A106486

/-! ## A106486.P18095206082048382482

`A001222(A000010(A052330(2*n)))`
-/

namespace A106486.P18095206082048382482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (A052330 (2 * n)).toNat).toNat

end

end A106486.P18095206082048382482

namespace A106486

/-- `A001222(A000010(A052330(2*n)))` -/
def P18095206082048382482.Spec : Prop :=
  ∀ n, P18095206082048382482.a n = A106486 n

end A106486

/-! ## A106486.P15777706193947632074

`A001222(A000010(2*A121663(n)))`
-/

namespace A106486.P15777706193947632074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (2 * A121663 n).toNat).toNat

end

end A106486.P15777706193947632074

namespace A106486

/-- `A001222(A000010(2*A121663(n)))` -/
def P15777706193947632074.Spec : Prop :=
  ∀ n, P15777706193947632074.a n = A106486 n

end A106486

/-! ## A106486.P11293698673860812110

`∑{d}[A052330(n), A000523(A014963(#))]`
-/

namespace A106486.P11293698673860812110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000523 (A014963 d).toNat

end

end A106486.P11293698673860812110

namespace A106486

/-- `∑{d}[A052330(n), A000523(A014963(#))]` -/
def P11293698673860812110.Spec : Prop :=
  ∀ n, P11293698673860812110.a n = A106486 n

end A106486

/-! ## A106486.P1784778787547803133

`A326032(n)+A139351(n)`
-/

namespace A106486.P1784778787547803133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 n + A139351 n

end

end A106486.P1784778787547803133

namespace A106486

/-- `A326032(n)+A139351(n)` -/
def P1784778787547803133.Spec : Prop :=
  ∀ n, P1784778787547803133.a n = A106486 n

end A106486

/-!
# A106487: Number of leaves in combinatorial game trees.

The programs for A106487, the canonical program `A106487.P10380976506095135050` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106487 has offset 0).

The definition of A106487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106487.P10380976506095135050

`∏{e}[3*a(n-gcd(32, n)), #]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106487

/-- `∏{e}[3*a(n-gcd(32, n)), #]` -/
def P10380976506095135050.Spec : Prop :=
  ∀ n, (P10380976506095135050.a n : ℤ) = A106487 n

theorem P10380976506095135050.correct : P10380976506095135050.Spec := by
  intro n
  simp only [A106487]

end A106487

/-! ## A106487.P13002762397092213347

`a(n-1)+1-val(or(32, n), 2)` with `a(0)=1, a(1)=1`
-/

namespace A106487.P13002762397092213347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 1 - (SequenceMachineLib.valuation (Nat.lor 32 n) 2 : ℤ)

end

end A106487.P13002762397092213347

namespace A106487

/-- `a(n-1)+1-val(or(32, n), 2)` -/
def P13002762397092213347.Spec : Prop :=
  ∀ n, P13002762397092213347.a n = A106487 n

end A106487

/-! ## A106487.P3365375722232471933

`A028310(n)-∑[log2(gcd(32, n))]+5`
-/

namespace A106487.P3365375722232471933
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 32 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A106487.P3365375722232471933

namespace A106487

/-- `A028310(n)-∑[log2(gcd(32, n))]+5` -/
def P3365375722232471933.Spec : Prop :=
  ∀ n, P3365375722232471933.a n = (A106487 n : ℝ)

end A106487

/-! ## A106487.P8839092744555999023

`A000120(comp[65*n]+abs(1-n))`
-/

namespace A106487.P8839092744555999023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  65 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + |1 - (n : ℤ)|).toNat

end

end A106487.P8839092744555999023

namespace A106487

/-- `A000120(comp[65*n]+abs(1-n))` -/
def P8839092744555999023.Spec : Prop :=
  ∀ n, P8839092744555999023.a n = A106487 n

end A106487

/-! ## A106487.P13925821666995974444

`∑{digits}[A048794(n), A034851(#)]`
-/

namespace A106487.P13925821666995974444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A034851 x).sum

end

end A106487.P13925821666995974444

namespace A106487

/-- `∑{digits}[A048794(n), A034851(#)]` -/
def P13925821666995974444.Spec : Prop :=
  ∀ n, P13925821666995974444.a n = A106487 n

end A106487

/-! ## A106487.P8652108697835745467

`∑{digits}[A048794(n), A046854(#)]`
-/

namespace A106487.P8652108697835745467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A046854 x).sum

end

end A106487.P8652108697835745467

namespace A106487

/-- `∑{digits}[A048794(n), A046854(#)]` -/
def P8652108697835745467.Spec : Prop :=
  ∀ n, P8652108697835745467.a n = A106487 n

end A106487

/-! ## A106487.P12104429824609925920

`∑{digits}[A048794(n), A047010(#)]`
-/

namespace A106487.P12104429824609925920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047010 x).sum

end

end A106487.P12104429824609925920

namespace A106487

/-- `∑{digits}[A048794(n), A047010(#)]` -/
def P12104429824609925920.Spec : Prop :=
  ∀ n, P12104429824609925920.a n = A106487 n

end A106487

/-! ## A106487.P16913396501235993365

`∑{digits}[A048794(n), A047070(#)]`
-/

namespace A106487.P16913396501235993365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047070 x).sum

end

end A106487.P16913396501235993365

namespace A106487

/-- `∑{digits}[A048794(n), A047070(#)]` -/
def P16913396501235993365.Spec : Prop :=
  ∀ n, P16913396501235993365.a n = A106487 n

end A106487

/-! ## A106487.P2538570802833229740

`∑{digits}[A048794(n), A054123(#)]`
-/

namespace A106487.P2538570802833229740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054123 x).sum

end

end A106487.P2538570802833229740

namespace A106487

/-- `∑{digits}[A048794(n), A054123(#)]` -/
def P2538570802833229740.Spec : Prop :=
  ∀ n, P2538570802833229740.a n = A106487 n

end A106487

/-! ## A106487.P5882852267471327268

`∑{digits}[A048794(n), A060384(#)]`
-/

namespace A106487.P5882852267471327268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A060384 x).sum

end

end A106487.P5882852267471327268

namespace A106487

/-- `∑{digits}[A048794(n), A060384(#)]` -/
def P5882852267471327268.Spec : Prop :=
  ∀ n, P5882852267471327268.a n = A106487 n

end A106487

/-! ## A106487.P14394636899604353515

`∑{digits}[A048794(n), A096591(#)]`
-/

namespace A106487.P14394636899604353515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A096591 x).sum

end

end A106487.P14394636899604353515

namespace A106487

/-- `∑{digits}[A048794(n), A096591(#)]` -/
def P14394636899604353515.Spec : Prop :=
  ∀ n, P14394636899604353515.a n = A106487 n

end A106487

/-! ## A106487.P1578094063905307128

`∑{digits}[A048794(n), A111673(#)]`
-/

namespace A106487.P1578094063905307128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A111673 x).sum

end

end A106487.P1578094063905307128

namespace A106487

/-- `∑{digits}[A048794(n), A111673(#)]` -/
def P1578094063905307128.Spec : Prop :=
  ∀ n, P1578094063905307128.a n = A106487 n

end A106487

/-! ## A106487.P2289820558458374383

`∑{digits}[A048794(n), A256268(#)]`
-/

namespace A106487.P2289820558458374383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A256268 x).sum

end

end A106487.P2289820558458374383

namespace A106487

/-- `∑{digits}[A048794(n), A256268(#)]` -/
def P2289820558458374383.Spec : Prop :=
  ∀ n, P2289820558458374383.a n = A106487 n

end A106487

/-! ## A106487.P11305593134820225836

`∑{digits}[A048794(n), A306852(#)]`
-/

namespace A106487.P11305593134820225836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A306852 x).sum

end

end A106487.P11305593134820225836

namespace A106487

/-- `∑{digits}[A048794(n), A306852(#)]` -/
def P11305593134820225836.Spec : Prop :=
  ∀ n, P11305593134820225836.a n = A106487 n

end A106487

/-! ## A106487.P6113662865585202576

`∑{digits}[A048794(n), A322190(#)]`
-/

namespace A106487.P6113662865585202576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A322190 x).sum

end

end A106487.P6113662865585202576

namespace A106487

/-- `∑{digits}[A048794(n), A322190(#)]` -/
def P6113662865585202576.Spec : Prop :=
  ∀ n, P6113662865585202576.a n = A106487 n

end A106487

/-! ## A106487.P15694296479076209150

`∑{digits}[A048794(n), A322802(#)]`
-/

namespace A106487.P15694296479076209150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A322802 x).sum

end

end A106487.P15694296479076209150

namespace A106487

/-- `∑{digits}[A048794(n), A322802(#)]` -/
def P15694296479076209150.Spec : Prop :=
  ∀ n, P15694296479076209150.a n = A106487 n

end A106487

/-! ## A106487.P17919802982167456420

`∑{digits}[A048794(n), A025817(2*#)]`
-/

namespace A106487.P17919802982167456420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025817 (2 * x)).sum

end

end A106487.P17919802982167456420

namespace A106487

/-- `∑{digits}[A048794(n), A025817(2*#)]` -/
def P17919802982167456420.Spec : Prop :=
  ∀ n, P17919802982167456420.a n = A106487 n

end A106487

/-! ## A106487.P4060519295136116992

`A017902(A000196(n))+A000120(n)`
-/

namespace A106487.P4060519295136116992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (A000196 n).toNat + A000120 n

end

end A106487.P4060519295136116992

namespace A106487

/-- `A017902(A000196(n))+A000120(n)` -/
def P4060519295136116992.Spec : Prop :=
  ∀ n, P4060519295136116992.a n = A106487 n

end A106487

/-! ## A106487.P2207683507448672021

`∑{digits}[A048794(n), A000045(A007318(#))]`
-/

namespace A106487.P2207683507448672021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 (A007318 x).toNat).sum

end

end A106487.P2207683507448672021

namespace A106487

/-- `∑{digits}[A048794(n), A000045(A007318(#))]` -/
def P2207683507448672021.Spec : Prop :=
  ∀ n, P2207683507448672021.a n = A106487 n

end A106487

/-! ## A106487.P5297286397707792698

`∑{digits}[A048794(n), A000010(A013632(#))]`
-/

namespace A106487.P5297286397707792698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000010 (A013632 x).toNat).sum

end

end A106487.P5297286397707792698

namespace A106487

/-- `∑{digits}[A048794(n), A000010(A013632(#))]` -/
def P5297286397707792698.Spec : Prop :=
  ∀ n, P5297286397707792698.a n = A106487 n

end A106487

/-!
# A106489: Triangle read by rows: T(n,k) is the number of short bushes with n edges and having the leftmost leaf at height k (a short bush is an ordered tree with no nodes of outdegree 1).

The programs for A106489, there is no canonical definition to state claims against.
-/

/-! ## A106489.P13009742471910215097

`A064189(A091018(n))`
-/

namespace A106489.P13009742471910215097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A091018 n).toNat

end

end A106489.P13009742471910215097

/-! ## A106489.P9618745472699585739

`A064189(A056536(n+1)-1)`
-/

namespace A106489.P9618745472699585739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A056536 (n + 1) - 1).toNat

end

end A106489.P9618745472699585739

/-! ## A106489.P16021034337857717416

`A064189(A057428(n)+A056536(n+1))`
-/

namespace A106489.P16021034337857717416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A057428 n + A056536 (n + 1)).toNat

end

end A106489.P16021034337857717416

/-! ## A106489.P5592316512895526139

`A114929(record[A116942(n)])`
-/

namespace A106489.P5592316512895526139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114929 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106489.P5592316512895526139

/-! ## A106489.P6703583278213197482

`A114929(lt[A099097(n), 2])`
-/

namespace A106489.P6703583278213197482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114929 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A106489.P6703583278213197482

/-!
# A106490: Total number of bases and exponents in Quetian Superfactorization of n, excluding the unity-exponents at the tips of branches.

The programs for A106490, there is no canonical definition to state claims against.
-/

/-! ## A106490.P13214002184066241057

`A106491(n+1)-A064372(n+1)`
-/

namespace A106490.P13214002184066241057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106491 (n + 1) - A064372 (n + 1)

end

end A106490.P13214002184066241057

/-! ## A106490.P116001094096294288

`1+a(A067029(n+1)-1)+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A106490.P116001094096294288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A067029 (n + 1) - 1).toNat + a (A028234 (n + 1) - 1).toNat

end

end A106490.P116001094096294288

/-! ## A106490.P14033209456590040365

`A106493(A106444(n+1))`
-/

namespace A106490.P14033209456590040365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (A106444 (n + 1)).toNat

end

end A106490.P14033209456590040365

/-! ## A106490.P3938738877341740650

`A019569(A284476(n+1))`
-/

namespace A106490.P3938738877341740650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019569 (A284476 (n + 1)).toNat

end

end A106490.P3938738877341740650

/-! ## A106490.P7422934872199567459

`A019569(A395619(n+1))`
-/

namespace A106490.P7422934872199567459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019569 (A395619 (n + 1)).toNat

end

end A106490.P7422934872199567459

/-! ## A106490.P13726524923950513347

`∑{e}[n+1, A167746(#²²)]`
-/

namespace A106490.P13726524923950513347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A167746 ((Nat.factorization (f1 n) p ^ 2) ^ 2)

end

end A106490.P13726524923950513347

/-! ## A106490.P7628113336339367196

`A058061(A102631(n+1))`
-/

namespace A106490.P7628113336339367196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A102631 (n + 1)).toNat

end

end A106490.P7628113336339367196

/-! ## A106490.P9917242797226681393

`A001222(A032741((n+1)*A003557(n+1))+1)`
-/

namespace A106490.P9917242797226681393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032741 ((n + 1 : ℤ) * A003557 (n + 1)).toNat + 1).toNat

end

end A106490.P9917242797226681393

/-!
# A106491: Total number of bases and exponents in Quetian Superfactorization of n, including the unity-exponents at the tips of branches.

The programs for A106491, there is no canonical definition to state claims against.
-/

/-! ## A106491.P7513400497018402560

`A106490(n+1)+A064372(n+1)`
-/

namespace A106491.P7513400497018402560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (n + 1) + A064372 (n + 1)

end

end A106491.P7513400497018402560

/-! ## A106491.P17999923863348040038

`A106494(A106444(n+1))`
-/

namespace A106491.P17999923863348040038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (A106444 (n + 1)).toNat

end

end A106491.P17999923863348040038

/-! ## A106491.P8770181145214862987

`A389367(A284476(n+1))`
-/

namespace A106491.P8770181145214862987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389367 (A284476 (n + 1)).toNat

end

end A106491.P8770181145214862987

/-! ## A106491.P14576070603383464152

`A389367(A395619(n+1))`
-/

namespace A106491.P14576070603383464152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389367 (A395619 (n + 1)).toNat

end

end A106491.P14576070603383464152

/-! ## A106491.P9623611242733589191

`∑{e}[A184628(n+1), A222084(#)]`
-/

namespace A106491.P9623611242733589191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A222084 (Nat.factorization (f1 n).natAbs p)

end

end A106491.P9623611242733589191

/-! ## A106491.P9737960041210063436

`A106495(A091202(n+1))+A106490(n+1)`
-/

namespace A106491.P9737960041210063436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (A091202 (n + 1)).toNat + A106490 (n + 1)

end

end A106491.P9737960041210063436

/-!
# A106492: Total sum of bases and exponents in Quetian Superfactorization of n, excluding the unity-exponents at the tips of branches.

The programs for A106492, the canonical program `A106492.P4920564383791581968` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106492 has offset 1).

The definition of A106492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106492.P4920564383791581968

`A008475(∏{p}[n+1, #])+∑{e}[n+1, A338038(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A106492

/-- `A008475(∏{p}[n+1, #])+∑{e}[n+1, A338038(#)]` -/
def P4920564383791581968.Spec : Prop :=
  ∀ n, P4920564383791581968.a n = A106492 (n + 1)

theorem P4920564383791581968.correct : P4920564383791581968.Spec := by
  intro n
  simp only [A106492, Nat.add_sub_cancel]

end A106492

/-! ## A106492.P9257298114941365775

`A306328(∏{p}[n+1, #])+∑{e}[n+1, A338038(#)]`
-/

namespace A106492.P9257298114941365775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306328 (∏ p ∈ Nat.primeFactors (f1 n), p) + ∑ p ∈ Nat.primeFactors (f2 n), A338038 (Nat.factorization (f2 n) p)

end

end A106492.P9257298114941365775

namespace A106492

/-- `A306328(∏{p}[n+1, #])+∑{e}[n+1, A338038(#)]` -/
def P9257298114941365775.Spec : Prop :=
  ∀ n, P9257298114941365775.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P18348888253579521408

`A338038(n+1)-A014081(A336996(2^∑{e}[n+1, #-1]))`
-/

namespace A106492.P18348888253579521408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) - A014081 (A336996 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat).toNat

end

end A106492.P18348888253579521408

namespace A106492

/-- `A338038(n+1)-A014081(A336996(2^∑{e}[n+1, #-1]))` -/
def P18348888253579521408.Spec : Prop :=
  ∀ n, P18348888253579521408.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P1577512963702778958

`A338038(n+1)-A014081(A336996(∏{e}[n+1, 2^(#-1)]))`
-/

namespace A106492.P1577512963702778958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) - A014081 (A336996 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ))).toNat).toNat

end

end A106492.P1577512963702778958

namespace A106492

/-- `A338038(n+1)-A014081(A336996(∏{e}[n+1, 2^(#-1)]))` -/
def P1577512963702778958.Spec : Prop :=
  ∀ n, P1577512963702778958.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P16312775017092404684

`A338038(n+1)-A025455(A111306(n+1))`
-/

namespace A106492.P16312775017092404684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) - A025455 (A111306 (n + 1)).toNat

end

end A106492.P16312775017092404684

namespace A106492

/-- `A338038(n+1)-A025455(A111306(n+1))` -/
def P16312775017092404684.Spec : Prop :=
  ∀ n, P16312775017092404684.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P17203009776057211469

`A306328(A005361(n+1))+A008472(A285769(n+1))`
-/

namespace A106492.P17203009776057211469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306328 (A005361 (n + 1)).toNat + A008472 (A285769 (n + 1)).toNat

end

end A106492.P17203009776057211469

namespace A106492

/-- `A306328(A005361(n+1))+A008472(A285769(n+1))` -/
def P17203009776057211469.Spec : Prop :=
  ∀ n, P17203009776057211469.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P2605868485037936843

`A123108(A107463(∏{p}[n+1, #*val(n+1, #)]²))`
-/

namespace A106492.P2605868485037936843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A107463 ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) ^ 2)).toNat

end

end A106492.P2605868485037936843

namespace A106492

/-- `A123108(A107463(∏{p}[n+1, #*val(n+1, #)]²))` -/
def P2605868485037936843.Spec : Prop :=
  ∀ n, P2605868485037936843.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P15798628965590165810

`A338038(n+1)+A178798(A113061(n+1))`
-/

namespace A106492.P15798628965590165810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) + A178798 (A113061 (n + 1)).toNat

end

end A106492.P15798628965590165810

namespace A106492

/-- `A338038(n+1)+A178798(A113061(n+1))` -/
def P15798628965590165810.Spec : Prop :=
  ∀ n, P15798628965590165810.a n = A106492 (n + 1)

end A106492

/-! ## A106492.P6585748803258845230

`A338038(n+1)-A112316(A135875(n+1))`
-/

namespace A106492.P6585748803258845230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) - A112316 (A135875 (n + 1)).toNat

end

end A106492.P6585748803258845230

namespace A106492

/-- `A338038(n+1)-A112316(A135875(n+1))` -/
def P6585748803258845230.Spec : Prop :=
  ∀ n, P6585748803258845230.a n = A106492 (n + 1)

end A106492

/-!
# A106493: Total number of bases and exponents in GF(2)[X] Superfactorization of n, excluding the unity-exponents at the tips of branches.

The programs for A106493, there is no canonical definition to state claims against.
-/

/-! ## A106493.P887494842486744820

`∑{e}[A091203(n+1), A002024(#)]`
-/

namespace A106493.P887494842486744820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002024 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P887494842486744820

/-! ## A106493.P1598541950067919955

`∑{e}[A091203(n+1), A060646(#)]`
-/

namespace A106493.P1598541950067919955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A060646 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P1598541950067919955

/-! ## A106493.P16664336687878106018

`∑{e}[A091205(n+1), A076272(#)]`
-/

namespace A106493.P16664336687878106018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A076272 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P16664336687878106018

/-! ## A106493.P18005262055466758867

`∑{e}[A091205(n+1), A084510(#)]`
-/

namespace A106493.P18005262055466758867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084510 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P18005262055466758867

/-! ## A106493.P13268878649602871751

`∑{e}[A091203(n+1), A084556(#)]`
-/

namespace A106493.P13268878649602871751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084556 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P13268878649602871751

/-! ## A106493.P9034501329119880878

`∑{e}[A278238(n+1), A000194(#)]`
-/

namespace A106493.P9034501329119880878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000194 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P9034501329119880878

/-! ## A106493.P11141551648308141497

`∑{e}[A278233(n+1), A002024(#)]`
-/

namespace A106493.P11141551648308141497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002024 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P11141551648308141497

/-! ## A106493.P10263139062358912876

`∑{e}[A278238(n+1), A003434(#)]`
-/

namespace A106493.P10263139062358912876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003434 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P10263139062358912876

/-! ## A106493.P12695941054918027219

`∑{e}[A278233(n+1), A014499(#)]`
-/

namespace A106493.P12695941054918027219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014499 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P12695941054918027219

/-! ## A106493.P12110439293092704565

`∑{e}[A278233(n+1), A026099(#)]`
-/

namespace A106493.P12110439293092704565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026099 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P12110439293092704565

/-! ## A106493.P14865846988950547767

`∑{e}[A278233(n+1), A093875(#)]`
-/

namespace A106493.P14865846988950547767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A093875 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P14865846988950547767

/-! ## A106493.P18238698129233109629

`∑{e}[A278233(n+1), A113764(#)]`
-/

namespace A106493.P18238698129233109629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A113764 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P18238698129233109629

/-! ## A106493.P11619530521788865214

`∑{e}[A278238(n+1), A212625(#)]`
-/

namespace A106493.P11619530521788865214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A212625 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P11619530521788865214

/-! ## A106493.P10380658577222551672

`∑{e}[A278233(n+1), A226390(#)]`
-/

namespace A106493.P10380658577222551672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A226390 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P10380658577222551672

/-! ## A106493.P2505309348689756181

`∑{e}[A278233(n+1), A300506(#)]`
-/

namespace A106493.P2505309348689756181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A300506 (Nat.factorization (f1 n).natAbs p)

end

end A106493.P2505309348689756181

/-! ## A106493.P13063330171242636045

`A000523(∏{e}[A278238(n+1), #])`
-/

namespace A106493.P13063330171242636045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106493.P13063330171242636045

/-! ## A106493.P2438360744430312624

`A106494(n+1)-A106495(n+1)`
-/

namespace A106493.P2438360744430312624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (n + 1) - A106495 (n + 1)

end

end A106493.P2438360744430312624

/-! ## A106493.P2661972250695204221

`A196050(A000005(A278233(n+1)))`
-/

namespace A106493.P2661972250695204221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A000005 (A278233 (n + 1)).toNat).toNat

end

end A106493.P2661972250695204221

/-! ## A106493.P15694624536426293446

`∑{e}[A278238(n+1), A000005(A000010(#))]`
-/

namespace A106493.P15694624536426293446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A106493.P15694624536426293446

/-! ## A106493.P596457198493995567

`∑{e}[A278233(n+1), A000120(A000040(#))]`
-/

namespace A106493.P596457198493995567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A106493.P596457198493995567

/-!
# A106494: Total number of bases and exponents in GF(2)[X] Superfactorization of n, including the unity-exponents at the tips of branches.

The programs for A106494, there is no canonical definition to state claims against.
-/

/-! ## A106494.P12387792598699674069

`A106495(n+1)+A106493(n+1)`
-/

namespace A106494.P12387792598699674069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + A106493 (n + 1)

end

end A106494.P12387792598699674069

/-! ## A106494.P11135923444971371835

`A106493(n+1)+A064372(A091203(n+1))`
-/

namespace A106494.P11135923444971371835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (n + 1) + A064372 (A091203 (n + 1)).toNat

end

end A106494.P11135923444971371835

/-! ## A106494.P3813168014444728661

`A106493(n+1)+A064372(A091205(n+1))`
-/

namespace A106494.P3813168014444728661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (n + 1) + A064372 (A091205 (n + 1)).toNat

end

end A106494.P3813168014444728661

/-! ## A106494.P6791530203595563434

`A106493(n+1)+A064372(A235042(n+1))`
-/

namespace A106494.P6791530203595563434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (n + 1) + A064372 (A235042 (n + 1)).toNat

end

end A106494.P6791530203595563434

/-! ## A106494.P1811586176425635765

`A106493(n+1)+A064372(A278233(n+1))`
-/

namespace A106494.P1811586176425635765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (n + 1) + A064372 (A278233 (n + 1)).toNat

end

end A106494.P1811586176425635765

/-! ## A106494.P12160526027217073720

`A106495(n+1)+∑{e}[A091203(n+1), A060646(#)]`
-/

namespace A106494.P12160526027217073720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A060646 (Nat.factorization (f1 n).natAbs p)

end

end A106494.P12160526027217073720

/-! ## A106494.P9199288160888891629

`A106495(n+1)+∑{e}[A091205(n+1), A076272(#)]`
-/

namespace A106494.P9199288160888891629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A076272 (Nat.factorization (f1 n).natAbs p)

end

end A106494.P9199288160888891629

/-! ## A106494.P17722612161649650037

`A106495(n+1)+∑{e}[A091205(n+1), A084510(#)]`
-/

namespace A106494.P17722612161649650037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084510 (Nat.factorization (f1 n).natAbs p)

end

end A106494.P17722612161649650037

/-! ## A106494.P947341058207251294

`A106495(n+1)+∑{e}[A091203(n+1), A084556(#)]`
-/

namespace A106494.P947341058207251294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084556 (Nat.factorization (f1 n).natAbs p)

end

end A106494.P947341058207251294

/-! ## A106494.P10764552169333141533

`A106495(n+1)+∑{e}[A278233(n+1), A002024(#)]`
-/

namespace A106494.P10764552169333141533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002024 (Nat.factorization (f1 n).natAbs p)

end

end A106494.P10764552169333141533

/-! ## A106494.P7631712239087753813

`A106495(n+1)+∑{e}[A278238(n+1), A212625(#)]`
-/

namespace A106494.P7631712239087753813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A212625 (Nat.factorization (f1 n).natAbs p)

end

end A106494.P7631712239087753813

/-!
# A106495: Number of leaves in GF(2)[X] superfactorization of n.

The programs for A106495, there is no canonical definition to state claims against.
-/

/-! ## A106495.P1632410015608681551

`A106494(n+1)-A106493(n+1)`
-/

namespace A106495.P1632410015608681551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (n + 1) - A106493 (n + 1)

end

end A106495.P1632410015608681551

/-! ## A106495.P5594669240906467816

`A064372(A091203(n+1))`
-/

namespace A106495.P5594669240906467816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A091203 (n + 1)).toNat

end

end A106495.P5594669240906467816

/-! ## A106495.P5329717209522572595

`A064372(A091205(n+1))`
-/

namespace A106495.P5329717209522572595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A091205 (n + 1)).toNat

end

end A106495.P5329717209522572595

/-! ## A106495.P10916715523356467586

`A064372(A235042(n+1))`
-/

namespace A106495.P10916715523356467586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A235042 (n + 1)).toNat

end

end A106495.P10916715523356467586

/-! ## A106495.P17238810224545021155

`A064372(A278233(n+1))`
-/

namespace A106495.P17238810224545021155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A278233 (n + 1)).toNat

end

end A106495.P17238810224545021155

/-! ## A106495.P932999671145846317

`A064372(sqrt(A278238(n+1)))`
-/

namespace A106495.P932999671145846317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (SequenceMachineLib.roundAway (Real.sqrt (A278238 (n + 1) : ℝ))).toNat

end

end A106495.P932999671145846317

/-! ## A106495.P17727715759353633598

`A037034(A227140(A278233(n+1))²)`
-/

namespace A106495.P17727715759353633598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037034 (A227140 (A278233 (n + 1)).toNat ^ 2).toNat

end

end A106495.P17727715759353633598

/-! ## A106495.P12174194343096408234

`A091221(A151934(n)+1+n)`
-/

namespace A106495.P12174194343096408234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A151934 n + 1 + (n : ℤ)).toNat

end

end A106495.P12174194343096408234

/-! ## A106495.P8463245066681578608

`A091221(A151935(n)+1+n)`
-/

namespace A106495.P8463245066681578608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A151935 n + 1 + (n : ℤ)).toNat

end

end A106495.P8463245066681578608

/-! ## A106495.P14415936995069965446

`gcd(A004016(A326774(n)), A091221(n+1))`
-/

namespace A106495.P14415936995069965446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004016 (A326774 n).toNat) (A091221 (n + 1))

end

end A106495.P14415936995069965446

/-!
# A106496: Binomial transform of a fractal structured sequence.

The programs for A106496, there is no canonical definition to state claims against.
-/

/-! ## A106496.P13298849764950023478

`Δ[Δ[A035530(A062399(n))]]`
-/

namespace A106496.P13298849764950023478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035530 (A062399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106496.P13298849764950023478

/-! ## A106496.P6044845057600701619

`Δ[Δ[A035530(A087051(n))]]`
-/

namespace A106496.P6044845057600701619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035530 (A087051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106496.P6044845057600701619

/-! ## A106496.P8977617623578425467

`A258743(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A106496.P8977617623578425467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A258743 (a (n - 1)).toNat

end

end A106496.P8977617623578425467

/-!
# A106497: Numbers whose square is the concatenation of two identical numbers, i.e., of the form NN.

The programs for A106497, there is no canonical definition to state claims against.
-/

/-! ## A106497.P456378430289139003

`A116279(n+1)+1`
-/

namespace A106497.P456378430289139003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116279 (n + 1) + 1

end

end A106497.P456378430289139003

/-!
# A106498: Triangle read by rows: T(n,k) = number of unlabeled bicolored graphs with isolated nodes allowed having 2n nodes and k edges, with n nodes of each color. Here n >= 0, 0 <= k <= n^2.

The programs for A106498, there is no canonical definition to state claims against.
-/

/-! ## A106498.P683272731278147571

`(A123548(n)+A052371(n))/2`
-/

namespace A106498.P683272731278147571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123548 n + A052371 n : ℚ) / 2

end

end A106498.P683272731278147571

/-! ## A106498.P9261445081456276212

`A004526(A123548(n)+A052371(n))`
-/

namespace A106498.P9261445081456276212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A123548 n + A052371 n).toNat

end

end A106498.P9261445081456276212

/-! ## A106498.P7286258510821764550

`A026741(A123548(n)+A052371(n))`
-/

namespace A106498.P7286258510821764550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A123548 n + A052371 n).toNat

end

end A106498.P7286258510821764550

/-! ## A106498.P15300669297317547632

`A289436(A123548(n)+A052371(n))`
-/

namespace A106498.P15300669297317547632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A123548 n + A052371 n).toNat

end

end A106498.P15300669297317547632

/-! ## A106498.P66448485279707734

`A077467(A052371(n))^Δ[A077342(n+3)]`
-/

namespace A106498.P66448485279707734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077467 (A052371 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A106498.P66448485279707734

/-!
# A106499: Ordered perimeter of primitive integer-sided triangle one of whose angles is twice another.

The programs for A106499, there is no canonical definition to state claims against.
-/

/-! ## A106499.P13240673731602683022

`∪[3*A350045(n+1), A350045(n+1)]`
-/

namespace A106499.P13240673731602683022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A350045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106499.P13240673731602683022

/-! ## A106499.P17777495638422374863

`(A106501(n+1)+A106500(n+1))*A106501(n+1)`
-/

namespace A106499.P17777495638422374863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106501 (n + 1) + A106500 (n + 1)) * A106501 (n + 1)

end

end A106499.P17777495638422374863

/-! ## A106499.P5180320002367291838

`(A106501(n+1)+sqrt(A106410(n+1)))*A106501(n+1)`
-/

namespace A106499.P5180320002367291838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A106501 (n + 1) : ℝ) + Real.sqrt (A106410 (n + 1) : ℝ)) * (A106501 (n + 1) : ℝ)

end

end A106499.P5180320002367291838

/-! ## A106499.P7042171594573168181

`A106420(n+1)+A106501(n+1)²`
-/

namespace A106499.P7042171594573168181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106420 (n + 1) + A106501 (n + 1) ^ 2

end

end A106499.P7042171594573168181

/-! ## A106499.P5693464169250504446

`A106410(n+1)+A106506(n+1)+A106420(n+1)`
-/

namespace A106499.P5693464169250504446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106410 (n + 1) + (A106506 (n + 1) + A106420 (n + 1))

end

end A106499.P5693464169250504446

/-! ## A106499.P13605983181413979311

`A106502(n+1)+A106504(n+1)+A106503(n+1)`
-/

namespace A106499.P13605983181413979311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106502 (n + 1) + (A106504 (n + 1) + A106503 (n + 1))

end

end A106499.P13605983181413979311

/-! ## A106499.P4478887380600178459

`A106420(n+1)+(A106420(n+1)/A106500(n+1))²`
-/

namespace A106499.P4478887380600178459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106420 (n + 1) : ℚ) + ((A106420 (n + 1) : ℚ) / (A106500 (n + 1) : ℚ)) ^ 2

end

end A106499.P4478887380600178459

