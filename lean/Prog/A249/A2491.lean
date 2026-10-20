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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A249101: p(n,1), where p(n,x) is defined in Comments; sum of numbers in row n of the array at A249100.

The programs for A249101, the canonical program `A249101.P17623057521471448342` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249101 has offset 1).

The definition of A249101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249101.P17623057521471448342

`a(n-1)+(2*(n+1)-1)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249101

/-- `a(n-1)+(2*(n+1)-1)*a(n-2)` -/
def P17623057521471448342.Spec : Prop :=
  ∀ n, P17623057521471448342.a n = A249101 (n + 1)

theorem P17623057521471448342.correct : P17623057521471448342.Spec := by
  intro n
  simp only [A249101, Nat.add_sub_cancel]

end A249101

/-! ## A249101.P14684543848414800736

`∏[Δ[n²]/a(n-1)+1]` with `a(0)=1`
-/

namespace A249101.P14684543848414800736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A249101.P14684543848414800736

namespace A249101

/-- `∏[Δ[n²]/a(n-1)+1]` -/
def P14684543848414800736.Spec : Prop :=
  ∀ n, P14684543848414800736.a n = (A249101 (n + 1) : ℚ)

end A249101

/-! ## A249101.P13885991794236540567

`a(n-1)+a(n-2)*Δ[n²]` with `a(0)=1, a(1)=4`
-/

namespace A249101.P13885991794236540567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A249101.P13885991794236540567

namespace A249101

/-- `a(n-1)+a(n-2)*Δ[n²]` -/
def P13885991794236540567.Spec : Prop :=
  ∀ n, P13885991794236540567.a n = A249101 (n + 1)

end A249101

/-!
# A249102: Numbers with no 1's in base-7 expansion.

The programs for A249102, the canonical program `A249102.P1085466036066387248` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249102 has offset 1).

The definition of A249102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249102.P4047104434240633405

`eq[0, A268643(A007093(n))]`
-/

namespace A249102.P4047104434240633405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P4047104434240633405

namespace A249102

/-- `eq[0, A268643(A007093(n))]` -/
def P4047104434240633405.Spec : Prop :=
  ∀ n, (P4047104434240633405.a n : ℤ) = A249102 (n + 1)

end A249102

/-! ## A249102.P18290852376928560736

`eq[0, A316863(A028374(n+1))]`
-/

namespace A249102.P18290852376928560736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P18290852376928560736

namespace A249102

/-- `eq[0, A316863(A028374(n+1))]` -/
def P18290852376928560736.Spec : Prop :=
  ∀ n, (P18290852376928560736.a n : ℤ) = A249102 (n + 1)

end A249102

/-! ## A249102.P728216740371951968

`eq[0, A268643(A168501(n+1))]`
-/

namespace A249102.P728216740371951968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P728216740371951968

namespace A249102

/-- `eq[0, A268643(A168501(n+1))]` -/
def P728216740371951968.Spec : Prop :=
  ∀ n, (P728216740371951968.a n : ℤ) = A249102 (n + 1)

end A249102

/-! ## A249102.P1085466036066387248

`eq[0, A268643(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A249102

/-- `eq[0, A268643(A307913(n+1))]` -/
def P1085466036066387248.Spec : Prop :=
  ∀ n, (P1085466036066387248.a n : ℤ) = A249102 (n + 1)

theorem P1085466036066387248.correct : P1085466036066387248.Spec := by
  intro n
  simp only [A249102, Nat.add_sub_cancel]

end A249102

/-! ## A249102.P2276187558308959475

`eq[1, A316863(A256307(n))+1]`
-/

namespace A249102.P2276187558308959475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256307 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P2276187558308959475

namespace A249102

/-- `eq[1, A316863(A256307(n))+1]` -/
def P2276187558308959475.Spec : Prop :=
  ∀ n, (P2276187558308959475.a n : ℤ) = A249102 (n + 1)

end A249102

/-! ## A249102.P12997884513991247918

`eq[A222233(A256307(n)), A256307(n)]`
-/

namespace A249102.P12997884513991247918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A256307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249102.P12997884513991247918

namespace A249102

/-- `eq[A222233(A256307(n)), A256307(n)]` -/
def P12997884513991247918.Spec : Prop :=
  ∀ n, (P12997884513991247918.a n : ℤ) = A249102 (n + 1)

end A249102

/-!
# A249104: Defective numbers: A complete residue system mod a(n) does not exist in the Fibonacci sequence.

The programs for A249104, there is no canonical definition to state claims against.
-/

/-! ## A249104.P6584616344341444513

`comp[A079002(n+1)-1]+1`
-/

namespace A249104.P6584616344341444513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A249104.P6584616344341444513

/-! ## A249104.P14067274286438674397

`lt[0, A118965(n+1)]+1`
-/

namespace A249104.P14067274286438674397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A249104.P14067274286438674397

/-! ## A249104.P6173835049939561775

`lt[A066853(round(acot(n)+n)), n]`
-/

namespace A249104.P6173835049939561775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249104.P6173835049939561775

/-! ## A249104.P10084361830107953982

`lt[A066853(abs(1-n)+1), n]`
-/

namespace A249104.P10084361830107953982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249104.P10084361830107953982

/-! ## A249104.P13309043958393859428

`lt[0, A118965(A028310(n))]`
-/

namespace A249104.P13309043958393859428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249104.P13309043958393859428

/-! ## A249104.P2248926835318854633

`lt[C(A066853(n+1), n), A089080(n+1)]+1`
-/

namespace A249104.P2248926835318854633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066853 (n + 1)).toNat n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A249104.P2248926835318854633

/-! ## A249104.P12499078893006884824

`eq[char[A079002(n+1)], A000007(n)]`
-/

namespace A249104.P12499078893006884824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249104.P12499078893006884824

/-! ## A249104.P4666646295645749888

`eq[char[A079002(n+1)], A000038(n)]`
-/

namespace A249104.P4666646295645749888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249104.P4666646295645749888

/-! ## A249104.P16977782015772689138

`eq[1, A057427(n)+char[A079002(n+1)]]`
-/

namespace A249104.P16977782015772689138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249104.P16977782015772689138

/-! ## A249104.P17283591589894433062

`comp[C(A066853(n+1), n)]`
-/

namespace A249104.P17283591589894433062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066853 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A249104.P17283591589894433062

/-!
# A249115: Floor(r*n), where r = (5 - sqrt(5))/2; the Beatty complement of A003231.

The programs for A249115, the canonical program `A249115.P10132512692548319232` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249115 has offset 1).

The definition of A249115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249115.P10132512692548319232

`floor((5-sqrt(5))/2*(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249115

/-- `floor((5-sqrt(5))/2*(n+1))` -/
def P10132512692548319232.Spec : Prop :=
  ∀ n, P10132512692548319232.a n = A249115 (n + 1)

theorem P10132512692548319232.correct : P10132512692548319232.Spec := by
  intro n
  simp only [A249115, Nat.add_sub_cancel]

end A249115

/-! ## A249115.P6574102340436515773

`∑[gcd(2, Δ[ceil(n/ϕ)])]`
-/

namespace A249115.P6574102340436515773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P6574102340436515773

namespace A249115

/-- `∑[gcd(2, Δ[ceil(n/ϕ)])]` -/
def P6574102340436515773.Spec : Prop :=
  ∀ n, (P6574102340436515773.a n : ℤ) = A249115 (n + 1)

end A249115

/-! ## A249115.P12906878373089350086

`∑[C(2, Δ[floor(n/ϕ²)])]`
-/

namespace A249115.P12906878373089350086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P12906878373089350086

namespace A249115

/-- `∑[C(2, Δ[floor(n/ϕ²)])]` -/
def P12906878373089350086.Spec : Prop :=
  ∀ n, (P12906878373089350086.a n : ℤ) = A249115 (n + 1)

end A249115

/-! ## A249115.P6148149648714128872

`record[xor(3, n)]-comp[floor(ϕ*n)]`
-/

namespace A249115.P6148149648714128872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A249115.P6148149648714128872

namespace A249115

/-- `record[xor(3, n)]-comp[floor(ϕ*n)]` -/
def P6148149648714128872.Spec : Prop :=
  ∀ n, P6148149648714128872.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P4974570778067441665

`ceil(or(1, 2*n)-(n+1)/ϕ)`
-/

namespace A249115.P4974570778067441665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) - (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A249115.P4974570778067441665

namespace A249115

/-- `ceil(or(1, 2*n)-(n+1)/ϕ)` -/
def P4974570778067441665.Spec : Prop :=
  ∀ n, P4974570778067441665.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P12605140590425502937

`ceil(xor(1, 2*n)-(n+1)/ϕ)`
-/

namespace A249115.P12605140590425502937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) - (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A249115.P12605140590425502937

namespace A249115

/-- `ceil(xor(1, 2*n)-(n+1)/ϕ)` -/
def P12605140590425502937.Spec : Prop :=
  ∀ n, P12605140590425502937.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P17101203916943306904

`floor(∑[n+3-ϕ])-C(n+1, 2)`
-/

namespace A249115.P17101203916943306904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (Nat.choose (n + 1) 2 : ℤ)

end

end A249115.P17101203916943306904

namespace A249115

/-- `floor(∑[n+3-ϕ])-C(n+1, 2)` -/
def P17101203916943306904.Spec : Prop :=
  ∀ n, P17101203916943306904.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P12777618778093060668

`floor(C(n+1, n)/ϕ²)+n+1`
-/

namespace A249115.P12777618778093060668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio ^ 2⌋ + (n + 1 : ℤ)

end

end A249115.P12777618778093060668

namespace A249115

/-- `floor(C(n+1, n)/ϕ²)+n+1` -/
def P12777618778093060668.Spec : Prop :=
  ∀ n, P12777618778093060668.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P11391622165686130574

`ceil(2*n+1-C(n+1, n)/ϕ)`
-/

namespace A249115.P11391622165686130574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) - (Nat.choose (n + 1) n : ℝ) / Real.goldenRatio⌉

end

end A249115.P11391622165686130574

namespace A249115

/-- `ceil(2*n+1-C(n+1, n)/ϕ)` -/
def P11391622165686130574.Spec : Prop :=
  ∀ n, P11391622165686130574.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P8550075664311446623

`n-floor((a(n-1)-2*n)/ϕ)` with `a(0)=1`
-/

namespace A249115.P8550075664311446623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) - (2 * n : ℤ) : ℝ) / Real.goldenRatio⌋

end

end A249115.P8550075664311446623

namespace A249115

/-- `n-floor((a(n-1)-2*n)/ϕ)` -/
def P8550075664311446623.Spec : Prop :=
  ∀ n, P8550075664311446623.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P7089744513325153682

`∑[2-A114986(n)]`
-/

namespace A249115.P7089744513325153682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P7089744513325153682

namespace A249115

/-- `∑[2-A114986(n)]` -/
def P7089744513325153682.Spec : Prop :=
  ∀ n, P7089744513325153682.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P6753055356150416688

`comp[A276855(n)-n]`
-/

namespace A249115.P6753055356150416688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249115.P6753055356150416688

namespace A249115

/-- `comp[A276855(n)-n]` -/
def P6753055356150416688.Spec : Prop :=
  ∀ n, (P6753055356150416688.a n : ℤ) = A249115 (n + 1)

end A249115

/-! ## A249115.P7062168301974863316

`A063732(n+1)+1`
-/

namespace A249115.P7062168301974863316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (n + 1) + 1

end

end A249115.P7062168301974863316

namespace A249115

/-- `A063732(n+1)+1` -/
def P7062168301974863316.Spec : Prop :=
  ∀ n, P7062168301974863316.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P13859751140315776523

`A195121(n+1)-1`
-/

namespace A249115.P13859751140315776523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (n + 1) - 1

end

end A249115.P13859751140315776523

namespace A249115

/-- `A195121(n+1)-1` -/
def P13859751140315776523.Spec : Prop :=
  ∀ n, P13859751140315776523.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P5157461696178666309

`∑[A383670(n+1)!]`
-/

namespace A249115.P5157461696178666309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A383670 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P5157461696178666309

namespace A249115

/-- `∑[A383670(n+1)!]` -/
def P5157461696178666309.Spec : Prop :=
  ∀ n, (P5157461696178666309.a n : ℤ) = A249115 (n + 1)

end A249115

/-! ## A249115.P13534046761233112389

`∑[3-Δ[A004956(n)]]`
-/

namespace A249115.P13534046761233112389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P13534046761233112389

namespace A249115

/-- `∑[3-Δ[A004956(n)]]` -/
def P13534046761233112389.Spec : Prop :=
  ∀ n, P13534046761233112389.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P2985864957231588986

`∑[2-char[A066096(n)]]`
-/

namespace A249115.P2985864957231588986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P2985864957231588986

namespace A249115

/-- `∑[2-char[A066096(n)]]` -/
def P2985864957231588986.Spec : Prop :=
  ∀ n, P2985864957231588986.a n = A249115 (n + 1)

end A249115

/-! ## A249115.P15096863316297464266

`a(n-1)+A003842(n-1)` with `a(0)=1`
-/

namespace A249115.P15096863316297464266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A003842 (n - 1)

end

end A249115.P15096863316297464266

namespace A249115

/-- `a(n-1)+A003842(n-1)` -/
def P15096863316297464266.Spec : Prop :=
  ∀ n, P15096863316297464266.a n = A249115 (n + 1)

end A249115

/-!
# A249116: Ordered union of the sets {h^6, h >=1} and {32*k^6, k >=1}.

The programs for A249116, the canonical program `A249116.P1219359969636568688` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249116 has offset 1).

The definition of A249116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249116.P1219359969636568688

`∪[32*A001014(n+1), A001014(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249116

/-- `∪[32*A001014(n+1), A001014(n+1)]` -/
def P1219359969636568688.Spec : Prop :=
  ∀ n, (P1219359969636568688.a n : ℤ) = A249116 (n + 1)

theorem P1219359969636568688.correct : P1219359969636568688.Spec := by
  intro n
  simp only [A249116, Nat.add_sub_cancel]

end A249116

/-! ## A249116.P8030249324500099740

`∩[A088827(n+1), A249073(n+1)]/2`
-/

namespace A249116.P8030249324500099740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249073 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A249116.P8030249324500099740

namespace A249116

/-- `∩[A088827(n+1), A249073(n+1)]/2` -/
def P8030249324500099740.Spec : Prop :=
  ∀ n, P8030249324500099740.a n = (A249116 (n + 1) : ℚ)

end A249116

/-! ## A249116.P2603352438609823985

`record[A273943(A249073(n+1))]`
-/

namespace A249116.P2603352438609823985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A249073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249116.P2603352438609823985

namespace A249116

/-- `record[A273943(A249073(n+1))]` -/
def P2603352438609823985.Spec : Prop :=
  ∀ n, P2603352438609823985.a n = A249116 (n + 1)

end A249116

/-! ## A249116.P6551652002316251044

`A273943(A249073(comp[∑[n-1]]))`
-/

namespace A249116.P6551652002316251044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A249073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A249116.P6551652002316251044

namespace A249116

/-- `A273943(A249073(comp[∑[n-1]]))` -/
def P6551652002316251044.Spec : Prop :=
  ∀ n, P6551652002316251044.a n = A249116 (n + 1)

end A249116

/-! ## A249116.P3771625840468857899

`A273943(∩[A088827(n+1), A249073(n+1)])`
-/

namespace A249116.P3771625840468857899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A249116.P3771625840468857899

namespace A249116

/-- `A273943(∩[A088827(n+1), A249073(n+1)])` -/
def P3771625840468857899.Spec : Prop :=
  ∀ n, P3771625840468857899.a n = A249116 (n + 1)

end A249116

/-!
# A249117: Position of n^6 in the ordered union of {h^6, h >= 1} and {32*k^6, k >= 1}.

The programs for A249117, the canonical program `A249117.P15291165750782053411` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249117 has offset 1).

The definition of A249117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249117.P15291165750782053411

`A008619(A249124(n+1)+n-1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249117

/-- `A008619(A249124(n+1)+n-1)` -/
def P15291165750782053411.Spec : Prop :=
  ∀ n, P15291165750782053411.a n = A249117 (n + 1)

theorem P15291165750782053411.correct : P15291165750782053411.Spec := by
  intro n
  simp only [A249117, Nat.add_sub_cancel]

end A249117

/-! ## A249117.P11292324215943119149

`(A063196(A249124(n+1)+n)+1)/2`
-/

namespace A249117.P11292324215943119149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063196 (A249124 (n + 1) + (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A249117.P11292324215943119149

namespace A249117

/-- `(A063196(A249124(n+1)+n)+1)/2` -/
def P11292324215943119149.Spec : Prop :=
  ∀ n, P11292324215943119149.a n = (A249117 (n + 1) : ℚ)

end A249117

/-! ## A249117.P10788574844884869786

`A065033(A249124(n+1)+n)`
-/

namespace A249117.P10788574844884869786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A249124 (n + 1) + (n : ℤ)).toNat

end

end A249117.P10788574844884869786

namespace A249117

/-- `A065033(A249124(n+1)+n)` -/
def P10788574844884869786.Spec : Prop :=
  ∀ n, P10788574844884869786.a n = A249117 (n + 1)

end A249117

/-! ## A249117.P11410916564172298416

`A004526(A249124(n+1)+n+1)`
-/

namespace A249117.P11410916564172298416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249124 (n + 1) + (n + 1 : ℤ)).toNat

end

end A249117.P11410916564172298416

namespace A249117

/-- `A004526(A249124(n+1)+n+1)` -/
def P11410916564172298416.Spec : Prop :=
  ∀ n, P11410916564172298416.a n = A249117 (n + 1)

end A249117

/-! ## A249117.P17338072125598559039

`A005408(n)-A002265(A330117(n+1))`
-/

namespace A249117.P17338072125598559039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A002265 (A330117 (n + 1)).toNat

end

end A249117.P17338072125598559039

namespace A249117

/-- `A005408(n)-A002265(A330117(n+1))` -/
def P17338072125598559039.Spec : Prop :=
  ∀ n, P17338072125598559039.a n = A249117 (n + 1)

end A249117

/-!
# A249118: Position of 32n^6 in the ordered union of {h^6, h >=1} and {32*k^6, k >=1}.

The programs for A249118, the canonical program `A249118.P3927749679208195` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249118 has offset 1).

The definition of A249118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249118.P3927749679208195

`A249123(2*(n+1))-(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249118

/-- `A249123(2*(n+1))-(n+1)` -/
def P3927749679208195.Spec : Prop :=
  ∀ n, P3927749679208195.a n = A249118 (n + 1)

theorem P3927749679208195.correct : P3927749679208195.Spec := by
  intro n
  simp only [A249118, Nat.add_sub_cancel]

end A249118

/-! ## A249118.P5097901400403973369

`∩[A085736(n+1), A093609(n+1)]`
-/

namespace A249118.P5097901400403973369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249118.P5097901400403973369

namespace A249118

/-- `∩[A085736(n+1), A093609(n+1)]` -/
def P5097901400403973369.Spec : Prop :=
  ∀ n, (P5097901400403973369.a n : ℤ) = A249118 (n + 1)

end A249118

/-! ## A249118.P12774682263714572056

`and(A093609(n+1), A359085(n+1))`
-/

namespace A249118.P12774682263714572056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093609 (n + 1)) (A359085 (n + 1))

end

end A249118.P12774682263714572056

namespace A249118

/-- `and(A093609(n+1), A359085(n+1))` -/
def P12774682263714572056.Spec : Prop :=
  ∀ n, P12774682263714572056.a n = A249118 (n + 1)

end A249118

/-! ## A249118.P7196636389284938499

`∩[A093609(n+1), A258022(n+1)]`
-/

namespace A249118.P7196636389284938499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249118.P7196636389284938499

namespace A249118

/-- `∩[A093609(n+1), A258022(n+1)]` -/
def P7196636389284938499.Spec : Prop :=
  ∀ n, (P7196636389284938499.a n : ℤ) = A249118 (n + 1)

end A249118

/-! ## A249118.P18299626948946369843

`∩[A093609(n+1), A272978(n+1)]`
-/

namespace A249118.P18299626948946369843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249118.P18299626948946369843

namespace A249118

/-- `∩[A093609(n+1), A272978(n+1)]` -/
def P18299626948946369843.Spec : Prop :=
  ∀ n, (P18299626948946369843.a n : ℤ) = A249118 (n + 1)

end A249118

/-!
# A249121: a(n) = n - (sum of digits of n) - (product of digits of n).

The programs for A249121, the canonical program `A249121.P5600374421228380133` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249121 has offset 0).

The definition of A249121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249121.P5600374421228380133

`n-A061762(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A249121

/-- `n-A061762(n)` -/
def P5600374421228380133.Spec : Prop :=
  ∀ n, P5600374421228380133.a n = A249121 n

theorem P5600374421228380133.correct : P5600374421228380133.Spec := by
  intro n
  simp only [A249121]

end A249121

/-! ## A249121.P4579999720009624829

`n-A007953(n)-A007954(n)`
-/

namespace A249121.P4579999720009624829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 n - A007954 n

end

end A249121.P4579999720009624829

namespace A249121

/-- `n-A007953(n)-A007954(n)` -/
def P4579999720009624829.Spec : Prop :=
  ∀ n, P4579999720009624829.a n = A249121 n

end A249121

/-! ## A249121.P7545541252630571243

`n-(∏{digits}[n, #]+∑{digits}[n, #])`
-/

namespace A249121.P7545541252630571243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A249121.P7545541252630571243

namespace A249121

/-- `n-(∏{digits}[n, #]+∑{digits}[n, #])` -/
def P7545541252630571243.Spec : Prop :=
  ∀ n, P7545541252630571243.a n = A249121 n

end A249121

/-! ## A249121.P6103563585331340668

`n-∑{digits}[n, #]-∏{digits}[n, #]`
-/

namespace A249121.P6103563585331340668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A249121.P6103563585331340668

namespace A249121

/-- `n-∑{digits}[n, #]-∏{digits}[n, #]` -/
def P6103563585331340668.Spec : Prop :=
  ∀ n, P6103563585331340668.a n = A249121 n

end A249121

/-! ## A249121.P865433684064652935

`A066568(n)-A007954(n)`
-/

namespace A249121.P865433684064652935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n - A007954 n

end

end A249121.P865433684064652935

namespace A249121

/-- `A066568(n)-A007954(n)` -/
def P865433684064652935.Spec : Prop :=
  ∀ n, P865433684064652935.a n = A249121 n

end A249121

/-! ## A249121.P17837519582545877657

`A070565(n)-A007953(n)`
-/

namespace A249121.P17837519582545877657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n - A007953 n

end

end A249121.P17837519582545877657

namespace A249121

/-- `A070565(n)-A007953(n)` -/
def P17837519582545877657.Spec : Prop :=
  ∀ n, P17837519582545877657.a n = A249121 n

end A249121

/-! ## A249121.P5003319242441471267

`A070565(n)-A169805(n)/2`
-/

namespace A249121.P5003319242441471267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070565 n : ℚ) - (A169805 n : ℚ) / 2

end

end A249121.P5003319242441471267

namespace A249121

/-- `A070565(n)-A169805(n)/2` -/
def P5003319242441471267.Spec : Prop :=
  ∀ n, P5003319242441471267.a n = (A249121 n : ℚ)

end A249121

/-! ## A249121.P2437572920261394378

`A070565(n)+n-A062028(n)`
-/

namespace A249121.P2437572920261394378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n + ((n : ℤ) - A062028 n)

end

end A249121.P2437572920261394378

namespace A249121

/-- `A070565(n)+n-A062028(n)` -/
def P2437572920261394378.Spec : Prop :=
  ∀ n, P2437572920261394378.a n = A249121 n

end A249121

/-! ## A249121.P14848832269406096152

`A066568(n)+A070565(n)-n`
-/

namespace A249121.P14848832269406096152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + (A070565 n - (n : ℤ))

end

end A249121.P14848832269406096152

namespace A249121

/-- `A066568(n)+A070565(n)-n` -/
def P14848832269406096152.Spec : Prop :=
  ∀ n, P14848832269406096152.a n = A249121 n

end A249121

/-! ## A249121.P10605791034923292391

`A062329(n)+n-A169805(n)`
-/

namespace A249121.P10605791034923292391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + ((n : ℤ) - A169805 n)

end

end A249121.P10605791034923292391

namespace A249121

/-- `A062329(n)+n-A169805(n)` -/
def P10605791034923292391.Spec : Prop :=
  ∀ n, P10605791034923292391.a n = A249121 n

end A249121

/-! ## A249121.P11384454462101359257

`A066568(n)+n-A230099(n)`
-/

namespace A249121.P11384454462101359257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + ((n : ℤ) - A230099 n)

end

end A249121.P11384454462101359257

namespace A249121

/-- `A066568(n)+n-A230099(n)` -/
def P11384454462101359257.Spec : Prop :=
  ∀ n, P11384454462101359257.a n = A249121 n

end A249121

/-! ## A249121.P15945613402685803630

`n-(A007954(n)+sqrt(A118881(n)))`
-/

namespace A249121.P15945613402685803630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ((A007954 n : ℝ) + Real.sqrt (A118881 n : ℝ))

end

end A249121.P15945613402685803630

namespace A249121

/-- `n-(A007954(n)+sqrt(A118881(n)))` -/
def P15945613402685803630.Spec : Prop :=
  ∀ n, P15945613402685803630.a n = (A249121 n : ℝ)

end A249121

/-! ## A249121.P7593049334518532491

`n-(A007954(n)+log2(A329562(n)))`
-/

namespace A249121.P7593049334518532491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ((A007954 n : ℝ) + Real.logb 2 (A329562 n : ℝ))

end

end A249121.P7593049334518532491

namespace A249121

/-- `n-(A007954(n)+log2(A329562(n)))` -/
def P7593049334518532491.Spec : Prop :=
  ∀ n, P7593049334518532491.a n = (A249121 n : ℝ)

end A249121

/-! ## A249121.P8928940566383445717

`A160941(n+1)-(A007954(n)+1)`
-/

namespace A249121.P8928940566383445717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1) - (A007954 n + 1)

end

end A249121.P8928940566383445717

namespace A249121

/-- `A160941(n+1)-(A007954(n)+1)` -/
def P8928940566383445717.Spec : Prop :=
  ∀ n, P8928940566383445717.a n = A249121 n

end A249121

/-! ## A249121.P3689134621983431225

`A066568(n)-(∑{digits}[n, #]-A062329(n))`
-/

namespace A249121.P3689134621983431225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A062329 n)

end

end A249121.P3689134621983431225

namespace A249121

/-- `A066568(n)-(∑{digits}[n, #]-A062329(n))` -/
def P3689134621983431225.Spec : Prop :=
  ∀ n, P3689134621983431225.a n = A249121 n

end A249121

/-! ## A249121.P1764867366407910908

`A062329(n)+A066568(n)-A007953(n)`
-/

namespace A249121.P1764867366407910908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + (A066568 n - A007953 n)

end

end A249121.P1764867366407910908

namespace A249121

/-- `A062329(n)+A066568(n)-A007953(n)` -/
def P1764867366407910908.Spec : Prop :=
  ∀ n, P1764867366407910908.a n = A249121 n

end A249121

/-! ## A249121.P17932103036430109530

`A070565(n)-(A062329(n)+A007954(n))`
-/

namespace A249121.P17932103036430109530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n - (A062329 n + A007954 n)

end

end A249121.P17932103036430109530

namespace A249121

/-- `A070565(n)-(A062329(n)+A007954(n))` -/
def P17932103036430109530.Spec : Prop :=
  ∀ n, P17932103036430109530.a n = A249121 n

end A249121

/-! ## A249121.P5475571686067699913

`A001057(2*A061762(n))+n`
-/

namespace A249121.P5475571686067699913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A061762 n).toNat + (n : ℤ)

end

end A249121.P5475571686067699913

namespace A249121

/-- `A001057(2*A061762(n))+n` -/
def P5475571686067699913.Spec : Prop :=
  ∀ n, P5475571686067699913.a n = A249121 n

end A249121

/-! ## A249121.P8040750653328743547

`A070565(n)-A062329(10*n)`
-/

namespace A249121.P8040750653328743547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n - A062329 (10 * n)

end

end A249121.P8040750653328743547

namespace A249121

/-- `A070565(n)-A062329(10*n)` -/
def P8040750653328743547.Spec : Prop :=
  ∀ n, P8040750653328743547.a n = A249121 n

end A249121

/-!
# A249122: a(n) = floor(n / lpf(n^2 + 1)) where lpf(n^2 + 1) is the smallest prime divisor of n^2 + 1.

The programs for A249122, there is no canonical definition to state claims against.
-/

/-! ## A249122.P10790209891373251359

`floor(n/A089120(n+1))`
-/

namespace A249122.P10790209891373251359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A089120 (n + 1) : ℚ)⌋

end

end A249122.P10790209891373251359

/-! ## A249122.P18204608481873549498

`floor(n/A014442(A247339(n+1)))`
-/

namespace A249122.P18204608481873549498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A014442 (A247339 (n + 1)).toNat : ℚ)⌋

end

end A249122.P18204608481873549498

/-! ## A249122.P17605716004701551174

`floor(n/A259036(A247339(n+1)%A029925(n)))`
-/

namespace A249122.P17605716004701551174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A259036 (Int.tmod (A247339 (n + 1)) (A029925 n)).toNat : ℚ)⌋

end

end A249122.P17605716004701551174

/-! ## A249122.P13586310006469694820

`floor(n/(A250069(A247339(n+1))+A000290(((-1)^n)²)))`
-/

namespace A249122.P13586310006469694820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A250069 (A247339 (n + 1)).toNat + A000290 (((-1) ^ n) ^ 2).toNat : ℚ)⌋

end

end A249122.P13586310006469694820

/-! ## A249122.P3729232479196107465

`floor(n/(A250069(A247339(n+1))+A118943(((-1)^n)²)))`
-/

namespace A249122.P3729232479196107465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A250069 (A247339 (n + 1)).toNat + A118943 (((-1) ^ n) ^ 2).toNat : ℚ)⌋

end

end A249122.P3729232479196107465

/-! ## A249122.P1632693862671220584

`floor(n/(A250069(A247339(n+1))+A118945(((-1)^n)²)))`
-/

namespace A249122.P1632693862671220584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A250069 (A247339 (n + 1)).toNat + A118945 (((-1) ^ n) ^ 2).toNat : ℚ)⌋

end

end A249122.P1632693862671220584

/-! ## A249122.P8240530872839987758

`floor(n/A020639((n+1)²+1))`
-/

namespace A249122.P8240530872839987758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A020639 ((n + 1) ^ 2 + 1) : ℚ)⌋

end

end A249122.P8240530872839987758

/-! ## A249122.P4502624327021236179

`floor(n/∏{p}[A020639(A002522(n+1)), #])`
-/

namespace A249122.P4502624327021236179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002522 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)⌋

end

end A249122.P4502624327021236179

/-! ## A249122.P13825961068312437092

`floor(n/p?[(-1)^n*A020639(A033638(n))])`
-/

namespace A249122.P13825961068312437092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A020639 (A033638 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A249122.P13825961068312437092

/-! ## A249122.P9828875362849265914

`floor(n/A000027(A020639(n*(n+1)+n+2)))`
-/

namespace A249122.P9828875362849265914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000027 (A020639 (n * (n + 1) + (n + 2))).toNat : ℚ)⌋

end

end A249122.P9828875362849265914

/-! ## A249122.P764546464264604277

`floor(n/A020639(A002522(n+1))%A135177(n+1))`
-/

namespace A249122.P764546464264604277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.tmod (A020639 (A002522 (n + 1)).toNat) (A135177 (n + 1)) : ℚ)⌋

end

end A249122.P764546464264604277

/-!
# A249123: Position of n^6 in the ordered union of {h^6, h >= 1} and {2*k^6, k >= 1}.

The programs for A249123, the canonical program `A249123.P17577517703727172540` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249123 has offset 1).

The definition of A249123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249123.P17577517703727172540

`ceil((n+1)/root(2, 6)+n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249123

/-- `ceil((n+1)/root(2, 6)+n)` -/
def P17577517703727172540.Spec : Prop :=
  ∀ n, P17577517703727172540.a n = A249123 (n + 1)

theorem P17577517703727172540.correct : P17577517703727172540.Spec := by
  intro n
  simp only [A249123, Nat.add_sub_cancel]

end A249123

/-! ## A249123.P5321038129695790822

`comp[A249124(n+1)-1]+1`
-/

namespace A249123.P5321038129695790822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249124 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A249123.P5321038129695790822

namespace A249123

/-- `comp[A249124(n+1)-1]+1` -/
def P5321038129695790822.Spec : Prop :=
  ∀ n, (P5321038129695790822.a n : ℤ) = A249123 (n + 1)

end A249123

/-! ## A249123.P5556140363705250531

`floor(A000027(n+1)/root(2, 6)+n)+1`
-/

namespace A249123.P5556140363705250531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) / (2 : ℝ) ^ (1 / (6 : ℝ)) + (n : ℝ)⌋ + 1

end

end A249123.P5556140363705250531

namespace A249123

/-- `floor(A000027(n+1)/root(2, 6)+n)+1` -/
def P5556140363705250531.Spec : Prop :=
  ∀ n, P5556140363705250531.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P461757990224336128

`floor(A008619(2*n)+(n+1)/root(2, 6))`
-/

namespace A249123.P461757990224336128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 (2 * n) : ℝ) + (n + 1 : ℝ) / (2 : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A249123.P461757990224336128

namespace A249123

/-- `floor(A008619(2*n)+(n+1)/root(2, 6))` -/
def P461757990224336128.Spec : Prop :=
  ∀ n, P461757990224336128.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P5679177402211126391

`A110654(comp[A249117(n+1)-1]+1+n)`
-/

namespace A249123.P5679177402211126391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249117 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n)

end

end A249123.P5679177402211126391

namespace A249123

/-- `A110654(comp[A249117(n+1)-1]+1+n)` -/
def P5679177402211126391.Spec : Prop :=
  ∀ n, P5679177402211126391.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P16643053071699867054

`A002265(A002265(A002265(A008593(A008593(n+1)))))`
-/

namespace A249123.P16643053071699867054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (A002265 (A008593 (A008593 (n + 1)).toNat).toNat).toNat).toNat

end

end A249123.P16643053071699867054

namespace A249123

/-- `A002265(A002265(A002265(A008593(A008593(n+1)))))` -/
def P16643053071699867054.Spec : Prop :=
  ∀ n, P16643053071699867054.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P16920517280983373087

`A103128(∑[A285420(A003622(n+1))])`
-/

namespace A249123.P16920517280983373087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249123.P16920517280983373087

namespace A249123

/-- `A103128(∑[A285420(A003622(n+1))])` -/
def P16920517280983373087.Spec : Prop :=
  ∀ n, P16920517280983373087.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P2707254464827491885

`A003056(∑[A284777(A179185(n+1))])`
-/

namespace A249123.P2707254464827491885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (A179185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249123.P2707254464827491885

namespace A249123

/-- `A003056(∑[A284777(A179185(n+1))])` -/
def P2707254464827491885.Spec : Prop :=
  ∀ n, P2707254464827491885.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P17053912537503458561

`∑[A054977(A114099(2*n)²)]`
-/

namespace A249123.P17053912537503458561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A114099 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249123.P17053912537503458561

namespace A249123

/-- `∑[A054977(A114099(2*n)²)]` -/
def P17053912537503458561.Spec : Prop :=
  ∀ n, P17053912537503458561.a n = A249123 (n + 1)

end A249123

/-! ## A249123.P9855768209027776242

`∑[A168182(n)+A168181(A076734(n+1))]`
-/

namespace A249123.P9855768209027776242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n + A168181 (A076734 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249123.P9855768209027776242

namespace A249123

/-- `∑[A168182(n)+A168181(A076734(n+1))]` -/
def P9855768209027776242.Spec : Prop :=
  ∀ n, P9855768209027776242.a n = A249123 (n + 1)

end A249123

/-!
# A249124: Position of 2*n^6 in the ordered union of {h^6, h >= 1} and {2*k^6, k >= 1}.

The programs for A249124, the canonical program `A249124.P7306955947854699224` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249124 has offset 1).

The definition of A249124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249124.P7306955947854699224

`n+1+floor((2*(n+1)^6)^(1/6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249124

/-- `n+1+floor((2*(n+1)^6)^(1/6))` -/
def P7306955947854699224.Spec : Prop :=
  ∀ n, P7306955947854699224.a n = A249124 (n + 1)

theorem P7306955947854699224.correct : P7306955947854699224.Spec := by
  intro n
  simp only [A249124, Nat.add_sub_cancel]

end A249124

/-! ## A249124.P14048283639106564270

`A132270(A004771(2*n+1)-A004777(n+1))`
-/

namespace A249124.P14048283639106564270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A004771 (2 * n + 1) - A004777 (n + 1)).toNat

end

end A249124.P14048283639106564270

namespace A249124

/-- `A132270(A004771(2*n+1)-A004777(n+1))` -/
def P14048283639106564270.Spec : Prop :=
  ∀ n, P14048283639106564270.a n = A249124 (n + 1)

end A249124

/-! ## A249124.P13930074736775039145

`A132270(A008706(3*(n+1))-A132270(n+1))`
-/

namespace A249124.P13930074736775039145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A008706 (3 * (n + 1)) - A132270 (n + 1)).toNat

end

end A249124.P13930074736775039145

namespace A249124

/-- `A132270(A008706(3*(n+1))-A132270(n+1))` -/
def P13930074736775039145.Spec : Prop :=
  ∀ n, P13930074736775039145.a n = A249124 (n + 1)

end A249124

/-! ## A249124.P3724984818644322886

`A233583(A249117(2*(n+1))-n)`
-/

namespace A249124.P3724984818644322886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A249117 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A249124.P3724984818644322886

namespace A249124

/-- `A233583(A249117(2*(n+1))-n)` -/
def P3724984818644322886.Spec : Prop :=
  ∀ n, P3724984818644322886.a n = A249124 (n + 1)

end A249124

/-!
# A249125: Composite numbers which are a multiple of the concatenation of their prime factors A084317.

The programs for A249125, there is no canonical definition to state claims against.
-/

/-! ## A249125.P10021566658810203132

`filter[A324766(n+1), A319988(#)]`
-/

namespace A249125.P10021566658810203132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A249125.P10021566658810203132

/-! ## A249125.P13301132507793979952

`∩[A070003(n+1), A324766(n+1)]`
-/

namespace A249125.P13301132507793979952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249125.P13301132507793979952

/-! ## A249125.P11327984867153548061

`∩[A166402(n+1), A324766(n+1)]`
-/

namespace A249125.P11327984867153548061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249125.P11327984867153548061

/-!
# A249126: Product of the first n digits of Pi (treated as a number) and the first n digits of e (treated as a number).

The programs for A249126, the canonical program `A249126.P692876532044423129` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249126 has offset 1).

The definition of A249126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249126.P692876532044423129

`floor(10^n*π)*floor(10^n*e)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249126

/-- `floor(10^n*π)*floor(10^n*e)` -/
def P692876532044423129.Spec : Prop :=
  ∀ n, P692876532044423129.a n = A249126 (n + 1)

theorem P692876532044423129.correct : P692876532044423129.Spec := by
  intro n
  simp only [A249126, Nat.add_sub_cancel]

end A249126

/-! ## A249126.P11228044824568539726

`floor(A011543(n)/acot(A011545(n)))`
-/

namespace A249126.P11228044824568539726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011543 n : ℝ) / SequenceMachineLib.acot (A011545 n : ℝ)⌋

end

end A249126.P11228044824568539726

namespace A249126

/-- `floor(A011543(n)/acot(A011545(n)))` -/
def P11228044824568539726.Spec : Prop :=
  ∀ n, P11228044824568539726.a n = A249126 (n + 1)

end A249126

/-! ## A249126.P2779925297658670110

`(A011543(n)*A011545(n))%A011545(2*n+1)`
-/

namespace A249126.P2779925297658670110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011543 n * A011545 n) (A011545 (2 * n + 1))

end

end A249126.P2779925297658670110

namespace A249126

/-- `(A011543(n)*A011545(n))%A011545(2*n+1)` -/
def P2779925297658670110.Spec : Prop :=
  ∀ n, P2779925297658670110.a n = A249126 (n + 1)

end A249126

/-! ## A249126.P2212468892305857703

`abs((A129897(n)-A011543(n))*A011543(n))`
-/

namespace A249126.P2212468892305857703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A129897 n - A011543 n) * A011543 n|

end

end A249126.P2212468892305857703

namespace A249126

/-- `abs((A129897(n)-A011543(n))*A011543(n))` -/
def P2212468892305857703.Spec : Prop :=
  ∀ n, P2212468892305857703.a n = A249126 (n + 1)

end A249126

/-! ## A249126.P4060404528858065961

`abs((A129897(n)-A011545(n))*A011545(n))`
-/

namespace A249126.P4060404528858065961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A129897 n - A011545 n) * A011545 n|

end

end A249126.P4060404528858065961

namespace A249126

/-- `abs((A129897(n)-A011545(n))*A011545(n))` -/
def P4060404528858065961.Spec : Prop :=
  ∀ n, P4060404528858065961.a n = A249126 (n + 1)

end A249126

/-!
# A249127: a(n) = n * floor(3*n/2).

The programs for A249127, the canonical program `A249127.P8177612876883016470` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249127 has offset 0).

The definition of A249127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor(3*n/2)` (program `A249127.P8177612876883016470`, by `A249127.P8177612876883016470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249127.P8177612876883016470

`n*floor(3*n/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249127

/-- `n*floor(3*n/2)` -/
def P8177612876883016470.Spec : Prop :=
  ∀ n, P8177612876883016470.a n = A249127 n

theorem P8177612876883016470.correct : P8177612876883016470.Spec := by
  intro n
  simp only [A249127]

end A249127

/-! ## A249127.P59684964587010275

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=12, a(4)=24`
-/

namespace A249127.P59684964587010275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 12, 24] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A249127.P59684964587010275

namespace A249127

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P59684964587010275.Spec : Prop :=
  ∀ n, P59684964587010275.a n = A249127 n

end A249127

/-! ## A249127.P827212193503090911

`n*comp[lcm(3, n)]-n`
-/

namespace A249127.P827212193503090911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A249127.P827212193503090911

namespace A249127

/-- `n*comp[lcm(3, n)]-n` -/
def P827212193503090911.Spec : Prop :=
  ∀ n, P827212193503090911.a n = A249127 n

end A249127

/-! ## A249127.P15256162245680064710

`abs(n*(∑[gcd(2, n)]-2))`
-/

namespace A249127.P15256162245680064710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)|

end

end A249127.P15256162245680064710

namespace A249127

/-- `abs(n*(∑[gcd(2, n)]-2))` -/
def P15256162245680064710.Spec : Prop :=
  ∀ n, P15256162245680064710.a n = A249127 n

end A249127

/-! ## A249127.P7077076258126010481

`n*and(3*n, -2)/2`
-/

namespace A249127.P7077076258126010481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * Int.land (3 * n : ℤ) (-2) : ℚ) / 2

end

end A249127.P7077076258126010481

namespace A249127

/-- `n*and(3*n, -2)/2` -/
def P7077076258126010481.Spec : Prop :=
  ∀ n, P7077076258126010481.a n = (A249127 n : ℚ)

end A249127

/-! ## A249127.P1590311069667923125

`n*(comp[or(2, n)]+n)/2`
-/

namespace A249127.P1590311069667923125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) / 2

end

end A249127.P1590311069667923125

namespace A249127

/-- `n*(comp[or(2, n)]+n)/2` -/
def P1590311069667923125.Spec : Prop :=
  ∀ n, P1590311069667923125.a n = (A249127 n : ℚ)

end A249127

/-! ## A249127.P8328012171351233088

`n*(or(1, 3*n)-1)/2`
-/

namespace A249127.P8328012171351233088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((Nat.lor 1 (3 * n) : ℤ) - 1) : ℚ) / 2

end

end A249127.P8328012171351233088

namespace A249127

/-- `n*(or(1, 3*n)-1)/2` -/
def P8328012171351233088.Spec : Prop :=
  ∀ n, P8328012171351233088.a n = (A249127 n : ℚ)

end A249127

/-! ## A249127.P12284411657399832748

`n*(3*n-n%2)/2`
-/

namespace A249127.P12284411657399832748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((3 * n : ℤ) - ((n % 2 : ℕ) : ℤ)) : ℚ) / 2

end

end A249127.P12284411657399832748

namespace A249127

/-- `n*(3*n-n%2)/2` -/
def P12284411657399832748.Spec : Prop :=
  ∀ n, P12284411657399832748.a n = (A249127 n : ℚ)

end A249127

/-! ## A249127.P7564612666017204141

`abs(n*∑[(n-1)%2+1])`
-/

namespace A249127.P7564612666017204141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A249127.P7564612666017204141

namespace A249127

/-- `abs(n*∑[(n-1)%2+1])` -/
def P7564612666017204141.Spec : Prop :=
  ∀ n, P7564612666017204141.a n = A249127 n

end A249127

/-! ## A249127.P11614473704119760088

`floor(n*∑[3-a(n-1)])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A249127.P11614473704119760088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249127.P11614473704119760088

namespace A249127

/-- `floor(n*∑[3-a(n-1)])` -/
def P11614473704119760088.Spec : Prop :=
  ∀ n, P11614473704119760088.a n = A249127 n

end A249127

/-! ## A249127.P11126569780998340999

`n*∑[3-a(n-1)]-n` with `a(0)=1, a(1)=1`
-/

namespace A249127.P11126569780998340999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A249127.P11126569780998340999

namespace A249127

/-- `n*∑[3-a(n-1)]-n` -/
def P11126569780998340999.Spec : Prop :=
  ∀ n, P11126569780998340999.a n = A249127 n

end A249127

/-! ## A249127.P16729204488697600244

`n*∑[(n+1)%2+1]-2*n`
-/

namespace A249127.P16729204488697600244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (2 * n : ℤ)

end

end A249127.P16729204488697600244

namespace A249127

/-- `n*∑[(n+1)%2+1]-2*n` -/
def P16729204488697600244.Spec : Prop :=
  ∀ n, P16729204488697600244.a n = A249127 n

end A249127

/-! ## A249127.P18264822210923734218

`abs(n*A084056(n))`
-/

namespace A249127.P18264822210923734218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A084056 n|

end

end A249127.P18264822210923734218

namespace A249127

/-- `abs(n*A084056(n))` -/
def P18264822210923734218.Spec : Prop :=
  ∀ n, P18264822210923734218.a n = A249127 n

end A249127

/-! ## A249127.P10659070580712844338

`lcm(n, n*A032766(n))`
-/

namespace A249127.P10659070580712844338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A032766 n)

end

end A249127.P10659070580712844338

namespace A249127

/-- `lcm(n, n*A032766(n))` -/
def P10659070580712844338.Spec : Prop :=
  ∀ n, (P10659070580712844338.a n : ℤ) = A249127 n

end A249127

/-! ## A249127.P12562513901210226276

`n²+n*A004526(n)`
-/

namespace A249127.P12562513901210226276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n : ℤ) * A004526 n

end

end A249127.P12562513901210226276

namespace A249127

/-- `n²+n*A004526(n)` -/
def P12562513901210226276.Spec : Prop :=
  ∀ n, P12562513901210226276.a n = A249127 n

end A249127

/-! ## A249127.P5718484681470884238

`n*A001651(n+1)-n`
-/

namespace A249127.P5718484681470884238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001651 (n + 1) - (n : ℤ)

end

end A249127.P5718484681470884238

namespace A249127

/-- `n*A001651(n+1)-n` -/
def P5718484681470884238.Spec : Prop :=
  ∀ n, P5718484681470884238.a n = A249127 n

end A249127

/-! ## A249127.P9005630003876320103

`abs((∑[char[2*n]]+n-1)*A028310(n))`
-/

namespace A249127.P9005630003876320103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)) * A028310 n|

end

end A249127.P9005630003876320103

namespace A249127

/-- `abs((∑[char[2*n]]+n-1)*A028310(n))` -/
def P9005630003876320103.Spec : Prop :=
  ∀ n, P9005630003876320103.a n = A249127 n

end A249127

/-! ## A249127.P7677097379915855182

`n*lt[3, A020639(2*n+1)]-2*n`
-/

namespace A249127.P7677097379915855182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (2 * n : ℤ)

end

end A249127.P7677097379915855182

namespace A249127

/-- `n*lt[3, A020639(2*n+1)]-2*n` -/
def P7677097379915855182.Spec : Prop :=
  ∀ n, P7677097379915855182.a n = A249127 n

end A249127

/-! ## A249127.P9594649310921123263

`A032527(n)+A008794(n)`
-/

namespace A249127.P9594649310921123263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 n + A008794 n

end

end A249127.P9594649310921123263

namespace A249127

/-- `A032527(n)+A008794(n)` -/
def P9594649310921123263.Spec : Prop :=
  ∀ n, P9594649310921123263.a n = A249127 n

end A249127

/-!
# A249128: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249128, there is no canonical definition to state claims against.
-/

/-! ## A249128.P17170039410727432359

`A249130(n)/A060546(A025581(n))`
-/

namespace A249128.P17170039410727432359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249130 n : ℚ) / (A060546 (A025581 n).toNat : ℚ)

end

end A249128.P17170039410727432359

/-! ## A249128.P12120192562164219680

`A249130(n)/A016116(A004736(n+1))`
-/

namespace A249128.P12120192562164219680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249130 n : ℚ) / (A016116 (A004736 (n + 1)).toNat : ℚ)

end

end A249128.P12120192562164219680

/-! ## A249128.P4097631505154328073

`A249130(n)/A016116(sqrt(A055461(n+1)))`
-/

namespace A249128.P4097631505154328073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249130 n : ℚ) / (A016116 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat : ℚ)

end

end A249128.P4097631505154328073

/-! ## A249128.P100261094891522616

`A249130(n)/A019554(A130321(n))`
-/

namespace A249128.P100261094891522616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249130 n : ℚ) / (A019554 (A130321 n).toNat : ℚ)

end

end A249128.P100261094891522616

/-!
# A249129: Lexicographically earliest sequence of distinct nonnegative integers such that a(2n) = a(n) + a(n+1) for all n >= 0.

The programs for A249129, there is no canonical definition to state claims against.
-/

/-! ## A249129.P13803520115343320908

`A249161(n)+n`
-/

namespace A249129.P13803520115343320908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 n + (n : ℤ)

end

end A249129.P13803520115343320908

/-! ## A249129.P17335205661387491518

`A249029(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A249129.P17335205661387491518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249029 (n - 1) + a (n - 1)

end

end A249129.P17335205661387491518

/-! ## A249129.P4980761298605078806

`∑[A249029(n)]-Δ[A249161(n)]`
-/

namespace A249129.P4980761298605078806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A249129.P4980761298605078806

/-! ## A249129.P11247521998678331695

`2*n-(lcm(n, A040001(n))-A249161(n))`
-/

namespace A249129.P11247521998678331695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Int.lcm (n : ℤ) (A040001 n) : ℤ) - A249161 n)

end

end A249129.P11247521998678331695

/-! ## A249129.P11982055040207266694

`A000225(n)-(A000295(n)-A249161(n))`
-/

namespace A249129.P11982055040207266694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A000295 n - A249161 n)

end

end A249129.P11982055040207266694

/-! ## A249129.P5214011325542097043

`log2(A000302(n))-(n-A249161(n))`
-/

namespace A249129.P5214011325542097043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000302 n : ℝ) - ((n : ℤ) - A249161 n : ℝ)

end

end A249129.P5214011325542097043

/-! ## A249129.P7101170833451312932

`n-(1-A249161(n)-A027907(n²))`
-/

namespace A249129.P7101170833451312932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A249161 n - A027907 (n ^ 2))

end

end A249129.P7101170833451312932

/-!
# A249130: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249130, there is no canonical definition to state claims against.
-/

/-! ## A249130.P16420653952619951182

`A060546(A025581(n))*A249128(n)`
-/

namespace A249130.P16420653952619951182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A025581 n).toNat * A249128 n

end

end A249130.P16420653952619951182

/-! ## A249130.P5314057858917972060

`A016116(A004736(n+1))*A249128(n)`
-/

namespace A249130.P5314057858917972060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004736 (n + 1)).toNat * A249128 n

end

end A249130.P5314057858917972060

/-! ## A249130.P2407231955832788327

`A016116(sqrt(A055461(n+1)))*A249128(n)`
-/

namespace A249130.P2407231955832788327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat * A249128 n

end

end A249130.P2407231955832788327

/-! ## A249130.P17587788315271169708

`A019554(A130321(n))*A249128(n)`
-/

namespace A249130.P17587788315271169708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A130321 n).toNat * A249128 n

end

end A249130.P17587788315271169708

/-! ## A249130.P6235931981097082032

`gcd(A114192(n), A114212(A114320(n)))`
-/

namespace A249130.P6235931981097082032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114192 n) (A114212 (A114320 n).toNat)

end

end A249130.P6235931981097082032

/-!
# A249131: p(1,n), where the polynomial p(n,x) is defined in Comments; sum of the numbers in row n of the triangular array at A249130.

The programs for A249131, there is no canonical definition to state claims against.
-/

/-! ## A249131.P4395294244944081305

`∏[(n%2+n)/a(n-1)+1]` with `a(0)=1`
-/

namespace A249131.P4395294244944081305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n % 2 + n : ℕ) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A249131.P4395294244944081305

/-! ## A249131.P4971085022663671472

`a(n-1)+(and(1, n)+n)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A249131.P4971085022663671472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (Nat.land 1 n + n) * a (n - 2)

end

end A249131.P4971085022663671472

/-! ## A249131.P16359287648303768963

`a(n-1)+(or(1, n+1)-1)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A249131.P16359287648303768963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + ((Nat.lor 1 (n + 1) : ℤ) - 1) * a (n - 2)

end

end A249131.P16359287648303768963

/-! ## A249131.P8592467267624954888

`∪[A025168(n+1), A025167(n)]`
-/

namespace A249131.P8592467267624954888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025167 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249131.P8592467267624954888

/-!
# A249133: Triangle read by rows: interleaving successive pairs of rows of Sierpiński's triangle.

The programs for A249133, the canonical program `A249133.P6513466101138431158` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249133 has offset 0).

The definition of A249133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249133.P6513466101138431158

`A249095(n)%2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A249133

/-- `A249095(n)%2` -/
def P6513466101138431158.Spec : Prop :=
  ∀ n, P6513466101138431158.a n = A249133 n

theorem P6513466101138431158.correct : P6513466101138431158.Spec := by
  intro n
  simp only [A249133]

end A249133

/-! ## A249133.P11584391838223660798

`and(1, A017082(n)*A249095(n))`
-/

namespace A249133.P11584391838223660798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017082 n * A249095 n)

end

end A249133.P11584391838223660798

namespace A249133

/-- `and(1, A017082(n)*A249095(n))` -/
def P11584391838223660798.Spec : Prop :=
  ∀ n, P11584391838223660798.a n = A249133 n

end A249133

/-! ## A249133.P12031795532920468371

`and(A007318(C(2, n)), A249095(n))`
-/

namespace A249133.P12031795532920468371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (Nat.choose 2 n)) (A249095 n)

end

end A249133.P12031795532920468371

namespace A249133

/-- `and(A007318(C(2, n)), A249095(n))` -/
def P12031795532920468371.Spec : Prop :=
  ∀ n, P12031795532920468371.a n = A249133 n

end A249133

/-! ## A249133.P1617757424366189171

`and(1, (A008514(n)*A249095(n))²)`
-/

namespace A249133.P1617757424366189171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A008514 n * A249095 n) ^ 2)

end

end A249133.P1617757424366189171

namespace A249133

/-- `and(1, (A008514(n)*A249095(n))²)` -/
def P1617757424366189171.Spec : Prop :=
  ∀ n, P1617757424366189171.a n = A249133 n

end A249133

/-! ## A249133.P809641233942648192

`(A249307(n)/A000079(A053186(n)))%2`
-/

namespace A249133.P809641233942648192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A249307 n : ℚ) / (A000079 (A053186 n).toNat : ℚ))) 2

end

end A249133.P809641233942648192

namespace A249133

/-- `(A249307(n)/A000079(A053186(n)))%2` -/
def P809641233942648192.Spec : Prop :=
  ∀ n, P809641233942648192.a n = A249133 n

end A249133

/-! ## A249133.P3475030543881898337

`and(A001055(A000040(n+1)), A249095(n))`
-/

namespace A249133.P3475030543881898337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001055 (A000040 (n + 1)).toNat) (A249095 n)

end

end A249133.P3475030543881898337

namespace A249133

/-- `and(A001055(A000040(n+1)), A249095(n))` -/
def P3475030543881898337.Spec : Prop :=
  ∀ n, P3475030543881898337.a n = A249133 n

end A249133

/-! ## A249133.P11150771182268096155

`A072405(A316965(n)+1)%2`
-/

namespace A249133.P11150771182268096155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072405 (A316965 n + 1).toNat) 2

end

end A249133.P11150771182268096155

namespace A249133

/-- `A072405(A316965(n)+1)%2` -/
def P11150771182268096155.Spec : Prop :=
  ∀ n, P11150771182268096155.a n = A249133 n

end A249133

/-! ## A249133.P16621617891163332600

`and(1, (A014761(n+1)*A249095(n))²)`
-/

namespace A249133.P16621617891163332600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014761 (n + 1) * A249095 n) ^ 2)

end

end A249133.P16621617891163332600

namespace A249133

/-- `and(1, (A014761(n+1)*A249095(n))²)` -/
def P16621617891163332600.Spec : Prop :=
  ∀ n, P16621617891163332600.a n = A249133 n

end A249133

/-! ## A249133.P4054925253123172287

`and(A174692(n), A249095(n))`
-/

namespace A249133.P4054925253123172287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A249095 n)

end

end A249133.P4054925253123172287

namespace A249133

/-- `and(A174692(n), A249095(n))` -/
def P4054925253123172287.Spec : Prop :=
  ∀ n, P4054925253123172287.a n = A249133 n

end A249133

/-! ## A249133.P11649651239260629444

`and(A083318(n), A249095(n))`
-/

namespace A249133.P11649651239260629444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A249095 n)

end

end A249133.P11649651239260629444

namespace A249133

/-- `and(A083318(n), A249095(n))` -/
def P11649651239260629444.Spec : Prop :=
  ∀ n, P11649651239260629444.a n = A249133 n

end A249133

/-! ## A249133.P135752745446870337

`and(A048578(n), A249095(n))`
-/

namespace A249133.P135752745446870337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A249095 n)

end

end A249133.P135752745446870337

namespace A249133

/-- `and(A048578(n), A249095(n))` -/
def P135752745446870337.Spec : Prop :=
  ∀ n, P135752745446870337.a n = A249133 n

end A249133

/-! ## A249133.P4934394260545911581

`and(A066827(n+1), A249095(n))`
-/

namespace A249133.P4934394260545911581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A249095 n)

end

end A249133.P4934394260545911581

namespace A249133

/-- `and(A066827(n+1), A249095(n))` -/
def P4934394260545911581.Spec : Prop :=
  ∀ n, P4934394260545911581.a n = A249133 n

end A249133

/-! ## A249133.P4408606421636353750

`and(A020737(n), A249095(n))`
-/

namespace A249133.P4408606421636353750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A249095 n)

end

end A249133.P4408606421636353750

namespace A249133

/-- `and(A020737(n), A249095(n))` -/
def P4408606421636353750.Spec : Prop :=
  ∀ n, P4408606421636353750.a n = A249133 n

end A249133

/-! ## A249133.P13370247031303404148

`and(A033622(n), A249095(n))`
-/

namespace A249133.P13370247031303404148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A249095 n)

end

end A249133.P13370247031303404148

namespace A249133

/-- `and(A033622(n), A249095(n))` -/
def P13370247031303404148.Spec : Prop :=
  ∀ n, P13370247031303404148.a n = A249133 n

end A249133

/-! ## A249133.P3143000198311129405

`and(A195744(n), A249095(n))`
-/

namespace A249133.P3143000198311129405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A249095 n)

end

end A249133.P3143000198311129405

namespace A249133

/-- `and(A195744(n), A249095(n))` -/
def P3143000198311129405.Spec : Prop :=
  ∀ n, P3143000198311129405.a n = A249133 n

end A249133

/-! ## A249133.P16490383775387716022

`and(A122041(n+1), A249095(n))`
-/

namespace A249133.P16490383775387716022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A249095 n)

end

end A249133.P16490383775387716022

namespace A249133

/-- `and(A122041(n+1), A249095(n))` -/
def P16490383775387716022.Spec : Prop :=
  ∀ n, P16490383775387716022.a n = A249133 n

end A249133

/-! ## A249133.P3620136069790589558

`and(A196657(n), A249095(n))`
-/

namespace A249133.P3620136069790589558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A249095 n)

end

end A249133.P3620136069790589558

namespace A249133

/-- `and(A196657(n), A249095(n))` -/
def P3620136069790589558.Spec : Prop :=
  ∀ n, P3620136069790589558.a n = A249133 n

end A249133

/-! ## A249133.P16521352174271092444

`and(A249095(n), A345109(n+1))`
-/

namespace A249133.P16521352174271092444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249095 n) (A345109 (n + 1))

end

end A249133.P16521352174271092444

namespace A249133

/-- `and(A249095(n), A345109(n+1))` -/
def P16521352174271092444.Spec : Prop :=
  ∀ n, P16521352174271092444.a n = A249133 n

end A249133

/-! ## A249133.P10416442907240333640

`and(A249095(n), A345108(n+1))`
-/

namespace A249133.P10416442907240333640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249095 n) (A345108 (n + 1))

end

end A249133.P10416442907240333640

namespace A249133

/-- `and(A249095(n), A345108(n+1))` -/
def P10416442907240333640.Spec : Prop :=
  ∀ n, P10416442907240333640.a n = A249133 n

end A249133

/-! ## A249133.P2238114309812033336

`and(A002064(n), A249095(n))`
-/

namespace A249133.P2238114309812033336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A249095 n)

end

end A249133.P2238114309812033336

namespace A249133

/-- `and(A002064(n), A249095(n))` -/
def P2238114309812033336.Spec : Prop :=
  ∀ n, P2238114309812033336.a n = A249133 n

end A249133

/-!
# A249135: Product of the n-th digit of Pi, the n-th digit of e and the n-th digit of the golden ratio phi.

The programs for A249135, there is no canonical definition to state claims against.
-/

/-! ## A249135.P13860010682385582645

`A000796(n)*A001113(n)*A001622(n)`
-/

namespace A249135.P13860010682385582645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001113 (n + 1) * A001622 (n + 1)

end

end A249135.P13860010682385582645

/-! ## A249135.P10381275051220502927

`A001622(n)*A073177(n)`
-/

namespace A249135.P10381275051220502927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A073177 n

end

end A249135.P10381275051220502927

/-! ## A249135.P2649694882384112787

`A228239(n+1)*A231325(n+1)*A001622(n)`
-/

namespace A249135.P2649694882384112787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) * A231325 (n + 1) * A001622 (n + 1)

end

end A249135.P2649694882384112787

/-! ## A249135.P12214937195301921544

`A001113(n)*A197568(n)`
-/

namespace A249135.P12214937195301921544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A197568 n

end

end A249135.P12214937195301921544

/-! ## A249135.P12611290977565178623

`A001355(2*(n+1))*A197568(n)`
-/

namespace A249135.P12611290977565178623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) * A197568 n

end

end A249135.P12611290977565178623

/-! ## A249135.P10742460374697775972

`(A073212(n)-A000796(n))*A197568(n)`
-/

namespace A249135.P10742460374697775972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A000796 (n + 1)) * A197568 n

end

end A249135.P10742460374697775972

/-! ## A249135.P14737801426452019231

`(A000796(n)-A187747(n))*A197568(n)`
-/

namespace A249135.P14737801426452019231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) - A187747 n) * A197568 n

end

end A249135.P14737801426452019231

/-!
# A249138: Triangular array read by rows: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249138, there is no canonical definition to state claims against.
-/

/-! ## A249138.P11584766067672846673

`A053344(A114423(n)^A034253(n+1))`
-/

namespace A249138.P11584766067672846673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053344 (SequenceMachineLib.roundAway ((A114423 n : ℚ) ^ (A034253 (n + 1) : ℤ))).toNat

end

end A249138.P11584766067672846673

/-! ## A249138.P14037964473556138505

`A008480(lcm(2, A118022(n)))`
-/

namespace A249138.P14037964473556138505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.lcm 2 (A118022 n))

end

end A249138.P14037964473556138505

/-! ## A249138.P7973934340892497809

`A162371(A132625(n))%11`
-/

namespace A249138.P7973934340892497809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162371 (A132625 n).toNat) 11

end

end A249138.P7973934340892497809

/-! ## A249138.P6658632666964665304

`A046951(A137688(A230698(n)²))`
-/

namespace A249138.P6658632666964665304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A137688 (A230698 n ^ 2).toNat).toNat

end

end A249138.P6658632666964665304

/-! ## A249138.P14195899735888740649

`A274011(A051068(A230698(n))²)`
-/

namespace A249138.P14195899735888740649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A051068 (A230698 n).toNat ^ 2).toNat

end

end A249138.P14195899735888740649

/-!
# A249139: Triangular array read by rows: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249139, there is no canonical definition to state claims against.
-/

/-! ## A249139.P9059059770418363528

`A073370(A091018(n+1))`
-/

namespace A249139.P9059059770418363528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A091018 (n + 1)).toNat

end

end A249139.P9059059770418363528

/-! ## A249139.P8364759531331420293

`A073370(A056536(n+2)-1)`
-/

namespace A249139.P8364759531331420293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A056536 (n + 2) - 1).toNat

end

end A249139.P8364759531331420293

/-!
# A249140: To obtain a(n), write the n-th composite number as a product of primes, subtract 1 from each prime and multiply.

The programs for A249140, the canonical program `A249140.P13605386914329055997` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249140 has offset 1).

The definition of A249140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249140.P13605386914329055997

`A003958(A002808(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A249140

/-- `A003958(A002808(n+1))` -/
def P13605386914329055997.Spec : Prop :=
  ∀ n, P13605386914329055997.a n = A249140 (n + 1)

theorem P13605386914329055997.correct : P13605386914329055997.Spec := by
  intro n
  simp only [A249140, Nat.add_sub_cancel]

end A249140

/-! ## A249140.P11209900358419067025

`A003958(A056653(n+1))`
-/

namespace A249140.P11209900358419067025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A056653 (n + 1)).toNat

end

end A249140.P11209900358419067025

namespace A249140

/-- `A003958(A056653(n+1))` -/
def P11209900358419067025.Spec : Prop :=
  ∀ n, P11209900358419067025.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P5885761692012451560

`A003958(A282671(n+1))`
-/

namespace A249140.P5885761692012451560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A282671 (n + 1)).toNat

end

end A249140.P5885761692012451560

namespace A249140

/-- `A003958(A282671(n+1))` -/
def P5885761692012451560.Spec : Prop :=
  ∀ n, P5885761692012451560.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P9579104034193759555

`A003958(A018252(n+2))`
-/

namespace A249140.P9579104034193759555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A018252 (n + 2)).toNat

end

end A249140.P9579104034193759555

namespace A249140

/-- `A003958(A018252(n+2))` -/
def P9579104034193759555.Spec : Prop :=
  ∀ n, P9579104034193759555.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P5654707558055496157

`A003958(lt[0, A082023(n)])`
-/

namespace A249140.P5654707558055496157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A249140.P5654707558055496157

namespace A249140

/-- `A003958(lt[0, A082023(n)])` -/
def P5654707558055496157.Spec : Prop :=
  ∀ n, P5654707558055496157.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P2151038191809224831

`A003958(lt[1, A328847(n)])`
-/

namespace A249140.P2151038191809224831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A249140.P2151038191809224831

namespace A249140

/-- `A003958(lt[1, A328847(n)])` -/
def P2151038191809224831.Spec : Prop :=
  ∀ n, P2151038191809224831.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P15147297929149174717

`A003958(A072668(n+1)+1)`
-/

namespace A249140.P15147297929149174717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A072668 (n + 1) + 1).toNat

end

end A249140.P15147297929149174717

namespace A249140

/-- `A003958(A072668(n+1)+1)` -/
def P15147297929149174717.Spec : Prop :=
  ∀ n, P15147297929149174717.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P17788681305770080758

`A003958(lt[1, A001222(n+1)]+1)`
-/

namespace A249140.P17788681305770080758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A249140.P17788681305770080758

namespace A249140

/-- `A003958(lt[1, A001222(n+1)]+1)` -/
def P17788681305770080758.Spec : Prop :=
  ∀ n, P17788681305770080758.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P9972237520396894494

`A003958(lt[2, A000005(n+1)]+1)`
-/

namespace A249140.P9972237520396894494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A249140.P9972237520396894494

namespace A249140

/-- `A003958(lt[2, A000005(n+1)]+1)` -/
def P9972237520396894494.Spec : Prop :=
  ∀ n, P9972237520396894494.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P9708152087743767933

`A003958(lt[A000010(n+1), n]+1)`
-/

namespace A249140.P9708152087743767933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A249140.P9708152087743767933

namespace A249140

/-- `A003958(lt[A000010(n+1), n]+1)` -/
def P9708152087743767933.Spec : Prop :=
  ∀ n, P9708152087743767933.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P10011130701685661164

`A003958(lt[A003958(n+1), n]+1)`
-/

namespace A249140.P10011130701685661164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A249140.P10011130701685661164

namespace A249140

/-- `A003958(lt[A003958(n+1), n]+1)` -/
def P10011130701685661164.Spec : Prop :=
  ∀ n, P10011130701685661164.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P4714768564887406895

`A003958(comp[A020639(n+3)-2]+2)`
-/

namespace A249140.P4714768564887406895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A249140.P4714768564887406895

namespace A249140

/-- `A003958(comp[A020639(n+3)-2]+2)` -/
def P4714768564887406895.Spec : Prop :=
  ∀ n, P4714768564887406895.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P12235948500406796817

`A003958(comp[A006530(n+5)-2]+2)`
-/

namespace A249140.P12235948500406796817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A249140.P12235948500406796817

namespace A249140

/-- `A003958(comp[A006530(n+5)-2]+2)` -/
def P12235948500406796817.Spec : Prop :=
  ∀ n, P12235948500406796817.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P15772694886555170593

`A003958(A139270(n+2))`
-/

namespace A249140.P15772694886555170593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A139270 (n + 2)).toNat

end

end A249140.P15772694886555170593

namespace A249140

/-- `A003958(A139270(n+2))` -/
def P15772694886555170593.Spec : Prop :=
  ∀ n, P15772694886555170593.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P16093624302875793754

`A003958(A326776(n+2))`
-/

namespace A249140.P16093624302875793754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A326776 (n + 2)).toNat

end

end A249140.P16093624302875793754

namespace A249140

/-- `A003958(A326776(n+2))` -/
def P16093624302875793754.Spec : Prop :=
  ∀ n, P16093624302875793754.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P14480169468205440719

`A003958(lt[1, A223135(n)])`
-/

namespace A249140.P14480169468205440719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A249140.P14480169468205440719

namespace A249140

/-- `A003958(lt[1, A223135(n)])` -/
def P14480169468205440719.Spec : Prop :=
  ∀ n, P14480169468205440719.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P17932799853020796681

`∏{d}[A018252(n+2), A000010(A014963(#))]`
-/

namespace A249140.P17932799853020796681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000010 (A014963 d).toNat

end

end A249140.P17932799853020796681

namespace A249140

/-- `∏{d}[A018252(n+2), A000010(A014963(#))]` -/
def P17932799853020796681.Spec : Prop :=
  ∀ n, P17932799853020796681.a n = A249140 (n + 1)

end A249140

/-! ## A249140.P9671299884338942849

`A167344(A002808(n+1))/A114434(n+1)`
-/

namespace A249140.P9671299884338942849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (A002808 (n + 1)).toNat : ℚ) / (A114434 (n + 1) : ℚ)

end

end A249140.P9671299884338942849

namespace A249140

/-- `A167344(A002808(n+1))/A114434(n+1)` -/
def P9671299884338942849.Spec : Prop :=
  ∀ n, P9671299884338942849.a n = (A249140 (n + 1) : ℚ)

end A249140

/-!
# A249142: Let k be the difference between the smallest square >= n and n. Sequence gives difference between the smallest square >= k and k.

The programs for A249142, the canonical program `A249142.P1672742175165314576` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249142 has offset 1).

The definition of A249142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249142.P1672742175165314576

`A068527(A068527(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249142

/-- `A068527(A068527(n+1))` -/
def P1672742175165314576.Spec : Prop :=
  ∀ n, P1672742175165314576.a n = A249142 (n + 1)

theorem P1672742175165314576.correct : P1672742175165314576.Spec := by
  intro n
  simp only [A249142, Nat.add_sub_cancel]

end A249142

/-! ## A249142.P5683150773963708471

`A068527(A080883(n)-1)`
-/

namespace A249142.P5683150773963708471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A080883 n - 1).toNat

end

end A249142.P5683150773963708471

namespace A249142

/-- `A068527(A080883(n)-1)` -/
def P5683150773963708471.Spec : Prop :=
  ∀ n, P5683150773963708471.a n = A249142 (n + 1)

end A249142

/-! ## A249142.P9250658828916145891

`A068527(A000196(n)-A196199(n))`
-/

namespace A249142.P9250658828916145891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A000196 n - A196199 n).toNat

end

end A249142.P9250658828916145891

namespace A249142

/-- `A068527(A000196(n)-A196199(n))` -/
def P9250658828916145891.Spec : Prop :=
  ∀ n, P9250658828916145891.a n = A249142 (n + 1)

end A249142

/-! ## A249142.P12026211469159641279

`A068527(sqrt(A048760(n))-A196199(n))`
-/

namespace A249142.P12026211469159641279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.roundAway (Real.sqrt (A048760 n : ℝ) - (A196199 n : ℝ))).toNat

end

end A249142.P12026211469159641279

namespace A249142

/-- `A068527(sqrt(A048760(n))-A196199(n))` -/
def P12026211469159641279.Spec : Prop :=
  ∀ n, P12026211469159641279.a n = A249142 (n + 1)

end A249142

/-! ## A249142.P15507956452213801675

`∑[-Δ[-A068527(A068527(n))]]`
-/

namespace A249142.P15507956452213801675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A068527 (A068527 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249142.P15507956452213801675

namespace A249142

/-- `∑[-Δ[-A068527(A068527(n))]]` -/
def P15507956452213801675.Spec : Prop :=
  ∀ n, P15507956452213801675.a n = A249142 (n + 1)

end A249142

/-!
# A249143: Length of the rightmost run in the binary representation of A241944: a(n) = A136480(A249144(n)).

The programs for A249143, there is no canonical definition to state claims against.
-/

/-! ## A249143.P17181026397224105201

`A136480(A249144(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249143.P17181026397224105201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A249144 (n + 1)).toNat

end

end A249143.P17181026397224105201

/-! ## A249143.P10067486334731557806

`A050603(A249144(n+1)-1)`
-/

namespace A249143.P10067486334731557806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A249144 (n + 1) - 1).toNat

end

end A249143.P10067486334731557806

/-! ## A249143.P16951523396665112264

`A231719(xor(A126182(n)², A231689(n)))`
-/

namespace A249143.P16951523396665112264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 (Int.xor (A126182 n ^ 2) (A231689 n)).toNat

end

end A249143.P16951523396665112264

/-! ## A249143.P16718053974378715090

`A329313(A084393(n+1)*A132749(n))`
-/

namespace A249143.P16718053974378715090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A084393 (n + 1) * A132749 n).toNat

end

end A249143.P16718053974378715090

/-! ## A249143.P5574678909499087393

`A257990(A359253(n+2)+A109259(n+1))`
-/

namespace A249143.P5574678909499087393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A359253 (n + 2) + A109259 (n + 1)).toNat

end

end A249143.P5574678909499087393

/-!
# A249145: Length of the maximal run in the binary representation of A241946: a(n) = A043276(A249146(n)).

The programs for A249145, there is no canonical definition to state claims against.
-/

/-! ## A249145.P16871183070971026142

`A043276(A249146(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249145.P16871183070971026142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A249146 (n + 1)).toNat

end

end A249145.P16871183070971026142

/-! ## A249145.P35016144530554643

`A231813(xor(A064078(n+1), A333224(n)))`
-/

namespace A249145.P35016144530554643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.xor (A064078 (n + 1)) (A333224 n)).toNat

end

end A249145.P35016144530554643

/-! ## A249145.P7898275460546045967

`A339876(n+1)+A007814(A279095(n+1))`
-/

namespace A249145.P7898275460546045967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339876 (n + 1) + A007814 (A279095 (n + 1)).toNat

end

end A249145.P7898275460546045967

/-! ## A249145.P7819072756476275214

`gcd(4, A290103(∑[ceil(2^(n-2))]))`
-/

namespace A249145.P7819072756476275214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A290103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A249145.P7819072756476275214

/-! ## A249145.P2600184996192659508

`A046951(A075165(n+2))`
-/

namespace A249145.P2600184996192659508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A075165 (n + 2)).toNat

end

end A249145.P2600184996192659508

/-!
# A249147: a(n) = 0 if A249148(n) = 1, otherwise the index of the least prime dividing A249148(n): a(n) = A055396(A249148(n)).

The programs for A249147, there is no canonical definition to state claims against.
-/

/-! ## A249147.P12102561589736717593

`A055396(A249148(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249147.P12102561589736717593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A249148 (n + 1)).toNat

end

end A249147.P12102561589736717593

/-! ## A249147.P12628910477251848020

`∑{d}[A020639(A249148(n+1)), A000720(#)]`
-/

namespace A249147.P12628910477251848020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A249147.P12628910477251848020

/-! ## A249147.P14353389468947044885

`∑{d}[A020639(A249148(n+1)), A049084(#)]`
-/

namespace A249147.P14353389468947044885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A249147.P14353389468947044885

/-! ## A249147.P14549220404243366430

`∑{d}[A020639(A249148(n+1)), A056239(#)]`
-/

namespace A249147.P14549220404243366430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A249147.P14549220404243366430

/-! ## A249147.P15692495855589639367

`A061395(A020639(A249148(n+1))²)`
-/

namespace A249147.P15692495855589639367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A249148 (n + 1)).toNat ^ 2).toNat

end

end A249147.P15692495855589639367

/-! ## A249147.P11108903309577531641

`A049084(A020639(A249148(n+1)²))`
-/

namespace A249147.P11108903309577531641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A020639 (A249148 (n + 1) ^ 2).toNat).toNat

end

end A249147.P11108903309577531641

/-!
# A249149: One more than positions of records in A249442.

The programs for A249149, there is no canonical definition to state claims against.
-/

/-! ## A249149.P16282215241274134118

`A249440(n+1)+1`
-/

namespace A249149.P16282215241274134118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249440 (n + 1) + 1

end

end A249149.P16282215241274134118

/-!
# A249150: Number of trailing zeros in the factorial base representation of products of binomial coefficients: a(n) = A230403(A001142(n)).

The programs for A249150, there is no canonical definition to state claims against.
-/

/-! ## A249150.P18425719869536361764

`A249151(n)-1`
-/

namespace A249150.P18425719869536361764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n - 1

end

end A249150.P18425719869536361764

/-! ## A249150.P16116084345262555247

`A249431(n)-1+n`
-/

namespace A249150.P16116084345262555247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n - 1 + (n : ℤ)

end

end A249150.P16116084345262555247

/-! ## A249150.P3739513177411637580

`A023443(A249151(n))`
-/

namespace A249150.P3739513177411637580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249151 n).toNat

end

end A249150.P3739513177411637580

/-! ## A249150.P12192268210343424813

`A023444(A249151(n)+1)`
-/

namespace A249150.P12192268210343424813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A249151 n + 1).toNat

end

end A249150.P12192268210343424813

/-! ## A249150.P5956754477277413854

`A289207(A249151(n)+1)`
-/

namespace A249150.P5956754477277413854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A249151 n + 1).toNat

end

end A249150.P5956754477277413854

/-! ## A249150.P17643172304577685971

`A140106(2*A249151(n))`
-/

namespace A249150.P17643172304577685971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A249151 n).toNat

end

end A249150.P17643172304577685971

/-! ## A249150.P14777137427663246935

`A249738(2*A249151(n))`
-/

namespace A249150.P14777137427663246935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A249151 n).toNat

end

end A249150.P14777137427663246935

/-! ## A249150.P2013792769054575068

`A279119(2*A249151(n))`
-/

namespace A249150.P2013792769054575068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A249151 n).toNat

end

end A249150.P2013792769054575068

/-! ## A249150.P2207216363434747783

`A377734(2*A249151(n))`
-/

namespace A249150.P2207216363434747783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (2 * A249151 n).toNat

end

end A249150.P2207216363434747783

/-! ## A249150.P2118043480561441568

`A023443(A249431(n)+n)`
-/

namespace A249150.P2118043480561441568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249431 n + (n : ℤ)).toNat

end

end A249150.P2118043480561441568

/-! ## A249150.P18203762574042251495

`A249431(n)-A024000(n)`
-/

namespace A249150.P18203762574042251495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n - A024000 n

end

end A249150.P18203762574042251495

/-! ## A249150.P11293763594538275659

`A083800(n+1)%A249151(n)`
-/

namespace A249150.P11293763594538275659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A249151 n)

end

end A249150.P11293763594538275659

/-! ## A249150.P12218807595825320209

`A070198(n)%A249151(n)`
-/

namespace A249150.P12218807595825320209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A249151 n)

end

end A249150.P12218807595825320209

/-! ## A249150.P12633585655907747764

`A079782(n+1)%A249151(n)`
-/

namespace A249150.P12633585655907747764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A249151 n)

end

end A249150.P12633585655907747764

/-! ## A249150.P17873134160154242141

`A083685(n+1)%A249151(n)`
-/

namespace A249150.P17873134160154242141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A249151 n)

end

end A249150.P17873134160154242141

/-! ## A249150.P17083918201125457477

`A121934(n+1)%A249151(n)`
-/

namespace A249150.P17083918201125457477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A249151 n)

end

end A249150.P17083918201125457477

/-! ## A249150.P2172494047514589907

`A072828(n+1)%A249151(n)`
-/

namespace A249150.P2172494047514589907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A249151 n)

end

end A249150.P2172494047514589907

/-!
# A249151: Largest m such that m! divides the product of elements on row n of Pascal's triangle: a(n) = A055881(A001142(n)).

The programs for A249151, there is no canonical definition to state claims against.
-/

/-! ## A249151.P6441626918565904326

`A249431(n)+n`
-/

namespace A249151.P6441626918565904326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n + (n : ℤ)

end

end A249151.P6441626918565904326

/-! ## A249151.P2999245885193867619

`1-(A024000(n)-A249431(n))`
-/

namespace A249151.P2999245885193867619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A249431 n)

end

end A249151.P2999245885193867619

/-! ## A249151.P5403080256193893503

`A005843(n)-(n-A249431(n))`
-/

namespace A249151.P5403080256193893503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A249431 n)

end

end A249151.P5403080256193893503

/-! ## A249151.P14352482326470398638

`A007494(n)-(A110654(n)-A249431(n))`
-/

namespace A249151.P14352482326470398638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - (A110654 n - A249431 n)

end

end A249151.P14352482326470398638

/-! ## A249151.P1807492423887922818

`A005408(n-(1-A249431(n)))-(n-(1-A249431(n)))`
-/

namespace A249151.P1807492423887922818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n : ℤ) - (1 - A249431 n)).toNat - ((n : ℤ) - (1 - A249431 n))

end

end A249151.P1807492423887922818

/-! ## A249151.P2764121072215616363

`A052938(2*(n-(1-A249431(n))))`
-/

namespace A249151.P2764121072215616363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * ((n : ℤ) - (1 - A249431 n))).toNat

end

end A249151.P2764121072215616363

/-! ## A249151.P17656469559503484635

`A249150(n)+1`
-/

namespace A249151.P17656469559503484635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n + 1

end

end A249151.P17656469559503484635

/-! ## A249151.P17171256378440301450

`A008619(2*A249150(n))`
-/

namespace A249151.P17171256378440301450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A249150 n).toNat

end

end A249151.P17171256378440301450

/-! ## A249151.P10540769352525786488

`A008620(3*A249150(n))`
-/

namespace A249151.P10540769352525786488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A249150 n).toNat

end

end A249151.P10540769352525786488

/-! ## A249151.P13025939605215436543

`n-(A023443(n)-A249150(n))`
-/

namespace A249151.P13025939605215436543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A249150 n)

end

end A249151.P13025939605215436543

/-!
# A249152: Exponent of 2 in the hyperfactorials: a(n) = A007814(A002109(n)).

The programs for A249152, the canonical program `A249152.P735864470480457739` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249152 has offset 0).

The definition of A249152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, A187059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249152.P16306754637368049086

`2*A143157(floor(n/2))`
-/

namespace A249152.P16306754637368049086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143157 ⌊(n : ℚ) / 2⌋.toNat

end

end A249152.P16306754637368049086

namespace A249152

/-- `2*A143157(floor(n/2))` -/
def P16306754637368049086.Spec : Prop :=
  ∀ n, P16306754637368049086.a n = A249152 n

end A249152

/-! ## A249152.P735864470480457739

`A174605(n)+A187059(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249152

/-- `A174605(n)+A187059(n)` -/
def P735864470480457739.Spec : Prop :=
  ∀ n, P735864470480457739.a n = A249152 n

theorem P735864470480457739.correct : P735864470480457739.Spec := by
  intro n
  simp only [A249152]

end A249152

/-! ## A249152.P5671580159316108586

`A143157(n)-A000217(n)`
-/

namespace A249152.P5671580159316108586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 n - A000217 n

end

end A249152.P5671580159316108586

namespace A249152

/-- `A143157(n)-A000217(n)` -/
def P5671580159316108586.Spec : Prop :=
  ∀ n, P5671580159316108586.a n = A249152 n

end A249152

/-! ## A249152.P10482938230903233281

`∑[n*∑{e}[and(n, -n), #]]`
-/

namespace A249152.P10482938230903233281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249152.P10482938230903233281

namespace A249152

/-- `∑[n*∑{e}[and(n, -n), #]]` -/
def P10482938230903233281.Spec : Prop :=
  ∀ n, (P10482938230903233281.a n : ℤ) = A249152 n

end A249152

/-! ## A249152.P12884572230103355753

`∑[n*∑{e}[or(n, -n), #]]`
-/

namespace A249152.P12884572230103355753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249152.P12884572230103355753

namespace A249152

/-- `∑[n*∑{e}[or(n, -n), #]]` -/
def P12884572230103355753.Spec : Prop :=
  ∀ n, (P12884572230103355753.a n : ℤ) = A249152 n

end A249152

/-! ## A249152.P12756187658150823634

`a(n-1)+n*val(n, 2)` with `a(0)=0`
-/

namespace A249152.P12756187658150823634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * SequenceMachineLib.valuation n 2

end

end A249152.P12756187658150823634

namespace A249152

/-- `a(n-1)+n*val(n, 2)` -/
def P12756187658150823634.Spec : Prop :=
  ∀ n, (P12756187658150823634.a n : ℤ) = A249152 n

end A249152

/-! ## A249152.P4091229722542820390

`A249153(floor(n/2))`
-/

namespace A249152.P4091229722542820390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 ⌊(n : ℚ) / 2⌋.toNat

end

end A249152.P4091229722542820390

namespace A249152

/-- `A249153(floor(n/2))` -/
def P4091229722542820390.Spec : Prop :=
  ∀ n, P4091229722542820390.a n = A249152 n

end A249152

/-! ## A249152.P15843843827374332544

`Δ[A090889(abs(1-n))]`
-/

namespace A249152.P15843843827374332544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090889 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249152.P15843843827374332544

namespace A249152

/-- `Δ[A090889(abs(1-n))]` -/
def P15843843827374332544.Spec : Prop :=
  ∀ n, P15843843827374332544.a n = A249152 n

end A249152

/-! ## A249152.P11522705142623934420

`∑[n*(1-A088705(n))]`
-/

namespace A249152.P11522705142623934420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A088705 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249152.P11522705142623934420

namespace A249152

/-- `∑[n*(1-A088705(n))]` -/
def P11522705142623934420.Spec : Prop :=
  ∀ n, P11522705142623934420.a n = A249152 n

end A249152

/-! ## A249152.P3808921828310982879

`A249153(n)/2-∑[n]`
-/

namespace A249152.P3808921828310982879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249153 n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A249152.P3808921828310982879

namespace A249152

/-- `A249153(n)/2-∑[n]` -/
def P3808921828310982879.Spec : Prop :=
  ∀ n, P3808921828310982879.a n = (A249152 n : ℚ)

end A249152

/-! ## A249152.P99199450676168380

`A029715(A011371(n))-1`
-/

namespace A249152.P99199450676168380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 (A011371 n).toNat - 1

end

end A249152.P99199450676168380

namespace A249152

/-- `A029715(A011371(n))-1` -/
def P99199450676168380.Spec : Prop :=
  ∀ n, P99199450676168380.a n = A249152 n

end A249152

/-! ## A249152.P12470801575164893690

`∑[n*A007814(A302436(n))]`
-/

namespace A249152.P12470801575164893690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007814 (A302436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249152.P12470801575164893690

namespace A249152

/-- `∑[n*A007814(A302436(n))]` -/
def P12470801575164893690.Spec : Prop :=
  ∀ n, P12470801575164893690.a n = A249152 n

end A249152

/-! ## A249152.P4921224134009081166

`∑[n*A007814(A206332(n+1))]`
-/

namespace A249152.P4921224134009081166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007814 (A206332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249152.P4921224134009081166

namespace A249152

/-- `∑[n*A007814(A206332(n+1))]` -/
def P4921224134009081166.Spec : Prop :=
  ∀ n, P4921224134009081166.a n = A249152 n

end A249152

/-!
# A249153: Exponent of 2 in the hyperfactorial of 2n: a(n) = A007814(A002109(2n)).

The programs for A249153, the canonical program `A249153.P3299475538474447466` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249153 has offset 0).

The definition of A249153 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249153.P15358033809827160712

`2*A143157(n)`
-/

namespace A249153.P15358033809827160712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143157 n

end

end A249153.P15358033809827160712

namespace A249153

/-- `2*A143157(n)` -/
def P15358033809827160712.Spec : Prop :=
  ∀ n, P15358033809827160712.a n = A249153 n

end A249153

/-! ## A249153.P3299475538474447466

`A249152(2*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A249153

/-- `A249152(2*n)` -/
def P3299475538474447466.Spec : Prop :=
  ∀ n, P3299475538474447466.a n = A249153 n

theorem P3299475538474447466.correct : P3299475538474447466.Spec := by
  intro n
  simp only [A249153]

end A249153

/-! ## A249153.P5025615060960294227

`∑[2*n]+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A249153.P5025615060960294227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A249153.P5025615060960294227

namespace A249153

/-- `∑[2*n]+2*a(floor(n/2))` -/
def P5025615060960294227.Spec : Prop :=
  ∀ n, (P5025615060960294227.a n : ℤ) = A249153 n

end A249153

/-! ## A249153.P16173707045392848896

`record[-(a(n-1)+n*val(n, 2))]` with `a(0)=0`
-/

namespace A249153.P16173707045392848896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 (n - 1) + (n * SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249153.P16173707045392848896

namespace A249153

/-- `record[-(a(n-1)+n*val(n, 2))]` -/
def P16173707045392848896.Spec : Prop :=
  ∀ n, P16173707045392848896.a n = A249153 n

end A249153

/-! ## A249153.P15597306507737022821

`a(n-1)+2*n*val(2*n, 2)` with `a(0)=0`
-/

namespace A249153.P15597306507737022821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * n * SequenceMachineLib.valuation (2 * n) 2

end

end A249153.P15597306507737022821

namespace A249153

/-- `a(n-1)+2*n*val(2*n, 2)` -/
def P15597306507737022821.Spec : Prop :=
  ∀ n, (P15597306507737022821.a n : ℤ) = A249153 n

end A249153

/-! ## A249153.P17868184413305406194

`∑[(n+1)*(val((n+1)², 2)+2)]-(n+1)*(val((n+1)², 2)+2)`
-/

namespace A249153.P17868184413305406194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) * (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2) : ℤ)

end

end A249153.P17868184413305406194

namespace A249153

/-- `∑[(n+1)*(val((n+1)², 2)+2)]-(n+1)*(val((n+1)², 2)+2)` -/
def P17868184413305406194.Spec : Prop :=
  ∀ n, P17868184413305406194.a n = A249153 n

end A249153

/-! ## A249153.P18234055650114228442

`∑[2*n*val(A004277(n), 2)]`
-/

namespace A249153.P18234055650114228442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * SequenceMachineLib.valuation (A004277 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249153.P18234055650114228442

namespace A249153

/-- `∑[2*n*val(A004277(n), 2)]` -/
def P18234055650114228442.Spec : Prop :=
  ∀ n, (P18234055650114228442.a n : ℤ) = A249153 n

end A249153

/-! ## A249153.P4474776460375237065

`∑[2*n*val(A255177(n), 2)]`
-/

namespace A249153.P4474776460375237065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249153.P4474776460375237065

namespace A249153

/-- `∑[2*n*val(A255177(n), 2)]` -/
def P4474776460375237065.Spec : Prop :=
  ∀ n, (P4474776460375237065.a n : ℤ) = A249153 n

end A249153

/-! ## A249153.P7863396978463040200

`∑[(A007814(abs(1-n)+1)+1)*2*n]`
-/

namespace A249153.P7863396978463040200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (|1 - (n : ℤ)| + 1).toNat + 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249153.P7863396978463040200

namespace A249153

/-- `∑[(A007814(abs(1-n)+1)+1)*2*n]` -/
def P7863396978463040200.Spec : Prop :=
  ∀ n, P7863396978463040200.a n = A249153 n

end A249153

/-! ## A249153.P15057332994834718227

`2*(A187059(n)+A122247(n))`
-/

namespace A249153.P15057332994834718227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A187059 n + A122247 n)

end

end A249153.P15057332994834718227

namespace A249153

/-- `2*(A187059(n)+A122247(n))` -/
def P15057332994834718227.Spec : Prop :=
  ∀ n, P15057332994834718227.a n = A249153 n

end A249153

/-! ## A249153.P4510768338620555511

`∑[(2-A088705(n))*A005843(n)]`
-/

namespace A249153.P4510768338620555511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A088705 n) * A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249153.P4510768338620555511

namespace A249153

/-- `∑[(2-A088705(n))*A005843(n)]` -/
def P4510768338620555511.Spec : Prop :=
  ∀ n, P4510768338620555511.a n = A249153 n

end A249153

/-! ## A249153.P7212015324188052795

`∑[val(A004277(n), 2)*A004277(n)]`
-/

namespace A249153.P7212015324188052795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A004277 n).toNat 2 : ℤ) * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249153.P7212015324188052795

namespace A249153

/-- `∑[val(A004277(n), 2)*A004277(n)]` -/
def P7212015324188052795.Spec : Prop :=
  ∀ n, P7212015324188052795.a n = A249153 n

end A249153

/-! ## A249153.P1269856850707456022

`2*∑[n*(A007814(A302436(n))+1)]`
-/

namespace A249153.P1269856850707456022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007814 (A302436 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249153.P1269856850707456022

namespace A249153

/-- `2*∑[n*(A007814(A302436(n))+1)]` -/
def P1269856850707456022.Spec : Prop :=
  ∀ n, P1269856850707456022.a n = A249153 n

end A249153

/-! ## A249153.P1966331715132073300

`2*(∑[A091512(n+1)]-A091512(n+1))`
-/

namespace A249153.P1966331715132073300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A091512 (n + 1))

end

end A249153.P1966331715132073300

namespace A249153

/-- `2*(∑[A091512(n+1)]-A091512(n+1))` -/
def P1966331715132073300.Spec : Prop :=
  ∀ n, P1966331715132073300.a n = A249153 n

end A249153

/-! ## A249153.P13653218138095409562

`∑[2*n*A001511(A080079(n+1)+1)]`
-/

namespace A249153.P13653218138095409562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A001511 (A080079 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249153.P13653218138095409562

namespace A249153

/-- `∑[2*n*A001511(A080079(n+1)+1)]` -/
def P13653218138095409562.Spec : Prop :=
  ∀ n, P13653218138095409562.a n = A249153 n

end A249153

/-! ## A249153.P15359176803760691143

`A143157(A005843(n)/2)+A143157(n)`
-/

namespace A249153.P15359176803760691143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A143157 n

end

end A249153.P15359176803760691143

namespace A249153

/-- `A143157(A005843(n)/2)+A143157(n)` -/
def P15359176803760691143.Spec : Prop :=
  ∀ n, P15359176803760691143.a n = A249153 n

end A249153

/-! ## A249153.P15330109754510820179

`A000217(n)+A249152(n)+A143157(n)`
-/

namespace A249153.P15330109754510820179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A249152 n + A143157 n)

end

end A249153.P15330109754510820179

namespace A249153

/-- `A000217(n)+A249152(n)+A143157(n)` -/
def P15330109754510820179.Spec : Prop :=
  ∀ n, P15330109754510820179.a n = A249153 n

end A249153

/-! ## A249153.P10612870158505512562

`A143157(n+1)+A143157(n)-A091512(n+1)`
-/

namespace A249153.P10612870158505512562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 (n + 1) + (A143157 n - A091512 (n + 1))

end

end A249153.P10612870158505512562

namespace A249153

/-- `A143157(n+1)+A143157(n)-A091512(n+1)` -/
def P10612870158505512562.Spec : Prop :=
  ∀ n, P10612870158505512562.a n = A249153 n

end A249153

/-! ## A249153.P3739518775622981798

`A143157(n+1)+A143157(n+1)-A069895(n+1)`
-/

namespace A249153.P3739518775622981798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 (n + 1) + (A143157 (n + 1) - A069895 (n + 1))

end

end A249153.P3739518775622981798

namespace A249153

/-- `A143157(n+1)+A143157(n+1)-A069895(n+1)` -/
def P3739518775622981798.Spec : Prop :=
  ∀ n, P3739518775622981798.a n = A249153 n

end A249153

/-! ## A249153.P4888877292002361923

`A029715(A005187(n))-1`
-/

namespace A249153.P4888877292002361923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 (A005187 n).toNat - 1

end

end A249153.P4888877292002361923

namespace A249153

/-- `A029715(A005187(n))-1` -/
def P4888877292002361923.Spec : Prop :=
  ∀ n, P4888877292002361923.a n = A249153 n

end A249153

/-!
# A249154: (n+1) times the number of 1's in the binary expansion of n.

The programs for A249154, the canonical program `A249154.P2345966816674260141` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249154 has offset 0).

The definition of A249154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249154.P2345966816674260141

`(n+1)*A000120(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A249154

/-- `(n+1)*A000120(n)` -/
def P2345966816674260141.Spec : Prop :=
  ∀ n, P2345966816674260141.a n = A249154 n

theorem P2345966816674260141.correct : P2345966816674260141.Spec := by
  intro n
  simp only [A249154]

end A249154

/-! ## A249154.P8154620917648008272

`A000120(n)+A245788(n)`
-/

namespace A249154.P8154620917648008272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A245788 n

end

end A249154.P8154620917648008272

namespace A249154

/-- `A000120(n)+A245788(n)` -/
def P8154620917648008272.Spec : Prop :=
  ∀ n, P8154620917648008272.a n = A249154 n

end A249154

/-! ## A249154.P11283131811930356601

`2*A000788(n)-A187059(n)`
-/

namespace A249154.P11283131811930356601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000788 n - A187059 n

end

end A249154.P11283131811930356601

namespace A249154

/-- `2*A000788(n)-A187059(n)` -/
def P11283131811930356601.Spec : Prop :=
  ∀ n, P11283131811930356601.a n = A249154 n

end A249154

/-! ## A249154.P12871569113110620069

`(n+1)*∑[1-val(abs(1-n)+1, 2)]`
-/

namespace A249154.P12871569113110620069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249154.P12871569113110620069

namespace A249154

/-- `(n+1)*∑[1-val(abs(1-n)+1, 2)]` -/
def P12871569113110620069.Spec : Prop :=
  ∀ n, P12871569113110620069.a n = A249154 n

end A249154

/-! ## A249154.P1606602603451322315

`(n+1)*∑{e}[2*a(and(n, n-1)), #]` with `a(0)=1`
-/

namespace A249154.P1606602603451322315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A249154.P1606602603451322315

namespace A249154

/-- `(n+1)*∑{e}[2*a(and(n, n-1)), #]` -/
def P1606602603451322315.Spec : Prop :=
  ∀ n, (P1606602603451322315.a n : ℤ) = A249154 n

end A249154

/-! ## A249154.P8234182739540525374

`(n+1)*(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A249154.P8234182739540525374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)))

end

end A249154.P8234182739540525374

namespace A249154

/-- `(n+1)*(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P8234182739540525374.Spec : Prop :=
  ∀ n, P8234182739540525374.a n = A249154 n

end A249154

/-! ## A249154.P6652744338075326132

`(n+1)*log2(A001316(n))`
-/

namespace A249154.P6652744338075326132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A001316 n : ℝ)

end

end A249154.P6652744338075326132

namespace A249154

/-- `(n+1)*log2(A001316(n))` -/
def P6652744338075326132.Spec : Prop :=
  ∀ n, P6652744338075326132.a n = (A249154 n : ℝ)

end A249154

/-! ## A249154.P11533257435026403071

`(n+1)*∑[A088705(n)]`
-/

namespace A249154.P11533257435026403071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249154.P11533257435026403071

namespace A249154

/-- `(n+1)*∑[A088705(n)]` -/
def P11533257435026403071.Spec : Prop :=
  ∀ n, P11533257435026403071.a n = A249154 n

end A249154

/-! ## A249154.P4607146180907857056

`(n+1)*(n-A011371(n))`
-/

namespace A249154.P4607146180907857056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A011371 n)

end

end A249154.P4607146180907857056

namespace A249154

/-- `(n+1)*(n-A011371(n))` -/
def P4607146180907857056.Spec : Prop :=
  ∀ n, P4607146180907857056.a n = A249154 n

end A249154

/-! ## A249154.P11668725939380278818

`(n+1)*(A092391(n)-n)`
-/

namespace A249154.P11668725939380278818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A092391 n - (n : ℤ))

end

end A249154.P11668725939380278818

namespace A249154

/-- `(n+1)*(A092391(n)-n)` -/
def P11668725939380278818.Spec : Prop :=
  ∀ n, P11668725939380278818.a n = A249154 n

end A249154

/-! ## A249154.P2935927918275473996

`(n+1)*(A063787(n+1)-1)`
-/

namespace A249154.P2935927918275473996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A063787 (n + 1) - 1)

end

end A249154.P2935927918275473996

namespace A249154

/-- `(n+1)*(A063787(n+1)-1)` -/
def P2935927918275473996.Spec : Prop :=
  ∀ n, P2935927918275473996.a n = A249154 n

end A249154

/-! ## A249154.P16600584357098760116

`(n+1)*(A230300(n+1)-(n+1))`
-/

namespace A249154.P16600584357098760116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A230300 (n + 1) - (n + 1 : ℤ))

end

end A249154.P16600584357098760116

namespace A249154

/-- `(n+1)*(A230300(n+1)-(n+1))` -/
def P16600584357098760116.Spec : Prop :=
  ∀ n, P16600584357098760116.a n = A249154 n

end A249154

/-! ## A249154.P4020198141283167476

`A198192(n)+A029931(n)`
-/

namespace A249154.P4020198141283167476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198192 n + A029931 n

end

end A249154.P4020198141283167476

namespace A249154

/-- `A198192(n)+A029931(n)` -/
def P4020198141283167476.Spec : Prop :=
  ∀ n, P4020198141283167476.a n = A249154 n

end A249154

/-! ## A249154.P14327114466261498890

`(n+1)*A001222(A071044(n))`
-/

namespace A249154.P14327114466261498890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A071044 n).toNat

end

end A249154.P14327114466261498890

namespace A249154

/-- `(n+1)*A001222(A071044(n))` -/
def P14327114466261498890.Spec : Prop :=
  ∀ n, P14327114466261498890.a n = A249154 n

end A249154

/-!
# A249155: Palindromic in bases 6 and 15.

The programs for A249155, there is no canonical definition to state claims against.
-/

/-! ## A249155.P2588670413496094339

`∩[A029953(n+1), A029960(n+1)]`
-/

namespace A249155.P2588670413496094339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249155.P2588670413496094339

/-! ## A249155.P13511968442943668204

`∩[A029953(n+1), A048339(n)]`
-/

namespace A249155.P13511968442943668204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249155.P13511968442943668204

/-! ## A249155.P1529489000174348610

`A100036(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A249155.P1529489000174348610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  A100036 (a (n - 1)).toNat

end

end A249155.P1529489000174348610

/-! ## A249155.P11167214464507933549

`A239499(A163493(n))+n`
-/

namespace A249155.P11167214464507933549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (A163493 n).toNat + (n : ℤ)

end

end A249155.P11167214464507933549

/-! ## A249155.P8254166638876299582

`A363226(A102113(n))+n`
-/

namespace A249155.P8254166638876299582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 (A102113 n).toNat + (n : ℤ)

end

end A249155.P8254166638876299582

/-!
# A249156: Palindromic in bases 5 and 7.

The programs for A249156, there is no canonical definition to state claims against.
-/

/-! ## A249156.P12836710198346937037

`∩[A029952(n+1), A029954(n+1)]`
-/

namespace A249156.P12836710198346937037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249156.P12836710198346937037

/-! ## A249156.P16886851108282240172

`eq[A055951(n)², A055955(n)]`
-/

namespace A249156.P16886851108282240172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249156.P16886851108282240172

/-! ## A249156.P12826425528525669519

`eq[A052036(A007093(n)), A055951(n)]`
-/

namespace A249156.P12826425528525669519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249156.P12826425528525669519

/-! ## A249156.P9628287573990047262

`eq[A055950(n), A055954(A030106(n))]`
-/

namespace A249156.P9628287573990047262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249156.P9628287573990047262

/-! ## A249156.P15471484944292747804

`eq[A055950(n), A055954(A055954(n)-n)]`
-/

namespace A249156.P15471484944292747804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 (A055954 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249156.P15471484944292747804

/-!
# A249157: Palindromic in bases 11 and 13.

The programs for A249157, there is no canonical definition to state claims against.
-/

/-! ## A249157.P1454578365072582263

`∩[A029956(n+1), A029958(n+1)]`
-/

namespace A249157.P1454578365072582263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249157.P1454578365072582263

/-! ## A249157.P1365920535491287141

`record[gcd(4*n, A353852(n))]`
-/

namespace A249157.P1365920535491287141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A353852 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249157.P1365920535491287141

/-! ## A249157.P4694504789029597932

`A328746(ceil(C(n, 10)/10-ϕ/2))+n`
-/

namespace A249157.P4694504789029597932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328746 ⌈((Nat.choose n 10 : ℚ) / 10 : ℝ) - Real.goldenRatio / 2⌉.toNat + (n : ℤ)

end

end A249157.P4694504789029597932

/-! ## A249157.P16999083919930360196

`A328746(A011856(n))+n`
-/

namespace A249157.P16999083919930360196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328746 (A011856 n).toNat + (n : ℤ)

end

end A249157.P16999083919930360196

/-! ## A249157.P13623626903254095238

`A232710(A011856(n)²)+n`
-/

namespace A249157.P13623626903254095238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232710 (A011856 n ^ 2).toNat + (n : ℤ)

end

end A249157.P13623626903254095238

/-!
# A249160: Smallest number of iterations k such that A068527^(k)(n)=A068527^(k+1)(n).

The programs for A249160, there is no canonical definition to state claims against.
-/

/-! ## A249160.P4266418962091959605

`A256790(n+1)-A068527(abs(A256791(n+1)))`
-/

namespace A249160.P4266418962091959605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256790 (n + 1) - A068527 |A256791 (n + 1)|.toNat

end

end A249160.P4266418962091959605

/-! ## A249160.P1213044109431206779

`A256790(n+1)-A327898(abs(A256791(n+1)))`
-/

namespace A249160.P1213044109431206779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256790 (n + 1) - A327898 |A256791 (n + 1)|.toNat

end

end A249160.P1213044109431206779

/-! ## A249160.P18303294454472634352

`A234092(A045683(n))-A234046(n)`
-/

namespace A249160.P18303294454472634352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234092 (A045683 n).toNat - A234046 n

end

end A249160.P18303294454472634352

/-! ## A249160.P7725914843932540413

`A276729(A038217(n))+A271484(n)`
-/

namespace A249160.P7725914843932540413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A038217 n).toNat + A271484 n

end

end A249160.P7725914843932540413

/-! ## A249160.P10793078260426656147

`A001221(A110245(n)+A000045(2*n+1))`
-/

namespace A249160.P10793078260426656147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A110245 n + A000045 (2 * n + 1)).toNat

end

end A249160.P10793078260426656147

/-!
# A249161: A249129(n)-n.

The programs for A249161, there is no canonical definition to state claims against.
-/

/-! ## A249161.P13502921943986440562

`A249129(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249161.P13502921943986440562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249129 n - (n : ℤ)

end

end A249161.P13502921943986440562

/-! ## A249161.P3894784818211904299

`A249029(n-1)+a(n-1)-1` with `a(0)=1`
-/

namespace A249161.P3894784818211904299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249029 (n - 1) + (a (n - 1) - 1)

end

end A249161.P3894784818211904299

/-! ## A249161.P8636159315505176396

`A024000(n+2)+A249129(n)+1`
-/

namespace A249161.P8636159315505176396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + (A249129 n + 1)

end

end A249161.P8636159315505176396

/-! ## A249161.P13291286267175689720

`A196199(A249129(n)+(n+1)²+1)`
-/

namespace A249161.P13291286267175689720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A249129 n + ((n + 1) ^ 2 + 1 : ℤ)).toNat

end

end A249161.P13291286267175689720

/-! ## A249161.P16611129754021850208

`A359495(A000079(n))+A249129(n)`
-/

namespace A249161.P16611129754021850208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 (A000079 n).toNat + A249129 n

end

end A249161.P16611129754021850208

/-!
# A249163: Triangle read by rows: the positive terms of A163626.

The programs for A249163, there is no canonical definition to state claims against.
-/

/-! ## A249163.P16697848783159046359

`A142071(comp[n²]+n)`
-/

namespace A249163.P16697848783159046359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A249163.P16697848783159046359

/-! ## A249163.P9223705009179808008

`A028246(∑[2-char[n²]])`
-/

namespace A249163.P9223705009179808008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249163.P9223705009179808008

/-! ## A249163.P3947711470091980440

`A163626(2*n-floor(sqrt(n)))`
-/

namespace A249163.P3947711470091980440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 (2 * n - Nat.sqrt n)

end

end A249163.P3947711470091980440

/-! ## A249163.P18316822908547504473

`abs(A163626(lt[0, A163626(n)]))`
-/

namespace A249163.P18316822908547504473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A249163.P18316822908547504473

/-! ## A249163.P13329441583212268744

`abs(A163626(A028391(n)+n))`
-/

namespace A249163.P13329441583212268744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163626 (A028391 n + (n : ℤ)).toNat|

end

end A249163.P13329441583212268744

/-!
# A249164: Numbers n such that the triangular number T(n) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

The programs for A249164, the canonical program `A249164.P13270305561893433312` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249164 has offset 1).

The definition of A249164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249164.P13270305561893433312

`2*A245783(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A249164

/-- `2*A245783(n+1)-1` -/
def P13270305561893433312.Spec : Prop :=
  ∀ n, P13270305561893433312.a n = A249164 (n + 1)

theorem P13270305561893433312.correct : P13270305561893433312.Spec := by
  intro n
  simp only [A249164, Nat.add_sub_cancel]

end A249164

/-! ## A249164.P6958023983987582255

`A132596(n)+A072256(A109613(n))`
-/

namespace A249164.P6958023983987582255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n + A072256 (A109613 n).toNat

end

end A249164.P6958023983987582255

namespace A249164

/-- `A132596(n)+A072256(A109613(n))` -/
def P6958023983987582255.Spec : Prop :=
  ∀ n, P6958023983987582255.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P14770027399925561789

`A008683(A042966(n+1))+2*A245783(n+1)`
-/

namespace A249164.P14770027399925561789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A042966 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P14770027399925561789

namespace A249164

/-- `A008683(A042966(n+1))+2*A245783(n+1)` -/
def P14770027399925561789.Spec : Prop :=
  ∀ n, P14770027399925561789.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P1246248594457401946

`A008683(A042967(n+1))+2*A245783(n+1)`
-/

namespace A249164.P1246248594457401946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A042967 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P1246248594457401946

namespace A249164

/-- `A008683(A042967(n+1))+2*A245783(n+1)` -/
def P1246248594457401946.Spec : Prop :=
  ∀ n, P1246248594457401946.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P3289662160246199642

`A008683(A042969(n+1))+2*A245783(n+1)`
-/

namespace A249164.P3289662160246199642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A042969 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P3289662160246199642

namespace A249164

/-- `A008683(A042969(n+1))+2*A245783(n+1)` -/
def P3289662160246199642.Spec : Prop :=
  ∀ n, P3289662160246199642.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P3433878453258726176

`A008683(A042973(n+1))+2*A245783(n+1)`
-/

namespace A249164.P3433878453258726176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A042973 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P3433878453258726176

namespace A249164

/-- `A008683(A042973(n+1))+2*A245783(n+1)` -/
def P3433878453258726176.Spec : Prop :=
  ∀ n, P3433878453258726176.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P8299639725189058713

`A008683(A042986(n+1))+2*A245783(n+1)`
-/

namespace A249164.P8299639725189058713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A042986 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P8299639725189058713

namespace A249164

/-- `A008683(A042986(n+1))+2*A245783(n+1)` -/
def P8299639725189058713.Spec : Prop :=
  ∀ n, P8299639725189058713.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P4066876231084564032

`A008683(A073751(n+1))+2*A245783(n+1)`
-/

namespace A249164.P4066876231084564032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073751 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P4066876231084564032

namespace A249164

/-- `A008683(A073751(n+1))+2*A245783(n+1)` -/
def P4066876231084564032.Spec : Prop :=
  ∀ n, P4066876231084564032.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P6485531314523869360

`A008683(A134307(n+1))+2*A245783(n+1)`
-/

namespace A249164.P6485531314523869360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A134307 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P6485531314523869360

namespace A249164

/-- `A008683(A134307(n+1))+2*A245783(n+1)` -/
def P6485531314523869360.Spec : Prop :=
  ∀ n, P6485531314523869360.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P11326869396352899338

`A008683(A141190(n+1))+2*A245783(n+1)`
-/

namespace A249164.P11326869396352899338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A141190 (n + 1)).toNat + 2 * A245783 (n + 1)

end

end A249164.P11326869396352899338

namespace A249164

/-- `A008683(A141190(n+1))+2*A245783(n+1)` -/
def P11326869396352899338.Spec : Prop :=
  ∀ n, P11326869396352899338.a n = A249164 (n + 1)

end A249164

/-! ## A249164.P17720734044229716282

`A008683(A008578(n+2))+2*A245783(n+1)`
-/

namespace A249164.P17720734044229716282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2)).toNat + 2 * A245783 (n + 1)

end

end A249164.P17720734044229716282

namespace A249164

/-- `A008683(A008578(n+2))+2*A245783(n+1)` -/
def P17720734044229716282.Spec : Prop :=
  ∀ n, P17720734044229716282.a n = A249164 (n + 1)

end A249164

/-!
# A249165: Number of cds-sortable permutations in S_n. That is, number of permutations for which application of some sequence of context directed swaps ("cds" operations) terminates in the identity.

The programs for A249165, there is no canonical definition to state claims against.
-/

/-! ## A249165.P15836996082141147270

`A004525(A061355(n)+(n+1)!)`
-/

namespace A249165.P15836996082141147270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A061355 n + (Nat.factorial (n + 1) : ℤ)).toNat

end

end A249165.P15836996082141147270

/-! ## A249165.P16020210801220152741

`A004526(A061355(n)+(n+1)!)`
-/

namespace A249165.P16020210801220152741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A061355 n + (Nat.factorial (n + 1) : ℤ)).toNat

end

end A249165.P16020210801220152741

/-! ## A249165.P7200690774001404083

`A123108(A061355(n)+(n+1)!)`
-/

namespace A249165.P7200690774001404083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A061355 n + (Nat.factorial (n + 1) : ℤ)).toNat

end

end A249165.P7200690774001404083

/-!
# A249166: Odd integers concatenated with themselves.

The programs for A249166, the canonical program `A249166.P4963763552087285521` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249166 has offset 1).

The definition of A249166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249166.P11051307382179679827

`A020338(Δ[n²])`
-/

namespace A249166.P11051307382179679827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A249166.P11051307382179679827

namespace A249166

/-- `A020338(Δ[n²])` -/
def P11051307382179679827.Spec : Prop :=
  ∀ n, P11051307382179679827.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P10070099391981156952

`A275238(2*n+1)+1`
-/

namespace A249166.P10070099391981156952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 (2 * n + 1) + 1

end

end A249166.P10070099391981156952

namespace A249166

/-- `A275238(2*n+1)+1` -/
def P10070099391981156952.Spec : Prop :=
  ∀ n, P10070099391981156952.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P15695920829119075377

`or(1, A020338(2*n+1))`
-/

namespace A249166.P15695920829119075377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020338 (2 * n + 1))

end

end A249166.P15695920829119075377

namespace A249166

/-- `or(1, A020338(2*n+1))` -/
def P15695920829119075377.Spec : Prop :=
  ∀ n, P15695920829119075377.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P127813896163208172

`record[(-1)^n*A020338(n+1)]`
-/

namespace A249166.P127813896163208172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A020338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249166.P127813896163208172

namespace A249166

/-- `record[(-1)^n*A020338(n+1)]` -/
def P127813896163208172.Spec : Prop :=
  ∀ n, P127813896163208172.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P4963763552087285521

`floor(A235497(2*n+1)/2)+n+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A249166

/-- `floor(A235497(2*n+1)/2)+n+1` -/
def P4963763552087285521.Spec : Prop :=
  ∀ n, P4963763552087285521.a n = A249166 (n + 1)

theorem P4963763552087285521.correct : P4963763552087285521.Spec := by
  intro n
  simp only [A249166, Nat.add_sub_cancel]

end A249166

/-! ## A249166.P14403282576663851199

`record[A020338((n+1)/2^val(n+1, 2))]`
-/

namespace A249166.P14403282576663851199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249166.P14403282576663851199

namespace A249166

/-- `record[A020338((n+1)/2^val(n+1, 2))]` -/
def P14403282576663851199.Spec : Prop :=
  ∀ n, P14403282576663851199.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P1397026651505751202

`A020338(2*n+1)+A000035(2*n)`
-/

namespace A249166.P1397026651505751202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1) + A000035 (2 * n)

end

end A249166.P1397026651505751202

namespace A249166

/-- `A020338(2*n+1)+A000035(2*n)` -/
def P1397026651505751202.Spec : Prop :=
  ∀ n, P1397026651505751202.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P9527545487955425084

`∩[A020338(2*n+1), A020338(n+1)]`
-/

namespace A249166.P9527545487955425084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249166.P9527545487955425084

namespace A249166

/-- `∩[A020338(2*n+1), A020338(n+1)]` -/
def P9527545487955425084.Spec : Prop :=
  ∀ n, (P9527545487955425084.a n : ℤ) = A249166 (n + 1)

end A249166

/-! ## A249166.P741590473626952642

`A343785(n+1)²*A020338(2*n+1)`
-/

namespace A249166.P741590473626952642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (n + 1) ^ 2 * A020338 (2 * n + 1)

end

end A249166.P741590473626952642

namespace A249166

/-- `A343785(n+1)²*A020338(2*n+1)` -/
def P741590473626952642.Spec : Prop :=
  ∀ n, P741590473626952642.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P11030808009855999726

`A008480(A051698(n))*A020338(2*n+1)`
-/

namespace A249166.P11030808009855999726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A051698 n).toNat * A020338 (2 * n + 1)

end

end A249166.P11030808009855999726

namespace A249166

/-- `A008480(A051698(n))*A020338(2*n+1)` -/
def P11030808009855999726.Spec : Prop :=
  ∀ n, P11030808009855999726.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P6974676514702983543

`A020338(2*n+1)+A000007(A318060(n+1))`
-/

namespace A249166.P6974676514702983543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1) + A000007 (A318060 (n + 1)).toNat

end

end A249166.P6974676514702983543

namespace A249166

/-- `A020338(2*n+1)+A000007(A318060(n+1))` -/
def P6974676514702983543.Spec : Prop :=
  ∀ n, P6974676514702983543.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P9900728641118168818

`A008480(A027746(n+1))*A020338(2*n+1)`
-/

namespace A249166.P9900728641118168818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A027746 (n + 1)).toNat * A020338 (2 * n + 1)

end

end A249166.P9900728641118168818

namespace A249166

/-- `A008480(A027746(n+1))*A020338(2*n+1)` -/
def P9900728641118168818.Spec : Prop :=
  ∀ n, P9900728641118168818.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P15683192074892278377

`A020338(2*n+1)*A074761(A027746(n+5))`
-/

namespace A249166.P15683192074892278377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1) * A074761 (A027746 (n + 5)).toNat

end

end A249166.P15683192074892278377

namespace A249166

/-- `A020338(2*n+1)*A074761(A027746(n+5))` -/
def P15683192074892278377.Spec : Prop :=
  ∀ n, P15683192074892278377.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P8864855370055541492

`A020338(2*n+1)*A343785(3*n+4)`
-/

namespace A249166.P8864855370055541492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1) * A343785 (3 * n + 4)

end

end A249166.P8864855370055541492

namespace A249166

/-- `A020338(2*n+1)*A343785(3*n+4)` -/
def P8864855370055541492.Spec : Prop :=
  ∀ n, P8864855370055541492.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P9798922131961048388

`A020338(2*n+1)+A000007(A250120(n))`
-/

namespace A249166.P9798922131961048388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1) + A000007 (A250120 n).toNat

end

end A249166.P9798922131961048388

namespace A249166

/-- `A020338(2*n+1)+A000007(A250120(n))` -/
def P9798922131961048388.Spec : Prop :=
  ∀ n, P9798922131961048388.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P7263101004929089106

`A008480(A000040(n+1))*A020338(2*n+1)`
-/

namespace A249166.P7263101004929089106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A000040 (n + 1)).toNat * A020338 (2 * n + 1)

end

end A249166.P7263101004929089106

namespace A249166

/-- `A008480(A000040(n+1))*A020338(2*n+1)` -/
def P7263101004929089106.Spec : Prop :=
  ∀ n, P7263101004929089106.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P15259130490964781108

`A020338(2*n+1)+A000007(A101881(n))`
-/

namespace A249166.P15259130490964781108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * n + 1) + A000007 (A101881 n).toNat

end

end A249166.P15259130490964781108

namespace A249166

/-- `A020338(2*n+1)+A000007(A101881(n))` -/
def P15259130490964781108.Spec : Prop :=
  ∀ n, P15259130490964781108.a n = A249166 (n + 1)

end A249166

/-! ## A249166.P15870599634179931647

`A000027(A020338(2*n+1))`
-/

namespace A249166.P15870599634179931647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020338 (2 * n + 1)).toNat

end

end A249166.P15870599634179931647

namespace A249166

/-- `A000027(A020338(2*n+1))` -/
def P15870599634179931647.Spec : Prop :=
  ∀ n, P15870599634179931647.a n = A249166 (n + 1)

end A249166

/-!
# A249169: Fibonacci 16-step numbers, a(n) = a(n-1) + a(n-2) + ... + a(n-16).

The programs for A249169, there is no canonical definition to state claims against.
-/

/-! ## A249169.P8428767247926231046

`A048887(A000217(n+14)+n)`
-/

namespace A249169.P8428767247926231046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A249169.P8428767247926231046

/-! ## A249169.P452908610085480587

`A048887(A161680(n+15)+n)`
-/

namespace A249169.P452908610085480587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A161680 (n + 15) + (n : ℤ)).toNat

end

end A249169.P452908610085480587

/-! ## A249169.P11614824195667750735

`2*a(n-1)-A185284(A042963(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A249169.P11614824195667750735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - A185284 (A042963 (n + 1)).toNat

end

end A249169.P11614824195667750735

/-! ## A249169.P8856012058199519516

`A011782(n)-A341022(A034799(n))`
-/

namespace A249169.P8856012058199519516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A341022 ((A034799 n).toNat + 35)

end

end A249169.P8856012058199519516

/-! ## A249169.P1268319060304422303

`A011782(n)-A002828(A058348(2*n+1))`
-/

namespace A249169.P1268319060304422303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A002828 (A058348 (2 * n + 1)).toNat

end

end A249169.P1268319060304422303

/-!
# A249170: Number of length n+6 0..7 arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249170, there is no canonical definition to state claims against.
-/

/-! ## A249170.P956686533649416560

`A249171(A055999(n+4))`
-/

namespace A249170.P956686533649416560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A055999 (n + 4)).toNat

end

end A249170.P956686533649416560

/-! ## A249170.P13173271796966031157

`A249171(A056121(n)+22)`
-/

namespace A249170.P13173271796966031157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A056121 n + 22).toNat

end

end A249170.P13173271796966031157

/-! ## A249170.P1731324505706433097

`A249171(eq[4, A219347(n)])`
-/

namespace A249170.P1731324505706433097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249170.P1731324505706433097

/-! ## A249170.P7176179375423510504

`A249171(eq[6, A193592(n)])`
-/

namespace A249170.P7176179375423510504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249170.P7176179375423510504

/-! ## A249170.P9891262961305699701

`A249171(A052905(n+4)-1)`
-/

namespace A249170.P9891262961305699701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A052905 (n + 4) - 1).toNat

end

end A249170.P9891262961305699701

/-!
# A249171: T(n,k)=Number of length n+6 0..k arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249171, there is no canonical definition to state claims against.
-/

/-! ## A249171.P15275440717278786278

`A249172(A004736(n+1)^A322356(n+1))`
-/

namespace A249171.P15275440717278786278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A322356 (n + 1) : ℤ))).toNat

end

end A249171.P15275440717278786278

/-! ## A249171.P3939716361893097640

`A249172(A004736(n+1)%A156117(n+1))`
-/

namespace A249171.P3939716361893097640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (Int.tmod (A004736 (n + 1)) (A156117 (n + 1))).toNat

end

end A249171.P3939716361893097640

/-! ## A249171.P3915238027307259747

`A249172(A004736(n+1))%A249237(n+1)`
-/

namespace A249171.P3915238027307259747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249172 (A004736 (n + 1)).toNat) (A249237 (n + 1))

end

end A249171.P3915238027307259747

/-! ## A249171.P17845941800594350629

`A249172((C(comp[∑[n]]-n, 2)-n)%A031673(n+1))`
-/

namespace A249171.P17845941800594350629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A031673 (n + 1))).toNat

end

end A249171.P17845941800594350629

/-! ## A249171.P10907406322767717868

`A249172(A167289(n+1)%A031673(n+2))`
-/

namespace A249171.P10907406322767717868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (Int.tmod (A167289 (n + 1)) (A031673 (n + 2))).toNat

end

end A249171.P10907406322767717868

/-!
# A249172: Number of length 1+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249172, there is no canonical definition to state claims against.
-/

/-! ## A249172.P13611716639296665647

`(n+2)^7-A249198(n+1)`
-/

namespace A249172.P13611716639296665647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249198 (n + 1)

end

end A249172.P13611716639296665647

/-! ## A249172.P16238890622052939026

`A249213(n+1)+A249256(n+1)-A249198(n+1)`
-/

namespace A249172.P16238890622052939026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249213 (n + 1) + (A249256 (n + 1) - A249198 (n + 1))

end

end A249172.P16238890622052939026

/-! ## A249172.P1229267776967100923

`A249171(∑[n]+1)`
-/

namespace A249172.P1229267776967100923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249172.P1229267776967100923

/-! ## A249172.P10279146783811061982

`record[A249171(∑[A057979(n)])]`
-/

namespace A249172.P10279146783811061982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249172.P10279146783811061982

/-! ## A249172.P2115286615798693293

`record[A249171(record[A114220(n)])]`
-/

namespace A249172.P2115286615798693293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249172.P2115286615798693293

/-!
# A249173: Number of length 2+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249173, there is no canonical definition to state claims against.
-/

/-! ## A249173.P12940782750150528359

`A249199(n+1)%(A249172(n+1)-A249198(n+1))`
-/

namespace A249173.P12940782750150528359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249199 (n + 1)) (A249172 (n + 1) - A249198 (n + 1))

end

end A249173.P12940782750150528359

/-! ## A249173.P1850237378216133121

`A249171(∑[n+1]+2)`
-/

namespace A249173.P1850237378216133121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249173.P1850237378216133121

/-! ## A249173.P6816689073245020008

`record[A249171(A022856(n+1))]`
-/

namespace A249173.P6816689073245020008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249173.P6816689073245020008

/-! ## A249173.P15315651861845738519

`record[A249171(A089071(n+1))]`
-/

namespace A249173.P15315651861845738519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249173.P15315651861845738519

/-! ## A249173.P1531376655867005003

`record[A249171(A133263(n)-n)]`
-/

namespace A249173.P1531376655867005003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249173.P1531376655867005003

/-!
# A249174: Number of length 3+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249174, there is no canonical definition to state claims against.
-/

/-! ## A249174.P13244698822451523061

`A249171(∑[n+2]+4)`
-/

namespace A249174.P13244698822451523061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249174.P13244698822451523061

/-! ## A249174.P14324735531127873557

`record[A249171(A249725(n+1)+2)]`
-/

namespace A249174.P14324735531127873557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A249725 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249174.P14324735531127873557

/-! ## A249174.P12541534485007283297

`or(char[1], A249171(A167614(n+1)))`
-/

namespace A249174.P12541534485007283297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249171 (A167614 (n + 1)).toNat)

end

end A249174.P12541534485007283297

/-! ## A249174.P2766241933429713562

`record[A249171(A022856(n+2)+n)]`
-/

namespace A249174.P2766241933429713562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A022856 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249174.P2766241933429713562

/-! ## A249174.P4927566565687125610

`A249171(A167614(n+1))%A249237(n+1)`
-/

namespace A249174.P4927566565687125610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249171 (A167614 (n + 1)).toNat) (A249237 (n + 1))

end

end A249174.P4927566565687125610

/-!
# A249175: Number of length 4+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249175, there is no canonical definition to state claims against.
-/

/-! ## A249175.P9008267417081547676

`A249171(∑[n+3]+7)`
-/

namespace A249175.P9008267417081547676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249175.P9008267417081547676

/-! ## A249175.P17698182910349643818

`record[A249171(A077169(n)-n)]`
-/

namespace A249175.P17698182910349643818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249175.P17698182910349643818

/-! ## A249175.P8157711137269442042

`A249171(A167614(n+2)+1)+char[23]`
-/

namespace A249175.P8157711137269442042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249175.P8157711137269442042

/-! ## A249175.P12552765723622404808

`A007318(C(2, n))*A249171(A167614(n+2)+1)`
-/

namespace A249175.P12552765723622404808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A249171 (A167614 (n + 2) + 1).toNat

end

end A249175.P12552765723622404808

/-!
# A249176: Number of length 5+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249176, there is no canonical definition to state claims against.
-/

/-! ## A249176.P15657051921148105171

`record[A249171(A077169(n))]`
-/

namespace A249176.P15657051921148105171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249176.P15657051921148105171

/-! ## A249176.P2895773699512868982

`A249171(A167499(n+3))`
-/

namespace A249176.P2895773699512868982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A167499 (n + 3)).toNat

end

end A249176.P2895773699512868982

/-! ## A249176.P4169563138569886978

`A249171(A155212(n)+13)`
-/

namespace A249176.P4169563138569886978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A155212 n + 13).toNat

end

end A249176.P4169563138569886978

/-! ## A249176.P10531364231322619430

`A249171(A056000(n)+15)`
-/

namespace A249176.P10531364231322619430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A056000 n + 15).toNat

end

end A249176.P10531364231322619430

/-! ## A249176.P3136047888421632284

`A249171(eq[7, A066657(n)])`
-/

namespace A249176.P3136047888421632284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249176.P3136047888421632284

/-!
# A249177: Number of length 6+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249177, there is no canonical definition to state claims against.
-/

/-! ## A249177.P8936272954419602840

`A249171(A056115(n)+21)`
-/

namespace A249177.P8936272954419602840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A056115 n + 21).toNat

end

end A249177.P8936272954419602840

/-! ## A249177.P7959325029953115337

`A249171(A167499(n+4)+1)`
-/

namespace A249177.P7959325029953115337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A167499 (n + 4) + 1).toNat

end

end A249177.P7959325029953115337

/-! ## A249177.P16743458067204418239

`A249171(A167487(n+4)-1)`
-/

namespace A249177.P16743458067204418239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A167487 (n + 4) - 1).toNat

end

end A249177.P16743458067204418239

/-! ## A249177.P3409906127702387662

`A249171(A000124(n+5)+5)`
-/

namespace A249177.P3409906127702387662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A000124 (n + 5) + 5).toNat

end

end A249177.P3409906127702387662

/-! ## A249177.P3012609256936122877

`A249171(A000096(n+4)+7)`
-/

namespace A249177.P3012609256936122877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A000096 (n + 4) + 7).toNat

end

end A249177.P3012609256936122877

/-!
# A249178: Number of length 7+6 0..n arrays with every seven consecutive terms having four times the sum of some three elements equal to three times the sum of the remaining four.

The programs for A249178, there is no canonical definition to state claims against.
-/

/-! ## A249178.P18278489261797194441

`A249171(A167487(n+5))`
-/

namespace A249178.P18278489261797194441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A167487 (n + 5)).toNat

end

end A249178.P18278489261797194441

/-! ## A249178.P425205114123558787

`A249171(A056119(n)+28)`
-/

namespace A249178.P425205114123558787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A056119 n + 28).toNat

end

end A249178.P425205114123558787

/-! ## A249178.P9914701258679856196

`A249171(eq[11, A066657(n)])`
-/

namespace A249178.P9914701258679856196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249178.P9914701258679856196

/-! ## A249178.P5687255700702096849

`A249171(A133263(n+6)+5)`
-/

namespace A249178.P5687255700702096849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A133263 (n + 6) + 5).toNat

end

end A249178.P5687255700702096849

/-! ## A249178.P9680685852386364544

`A249171(A000124(n+6)+6)`
-/

namespace A249178.P9680685852386364544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249171 (A000124 (n + 6) + 6).toNat

end

end A249178.P9680685852386364544

/-!
# A249180: Primes of the form p^q - 2q, where p and q are prime.

The programs for A249180, there is no canonical definition to state claims against.
-/

/-! ## A249180.P1600467141260299938

`p?[A053810(n+1)-2*A053812(n+1)]`
-/

namespace A249180.P1600467141260299938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1) - 2 * A053812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249180.P1600467141260299938

/-!
# A249181: a(n) = A057137(n)^2 where A057137 = 0,1,12,123,...,123...90,...

The programs for A249181, the canonical program `A249181.P11038538888733313613` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249181 has offset 0).

The definition of A249181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249181.P11038538888733313613

`A057137(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249181

/-- `A057137(n)²` -/
def P11038538888733313613.Spec : Prop :=
  ∀ n, P11038538888733313613.a n = A249181 n

theorem P11038538888733313613.correct : P11038538888733313613.Spec := by
  intro n
  simp only [A249181]

end A249181

/-! ## A249181.P11004247174982361777

`A057137(n)^(2%A017233(n))`
-/

namespace A249181.P11004247174982361777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057137 n : ℚ) ^ (Int.tmod 2 (A017233 n) : ℤ)

end

end A249181.P11004247174982361777

namespace A249181

/-- `A057137(n)^(2%A017233(n))` -/
def P11004247174982361777.Spec : Prop :=
  ∀ n, P11004247174982361777.a n = (A249181 n : ℚ)

end A249181

/-! ## A249181.P6394948105923310372

`A057137(n)^A020639(A000118(n))`
-/

namespace A249181.P6394948105923310372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057137 n : ℚ) ^ (A020639 (A000118 n).toNat : ℤ)

end

end A249181.P6394948105923310372

namespace A249181

/-- `A057137(n)^A020639(A000118(n))` -/
def P6394948105923310372.Spec : Prop :=
  ∀ n, P6394948105923310372.a n = (A249181 n : ℚ)

end A249181

/-! ## A249181.P13759481031428500177

`A057137(n)^A020639(A000010(n+1))`
-/

namespace A249181.P13759481031428500177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057137 n : ℚ) ^ (A020639 (A000010 (n + 1)).toNat : ℤ)

end

end A249181.P13759481031428500177

namespace A249181

/-- `A057137(n)^A020639(A000010(n+1))` -/
def P13759481031428500177.Spec : Prop :=
  ∀ n, P13759481031428500177.a n = (A249181 n : ℚ)

end A249181

/-! ## A249181.P10994493881115609695

`A057137(n)^A020639(A057143(n+1))`
-/

namespace A249181.P10994493881115609695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057137 n : ℚ) ^ (A020639 (A057143 (n + 1)).toNat : ℤ)

end

end A249181.P10994493881115609695

namespace A249181

/-- `A057137(n)^A020639(A057143(n+1))` -/
def P10994493881115609695.Spec : Prop :=
  ∀ n, P10994493881115609695.a n = (A249181 n : ℚ)

end A249181

/-! ## A249181.P11695261181048989853

`A057137(n)^A020639(A057144(n+1))`
-/

namespace A249181.P11695261181048989853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057137 n : ℚ) ^ (A020639 (A057144 (n + 1)).toNat : ℤ)

end

end A249181.P11695261181048989853

namespace A249181

/-- `A057137(n)^A020639(A057144(n+1))` -/
def P11695261181048989853.Spec : Prop :=
  ∀ n, P11695261181048989853.a n = (A249181 n : ℚ)

end A249181

/-!
# A249183: a(n) = row n of triangle A249133, concatenated.

The programs for A249183, the canonical program `A249183.P13548390400809222770` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249183 has offset 0).

The definition of A249183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249183.P13548390400809222770

`A007088(A249184(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A249183

/-- `A007088(A249184(n))` -/
def P13548390400809222770.Spec : Prop :=
  ∀ n, P13548390400809222770.a n = A249183 n

theorem P13548390400809222770.correct : P13548390400809222770.Spec := by
  intro n
  simp only [A249183]

end A249183

/-! ## A249183.P3289256672311895962

`A305989(or(1, A249184(n)))`
-/

namespace A249183.P3289256672311895962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A249184 n)).toNat

end

end A249183.P3289256672311895962

namespace A249183

/-- `A305989(or(1, A249184(n)))` -/
def P3289256672311895962.Spec : Prop :=
  ∀ n, P3289256672311895962.a n = A249183 n

end A249183

/-! ## A249183.P6326947832859612148

`A305989(A249184(n)+A000007(n))`
-/

namespace A249183.P6326947832859612148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A249184 n + A000007 n).toNat

end

end A249183.P6326947832859612148

namespace A249183

/-- `A305989(A249184(n)+A000007(n))` -/
def P6326947832859612148.Spec : Prop :=
  ∀ n, P6326947832859612148.a n = A249183 n

end A249183

/-!
# A249184: A249183 seen as binary numbers.

The programs for A249184, the canonical program `A249184.P13603389080951978381` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249184 has offset 0).

The definition of A249184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249184.P13603389080951978381

`xor(4*a(n-1), a(n-1))` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249184

/-- `xor(4*a(n-1), a(n-1))` -/
def P13603389080951978381.Spec : Prop :=
  ∀ n, (P13603389080951978381.a n : ℤ) = A249184 n

theorem P13603389080951978381.correct : P13603389080951978381.Spec := by
  intro n
  simp only [A249184]

end A249184

/-! ## A249184.P9686770270795704573

`xor(lcm(4, a(n-1)), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A249184.P9686770270795704573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 1))) (a (n - 1))

end

end A249184.P9686770270795704573

namespace A249184

/-- `xor(lcm(4, a(n-1)), a(n-1))` -/
def P9686770270795704573.Spec : Prop :=
  ∀ n, (P9686770270795704573.a n : ℤ) = A249184 n

end A249184

/-! ## A249184.P11585026902674440795

`xor(a(n-1)+a(n-1)+a(n-1)+or(2, a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A249184.P11585026902674440795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1) + (a (n - 1) + (a (n - 1) + Nat.lor 2 (a (n - 1))))) (a (n - 1))

end

end A249184.P11585026902674440795

namespace A249184

/-- `xor(a(n-1)+a(n-1)+a(n-1)+or(2, a(n-1)), a(n-1))` -/
def P11585026902674440795.Spec : Prop :=
  ∀ n, (P11585026902674440795.a n : ℤ) = A249184 n

end A249184

/-! ## A249184.P16587551901330931776

`A277819(A034856(A004277(n)))`
-/

namespace A249184.P16587551901330931776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A034856 (A004277 n).toNat).toNat

end

end A249184.P16587551901330931776

namespace A249184

/-- `A277819(A034856(A004277(n)))` -/
def P16587551901330931776.Spec : Prop :=
  ∀ n, P16587551901330931776.a n = A249184 n

end A249184

/-! ## A249184.P2376859806859756064

`record[A277820(A010685(n)+A000096(n))]`
-/

namespace A249184.P2376859806859756064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A010685 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249184.P2376859806859756064

namespace A249184

/-- `record[A277820(A010685(n)+A000096(n))]` -/
def P2376859806859756064.Spec : Prop :=
  ∀ n, P2376859806859756064.a n = A249184 n

end A249184

/-!
# A249190: Number of length n+6 0..1 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249190, the canonical program `A249190.P4298636297508026740` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249190 has offset 1).

The definition of A249190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249190.P4298636297508026740

`2*A001592(n+12)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249190

/-- `2*A001592(n+12)` -/
def P4298636297508026740.Spec : Prop :=
  ∀ n, P4298636297508026740.a n = A249190 (n + 1)

theorem P4298636297508026740.correct : P4298636297508026740.Spec := by
  intro n
  simp only [A249190, Nat.add_sub_cancel]

end A249190

/-! ## A249190.P5549899264830587183

`2*Δ[A172316(A020715(n))]`
-/

namespace A249190.P5549899264830587183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A249190.P5549899264830587183

namespace A249190

/-- `2*Δ[A172316(A020715(n))]` -/
def P5549899264830587183.Spec : Prop :=
  ∀ n, P5549899264830587183.a n = A249190 (n + 1)

end A249190

/-! ## A249190.P13988284335174352284

`A172316(n+7)-A172316(n)`
-/

namespace A249190.P13988284335174352284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 (n + 7) - A172316 n

end

end A249190.P13988284335174352284

namespace A249190

/-- `A172316(n+7)-A172316(n)` -/
def P13988284335174352284.Spec : Prop :=
  ∀ n, P13988284335174352284.a n = A249190 (n + 1)

end A249190

/-! ## A249190.P4890213991538187734

`A001592(n+6)+A001592(n+13)`
-/

namespace A249190.P4890213991538187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 6) + A001592 (n + 13)

end

end A249190.P4890213991538187734

namespace A249190

/-- `A001592(n+6)+A001592(n+13)` -/
def P4890213991538187734.Spec : Prop :=
  ∀ n, P4890213991538187734.a n = A249190 (n + 1)

end A249190

/-! ## A249190.P16629702128459591646

`2*(A172316(A020715(n))-A172316(n))`
-/

namespace A249190.P16629702128459591646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A172316 (A020715 n).toNat - A172316 n)

end

end A249190.P16629702128459591646

namespace A249190

/-- `2*(A172316(A020715(n))-A172316(n))` -/
def P16629702128459591646.Spec : Prop :=
  ∀ n, P16629702128459591646.a n = A249190 (n + 1)

end A249190

/-! ## A249190.P18128831957561075020

`Δ[2*Δ[A145114(n+6)]]`
-/

namespace A249190.P18128831957561075020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249190.P18128831957561075020

namespace A249190

/-- `Δ[2*Δ[A145114(n+6)]]` -/
def P18128831957561075020.Spec : Prop :=
  ∀ n, P18128831957561075020.a n = A249190 (n + 1)

end A249190

/-! ## A249190.P1285596859183197185

`Δ[A145114(n+7)-A145114(n)]`
-/

namespace A249190.P1285596859183197185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 (n + 7) - A145114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249190.P1285596859183197185

namespace A249190

/-- `Δ[A145114(n+7)-A145114(n)]` -/
def P1285596859183197185.Spec : Prop :=
  ∀ n, P1285596859183197185.a n = A249190 (n + 1)

end A249190

/-!
# A249191: Number of length n+6 0..2 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249191, there is no canonical definition to state claims against.
-/

/-! ## A249191.P782833660251267131

`A249319(∑[n+2])`
-/

namespace A249191.P782833660251267131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249191.P782833660251267131

/-! ## A249191.P1078460571718134436

`record[A249319(A000096(A003602(n+1)))]`
-/

namespace A249191.P1078460571718134436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249191.P1078460571718134436

/-! ## A249191.P3408295863874344748

`record[A249319(A000096(A010766(n+1)))]`
-/

namespace A249191.P3408295863874344748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000096 (A010766 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249191.P3408295863874344748

/-! ## A249191.P9028559677563938189

`record[A249319(A000096(A195183(n+1)))]`
-/

namespace A249191.P9028559677563938189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000096 (A195183 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249191.P9028559677563938189

/-! ## A249191.P1863509524230302002

`record[A249319(A000096(A026238(n+2)))]`
-/

namespace A249191.P1863509524230302002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249191.P1863509524230302002

/-!
# A249192: Number of length n+6 0..3 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249192, there is no canonical definition to state claims against.
-/

/-! ## A249192.P8047486790309122034

`A249197(∑[n+3]+1)`
-/

namespace A249192.P8047486790309122034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249192.P8047486790309122034

/-! ## A249192.P1958088428352137946

`lcm(2, A249197(A034856(n+2)))`
-/

namespace A249192.P1958088428352137946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249197 (A034856 (n + 2)).toNat)

end

end A249192.P1958088428352137946

/-! ## A249192.P1016746724749857125

`A007318(C(2, n))*A249197(A034856(n+2))`
-/

namespace A249192.P1016746724749857125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A249197 (A034856 (n + 2)).toNat

end

end A249192.P1016746724749857125

/-! ## A249192.P14789722438220786167

`A000041(floor(n/12))*A249197(A034856(n+2))`
-/

namespace A249192.P14789722438220786167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 12⌋.toNat * A249197 (A034856 (n + 2)).toNat

end

end A249192.P14789722438220786167

/-! ## A249192.P8398691987142597282

`A007318(A007318(2*n))*A249197(A034856(n+2))`
-/

namespace A249192.P8398691987142597282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A249197 (A034856 (n + 2)).toNat

end

end A249192.P8398691987142597282

/-!
# A249193: Number of length n+6 0..4 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249193, there is no canonical definition to state claims against.
-/

/-! ## A249193.P672562374490743438

`A249197(∑[n+4]+3)`
-/

namespace A249193.P672562374490743438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249193.P672562374490743438

/-! ## A249193.P16631189131365936939

`lcm(2, A249197(A141214(n+1)))`
-/

namespace A249193.P16631189131365936939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249197 (A141214 (n + 1)).toNat)

end

end A249193.P16631189131365936939

/-! ## A249193.P15359155213423610044

`record[A249197(A027379(abs(1-n)+1))]`
-/

namespace A249193.P15359155213423610044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A027379 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249193.P15359155213423610044

/-!
# A249194: Number of length n+6 0..5 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249194, there is no canonical definition to state claims against.
-/

/-! ## A249194.P8985127584831143050

`A249197(∑[n+5]+6)`
-/

namespace A249194.P8985127584831143050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A249194.P8985127584831143050

/-! ## A249194.P1818506616833456371

`A249197(A046691(n+3))+A011738(n)`
-/

namespace A249194.P1818506616833456371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A046691 (n + 3)).toNat + A011738 n

end

end A249194.P1818506616833456371

/-! ## A249194.P10070168110626062177

`A249197(A046691(n+3))+A025443(n)`
-/

namespace A249194.P10070168110626062177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A046691 (n + 3)).toNat + A025443 n

end

end A249194.P10070168110626062177

/-! ## A249194.P12011163553837744077

`A249197(A046691(n+3))+A185284(n)`
-/

namespace A249194.P12011163553837744077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A046691 (n + 3)).toNat + A185284 n

end

end A249194.P12011163553837744077

/-! ## A249194.P17079079625247837539

`lcm(A178522(n), A249197(A046691(n+3)))`
-/

namespace A249194.P17079079625247837539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178522 n) (A249197 (A046691 (n + 3)).toNat)

end

end A249194.P17079079625247837539

/-!
# A249195: Number of length n+6 0..6 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249195, there is no canonical definition to state claims against.
-/

/-! ## A249195.P400062729904364136

`A249197(A052905(n+3))`
-/

namespace A249195.P400062729904364136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A052905 (n + 3)).toNat

end

end A249195.P400062729904364136

/-! ## A249195.P8747849028987378341

`A249197(A056119(n)+16)`
-/

namespace A249195.P8747849028987378341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A056119 n + 16).toNat

end

end A249195.P8747849028987378341

/-! ## A249195.P10209246251505234445

`A249197(eq[3, A219347(n)])`
-/

namespace A249195.P10209246251505234445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249195.P10209246251505234445

/-! ## A249195.P5674341896650994681

`A249197(eq[5, A193592(n)])`
-/

namespace A249195.P5674341896650994681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249195.P5674341896650994681

/-! ## A249195.P417745840450897725

`A249197(eq[8, A258709(n)])`
-/

namespace A249195.P417745840450897725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249195.P417745840450897725

/-!
# A249196: Number of length n+6 0..7 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249196, there is no canonical definition to state claims against.
-/

/-! ## A249196.P7379920627774778368

`A249197(A055999(n+4))`
-/

namespace A249196.P7379920627774778368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A055999 (n + 4)).toNat

end

end A249196.P7379920627774778368

/-! ## A249196.P211715951346555796

`A249197(eq[4, A219347(n)])`
-/

namespace A249196.P211715951346555796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249196.P211715951346555796

/-! ## A249196.P6266521160783077023

`A249197(eq[6, A193592(n)])`
-/

namespace A249196.P6266521160783077023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249196.P6266521160783077023

/-! ## A249196.P7923806463190698477

`A249197(eq[32, A166065(n)])`
-/

namespace A249196.P7923806463190698477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249196.P7923806463190698477

/-! ## A249196.P9154204659388879414

`A249197(A155212(n+3)+2)`
-/

namespace A249196.P9154204659388879414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A155212 (n + 3) + 2).toNat

end

end A249196.P9154204659388879414

/-!
# A249197: T(n,k)=Number of length n+6 0..k arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249197, there is no canonical definition to state claims against.
-/

/-! ## A249197.P1331067044298979564

`A249319(n+1)-A144357(A137928(n+5))`
-/

namespace A249197.P1331067044298979564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (n + 1) - A144357 (A137928 (n + 5)).toNat

end

end A249197.P1331067044298979564

/-!
# A249198: Number of length 1+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249198, there is no canonical definition to state claims against.
-/

/-! ## A249198.P14464714893517146993

`(n+2)^7-A249172(n+1)`
-/

namespace A249198.P14464714893517146993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249172 (n + 1)

end

end A249198.P14464714893517146993

/-! ## A249198.P14139606806165975609

`A249213(n+1)+A249256(n+1)-A249172(n+1)`
-/

namespace A249198.P14139606806165975609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249213 (n + 1) + (A249256 (n + 1) - A249172 (n + 1))

end

end A249198.P14139606806165975609

/-! ## A249198.P11657644131991567805

`A249213(n+1)+A249256(n+1)-A249171(∑[n]+1)`
-/

namespace A249198.P11657644131991567805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249213 (n + 1) + (A249256 (n + 1) - A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A249198.P11657644131991567805

/-! ## A249198.P7865366407031506327

`A249197(∑[n]+1)`
-/

namespace A249198.P7865366407031506327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249198.P7865366407031506327

/-! ## A249198.P17601618049920025477

`record[A249197(A106247(n))]`
-/

namespace A249198.P17601618049920025477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249198.P17601618049920025477

/-!
# A249199: Number of length 2+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249199, there is no canonical definition to state claims against.
-/

/-! ## A249199.P5385006190196524266

`A249197(∑[n+1]+2)`
-/

namespace A249199.P5385006190196524266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249199.P5385006190196524266

/-! ## A249199.P12034436269823413797

`record[gcd(A025581(n), A249197(n+3))]`
-/

namespace A249199.P12034436269823413797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A249197 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249199.P12034436269823413797

/-! ## A249199.P6426646280180267020

`lcm(2, A249197(eq[1, A002262(n)]+1))`
-/

namespace A249199.P6426646280180267020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A249199.P6426646280180267020

/-! ## A249199.P2507841855242156414

`record[A010054(n+1)*A249197(n+3)]`
-/

namespace A249199.P2507841855242156414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A249197 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249199.P2507841855242156414

/-! ## A249199.P2433255979198668646

`char[A081371(3*n+4)]*A249197(A133263(n+1))`
-/

namespace A249199.P2433255979198668646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A249197 (A133263 (n + 1)).toNat

end

end A249199.P2433255979198668646

