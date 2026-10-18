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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A139000: a(n) = discriminant of n-th Bell polynomial.

The programs for A139000, there is no canonical definition to state claims against.
-/

/-! ## A139000.P2949879444433054894

`∑[4^a(n-1)-4]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4`
-/

namespace A139000.P2949879444433054894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 0, 4] fun n f1 =>
  (4 : ℝ) ^ (f1 (n - 1)) - 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139000.P2949879444433054894

/-!
# A139001: Partial sums of A055573 = number of terms in continued fraction of H(n)=sum(1/k,k=1..n).

The programs for A139001, there is no canonical definition to state claims against.
-/

/-! ## A139001.P8132303101744064643

`∑[A055573(n+1)]`
-/

namespace A139001.P8132303101744064643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139001.P8132303101744064643

/-! ## A139001.P17729822454668381804

`A055573(n+1)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A139001.P17729822454668381804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055573 (n + 1) + a |A024000 n|.toNat

end

end A139001.P17729822454668381804

/-! ## A139001.P6250768022026055013

`∑[A028310(A055573(or(1, 2*n)-n))]`
-/

namespace A139001.P6250768022026055013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055573 (Nat.lor 1 (2 * n) - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139001.P6250768022026055013

/-! ## A139001.P7565461849775596385

`A028310(A055573(Δ[n²]-n))+a(n-1)` with `a(0)=1`
-/

namespace A139001.P7565461849775596385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A055573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + a (n - 1)

end

end A139001.P7565461849775596385

/-! ## A139001.P1136952520973454109

`a(n-1)+A055573(n+1)%A112286(n+1)` with `a(0)=1`
-/

namespace A139001.P1136952520973454109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A055573 (n + 1)) (A112286 (n + 1))

end

end A139001.P1136952520973454109

/-!
# A139006: Number of n X n symmetric binary matrices containing no more than one 1 in any 2 X 2 sub-block.

The programs for A139006, there is no canonical definition to state claims against.
-/

/-! ## A139006.P3535000871866731836

`record[A141486(n)]`
-/

namespace A139006.P3535000871866731836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139006.P3535000871866731836

/-! ## A139006.P10918696264823864714

`A141486(comp[2*(n+1)])`
-/

namespace A139006.P10918696264823864714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141486 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A139006.P10918696264823864714

/-! ## A139006.P17113464738670353812

`A057427(n+3)*A141486(A004273(n))`
-/

namespace A139006.P17113464738670353812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3) * A141486 (A004273 n).toNat

end

end A139006.P17113464738670353812

/-! ## A139006.P14957736092458707928

`A141486(A004273(n))+A056594(A004273(n+1))`
-/

namespace A139006.P14957736092458707928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141486 (A004273 n).toNat + A056594 (A004273 (n + 1)).toNat

end

end A139006.P14957736092458707928

/-!
# A139007: Number of n X n symmetric binary matrices containing no more than two 1s in any 2 X 2 sub-block.

The programs for A139007, there is no canonical definition to state claims against.
-/

/-! ## A139007.P2593907619349290796

`record[A141506(n)]`
-/

namespace A139007.P2593907619349290796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139007.P2593907619349290796

/-! ## A139007.P2694842320806504521

`A141506(A004273(n))`
-/

namespace A139007.P2694842320806504521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141506 (A004273 n).toNat

end

end A139007.P2694842320806504521

/-! ## A139007.P13787886193204446717

`A141506(A004277(n)-1)`
-/

namespace A139007.P13787886193204446717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141506 (A004277 n - 1).toNat

end

end A139007.P13787886193204446717

/-! ## A139007.P4680341638438801646

`A141506(lt[A141459(n), 2])`
-/

namespace A139007.P4680341638438801646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141506 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A139007.P4680341638438801646

/-! ## A139007.P8712000628062463009

`A141506(comp[A139524(n+1)])`
-/

namespace A139007.P8712000628062463009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141506 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A139007.P8712000628062463009

/-!
# A139008: Number of x X n symmetric binary matrices containing no more than three 1s in any 2 X 2 sub-block.

The programs for A139008, there is no canonical definition to state claims against.
-/

/-! ## A139008.P8773990416903994342

`record[A141512(n)]`
-/

namespace A139008.P8773990416903994342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139008.P8773990416903994342

/-! ## A139008.P1937721405709104605

`A141512(comp[2*(n+1)])`
-/

namespace A139008.P1937721405709104605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141512 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A139008.P1937721405709104605

/-!
# A139010: Number of n X n symmetric binary matrices containing no more than two 1s in any 3 X 3 sub-block.

The programs for A139010, there is no canonical definition to state claims against.
-/

/-! ## A139010.P674979772671582384

`∑[A193457(A079496(n))]`
-/

namespace A139010.P674979772671582384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193457 (A079496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139010.P674979772671582384

/-! ## A139010.P127111522159281851

`A192419(A001858(n)+n)`
-/

namespace A139010.P127111522159281851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A001858 n + (n : ℤ)).toNat

end

end A139010.P127111522159281851

/-!
# A139011: Real part of (2 + i)^n, where i = sqrt(-1).

The programs for A139011, the canonical program `A139011.P7080815601701033623` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139011 has offset 0).

The definition of A139011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139011.P7080815601701033623

`4*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139011

/-- `4*a(n-1)-5*a(n-2)` -/
def P7080815601701033623.Spec : Prop :=
  ∀ n, P7080815601701033623.a n = A139011 n

theorem P7080815601701033623.correct : P7080815601701033623.Spec := by
  intro n
  simp only [A139011]

end A139011

/-! ## A139011.P1156576004627464885

`∏[4-5/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A139011.P1156576004627464885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139011.P1156576004627464885

namespace A139011

/-- `∏[4-5/a(n-1)]` -/
def P1156576004627464885.Spec : Prop :=
  ∀ n, P1156576004627464885.a n = (A139011 n : ℚ)

end A139011

/-! ## A139011.P3610223094851719495

`ogf((1-2x)/(1-4x+5x^2))`
-/

namespace A139011.P3610223094851719495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 5] n

end

end A139011.P3610223094851719495

namespace A139011

/-- `ogf((1-2x)/(1-4x+5x^2))` -/
def P3610223094851719495.Spec : Prop :=
  ∀ n, P3610223094851719495.a n = A139011 n

end A139011

/-! ## A139011.P4623598138793710739

`(a(n-1)-a(n-2))/(1/2)²-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A139011.P4623598138793710739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A139011.P4623598138793710739

namespace A139011

/-- `(a(n-1)-a(n-2))/(1/2)²-a(n-2)` -/
def P4623598138793710739.Spec : Prop :=
  ∀ n, P4623598138793710739.a n = (A139011 n : ℚ)

end A139011

/-! ## A139011.P1076564336723076800

`A102486(n)-A099456(n)`
-/

namespace A139011.P1076564336723076800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102486 n - A099456 n

end

end A139011.P1076564336723076800

namespace A139011

/-- `A102486(n)-A099456(n)` -/
def P1076564336723076800.Spec : Prop :=
  ∀ n, P1076564336723076800.a n = A139011 n

end A139011

/-! ## A139011.P3182161344635942186

`A370191(n)/2^n`
-/

namespace A139011.P3182161344635942186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370191 n : ℚ) / (2 ^ n : ℚ)

end

end A139011.P3182161344635942186

namespace A139011

/-- `A370191(n)/2^n` -/
def P3182161344635942186.Spec : Prop :=
  ∀ n, P3182161344635942186.a n = (A139011 n : ℚ)

end A139011

/-!
# A139012: Number of n X n symmetric binary matrices containing no more than three 1s in any 3 X 3 sub-block.

The programs for A139012, there is no canonical definition to state claims against.
-/

/-! ## A139012.P8092168722764194552

`A006087(A083015(n))`
-/

namespace A139012.P8092168722764194552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006087 (A083015 n).toNat

end

end A139012.P8092168722764194552

/-!
# A139013: a(n) = A074924(n)/2.

The programs for A139013, there is no canonical definition to state claims against.
-/

/-! ## A139013.P659196232596762538

`A074924(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139013.P659196232596762538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074924 (n + 1) : ℚ) / 2

end

end A139013.P659196232596762538

/-! ## A139013.P17671749338022436754

`sqrt(A062703(n+1))/2`
-/

namespace A139013.P17671749338022436754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062703 (n + 1) : ℝ) / 2

end

end A139013.P17671749338022436754

/-! ## A139013.P13023233741171855614

`ceil(sqrt(A061275(n+1)/2))`
-/

namespace A139013.P13023233741171855614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A061275 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A139013.P13023233741171855614

/-! ## A139013.P18294761437349210194

`A014682(A074924(n+1))`
-/

namespace A139013.P18294761437349210194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A074924 (n + 1)).toNat

end

end A139013.P18294761437349210194

/-! ## A139013.P9364069653929625239

`record[A074924(A324347(n))/2]`
-/

namespace A139013.P9364069653929625239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074924 (A324347 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139013.P9364069653929625239

/-! ## A139013.P3895022728928007245

`A298462(n+1)%A074924(n+1)`
-/

namespace A139013.P3895022728928007245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298462 (n + 1)) (A074924 (n + 1))

end

end A139013.P3895022728928007245

/-! ## A139013.P13941200309092428229

`gcd(A062703(n+1), A298462(n+1))`
-/

namespace A139013.P13941200309092428229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062703 (n + 1)) (A298462 (n + 1))

end

end A139013.P13941200309092428229

/-! ## A139013.P12042966169340931280

`gcd(A000217(A074924(n+1)-1), A074924(n+1))`
-/

namespace A139013.P12042966169340931280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A074924 (n + 1) - 1).toNat) (A074924 (n + 1))

end

end A139013.P12042966169340931280

/-! ## A139013.P11595203898408998503

`A000463(A074924(n+1)-1)`
-/

namespace A139013.P11595203898408998503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A074924 (n + 1) - 1).toNat

end

end A139013.P11595203898408998503

/-!
# A139014: Number of n X n symmetric binary matrices containing no more than four 1s in any 3 X 3 sub-block.

The programs for A139014, there is no canonical definition to state claims against.
-/

/-! ## A139014.P266641709825017628

`A192391(A149956(n))`
-/

namespace A139014.P266641709825017628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192391 (A149956 n).toNat

end

end A139014.P266641709825017628

/-!
# A139015: Number of n X n symmetric binary matrices containing no more than five 1s in any 3 X 3 sub-block.

The programs for A139015, there is no canonical definition to state claims against.
-/

/-! ## A139015.P2309583344130058482

`A237194(3^(n+2)-2)`
-/

namespace A139015.P2309583344130058482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237194 (3 ^ (n + 2) - 2)

end

end A139015.P2309583344130058482

/-!
# A139016: Number of n X n symmetric binary matrices containing no more than six 1s in any 3 X 3 sub-block.

The programs for A139016, there is no canonical definition to state claims against.
-/

/-! ## A139016.P9515498522770291207

`A320389(∏[round(exp(n-γ))])`
-/

namespace A139016.P9515498522770291207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320389 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139016.P9515498522770291207

/-!
# A139017: Number of n X n symmetric binary matrices containing no more than seven 1s in any 3 X 3 sub-block.

The programs for A139017, there is no canonical definition to state claims against.
-/

/-! ## A139017.P7167118516041031831

`∑[A117571(A382086(n))]`
-/

namespace A139017.P7167118516041031831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A382086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139017.P7167118516041031831

/-!
# A139018: Number of n X n symmetric binary matrices containing no more than eight 1s in any 3 X 3 sub-block.

The programs for A139018, there is no canonical definition to state claims against.
-/

/-! ## A139018.P4446762365806543597

`A194420(a(n-1))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A139018.P4446762365806543597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  A194420 (a (n - 1)).toNat

end

end A139018.P4446762365806543597

/-!
# A139020: a(n) = sum_{k=1 to n} A139019(k).

The programs for A139020, there is no canonical definition to state claims against.
-/

/-! ## A139020.P16415510148590121220

`∑[A139019(n+1)]`
-/

namespace A139020.P16415510148590121220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139020.P16415510148590121220

/-! ## A139020.P2112977608690084168

`∑[record[A139019(A117407(n))]]`
-/

namespace A139020.P2112977608690084168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139019 (A117407 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139020.P2112977608690084168

/-! ## A139020.P6842855082958162576

`∑[record[A139019(A193592(n))]]`
-/

namespace A139020.P6842855082958162576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139019 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139020.P6842855082958162576

/-! ## A139020.P4625481469150259767

`∑[record[A139019(A193738(n))]]`
-/

namespace A139020.P4625481469150259767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139019 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139020.P4625481469150259767

/-! ## A139020.P9459478998669141601

`∑[record[A139019(A203814(n))]]`
-/

namespace A139020.P9459478998669141601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139019 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139020.P9459478998669141601

/-!
# A139021: a(0)=2. a(n) = smallest prime > a(n-1) such that (Sum_{k=0..n} a(k)) is a power of a prime.

The programs for A139021, there is no canonical definition to state claims against.
-/

/-! ## A139021.P3556807128659665041

`p?[∑[A349183(A123354(n))]]`
-/

namespace A139021.P3556807128659665041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A123354 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139021.P3556807128659665041

/-! ## A139021.P3672804759758290985

`p?[record[A263267(A242655(n+1))]]`
-/

namespace A139021.P3672804759758290985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A242655 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139021.P3672804759758290985

/-!
# A139022: a(n) = sum{k=0 to n} A139021(k).

The programs for A139022, there is no canonical definition to state claims against.
-/

/-! ## A139022.P1086520937283016972

`∑[A139021(n)]`
-/

namespace A139022.P1086520937283016972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139022.P1086520937283016972

/-! ## A139022.P3482913039080940815

`∑[p?[∑[A349183(A123354(n))]]]`
-/

namespace A139022.P3482913039080940815
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A123354 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139022.P3482913039080940815

/-!
# A139023: Smallest prime factor of n! + 2^n - 1.

The programs for A139023, there is no canonical definition to state claims against.
-/

/-! ## A139023.P14972556315793729577

`A325643(∑[2^n]+(n+1)!)`
-/

namespace A139023.P14972556315793729577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325643 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (n + 1))

end

end A139023.P14972556315793729577

/-! ## A139023.P4017400190200795626

`p?[A223490(2^n+n!-1)]`
-/

namespace A139023.P4017400190200795626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 ((2 ^ n : ℤ) + ((Nat.factorial n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139023.P4017400190200795626

/-! ## A139023.P10779825600020257610

`p?[A304181(2^n+n!-1)]`
-/

namespace A139023.P10779825600020257610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 ((2 ^ n : ℤ) + ((Nat.factorial n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139023.P10779825600020257610

/-!
# A139024: Number of distinct prime factors of n! + 2^n - 1.

The programs for A139024, there is no canonical definition to state claims against.
-/

/-! ## A139024.P2368969018685308813

`gcd(∑[A088917(n)], A080627(n))`
-/

namespace A139024.P2368969018685308813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A080627 n)

end

end A139024.P2368969018685308813

/-! ## A139024.P6342591959924060149

`A033273(n+1)*A303824(A280194(n))`
-/

namespace A139024.P6342591959924060149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) * A303824 (A280194 n).toNat

end

end A139024.P6342591959924060149

/-! ## A139024.P5400754445240845467

`A034836(n+1)*A303824(A280194(n))`
-/

namespace A139024.P5400754445240845467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) * A303824 (A280194 n).toNat

end

end A139024.P5400754445240845467

/-! ## A139024.P17265272111427268343

`A001876(A130026(n)+A065917(n+1))`
-/

namespace A139024.P17265272111427268343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A130026 n + A065917 (n + 1)).toNat

end

end A139024.P17265272111427268343

/-! ## A139024.P3789340426774443961

`A001227(A145981(n)+A055932(n+1))`
-/

namespace A139024.P3789340426774443961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A145981 n + A055932 (n + 1)).toNat

end

end A139024.P3789340426774443961

/-!
# A139025: This is to A014688 as A014688 to A000027, see comments for definition.

The programs for A139025, there is no canonical definition to state claims against.
-/

/-! ## A139025.P11302440938968064600

`n+1+A061068(n+1)`
-/

namespace A139025.P11302440938968064600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A061068 (n + 1)

end

end A139025.P11302440938968064600

/-! ## A139025.P13274022801621144217

`p?[p?[round(8*n/7)]+1+n]+1+n`
-/

namespace A139025.P13274022801621144217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)

end

end A139025.P13274022801621144217

/-! ## A139025.P2586606710048177910

`p?[A014688(n+1)]+1+n`
-/

namespace A139025.P2586606710048177910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)

end

end A139025.P2586606710048177910

/-! ## A139025.P8374555841622638527

`A061068(abs(xor(n, -1)))-xor(n, -1)`
-/

namespace A139025.P8374555841622638527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 |Int.xor (n : ℤ) (-1)|.toNat - Int.xor (n : ℤ) (-1)

end

end A139025.P8374555841622638527

/-! ## A139025.P17698340733900273600

`A061068(-xor(n, -1))-xor(n, -1)`
-/

namespace A139025.P17698340733900273600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (-Int.xor (n : ℤ) (-1)).toNat - Int.xor (n : ℤ) (-1)

end

end A139025.P17698340733900273600

/-!
# A139026: This is to A139025 as A139025 to A014688, see A139025 for details.

The programs for A139026, there is no canonical definition to state claims against.
-/

/-! ## A139026.P2649283334249079517

`p?[A061068(n+1)+1+n]+n+1`
-/

namespace A139026.P2649283334249079517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)

end

end A139026.P2649283334249079517

/-! ## A139026.P1976125914026421391

`p?[p?[A008578(n+1)+n]+n+1]+n+1`
-/

namespace A139026.P1976125914026421391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)

end

end A139026.P1976125914026421391

/-! ## A139026.P2430444121003133030

`n+1+p?[p?[A000040(n+1)+1+n]+n+1]`
-/

namespace A139026.P2430444121003133030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139026.P2430444121003133030

/-! ## A139026.P14552717472669883165

`p?[A014688(A064402(n+1))+n+1]+n+1`
-/

namespace A139026.P14552717472669883165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A064402 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)

end

end A139026.P14552717472669883165

/-! ## A139026.P8571845943385102429

`p?[A139025(n+1)]+1+n`
-/

namespace A139026.P8571845943385102429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)

end

end A139026.P8571845943385102429

/-!
# A139027: This is to A139026 as A139026 to A139025, see A139025 for details.

The programs for A139027, there is no canonical definition to state claims against.
-/

/-! ## A139027.P185034984923882967

`n+1+p?[p?[A061068(n+1)+n+1]+n+1]`
-/

namespace A139027.P185034984923882967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (n + 1) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139027.P185034984923882967

/-!
# A139030: Real part of (4 + 3i)^n.

The programs for A139030, the canonical program `A139030.P14041001029981953958` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139030 has offset 0).

The definition of A139030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139030.P14041001029981953958

`8*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139030

/-- `8*a(n-1)-25*a(n-2)` -/
def P14041001029981953958.Spec : Prop :=
  ∀ n, P14041001029981953958.a n = A139030 n

theorem P14041001029981953958.correct : P14041001029981953958.Spec := by
  intro n
  simp only [A139030]

end A139030

/-! ## A139030.P2550143059364704109

`ogf((1-4x)/(1-8x+25x^2))`
-/

namespace A139030.P2550143059364704109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 25] n

end

end A139030.P2550143059364704109

namespace A139030

/-- `ogf((1-4x)/(1-8x+25x^2))` -/
def P2550143059364704109.Spec : Prop :=
  ∀ n, P2550143059364704109.a n = A139030 n

end A139030

/-! ## A139030.P32474286853166505

`A376285(n)/A000079(n)²`
-/

namespace A139030.P32474286853166505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376285 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A139030.P32474286853166505

namespace A139030

/-- `A376285(n)/A000079(n)²` -/
def P32474286853166505.Spec : Prop :=
  ∀ n, P32474286853166505.a n = (A139030 n : ℚ)

end A139030

/-! ## A139030.P5542738446654807764

`A292495(A081268(n))`
-/

namespace A139030.P5542738446654807764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292495 (A081268 n).toNat

end

end A139030.P5542738446654807764

namespace A139030

/-- `A292495(A081268(n))` -/
def P5542738446654807764.Spec : Prop :=
  ∀ n, P5542738446654807764.a n = A139030 n

end A139030

/-! ## A139030.P12065836348127213856

`A292495(A051682(n+1)+n)`
-/

namespace A139030.P12065836348127213856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292495 (A051682 (n + 1) + (n : ℤ)).toNat

end

end A139030.P12065836348127213856

namespace A139030

/-- `A292495(A051682(n+1)+n)` -/
def P12065836348127213856.Spec : Prop :=
  ∀ n, P12065836348127213856.a n = A139030 n

end A139030

/-!
# A139031: Imaginary part of (4 + 3i)^n.

The programs for A139031, the canonical program `A139031.P12423199431694686391` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139031 has offset 1).

The definition of A139031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139031.P12423199431694686391

`8*a(n-1)-25*a(n-2)` with `a(0)=3, a(1)=24`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139031

/-- `8*a(n-1)-25*a(n-2)` -/
def P12423199431694686391.Spec : Prop :=
  ∀ n, P12423199431694686391.a n = A139031 (n + 1)

theorem P12423199431694686391.correct : P12423199431694686391.Spec := by
  intro n
  simp only [A139031, Nat.add_sub_cancel]

end A139031

/-! ## A139031.P7979489537984394348

`5^(n+1)*sin((n+1)*atan(3/4))`
-/

namespace A139031.P7979489537984394348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℝ) * Real.sin ((n + 1 : ℝ) * Real.arctan ((3 : ℚ) / 4 : ℝ))

end

end A139031.P7979489537984394348

namespace A139031

/-- `5^(n+1)*sin((n+1)*atan(3/4))` -/
def P7979489537984394348.Spec : Prop :=
  ∀ n, P7979489537984394348.a n = (A139031 (n + 1) : ℝ)

end A139031

/-! ## A139031.P16810179097809398723

`ogf(3/(1-8x+25x^2))`
-/

namespace A139031.P16810179097809398723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -8, 25] n

end

end A139031.P16810179097809398723

namespace A139031

/-- `ogf(3/(1-8x+25x^2))` -/
def P16810179097809398723.Spec : Prop :=
  ∀ n, P16810179097809398723.a n = A139031 (n + 1)

end A139031

/-! ## A139031.P5116546556360963028

`A106392(2*n+1)/A000079(n+1)`
-/

namespace A139031.P5116546556360963028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106392 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A139031.P5116546556360963028

namespace A139031

/-- `A106392(2*n+1)/A000079(n+1)` -/
def P5116546556360963028.Spec : Prop :=
  ∀ n, P5116546556360963028.a n = (A139031 (n + 1) : ℚ)

end A139031

/-! ## A139031.P13643657830526516382

`A106392(A005408(n))/(2*A000079(n))`
-/

namespace A139031.P13643657830526516382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106392 (A005408 n).toNat : ℚ) / (2 * A000079 n : ℚ)

end

end A139031.P13643657830526516382

namespace A139031

/-- `A106392(A005408(n))/(2*A000079(n))` -/
def P13643657830526516382.Spec : Prop :=
  ∀ n, P13643657830526516382.a n = (A139031 (n + 1) : ℚ)

end A139031

/-!
# A139032: Expansion of 1 + c(q^6) / c(q^3) where c() is a cubic AGM theta function.

The programs for A139032, there is no canonical definition to state claims against.
-/

/-! ## A139032.P7557943356249595804

`A010892(n)*A164615(n)`
-/

namespace A139032.P7557943356249595804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A164615 n

end

end A139032.P7557943356249595804

/-! ## A139032.P9980688599743372197

`A049347(n)*A182034(n)`
-/

namespace A139032.P9980688599743372197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A182034 n

end

end A139032.P9980688599743372197

/-! ## A139032.P14920420537023463528

`A049347(n)*A182035(n)`
-/

namespace A139032.P14920420537023463528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A182035 n

end

end A139032.P14920420537023463528

/-! ## A139032.P6447931080658035533

`A134668(n)*A182035(n)`
-/

namespace A139032.P6447931080658035533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 n * A182035 n

end

end A139032.P6447931080658035533

/-! ## A139032.P12742033837719826519

`A139380(n)/A057079(n)`
-/

namespace A139032.P12742033837719826519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139380 n : ℚ) / (A057079 n : ℚ)

end

end A139032.P12742033837719826519

/-! ## A139032.P12047897830450351362

`A128771(n)/A114284(n)`
-/

namespace A139032.P12047897830450351362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128771 n : ℚ) / (A114284 n : ℚ)

end

end A139032.P12047897830450351362

/-! ## A139032.P3707806782412428446

`A128771(n)/A131713(n)`
-/

namespace A139032.P3707806782412428446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128771 n : ℚ) / (A131713 n : ℚ)

end

end A139032.P3707806782412428446

/-! ## A139032.P14928089338156981825

`A139380(n)/A132954(n)`
-/

namespace A139032.P14928089338156981825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139380 n : ℚ) / (A132954 n : ℚ)

end

end A139032.P14928089338156981825

/-! ## A139032.P9549931153878657761

`A139380(n)/A156283(n)`
-/

namespace A139032.P9549931153878657761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139380 n : ℚ) / (A156283 n : ℚ)

end

end A139032.P9549931153878657761

/-! ## A139032.P6473933916259292401

`A139380(n)/A187340(n)`
-/

namespace A139032.P6473933916259292401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139380 n : ℚ) / (A187340 n : ℚ)

end

end A139032.P6473933916259292401

/-! ## A139032.P15146075430478022353

`A128143(A004277(n))`
-/

namespace A139032.P15146075430478022353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A004277 n).toNat

end

end A139032.P15146075430478022353

/-! ## A139032.P5552704925304940

`A128143(A004275(n+1))`
-/

namespace A139032.P5552704925304940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A004275 (n + 1)).toNat

end

end A139032.P5552704925304940

/-! ## A139032.P3932958312203646426

`A128143(A300576(n+2))`
-/

namespace A139032.P3932958312203646426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A300576 (n + 2)).toNat

end

end A139032.P3932958312203646426

/-! ## A139032.P6114737823730309514

`A128143(A028310(2*n))`
-/

namespace A139032.P6114737823730309514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A028310 (2 * n)).toNat

end

end A139032.P6114737823730309514

/-! ## A139032.P15937777671418751076

`A128143(A028310(n)+n)`
-/

namespace A139032.P15937777671418751076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A028310 n + (n : ℤ)).toNat

end

end A139032.P15937777671418751076

/-! ## A139032.P2424082022830127838

`A128143(2*(A000007(n)+n))`
-/

namespace A139032.P2424082022830127838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (2 * (A000007 n + (n : ℤ))).toNat

end

end A139032.P2424082022830127838

/-! ## A139032.P8340419721807654816

`A128771(n)/A101675(2*n)`
-/

namespace A139032.P8340419721807654816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128771 n : ℚ) / (A101675 (2 * n) : ℚ)

end

end A139032.P8340419721807654816

/-!
# A139033: a(1)=1; at n>=2, a(n) = least square > a(n-1) such that sum a(1)+...+a(n) is a prime number.

The programs for A139033, there is no canonical definition to state claims against.
-/

/-! ## A139033.P8613560365018031401

`A137326(n+1)²`
-/

namespace A139033.P8613560365018031401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137326 (n + 1) ^ 2

end

end A139033.P8613560365018031401

/-! ## A139033.P7646213736838749737

`A002620(2*A137326(n+1))`
-/

namespace A139033.P7646213736838749737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A137326 (n + 1)).toNat

end

end A139033.P7646213736838749737

/-! ## A139033.P14167373133943328399

`A168077(2*A137326(n+1))`
-/

namespace A139033.P14167373133943328399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (2 * A137326 (n + 1)).toNat

end

end A139033.P14167373133943328399

/-! ## A139033.P4049211953566069469

`A137326(A000027(n+1))^2`
-/

namespace A139033.P4049211953566069469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137326 (A000027 (n + 1)).toNat ^ 2

end

end A139033.P4049211953566069469

/-! ## A139033.P6637686721879153427

`A137326(n+1)^(A057427(n)+1)`
-/

namespace A139033.P6637686721879153427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137326 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A139033.P6637686721879153427

/-! ## A139033.P5886588576362269240

`A137326(n+1)^A020639(2*(n+1))`
-/

namespace A139033.P5886588576362269240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137326 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A139033.P5886588576362269240

/-! ## A139033.P6289677196925269271

`A137326(n+1)^A000032(C(2, n+2))`
-/

namespace A139033.P6289677196925269271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137326 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A139033.P6289677196925269271

/-! ## A139033.P11671973870882697762

`A137326(n+1)^A000040(gcd(n, n+1))`
-/

namespace A139033.P11671973870882697762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137326 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A139033.P11671973870882697762

/-! ## A139033.P1165088667768517095

`A137326(n+1)^A006530(A001316(n))`
-/

namespace A139033.P1165088667768517095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137326 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A139033.P1165088667768517095

/-! ## A139033.P12611218795858155984

`A137326(A000027(n+1))*A137326(n+1)`
-/

namespace A139033.P12611218795858155984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137326 (A000027 (n + 1)).toNat * A137326 (n + 1)

end

end A139033.P12611218795858155984

/-!
# A139034: Prime numbers appearing in A139033.

The programs for A139034, there is no canonical definition to state claims against.
-/

/-! ## A139034.P18243782406639291562

`∑[A139033(n+2)]+1`
-/

namespace A139034.P18243782406639291562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139033 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139034.P18243782406639291562

/-! ## A139034.P17276075045590093367

`∑[A137326(n+2)²]+1`
-/

namespace A139034.P17276075045590093367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137326 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139034.P17276075045590093367

/-! ## A139034.P11630475276722053581

`p?[∑[A139033(n+1)]]`
-/

namespace A139034.P11630475276722053581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139034.P11630475276722053581

/-! ## A139034.P4813832367675340973

`p?[∑[A137326(n+1)²]]`
-/

namespace A139034.P4813832367675340973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137326 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139034.P4813832367675340973

/-!
# A139035: Primes of the form 4*k+3 with primitive root -2.

The programs for A139035, there is no canonical definition to state claims against.
-/

/-! ## A139035.P3455264339122091086

`record[2*A139686(n+1)+1]`
-/

namespace A139035.P3455264339122091086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139686 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139035.P3455264339122091086

/-! ## A139035.P9100044004041107474

`2*A163780(n+1)+1`
-/

namespace A139035.P9100044004041107474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163780 (n + 1) + 1

end

end A139035.P9100044004041107474

/-! ## A139035.P10554526217080170609

`∩[A004628(n+1), A105874(n+1)]`
-/

namespace A139035.P10554526217080170609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P10554526217080170609

/-! ## A139035.P17171954274075789814

`∩[A014663(n+1), A105874(n+1)]`
-/

namespace A139035.P17171954274075789814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P17171954274075789814

/-! ## A139035.P874151386987986218

`∩[A040141(n+1), A105874(n+1)]`
-/

namespace A139035.P874151386987986218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P874151386987986218

/-! ## A139035.P1232445183740388144

`∩[A036259(n+1), A105874(n+1)]`
-/

namespace A139035.P1232445183740388144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P1232445183740388144

/-! ## A139035.P11966980992139787723

`∩[A001132(n+1), A105874(n+1)]`
-/

namespace A139035.P11966980992139787723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P11966980992139787723

/-! ## A139035.P17551759217556478439

`∩[A001132(n+1), A105876(n+1)]`
-/

namespace A139035.P17551759217556478439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P17551759217556478439

/-! ## A139035.P5316219886960987791

`∩[A003628(n+1), A105876(n+1)]`
-/

namespace A139035.P5316219886960987791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P5316219886960987791

/-! ## A139035.P1088530661247444836

`∩[A045355(n+1), A105876(n+1)]`
-/

namespace A139035.P1088530661247444836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P1088530661247444836

/-! ## A139035.P703282557267974267

`∩[A002145(n+1), A105874(n+1)]`
-/

namespace A139035.P703282557267974267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P703282557267974267

/-! ## A139035.P6407195019667869972

`∩[A045326(n+1), A105874(n+1)]`
-/

namespace A139035.P6407195019667869972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P6407195019667869972

/-! ## A139035.P12922457068217794320

`∩[A105874(n+1), A270951(n+1)]`
-/

namespace A139035.P12922457068217794320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P12922457068217794320

/-! ## A139035.P12226269490385728022

`∩[A004628(n+1), A179538(n+1)]`
-/

namespace A139035.P12226269490385728022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P12226269490385728022

/-! ## A139035.P13693141238994551116

`∩[A001132(n+1), A007885(n+1)]`
-/

namespace A139035.P13693141238994551116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P13693141238994551116

/-! ## A139035.P17231851218289431734

`∩[A007522(n+1), A007885(n+1)]`
-/

namespace A139035.P17231851218289431734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P17231851218289431734

/-! ## A139035.P4366574976252900770

`∩[A007885(n+1), A014663(n+1)]`
-/

namespace A139035.P4366574976252900770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P4366574976252900770

/-! ## A139035.P2205781335983716539

`∩[A001132(n+1), A167798(n+1)]`
-/

namespace A139035.P2205781335983716539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P2205781335983716539

/-! ## A139035.P3357480020887876084

`∩[A105876(n+1), A045352(n+1)]`
-/

namespace A139035.P3357480020887876084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P3357480020887876084

/-! ## A139035.P8845687177852350862

`∩[A049564(n+1), A105874(n+1)]`
-/

namespace A139035.P8845687177852350862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139035.P8845687177852350862

/-!
# A139037: Triangular sequence of coefficients of T_n(2^n*x) where T_n is the n-th Chebyshev polynomial.

The programs for A139037, there is no canonical definition to state claims against.
-/

/-! ## A139037.P2037121473861494987

`A053120(n)*A344110(n)`
-/

namespace A139037.P2037121473861494987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n * A344110 n

end

end A139037.P2037121473861494987

/-! ## A139037.P12844933436168330118

`floor(A139569(n+1)/2)*A344110(n)`
-/

namespace A139037.P12844933436168330118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139569 (n + 1) : ℚ) / 2⌋ * A344110 n

end

end A139037.P12844933436168330118

/-! ## A139037.P11444497806602763442

`A000079(A079904(n))*A053120(n)`
-/

namespace A139037.P11444497806602763442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A079904 n).toNat * A053120 n

end

end A139037.P11444497806602763442

/-! ## A139037.P12368851607083360973

`A039991(A061579(n))*A344110(n)`
-/

namespace A139037.P12368851607083360973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A061579 n).toNat * A344110 n

end

end A139037.P12368851607083360973

/-! ## A139037.P5400504243563992150

`A039991(A114327(n)+n)*A344110(n)`
-/

namespace A139037.P5400504243563992150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A114327 n + (n : ℤ)).toNat * A344110 n

end

end A139037.P5400504243563992150

/-!
# A139038: Triangle read by rows: T(n,m) = A000931(m+6) if m <= floor(n/2), A000931(n+6-m) otherwise, for 0 <= m <= n.

The programs for A139038, the canonical program `A139038.P10853332724780471891` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139038 has offset 0).

The definition of A139038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139038.P8421321784576063428

`A110023(A106255(n+1))`
-/

namespace A139038.P8421321784576063428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110023 (A106255 (n + 1)).toNat

end

end A139038.P8421321784576063428

namespace A139038

/-- `A110023(A106255(n+1))` -/
def P8421321784576063428.Spec : Prop :=
  ∀ n, P8421321784576063428.a n = A139038 n

end A139038

/-! ## A139038.P10853332724780471891

`A134816(A004197(n)+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A139038

/-- `A134816(A004197(n)+2)` -/
def P10853332724780471891.Spec : Prop :=
  ∀ n, P10853332724780471891.a n = A139038 n

theorem P10853332724780471891.correct : P10853332724780471891.Spec := by
  intro n
  simp only [A139038]

end A139038

/-! ## A139038.P2629846511746053033

`A000931(A004197(n)+6)`
-/

namespace A139038.P2629846511746053033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A004197 n + 6).toNat

end

end A139038.P2629846511746053033

namespace A139038

/-- `A000931(A004197(n)+6)` -/
def P2629846511746053033.Spec : Prop :=
  ∀ n, P2629846511746053033.a n = A139038 n

end A139038

/-! ## A139038.P15375085153331025479

`A134816(A003983(n+1)+1)`
-/

namespace A139038.P15375085153331025479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A003983 (n + 1) + 1).toNat

end

end A139038.P15375085153331025479

namespace A139038

/-- `A134816(A003983(n+1)+1)` -/
def P15375085153331025479.Spec : Prop :=
  ∀ n, P15375085153331025479.a n = A139038 n

end A139038

/-! ## A139038.P5148668010876224559

`A000931(A003983(n+1)+5)`
-/

namespace A139038.P5148668010876224559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A003983 (n + 1) + 5).toNat

end

end A139038.P5148668010876224559

namespace A139038

/-- `A000931(A003983(n+1)+5)` -/
def P5148668010876224559.Spec : Prop :=
  ∀ n, P5148668010876224559.a n = A139038 n

end A139038

/-! ## A139038.P17518256849829996513

`A050361(5^A003983(n+1))`
-/

namespace A139038.P17518256849829996513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A003983 (n + 1) : ℤ))).toNat

end

end A139038.P17518256849829996513

namespace A139038

/-- `A050361(5^A003983(n+1))` -/
def P17518256849829996513.Spec : Prop :=
  ∀ n, P17518256849829996513.a n = A139038 n

end A139038

/-! ## A139038.P7472824896504627333

`A363822(ceil(2*sqrt(A144464(n))))`
-/

namespace A139038.P7472824896504627333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363822 ⌈2 * Real.sqrt (A144464 n : ℝ)⌉.toNat

end

end A139038.P7472824896504627333

namespace A139038

/-- `A363822(ceil(2*sqrt(A144464(n))))` -/
def P7472824896504627333.Spec : Prop :=
  ∀ n, P7472824896504627333.a n = A139038 n

end A139038

/-! ## A139038.P4728300749471521693

`A000009(A003983(n+1))%A037917(3*n+4)`
-/

namespace A139038.P4728300749471521693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A003983 (n + 1)).toNat) (A037917 (3 * n + 4))

end

end A139038.P4728300749471521693

namespace A139038

/-- `A000009(A003983(n+1))%A037917(3*n+4)` -/
def P4728300749471521693.Spec : Prop :=
  ∀ n, P4728300749471521693.a n = A139038 n

end A139038

/-! ## A139038.P8675206688598516669

`A001222(A155050(n))+1`
-/

namespace A139038.P8675206688598516669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155050 n).toNat + 1

end

end A139038.P8675206688598516669

namespace A139038

/-- `A001222(A155050(n))+1` -/
def P8675206688598516669.Spec : Prop :=
  ∀ n, P8675206688598516669.a n = A139038 n

end A139038

/-! ## A139038.P18314820614027478152

`floor(A010553(A140356(n))/ϕ)+1`
-/

namespace A139038.P18314820614027478152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010553 (A140356 n).toNat : ℝ) / Real.goldenRatio⌋ + 1

end

end A139038.P18314820614027478152

namespace A139038

/-- `floor(A010553(A140356(n))/ϕ)+1` -/
def P18314820614027478152.Spec : Prop :=
  ∀ n, P18314820614027478152.a n = A139038 n

end A139038

/-!
# A139039: A triangular central symmetric sequence based on the sequence A003269: if m <= floor(n/2), t(n,m) = A003269(m+2), otherwise t(n,m) = A003269(n - (m+2)).

The programs for A139039, there is no canonical definition to state claims against.
-/

/-! ## A139039.P16969960349701176877

`ceil(A238392(n)/4)`
-/

namespace A139039.P16969960349701176877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238392 n : ℚ) / 4⌉

end

end A139039.P16969960349701176877

/-! ## A139039.P17411354546566991815

`floor(root(A152719(n), 3))`
-/

namespace A139039.P17411354546566991815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152719 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A139039.P17411354546566991815

/-! ## A139039.P813023762712221043

`floor(root(A152716(n), 5))`
-/

namespace A139039.P813023762712221043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152716 n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A139039.P813023762712221043

/-! ## A139039.P10509652075423620449

`floor(root(A174376(n), 9))`
-/

namespace A139039.P10509652075423620449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174376 n : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A139039.P10509652075423620449

/-! ## A139039.P18283110902554048042

`round(sqrt(A144464(n)/2))`
-/

namespace A139039.P18283110902554048042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A144464 n : ℚ) / 2 : ℝ))

end

end A139039.P18283110902554048042

/-! ## A139039.P13036720416457539831

`round(log(A155050(n)+1))`
-/

namespace A139039.P13036720416457539831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A155050 n + 1 : ℝ))

end

end A139039.P13036720416457539831

/-! ## A139039.P17009588423242424978

`ceil(A139147(n+1)/2)`
-/

namespace A139039.P17009588423242424978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139147 (n + 1) : ℚ) / 2⌉

end

end A139039.P17009588423242424978

/-! ## A139039.P8007951428893699542

`ceil(A055215(n+2)/3)`
-/

namespace A139039.P8007951428893699542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055215 (n + 2) : ℚ) / 3⌉

end

end A139039.P8007951428893699542

/-! ## A139039.P5728031289144940881

`ceil(A106314(n+1)/10)`
-/

namespace A139039.P5728031289144940881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106314 (n + 1) : ℚ) / 10⌉

end

end A139039.P5728031289144940881

/-! ## A139039.P14198632537056729747

`round(A139040(n+1)/sqrt(2))`
-/

namespace A139039.P14198632537056729747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139040 (n + 1) : ℝ) / Real.sqrt (2 : ℝ))

end

end A139039.P14198632537056729747

/-!
# A139040: Triangle read by rows: each row is an initial segment of the terms of A000930 followed by its reflection.

The programs for A139040, the canonical program `A139040.P11713275014664133717` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139040 has offset 1).

The definition of A139040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139040.P7973825486056764161

`A000930(A003983(n+1))`
-/

namespace A139040.P7973825486056764161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A003983 (n + 1)).toNat

end

end A139040.P7973825486056764161

namespace A139040

/-- `A000930(A003983(n+1))` -/
def P7973825486056764161.Spec : Prop :=
  ∀ n, P7973825486056764161.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P3155779017395383733

`A000930(A004197(n)+1)`
-/

namespace A139040.P3155779017395383733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A004197 n + 1).toNat

end

end A139040.P3155779017395383733

namespace A139040

/-- `A000930(A004197(n)+1)` -/
def P3155779017395383733.Spec : Prop :=
  ∀ n, P3155779017395383733.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P18265607648275712538

`A068921(val(A175840(n), 6))`
-/

namespace A139040.P18265607648275712538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (SequenceMachineLib.valuation (A175840 n).toNat 6)

end

end A139040.P18265607648275712538

namespace A139040

/-- `A068921(val(A175840(n), 6))` -/
def P18265607648275712538.Spec : Prop :=
  ∀ n, P18265607648275712538.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P10395030626188450640

`A000930(sqrt(A106314(n+1)))`
-/

namespace A139040.P10395030626188450640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.roundAway (Real.sqrt (A106314 (n + 1) : ℝ))).toNat

end

end A139040.P10395030626188450640

namespace A139040

/-- `A000930(sqrt(A106314(n+1)))` -/
def P10395030626188450640.Spec : Prop :=
  ∀ n, P10395030626188450640.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P11713275014664133717

`A000930(A077605(n+1)+A053616(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139040

/-- `A000930(A077605(n+1)+A053616(n))` -/
def P11713275014664133717.Spec : Prop :=
  ∀ n, P11713275014664133717.a n = A139040 (n + 1)

theorem P11713275014664133717.correct : P11713275014664133717.Spec := by
  intro n
  simp only [A139040, Nat.add_sub_cancel]

end A139040

/-! ## A139040.P2604886007191009962

`A325678(A144464(n))`
-/

namespace A139040.P2604886007191009962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A144464 n).toNat

end

end A139040.P2604886007191009962

namespace A139040

/-- `A325678(A144464(n))` -/
def P2604886007191009962.Spec : Prop :=
  ∀ n, P2604886007191009962.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P6001024185807552909

`A325678(2^A004197(n))`
-/

namespace A139040.P6001024185807552909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A139040.P6001024185807552909

namespace A139040

/-- `A325678(2^A004197(n))` -/
def P6001024185807552909.Spec : Prop :=
  ∀ n, P6001024185807552909.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P12518080207799687437

`A325678(gcd(A059268(n), A130321(n)))`
-/

namespace A139040.P12518080207799687437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.gcd (A059268 n) (A130321 n))

end

end A139040.P12518080207799687437

namespace A139040

/-- `A325678(gcd(A059268(n), A130321(n)))` -/
def P12518080207799687437.Spec : Prop :=
  ∀ n, P12518080207799687437.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P15812847630753902026

`A094995(A003983(n+1))%A332462(A140513(n))`
-/

namespace A139040.P15812847630753902026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094995 (A003983 (n + 1)).toNat) (A332462 (A140513 n).toNat)

end

end A139040.P15812847630753902026

namespace A139040

/-- `A094995(A003983(n+1))%A332462(A140513(n))` -/
def P15812847630753902026.Spec : Prop :=
  ∀ n, P15812847630753902026.a n = A139040 (n + 1)

end A139040

/-! ## A139040.P11695114280265598751

`ceil(A139147(n+1)/sqrt(2))`
-/

namespace A139040.P11695114280265598751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139147 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A139040.P11695114280265598751

namespace A139040

/-- `ceil(A139147(n+1)/sqrt(2))` -/
def P11695114280265598751.Spec : Prop :=
  ∀ n, P11695114280265598751.a n = A139040 (n + 1)

end A139040

/-!
# A139041: Sum of divisors of the number of partitions of n.

The programs for A139041, there is no canonical definition to state claims against.
-/

/-! ## A139041.P8695783051524755123

`A000203(A000041(n+1))`
-/

namespace A139041.P8695783051524755123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000041 (n + 1)).toNat

end

end A139041.P8695783051524755123

/-! ## A139041.P10389502854559221386

`A139055(n+1)+A000041(n+1)`
-/

namespace A139041.P10389502854559221386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) + A000041 (n + 1)

end

end A139041.P10389502854559221386

/-! ## A139041.P6527815861283799415

`A139055(n+1)+∑[A187219(n+1)]`
-/

namespace A139041.P6527815861283799415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139041.P6527815861283799415

/-! ## A139041.P10462902175315087314

`A000065(n+1)+A139055(n+1)+1`
-/

namespace A139041.P10462902175315087314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (A139055 (n + 1) + 1)

end

end A139041.P10462902175315087314

/-! ## A139041.P1685047633181811162

`A139055(n+1)+Δ[A000070(n)]`
-/

namespace A139041.P1685047633181811162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) + (f1 (n + 1) - f1 n)

end

end A139041.P1685047633181811162

/-! ## A139041.P18024278163727144948

`A139055(n+1)+record[A035363(n)]`
-/

namespace A139041.P18024278163727144948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139041.P18024278163727144948

/-! ## A139041.P5704247065367985718

`A139055(n+1)+record[A035444(n)]`
-/

namespace A139041.P5704247065367985718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139041.P5704247065367985718

/-! ## A139041.P6762889580960546310

`∑{d}[Δ[A000070(n)], #]`
-/

namespace A139041.P6762889580960546310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A139041.P6762889580960546310

/-! ## A139041.P6257144289594680927

`∑{d}[Δ[A331165(n)], #]`
-/

namespace A139041.P6257144289594680927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331165 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A139041.P6257144289594680927

/-! ## A139041.P8229059896541927634

`∑{d}[record[A035363(n)], #]`
-/

namespace A139041.P8229059896541927634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A139041.P8229059896541927634

/-!
# A139042: Composite numbers c for which A064287((c-1)/2)=1.

The programs for A139042, there is no canonical definition to state claims against.
-/

/-! ## A139042.P6759448912030097630

`∩[A039743(n+1), A231370(n+1)]`
-/

namespace A139042.P6759448912030097630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139042.P6759448912030097630

/-! ## A139042.P5609348597602473273

`∩[A138193(n+1), A343107(n+1)]`
-/

namespace A139042.P5609348597602473273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139042.P5609348597602473273

/-! ## A139042.P15777368465871975088

`A005408(eq[2*(A105812(n)+1), A006694(n)])`
-/

namespace A139042.P15777368465871975088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105812 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A139042.P15777368465871975088

/-! ## A139042.P2068866117860704476

`filter[A141230(n+1), A021913(#)]`
-/

namespace A139042.P2068866117860704476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A139042.P2068866117860704476

/-! ## A139042.P4234180980313833160

`filter[A141230(n+1), A038189(#)]`
-/

namespace A139042.P4234180980313833160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A139042.P4234180980313833160

/-!
# A139043: Sum of the composite numbers <= 10^n.

The programs for A139043, there is no canonical definition to state claims against.
-/

/-! ## A139043.P6441796880388122976

`10^(n+1)*(10^(n+1)+1)/2-A046731(n+1)-1`
-/

namespace A139043.P6441796880388122976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℚ) * ((10 ^ (n + 1) + 1 : ℚ) / 2) - (A046731 (n + 1) : ℚ) - 1

end

end A139043.P6441796880388122976

/-!
# A139044: Smallest prime divisor of the Fibonacci numbers > 1.

The programs for A139044, there is no canonical definition to state claims against.
-/

/-! ## A139044.P2413492286929078164

`A060383(n+3)`
-/

namespace A139044.P2413492286929078164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (n + 3)

end

end A139044.P2413492286929078164

/-! ## A139044.P2517145175285179491

`A020639(A000045(n+3))`
-/

namespace A139044.P2517145175285179491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000045 (n + 3)).toNat

end

end A139044.P2517145175285179491

/-! ## A139044.P16927063364417269021

`A020695(n)/A139045(n+3)`
-/

namespace A139044.P16927063364417269021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020695 n : ℚ) / (A139045 (n + 3) : ℚ)

end

end A139044.P16927063364417269021

/-! ## A139044.P2939927171280808555

`record[A105800(n+6)]/A139045(n+3)`
-/

namespace A139044.P2939927171280808555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A139045 (n + 3) : ℚ)

end

end A139044.P2939927171280808555

/-! ## A139044.P13918351561856182305

`Δ[A020706(n)]/A139045(n+3)`
-/

namespace A139044.P13918351561856182305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A139045 (n + 3) : ℚ)

end

end A139044.P13918351561856182305

/-! ## A139044.P9440475039768608356

`Δ[A006327(n+4)]/A139045(n+3)`
-/

namespace A139044.P9440475039768608356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A139045 (n + 3) : ℚ)

end

end A139044.P9440475039768608356

/-!
# A139045: Largest proper divisor of the Fibonacci numbers > 1.

The programs for A139045, there is no canonical definition to state claims against.
-/

/-! ## A139045.P5224298296414457043

`A000045(n+3)/A060383(n+3)`
-/

namespace A139045.P5224298296414457043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) : ℚ) / (A060383 (n + 3) : ℚ)

end

end A139045.P5224298296414457043

/-! ## A139045.P5946767567236672709

`A032742(A000045(n+3))`
-/

namespace A139045.P5946767567236672709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000045 (n + 3)).toNat

end

end A139045.P5946767567236672709

/-! ## A139045.P9042486642893578307

`A020695(n)/A139044(n+1)`
-/

namespace A139045.P9042486642893578307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020695 n : ℚ) / (A139044 (n + 1) : ℚ)

end

end A139045.P9042486642893578307

/-! ## A139045.P18408912422108714284

`(A001911(n)+2)/A139044(n+1)`
-/

namespace A139045.P18408912422108714284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001911 n + 2 : ℚ) / (A139044 (n + 1) : ℚ)

end

end A139045.P18408912422108714284

/-! ## A139045.P734639135816518970

`round(A071679(n+1)/A139044(n+1))`
-/

namespace A139045.P734639135816518970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071679 (n + 1) : ℚ) / (A139044 (n + 1) : ℚ))

end

end A139045.P734639135816518970

/-! ## A139045.P5412250935490306515

`A103609(A005408(n+3))/A060383(n+3)`
-/

namespace A139045.P5412250935490306515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (A005408 (n + 3)).toNat : ℚ) / (A060383 (n + 3) : ℚ)

end

end A139045.P5412250935490306515

/-! ## A139045.P13297199498799566717

`A103609(A059009(n+3))/A060383(n+3)`
-/

namespace A139045.P13297199498799566717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (A059009 (n + 3)).toNat : ℚ) / (A060383 (n + 3) : ℚ)

end

end A139045.P13297199498799566717

/-! ## A139045.P13459276330925518403

`A247309(A055562(n+3))/A060383(n+3)`
-/

namespace A139045.P13459276330925518403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247309 (A055562 (n + 3)).toNat : ℚ) / (A060383 (n + 3) : ℚ)

end

end A139045.P13459276330925518403

/-! ## A139045.P13310959069045364441

`Δ[A020701(n)]/A139044(n+1)`
-/

namespace A139045.P13310959069045364441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A139044 (n + 1) : ℚ)

end

end A139045.P13310959069045364441

/-! ## A139045.P15186940431098676701

`Δ[A020706(n)]/A139044(n+1)`
-/

namespace A139045.P15186940431098676701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A139044 (n + 1) : ℚ)

end

end A139045.P15186940431098676701

/-! ## A139045.P15775161241485314823

`Δ[A048584(n)]/A139044(n+1)`
-/

namespace A139045.P15775161241485314823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A139044 (n + 1) : ℚ)

end

end A139045.P15775161241485314823

/-! ## A139045.P4603532386639539643

`A094443(A000217(n))/A139044(n+1)`
-/

namespace A139045.P4603532386639539643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094443 (A000217 n).toNat : ℚ) / (A139044 (n + 1) : ℚ)

end

end A139045.P4603532386639539643

/-!
# A139047: a(0)=a(1)=1. For n >= 2, if a(n-1) is coprime to n, then a(n) = a(n-1) + a(n-2). Otherwise, a(n)=1.

The programs for A139047, the canonical program `A139047.P18340237153460629346` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139047 has offset 0).

The definition of A139047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139047.P18340237153460629346

`gcd(a(n-1)+a(n-2), -1%gcd(n, a(n-1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139047

/-- `gcd(a(n-1)+a(n-2), -1%gcd(n, a(n-1)))` -/
def P18340237153460629346.Spec : Prop :=
  ∀ n, (P18340237153460629346.a n : ℤ) = A139047 n

theorem P18340237153460629346.correct : P18340237153460629346.Spec := by
  intro n
  simp only [A139047]

end A139047

/-!
# A139048: a(n) is the number of primes p, p <= the n-th prime, where (p + (1/p)*Product_{k=1..n} prime(k)) is prime, where prime(k) is the k-th prime.

The programs for A139048, there is no canonical definition to state claims against.
-/

/-! ## A139048.P3877231216312504243

`A083021(n+1)+char[1]`
-/

namespace A139048.P3877231216312504243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083021 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A139048.P3877231216312504243

/-! ## A139048.P7159613583663962087

`A178333(n)+A083021(n+1)`
-/

namespace A139048.P7159613583663962087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A083021 (n + 1)

end

end A139048.P7159613583663962087

/-! ## A139048.P6272312541100654150

`A083021(n+1)*A373565(n)`
-/

namespace A139048.P6272312541100654150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083021 (n + 1) * A373565 n

end

end A139048.P6272312541100654150

/-! ## A139048.P4658730241754246734

`lcm(A083021(n+1), A286299(n))`
-/

namespace A139048.P4658730241754246734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083021 (n + 1)) (A286299 n)

end

end A139048.P4658730241754246734

/-! ## A139048.P16922884916044571541

`abs(A159075(n)-A083021(n+1))`
-/

namespace A139048.P16922884916044571541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159075 n - A083021 (n + 1)|

end

end A139048.P16922884916044571541

/-! ## A139048.P3558220771713965465

`A209229(∑[n])+A083021(n+1)`
-/

namespace A139048.P3558220771713965465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (∑ j ∈ Finset.range (n + 1), f1 j) + A083021 (n + 1)

end

end A139048.P3558220771713965465

/-! ## A139048.P13899529432830639397

`(A063524(n)+1)*A083021(n+1)`
-/

namespace A139048.P13899529432830639397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A083021 (n + 1)

end

end A139048.P13899529432830639397

/-! ## A139048.P9901214313639416231

`A000108(C(2, n))*A083021(n+1)`
-/

namespace A139048.P9901214313639416231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A083021 (n + 1)

end

end A139048.P9901214313639416231

/-! ## A139048.P16972389902995557780

`A065033(C(2, n)²)*A083021(n+1)`
-/

namespace A139048.P16972389902995557780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.choose 2 n ^ 2) * A083021 (n + 1)

end

end A139048.P16972389902995557780

/-! ## A139048.P11415669962027297446

`A004880(A083021(n+1)+C(2, n)!)`
-/

namespace A139048.P11415669962027297446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (A083021 (n + 1) + (Nat.factorial (Nat.choose 2 n) : ℤ)).toNat

end

end A139048.P11415669962027297446

/-! ## A139048.P16654824561164405048

`A000005(C(2, n)!)*A083021(n+1)`
-/

namespace A139048.P16654824561164405048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (Nat.choose 2 n)) * A083021 (n + 1)

end

end A139048.P16654824561164405048

/-! ## A139048.P9911920924566348206

`A007318(a(and(1, n)))*A083021(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A139048.P9911920924566348206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007318 (a (Nat.land 1 n)).toNat * A083021 (n + 1)

end

end A139048.P9911920924566348206

/-! ## A139048.P2398851426904314536

`ceil((n+1)/A192909(n))*A083021(n+1)`
-/

namespace A139048.P2398851426904314536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A192909 n : ℚ)⌉ * A083021 (n + 1)

end

end A139048.P2398851426904314536

/-! ## A139048.P7895766415155449837

`(val(record[A006530(n+2)], 3)+1)*A083021(n+1)`
-/

namespace A139048.P7895766415155449837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3 + 1 : ℤ) * A083021 (n + 1)

end

end A139048.P7895766415155449837

/-! ## A139048.P2838839033530300613

`A083021((n+1)^gcd(A000040(n+1), ∑[n+1]))`
-/

namespace A139048.P2838839033530300613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083021 ((n + 1) ^ Int.gcd (A000040 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A139048.P2838839033530300613

/-! ## A139048.P9237608554515579244

`A183063(A166333(n))+A083021(n+1)`
-/

namespace A139048.P9237608554515579244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A166333 n).toNat + A083021 (n + 1)

end

end A139048.P9237608554515579244

/-! ## A139048.P891089410834522661

`A098108(A267048(n))+A083021(n+1)`
-/

namespace A139048.P891089410834522661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A267048 n).toNat + A083021 (n + 1)

end

end A139048.P891089410834522661

/-! ## A139048.P8050712469689465261

`A001511(A005728(n))*A083021(n+1)`
-/

namespace A139048.P8050712469689465261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005728 n).toNat * A083021 (n + 1)

end

end A139048.P8050712469689465261

/-! ## A139048.P6325443621121271552

`A000045(A014963(∑[n+1]))*A083021(n+1)`
-/

namespace A139048.P6325443621121271552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A083021 (n + 1)

end

end A139048.P6325443621121271552

/-! ## A139048.P14725252346373461348

`A083021(n+1)*A286299(n²)`
-/

namespace A139048.P14725252346373461348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083021 (n + 1) * A286299 (n ^ 2)

end

end A139048.P14725252346373461348

/-!
# A139049: a(n) = prime(n) + 6.

The programs for A139049, the canonical program `A139049.P11024414306330617476` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139049 has offset 1).

The definition of A139049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139049.P11024414306330617476

`p?[round(8*n/7)]+6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139049

/-- `p?[round(8*n/7)]+6` -/
def P11024414306330617476.Spec : Prop :=
  ∀ n, P11024414306330617476.a n = A139049 (n + 1)

theorem P11024414306330617476.correct : P11024414306330617476.Spec := by
  intro n
  simp only [A139049, Nat.add_sub_cancel]

end A139049

/-! ## A139049.P9208588495671571322

`Δ[A007504(n)]+6`
-/

namespace A139049.P9208588495671571322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 6

end

end A139049.P9208588495671571322

namespace A139049

/-- `Δ[A007504(n)]+6` -/
def P9208588495671571322.Spec : Prop :=
  ∀ n, P9208588495671571322.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P4374800575191291517

`A175222(n+1)+1`
-/

namespace A139049.P4374800575191291517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + 1

end

end A139049.P4374800575191291517

namespace A139049

/-- `A175222(n+1)+1` -/
def P4374800575191291517.Spec : Prop :=
  ∀ n, P4374800575191291517.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P1426129113239034333

`A175221(n+1)+2`
-/

namespace A139049.P1426129113239034333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 2

end

end A139049.P1426129113239034333

namespace A139049

/-- `A175221(n+1)+2` -/
def P1426129113239034333.Spec : Prop :=
  ∀ n, P1426129113239034333.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P2150695376413518538

`A175223(n+1)-1`
-/

namespace A139049.P2150695376413518538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) - 1

end

end A139049.P2150695376413518538

namespace A139049

/-- `A175223(n+1)-1` -/
def P2150695376413518538.Spec : Prop :=
  ∀ n, P2150695376413518538.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P6505837447802011877

`A113935(n+1)+3`
-/

namespace A139049.P6505837447802011877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 3

end

end A139049.P6505837447802011877

namespace A139049

/-- `A113935(n+1)+3` -/
def P6505837447802011877.Spec : Prop :=
  ∀ n, P6505837447802011877.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P4458116019842917228

`A175224(n+1)-2`
-/

namespace A139049.P4458116019842917228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) - 2

end

end A139049.P4458116019842917228

namespace A139049

/-- `A175224(n+1)-2` -/
def P4458116019842917228.Spec : Prop :=
  ∀ n, P4458116019842917228.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P769301437495567695

`A052147(n+1)+4`
-/

namespace A139049.P769301437495567695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 4

end

end A139049.P769301437495567695

namespace A139049

/-- `A052147(n+1)+4` -/
def P769301437495567695.Spec : Prop :=
  ∀ n, P769301437495567695.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P18105728155801256720

`A140353(n+1)-3`
-/

namespace A139049.P18105728155801256720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 3

end

end A139049.P18105728155801256720

namespace A139049

/-- `A140353(n+1)-3` -/
def P18105728155801256720.Spec : Prop :=
  ∀ n, P18105728155801256720.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P11096720253546999654

`A008864(n+1)+5`
-/

namespace A139049.P11096720253546999654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 5

end

end A139049.P11096720253546999654

namespace A139049

/-- `A008864(n+1)+5` -/
def P11096720253546999654.Spec : Prop :=
  ∀ n, P11096720253546999654.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P4239731361225931715

`A028815(n+1)+5`
-/

namespace A139049.P4239731361225931715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 5

end

end A139049.P4239731361225931715

namespace A139049

/-- `A028815(n+1)+5` -/
def P4239731361225931715.Spec : Prop :=
  ∀ n, P4239731361225931715.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P11423218532278698210

`A175225(n+1)-4`
-/

namespace A139049.P11423218532278698210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 4

end

end A139049.P11423218532278698210

namespace A139049

/-- `A175225(n+1)-4` -/
def P11423218532278698210.Spec : Prop :=
  ∀ n, P11423218532278698210.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P11025325260455151415

`6+A000040(n+1)`
-/

namespace A139049.P11025325260455151415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + A000040 (n + 1)

end

end A139049.P11025325260455151415

namespace A139049

/-- `6+A000040(n+1)` -/
def P11025325260455151415.Spec : Prop :=
  ∀ n, P11025325260455151415.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P3767797187066566071

`A006093(n+1)+7`
-/

namespace A139049.P3767797187066566071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 7

end

end A139049.P3767797187066566071

namespace A139049

/-- `A006093(n+1)+7` -/
def P3767797187066566071.Spec : Prop :=
  ∀ n, P3767797187066566071.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P13145221323938893632

`A040976(n+1)+8`
-/

namespace A139049.P13145221323938893632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 8

end

end A139049.P13145221323938893632

namespace A139049

/-- `A040976(n+1)+8` -/
def P13145221323938893632.Spec : Prop :=
  ∀ n, P13145221323938893632.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P9445685093244079984

`A086801(n+1)+9`
-/

namespace A139049.P9445685093244079984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 9

end

end A139049.P9445685093244079984

namespace A139049

/-- `A086801(n+1)+9` -/
def P9445685093244079984.Spec : Prop :=
  ∀ n, P9445685093244079984.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P11644729466939655534

`sqrt(A110833(n+1))+5`
-/

namespace A139049.P11644729466939655534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ) + 5

end

end A139049.P11644729466939655534

namespace A139049

/-- `sqrt(A110833(n+1))+5` -/
def P11644729466939655534.Spec : Prop :=
  ∀ n, P11644729466939655534.a n = (A139049 (n + 1) : ℝ)

end A139049

/-! ## A139049.P3814804045088592795

`A089241(n+1)/2+5`
-/

namespace A139049.P3814804045088592795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089241 (n + 1) : ℚ) / 2 + 5

end

end A139049.P3814804045088592795

namespace A139049

/-- `A089241(n+1)/2+5` -/
def P3814804045088592795.Spec : Prop :=
  ∀ n, P3814804045088592795.a n = (A139049 (n + 1) : ℚ)

end A139049

/-! ## A139049.P9962186373502664967

`A014688(n+1)+5-n`
-/

namespace A139049.P9962186373502664967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + (5 - (n : ℤ))

end

end A139049.P9962186373502664967

namespace A139049

/-- `A014688(n+1)+5-n` -/
def P9962186373502664967.Spec : Prop :=
  ∀ n, P9962186373502664967.a n = A139049 (n + 1)

end A139049

/-! ## A139049.P13777231433331265089

`A001043(n)+12-a(n-1)` with `a(0)=8`
-/

namespace A139049.P13777231433331265089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A001043 n + (12 - a (n - 1))

end

end A139049.P13777231433331265089

namespace A139049

/-- `A001043(n)+12-a(n-1)` -/
def P13777231433331265089.Spec : Prop :=
  ∀ n, P13777231433331265089.a n = A139049 (n + 1)

end A139049

/-!
# A139050: Numerator of fraction M(n) defined in A139076.

The programs for A139050, there is no canonical definition to state claims against.
-/

/-! ## A139050.P16130062260479245474

`A309639(A325351(n+1)^A157684(n+1))`
-/

namespace A139050.P16130062260479245474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (SequenceMachineLib.roundAway ((A325351 (n + 1) : ℚ) ^ (A157684 (n + 1) : ℤ))).toNat

end

end A139050.P16130062260479245474

/-! ## A139050.P13709874667203521026

`A053585((n+1)^A002095(n))`
-/

namespace A139050.P13709874667203521026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A002095 n : ℤ))).toNat

end

end A139050.P13709874667203521026

/-! ## A139050.P11222553111268952546

`A034699((n+1)^A180000(n))`
-/

namespace A139050.P11222553111268952546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A180000 n : ℤ))).toNat

end

end A139050.P11222553111268952546

/-! ## A139050.P13240331689935961066

`A053585((n+1)^A180000(n))`
-/

namespace A139050.P13240331689935961066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A180000 n : ℤ))).toNat

end

end A139050.P13240331689935961066

/-!
# A139051: Denominator of fraction M(n) defined in A139076.

The programs for A139051, there is no canonical definition to state claims against.
-/

/-! ## A139051.P8342356801477957880

`A371384(A006645(n))^A381933(n)`
-/

namespace A139051.P8342356801477957880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371384 (A006645 n).toNat : ℚ) ^ (A381933 n : ℤ)

end

end A139051.P8342356801477957880

/-!
# A139052: Array read by rows: row n lists the first two primes with n digits.

The programs for A139052, there is no canonical definition to state claims against.
-/

/-! ## A139052.P9543299685911375219

`A139053(∑[3-a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A139052.P9543299685911375219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139052.P9543299685911375219

/-! ## A139052.P15517544263001227904

`A139053(∑[A040001(n)])`
-/

namespace A139052.P15517544263001227904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139052.P15517544263001227904

/-! ## A139052.P2201164921860295989

`A139053(Δ[A077043(n)])`
-/

namespace A139052.P2201164921860295989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (f1 (n + 1) - f1 n).toNat

end

end A139052.P2201164921860295989

/-! ## A139052.P7612755998865629129

`A139053(record[A236348(n)])`
-/

namespace A139052.P7612755998865629129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139052.P7612755998865629129

/-! ## A139052.P6287512371300286257

`A139053(A001651(n+1))`
-/

namespace A139052.P6287512371300286257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A001651 (n + 1)).toNat

end

end A139052.P6287512371300286257

/-! ## A139052.P15426183927023606555

`A139053(A008619(3*n))`
-/

namespace A139052.P15426183927023606555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A008619 (3 * n)).toNat

end

end A139052.P15426183927023606555

/-! ## A139052.P4186981010373621138

`A139053(A008619(n)+n)`
-/

namespace A139052.P4186981010373621138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A008619 n + (n : ℤ)).toNat

end

end A139052.P4186981010373621138

/-! ## A139052.P9920381343620800757

`A139053(A006368(Δ[n²]))`
-/

namespace A139052.P9920381343620800757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A006368 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A139052.P9920381343620800757

/-! ## A139052.P13534267682102407926

`A139053(record[Δ[A006368(n)]])`
-/

namespace A139052.P13534267682102407926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139052.P13534267682102407926

/-! ## A139052.P11459616228702127903

`A139053(∑[and(3, A010166(n))])`
-/

namespace A139052.P11459616228702127903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A010166 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139052.P11459616228702127903

/-! ## A139052.P11640309294670965379

`A139053(A007494(n+1)-1)`
-/

namespace A139052.P11640309294670965379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A007494 (n + 1) - 1).toNat

end

end A139052.P11640309294670965379

/-! ## A139052.P2726208611243462913

`A139053(A110654(3*n+1))`
-/

namespace A139052.P2726208611243462913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A110654 (3 * n + 1)).toNat

end

end A139052.P2726208611243462913

/-! ## A139052.P15700695393200416969

`A139053(lt[2, A139044(n+1)])`
-/

namespace A139052.P15700695393200416969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A139052.P15700695393200416969

/-! ## A139052.P8027752627631800324

`A139053(A110654(n+1)+n)`
-/

namespace A139052.P8027752627631800324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A110654 (n + 1) + (n : ℤ)).toNat

end

end A139052.P8027752627631800324

/-! ## A139052.P12093886175656776866

`A139053(∑[A133310(a(n-1))])` with `a(0)=1, a(1)=1`
-/

namespace A139052.P12093886175656776866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A133310 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139052.P12093886175656776866

/-! ## A139052.P11201721085026061222

`A139053(A077043(n+1)-A077043(n))`
-/

namespace A139052.P11201721085026061222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A077043 (n + 1) - A077043 n).toNat

end

end A139052.P11201721085026061222

/-!
# A139053: Array read by rows: row n lists the first 3 primes with n digits.

The programs for A139053, there is no canonical definition to state claims against.
-/

/-! ## A139053.P559076715632383021

`∪[A139054(2*n+1), A139052(n+2)]`
-/

namespace A139053.P559076715632383021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139053.P559076715632383021

/-! ## A139053.P3109349486119652622

`A139054(comp[4*n])`
-/

namespace A139053.P3109349486119652622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A139053.P3109349486119652622

/-! ## A139053.P14716851208515812792

`record[A139054(A259445(n+1))]`
-/

namespace A139053.P14716851208515812792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (A259445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139053.P14716851208515812792

/-! ## A139053.P17308941608175554058

`A139054(A329974(n+1))*A157334(2*(n+1))`
-/

namespace A139053.P17308941608175554058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (A329974 (n + 1)).toNat * A157334 (2 * (n + 1))

end

end A139053.P17308941608175554058

/-! ## A139053.P7402154878590735598

`p?[A139054(A329974(n+1))]`
-/

namespace A139053.P7402154878590735598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (A329974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139053.P7402154878590735598

/-!
# A139054: Array read by rows: row n lists the first 4 primes with n digits.

The programs for A139054, there is no canonical definition to state claims against.
-/

/-! ## A139054.P1259225959716816578

`∩[A069675(n+1), A229621(n+1)]`
-/

namespace A139054.P1259225959716816578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139054.P1259225959716816578

/-! ## A139054.P10845596976145434399

`∪[A040976(n+1)+2, A093074(A356987(n+2))]`
-/

namespace A139054.P10845596976145434399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A356987 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139054.P10845596976145434399

/-! ## A139054.P5186714234852653654

`∪[A014688(n+1)-(n+1), A093074(A356987(n+2))]`
-/

namespace A139054.P5186714234852653654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A356987 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139054.P5186714234852653654

/-! ## A139054.P11356300282593136286

`record[p?[A275413(n)]]`
-/

namespace A139054.P11356300282593136286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139054.P11356300282593136286

/-!
# A139055: Sum of proper divisors of the number of partitions of n.

The programs for A139055, there is no canonical definition to state claims against.
-/

/-! ## A139055.P13960426110424888765

`A001065(A000041(n+1))`
-/

namespace A139055.P13960426110424888765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000041 (n + 1)).toNat

end

end A139055.P13960426110424888765

/-! ## A139055.P1623608641382835323

`A139041(n+1)-A000041(n+1)`
-/

namespace A139055.P1623608641382835323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139041 (n + 1) - A000041 (n + 1)

end

end A139055.P1623608641382835323

/-! ## A139055.P152092074661102277

`A139041(n+1)-(A000065(n+1)+1)`
-/

namespace A139055.P152092074661102277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139041 (n + 1) - (A000065 (n + 1) + 1)

end

end A139055.P152092074661102277

/-! ## A139055.P15551842786335992027

`A139041(n+1)-Δ[A025065(2*n)]`
-/

namespace A139055.P15551842786335992027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139041 (n + 1) - (f1 (n + 1) - f1 n)

end

end A139055.P15551842786335992027

/-! ## A139055.P12373807718602884370

`A139041(n+1)-record[A299200(n+1)]`
-/

namespace A139055.P12373807718602884370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139041 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139055.P12373807718602884370

/-! ## A139055.P14672367700157708186

`A139041(n+1)-A299200(A000040(n+1))`
-/

namespace A139055.P14672367700157708186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139041 (n + 1) - A299200 (A000040 (n + 1)).toNat

end

end A139055.P14672367700157708186

/-! ## A139055.P1549197635675052057

`∑{d}[A000041(n+1), #]-Δ[A000070(n)]`
-/

namespace A139055.P1549197635675052057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A139055.P1549197635675052057

/-! ## A139055.P5194728427682933945

`∑{d}[A194451(2*n+1), #]-A194451(2*n+1)`
-/

namespace A139055.P5194728427682933945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A194451 (2 * n + 1)

end

end A139055.P5194728427682933945

/-!
# A139057: 

The programs for A139057, there is no canonical definition to state claims against.
-/

/-! ## A139057.P24208848585294945

`A139150(A139056(n+1))-2`
-/

namespace A139057.P24208848585294945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139150 (A139056 (n + 1)).toNat - 2

end

end A139057.P24208848585294945

/-!
# A139062: Primes of the form (6+k!)/6.

The programs for A139062, there is no canonical definition to state claims against.
-/

/-! ## A139062.P4496086385777331962

`A139153(A139063(n+1))`
-/

namespace A139062.P4496086385777331962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139153 (A139063 (n + 1)).toNat

end

end A139062.P4496086385777331962

/-! ## A139062.P12802691378132203997

`A053632(n)+A001715(A139063(n+1))`
-/

namespace A139062.P12802691378132203997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n + A001715 (A139063 (n + 1)).toNat

end

end A139062.P12802691378132203997

/-! ## A139062.P14598762857223029499

`A251072(n)+A001715(A139063(n+1))`
-/

namespace A139062.P14598762857223029499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 n + A001715 (A139063 (n + 1)).toNat

end

end A139062.P14598762857223029499

/-! ## A139062.P15345649673662562354

`A121041(n+1)+A001715(A139063(n+1))`
-/

namespace A139062.P15345649673662562354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1) + A001715 (A139063 (n + 1)).toNat

end

end A139062.P15345649673662562354

/-!
# A139066: Primes of the form (8+k!)/8.

The programs for A139066, there is no canonical definition to state claims against.
-/

/-! ## A139066.P3436692725359969770

`A139155(A151913(n+1))`
-/

namespace A139066.P3436692725359969770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139155 (A151913 (n + 1)).toNat

end

end A139066.P3436692725359969770

/-!
# A139067: Primes whose decimal expansion consists of a string of 2's followed by a string of 3's.

The programs for A139067, there is no canonical definition to state claims against.
-/

/-! ## A139067.P1198965275325161796

`∩[A362678(n+1), A397643(n+1)]`
-/

namespace A139067.P1198965275325161796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139067.P1198965275325161796

/-! ## A139067.P11949649445902079548

`∩[A020458(n+1), A362678(n+1)]`
-/

namespace A139067.P11949649445902079548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139067.P11949649445902079548

/-! ## A139067.P10211634854751849279

`∩[A020458(n+1), A378774(n+1)]`
-/

namespace A139067.P10211634854751849279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139067.P10211634854751849279

/-! ## A139067.P11548433538687603128

`∩[A020458(n+1), A397643(n+1)]`
-/

namespace A139067.P11548433538687603128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139067.P11548433538687603128

/-! ## A139067.P10924932460121702504

`∩[A032810(n+1), A362678(n+1)]`
-/

namespace A139067.P10924932460121702504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139067.P10924932460121702504

/-!
# A139069: Number of 3's in A020458(n).

The programs for A139069, there is no canonical definition to state claims against.
-/

/-! ## A139069.P14700687655451444328

`∑{digits}[A020458(n+1), #-2]`
-/

namespace A139069.P14700687655451444328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 2).sum

end

end A139069.P14700687655451444328

/-! ## A139069.P8978427117703849336

`∑{digits}[A020458(n+1)+2, A000035(#)]`
-/

namespace A139069.P8978427117703849336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A139069.P8978427117703849336

/-! ## A139069.P5908931522902098332

`∑{digits}[A020458(n+1)+2, A000931(#)]`
-/

namespace A139069.P5908931522902098332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000931 x).sum

end

end A139069.P5908931522902098332

/-! ## A139069.P2621327561526994311

`∑{digits}[2*A020458(n+1), A001842(#)]`
-/

namespace A139069.P2621327561526994311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001842 x).sum

end

end A139069.P2621327561526994311

/-! ## A139069.P17424030585447993669

`∑{digits}[2*A020458(n+1), A005091(#)]`
-/

namespace A139069.P17424030585447993669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005091 x).sum

end

end A139069.P17424030585447993669

/-!
# A139070: Primes of the form (10+k!)/10.

The programs for A139070, there is no canonical definition to state claims against.
-/

/-! ## A139070.P13172854260037093275

`A139157(A139071(n+1))`
-/

namespace A139070.P13172854260037093275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139157 (A139071 (n + 1)).toNat

end

end A139070.P13172854260037093275

/-!
# A139073: Smallest prime number of the form (n+k!)/n.

The programs for A139073, there is no canonical definition to state claims against.
-/

/-! ## A139073.P12268603949066932984

`A000142(A139072(n+1))/(n+1)+1`
-/

namespace A139073.P12268603949066932984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A139072 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) + 1

end

end A139073.P12268603949066932984

/-!
# A139075: Primes p arising in A139074.

The programs for A139075, there is no canonical definition to state claims against.
-/

/-! ## A139075.P18297558772517522763

`A321657(A006126(n))`
-/

namespace A139075.P18297558772517522763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321657 (A006126 n).toNat

end

end A139075.P18297558772517522763

/-!
# A139076: Let M(n) = maximal value of (n/k)^k over all k = 1, 2, ...; a(n) = floor(M(n)).

The programs for A139076, there is no canonical definition to state claims against.
-/

/-! ## A139076.P13653222837298910072

`floor(A139050(n+1)/A139051(n+1))`
-/

namespace A139076.P13653222837298910072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139050 (n + 1) : ℚ) / (A139051 (n + 1) : ℚ)⌋

end

end A139076.P13653222837298910072

/-! ## A139076.P6495022533187710111

`A139078(n+1)-A318305(A139051(n+1))`
-/

namespace A139076.P6495022533187710111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139078 (n + 1) - A318305 (A139051 (n + 1)).toNat

end

end A139076.P6495022533187710111

/-! ## A139076.P1264069365081827763

`or(A017982(n+1), A089605(A089601(n)))`
-/

namespace A139076.P1264069365081827763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017982 (n + 1)) (A089605 (A089601 n).toNat)

end

end A139076.P1264069365081827763

/-! ## A139076.P7830820211972445300

`A000196(A099325(n)+A087019(n))`
-/

namespace A139076.P7830820211972445300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A099325 n + A087019 n).toNat

end

end A139076.P7830820211972445300

/-! ## A139076.P1590568798312503020

`A000196(A096581(n+1)+A045572(n+1))`
-/

namespace A139076.P1590568798312503020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A096581 (n + 1) + A045572 (n + 1)).toNat

end

end A139076.P1590568798312503020

/-!
# A139077: Let M(n) = maximal value of (n/k)^k over all k = 1, 2, ...; a(n) = round(M(n)).

The programs for A139077, there is no canonical definition to state claims against.
-/

/-! ## A139077.P1029671603805293795

`round(A139050(n+1)/A139051(n+1))`
-/

namespace A139077.P1029671603805293795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139050 (n + 1) : ℚ) / (A139051 (n + 1) : ℚ))

end

end A139077.P1029671603805293795

/-! ## A139077.P11365028048854463445

`A003056(A057335(n)+A014314(n))`
-/

namespace A139077.P11365028048854463445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A057335 n + A014314 n).toNat

end

end A139077.P11365028048854463445

/-! ## A139077.P9988953832528986139

`A003056(A144677(n)+A014314(n))`
-/

namespace A139077.P9988953832528986139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A144677 n + A014314 n).toNat

end

end A139077.P9988953832528986139

/-! ## A139077.P11313966061132423566

`A003056(A275580(n)+A014314(n))`
-/

namespace A139077.P11313966061132423566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A275580 n + A014314 n).toNat

end

end A139077.P11313966061132423566

/-! ## A139077.P87446329007502826

`A125890(2*n+2)-A316345(A001837(n+1))`
-/

namespace A139077.P87446329007502826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125890 (2 * n + 2) - A316345 (A001837 (n + 1)).toNat

end

end A139077.P87446329007502826

/-!
# A139078: Let M(n) = maximal value of (n/k)^k over all k = 1, 2, ...; a(n) = ceiling(M(n)).

The programs for A139078, there is no canonical definition to state claims against.
-/

/-! ## A139078.P18355296574960257951

`ceil(A139050(n+1)/A139051(n+1))`
-/

namespace A139078.P18355296574960257951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139050 (n + 1) : ℚ) / (A139051 (n + 1) : ℚ)⌉

end

end A139078.P18355296574960257951

/-! ## A139078.P17748215421663952988

`A323022(A139051(n+1))+A139076(n+1)`
-/

namespace A139078.P17748215421663952988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A139051 (n + 1)).toNat + A139076 (n + 1)

end

end A139078.P17748215421663952988

/-! ## A139078.P9028890086375545131

`A343660(A139077(n+1))+A139077(n+1)`
-/

namespace A139078.P9028890086375545131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343660 (A139077 (n + 1)).toNat + A139077 (n + 1)

end

end A139078.P9028890086375545131

/-! ## A139078.P6939322140518472478

`floor(∑[p?[A169941(n+1)]]/3)`
-/

namespace A139078.P6939322140518472478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A139078.P6939322140518472478

/-! ## A139078.P17141242767224457679

`A394301(A207094(n+2))`
-/

namespace A139078.P17141242767224457679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 (A207094 (n + 2)).toNat

end

end A139078.P17141242767224457679

/-!
# A139080: a(n) = the smallest positive integer not occurring earlier in the sequence such that floor(max(a(n),a(n-1))/min(a(n),a(n-1))) = 2; a(1) = 1.

The programs for A139080, there is no canonical definition to state claims against.
-/

/-! ## A139080.P14070239204644517435

`A122111(or(A109151(n), A114744(n+1)))`
-/

namespace A139080.P14070239204644517435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.lor (A109151 n) (A114744 (n + 1))).toNat

end

end A139080.P14070239204644517435

/-! ## A139080.P5888476638703391209

`A122111(∑[A109151(n)]*A114744(n+1))`
-/

namespace A139080.P5888476638703391209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 ((∑ j ∈ Finset.range (n + 1), f1 j) * A114744 (n + 1)).toNat

end

end A139080.P5888476638703391209

/-! ## A139080.P18056048926024729396

`A122111(Δ[A055645(n)]*A114744(n+1))`
-/

namespace A139080.P18056048926024729396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 ((f1 (n + 1) - f1 n) * A114744 (n + 1)).toNat

end

end A139080.P18056048926024729396

/-! ## A139080.P9393289436458553401

`A122111(A114744(n+1)^∑[A109151(n)])`
-/

namespace A139080.P9393289436458553401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (SequenceMachineLib.roundAway ((A114744 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A139080.P9393289436458553401

/-! ## A139080.P16788477976475918997

`A122111(A114744(n+1)^Δ[A055645(n)])`
-/

namespace A139080.P16788477976475918997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (SequenceMachineLib.roundAway ((A114744 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A139080.P16788477976475918997

/-!
# A139081: a(n) = (largest prime power dividing n) + (largest prime power dividing (n+1)).

The programs for A139081, there is no canonical definition to state claims against.
-/

/-! ## A139081.P17326097410703610304

`A034699(n+1)+A034699(n+2)`
-/

namespace A139081.P17326097410703610304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) + A034699 (n + 2)

end

end A139081.P17326097410703610304

/-! ## A139081.P4101722209754008686

`A210208(A210241(n+2))+A100574(n+1)+A034684(n+1)`
-/

namespace A139081.P4101722209754008686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 2)).toNat + (A100574 (n + 1) + A034684 (n + 1))

end

end A139081.P4101722209754008686

/-! ## A139081.P4209631951629736429

`A210208(A022559(n+1)+n+1)+A210208(A210241(n+2))`
-/

namespace A139081.P4209631951629736429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A022559 (n + 1) + (n + 1 : ℤ)).toNat + A210208 (A210241 (n + 2)).toNat

end

end A139081.P4209631951629736429

/-! ## A139081.P8579351928530095654

`A210208(A210241(n+2))+A304233(n+1)/A034684(n+1)`
-/

namespace A139081.P8579351928530095654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210208 (A210241 (n + 2)).toNat : ℚ) + (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ)

end

end A139081.P8579351928530095654

/-! ## A139081.P9355611516789515499

`A210208(A210241(n+2))+A088387(n+1)^A088388(n+1)`
-/

namespace A139081.P9355611516789515499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210208 (A210241 (n + 2)).toNat : ℚ) + (A088387 (n + 1) : ℚ) ^ (A088388 (n + 1) : ℤ)

end

end A139081.P9355611516789515499

/-! ## A139081.P2433068107313082571

`A020725(A081472(n+1)-A081805(n+2))`
-/

namespace A139081.P2433068107313082571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A081472 (n + 1) - A081805 (n + 2)).toNat

end

end A139081.P2433068107313082571

/-! ## A139081.P8301857530772632639

`A210208(A210241(n+2))+A136623(A081472(n+1)-n)`
-/

namespace A139081.P8301857530772632639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 2)).toNat + A136623 (A081472 (n + 1) - (n : ℤ)).toNat

end

end A139081.P8301857530772632639

/-! ## A139081.P11139600625545916622

`A233583(A081472(n+2)-A081805(n+1))`
-/

namespace A139081.P11139600625545916622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A081472 (n + 2) - A081805 (n + 1)).toNat

end

end A139081.P11139600625545916622

/-! ## A139081.P1381176010011476658

`A008475(A139082(n+1)+A000007(n))`
-/

namespace A139081.P1381176010011476658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A139082 (n + 1) + A000007 n).toNat

end

end A139081.P1381176010011476658

/-! ## A139081.P347011294482640573

`A086664(A000015(n+1))+A008475(A139082(n+1))`
-/

namespace A139081.P347011294482640573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A000015 (n + 1)).toNat + A008475 (A139082 (n + 1)).toNat

end

end A139081.P347011294482640573

/-! ## A139081.P14547023761577413190

`A086664(A028233(n+1))+A008475(A139082(n+1))`
-/

namespace A139081.P14547023761577413190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A028233 (n + 1)).toNat + A008475 (A139082 (n + 1)).toNat

end

end A139081.P14547023761577413190

/-! ## A139081.P8978210200781246038

`A086664(A034684(n+1))+A008475(A139082(n+1))`
-/

namespace A139081.P8978210200781246038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A034684 (n + 1)).toNat + A008475 (A139082 (n + 1)).toNat

end

end A139081.P8978210200781246038

/-! ## A139081.P11798970746535448779

`A222416(A139082(n+1)+A000007(n))`
-/

namespace A139081.P11798970746535448779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A139082 (n + 1) + A000007 n).toNat

end

end A139081.P11798970746535448779

/-!
# A139082: a(n) = (largest power of a prime dividing n) * (largest power of a prime dividing (n+1)).

The programs for A139082, there is no canonical definition to state claims against.
-/

/-! ## A139082.P16140617289780376595

`A034699(n+1)*A034699(n+2)`
-/

namespace A139082.P16140617289780376595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) * A034699 (n + 2)

end

end A139082.P16140617289780376595

/-! ## A139082.P12113223375290112914

`∏{d}[A006530(n+7), A034699(A001221(#)+n+1)]`
-/

namespace A139082.P12113223375290112914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A034699 (A001221 d + (n + 1 : ℤ)).toNat

end

end A139082.P12113223375290112914

/-! ## A139082.P8144679504839738979

`lcm(Δ[A284521(n+1)], A034699(n+1))`
-/

namespace A139082.P8144679504839738979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A034699 (n + 1))

end

end A139082.P8144679504839738979

/-! ## A139082.P15630604771929033625

`lcm(A034699(A254667(n+1)), A034699(n+2))`
-/

namespace A139082.P15630604771929033625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034699 (A254667 (n + 1)).toNat) (A034699 (n + 2))

end

end A139082.P15630604771929033625

/-! ## A139082.P17155546545908474755

`∏{d}[A000040(n+1), A034699(A001221(#)+n+1)]`
-/

namespace A139082.P17155546545908474755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A034699 (A001221 d + (n + 1 : ℤ)).toNat

end

end A139082.P17155546545908474755

/-! ## A139082.P10450503723081631801

`∏{p}[A006094(n+1), A034699(A065770(#))]`
-/

namespace A139082.P10450503723081631801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034699 (A065770 p).toNat

end

end A139082.P10450503723081631801

/-! ## A139082.P13901268223795486520

`∏{p}[A006094(n+1), A034699(A302039(#))]`
-/

namespace A139082.P13901268223795486520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034699 (A302039 p).toNat

end

end A139082.P13901268223795486520

/-! ## A139082.P2082173311593717711

`A330043(n+2)/A330043(n)`
-/

namespace A139082.P2082173311593717711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330043 (n + 2) : ℚ) / (A330043 n : ℚ)

end

end A139082.P2082173311593717711

/-!
# A139083: a(n) = (smallest prime-power among the largest powers of each prime dividing n) + (smallest prime-power among the largest powers of each prime dividing (n+1)).

The programs for A139083, there is no canonical definition to state claims against.
-/

/-! ## A139083.P7217103356172383707

`A034684(n+1)+A034684(n+2)`
-/

namespace A139083.P7217103356172383707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) + A034684 (n + 2)

end

end A139083.P7217103356172383707

/-! ## A139083.P1788517417766478802

`or(char[n²], A008475(A139084(n+1)))`
-/

namespace A139083.P1788517417766478802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A008475 (A139084 (n + 1)).toNat)

end

end A139083.P1788517417766478802

/-! ## A139083.P16266541466855341980

`A008475(floor(A139084(n+1)+acot(n)))`
-/

namespace A139083.P16266541466855341980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ⌊(A139084 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A139083.P16266541466855341980

/-! ## A139083.P3526646685107442116

`A222416(floor(A139084(n+1)+acot(n)))`
-/

namespace A139083.P3526646685107442116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 ⌊(A139084 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A139083.P3526646685107442116

/-! ## A139083.P10241203326539174983

`A008475(A139084(n+1)+A000007(n))`
-/

namespace A139083.P10241203326539174983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A139084 (n + 1) + A000007 n).toNat

end

end A139083.P10241203326539174983

/-! ## A139083.P11949620361924466677

`A222416(A139084(n+1)+A000007(n))`
-/

namespace A139083.P11949620361924466677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A139084 (n + 1) + A000007 n).toNat

end

end A139083.P11949620361924466677

/-! ## A139083.P1633226455837603638

`floor(A008475(A139084(n+1))+1/A000005(n+1))`
-/

namespace A139083.P1633226455837603638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008475 (A139084 (n + 1)).toNat : ℚ) + 1 / (A000005 (n + 1) : ℚ)⌋

end

end A139083.P1633226455837603638

/-! ## A139083.P8282842151197176904

`A008475(A139084(n+1))+A001221(ceil(2/(n+1)))`
-/

namespace A139083.P8282842151197176904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A139084 (n + 1)).toNat + A001221 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A139083.P8282842151197176904

/-! ## A139083.P10192509318711768315

`A008475(A139084(n+1))+A001222(ceil(2/(n+1)))`
-/

namespace A139083.P10192509318711768315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A139084 (n + 1)).toNat + A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A139083.P10192509318711768315

/-!
# A139084: a(n) = (smallest prime-power among the largest powers dividing n of each prime dividing n) * (smallest prime-power among the largest powers dividing (n+1) of each prime dividing (n+1)).

The programs for A139084, there is no canonical definition to state claims against.
-/

/-! ## A139084.P11992044801420834255

`A034684(n+1)*A034684(n+2)`
-/

namespace A139084.P11992044801420834255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) * A034684 (n + 2)

end

end A139084.P11992044801420834255

/-! ## A139084.P2183781028298379356

`lcm(A034684(4/2+n-1), A034684(n+2))`
-/

namespace A139084.P2183781028298379356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034684 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + ((n : ℤ) - 1 : ℚ))).toNat) (A034684 (n + 2))

end

end A139084.P2183781028298379356

/-! ## A139084.P12778123612154646071

`∏{d}[A114519(n+1), A034684(A001221(#)+n+1)]`
-/

namespace A139084.P12778123612154646071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A034684 (A001221 d + (n + 1 : ℤ)).toNat

end

end A139084.P12778123612154646071

/-! ## A139084.P10099764716130623221

`lcm((n+1)/A052125(n+1), A034684(A020725(n+1)))`
-/

namespace A139084.P10099764716130623221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052125 (n + 1) : ℚ))) (A034684 (A020725 (n + 1)).toNat)

end

end A139084.P10099764716130623221

/-! ## A139084.P2654515080698564587

`A000027(lcm(A034684(n+1), A034684(n+2)))`
-/

namespace A139084.P2654515080698564587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A034684 (n + 1)) (A034684 (n + 2)))

end

end A139084.P2654515080698564587

/-!
# A139085: G.f. satisfies: 2*A(x) = 3*x + x^2 - Series_Reversion( A(x) ).

The programs for A139085, there is no canonical definition to state claims against.
-/

/-! ## A139085.P3776959523506903856

`A293388(A051342(n!))`
-/

namespace A139085.P3776959523506903856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (A051342 (Nat.factorial n)).toNat

end

end A139085.P3776959523506903856

/-!
# A139086: G.f. satisfies: A(x) = 3*x - x^2 - 2*Series_Reversion( A(x) ).

The programs for A139086, there is no canonical definition to state claims against.
-/

/-! ## A139086.P4716540000723899114

`A237656(A121870(n))-A102448(n+2)`
-/

namespace A139086.P4716540000723899114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237656 (A121870 n).toNat - A102448 (n + 2)

end

end A139086.P4716540000723899114

/-!
# A139087: G.f. satisfies: 3*A(x) = 5*x + x^2 - 2*Series_Reversion( A(x) ).

The programs for A139087, there is no canonical definition to state claims against.
-/

/-! ## A139087.P15290713340006413973

`or(A304442(A193363(n)), A360484(n))`
-/

namespace A139087.P15290713340006413973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A304442 (A193363 n).toNat) (A360484 n)

end

end A139087.P15290713340006413973

/-!
# A139088: G.f. satisfies: 2*A(x) = 5*x - x^2 - 3*Series_Reversion( A(x) ).

The programs for A139088, there is no canonical definition to state claims against.
-/

/-! ## A139088.P12877875726136363915

`abs(2-A325417(A305114(n)))`
-/

namespace A139088.P12877875726136363915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A325417 (A305114 n).toNat|

end

end A139088.P12877875726136363915

/-!
# A139090: a(n) = smallest prime divisor of the number prime(n)!/9 + 1.

The programs for A139090, there is no canonical definition to state claims against.
-/

/-! ## A139090.P6597202086731542005

`p?[A005935(n+1)%A264285(2*(n+1))]`
-/

namespace A139090.P6597202086731542005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005935 (n + 1)) (A264285 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139090.P6597202086731542005

/-!
# A139093: Expansion of phi(q) * phi(-q^2) in powers of q where phi() is a Ramanujan theta function.

The programs for A139093, the canonical program `A139093.P1917041314572056208` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139093 has offset 0).

The definition of A139093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082564, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139093.P1917041314572056208

`(-1)^n*A082564(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A139093

/-- `(-1)^n*A082564(n)` -/
def P1917041314572056208.Spec : Prop :=
  ∀ n, P1917041314572056208.a n = A139093 n

theorem P1917041314572056208.correct : P1917041314572056208.Spec := by
  intro n
  simp only [A139093]

end A139093

/-! ## A139093.P2659889413387786401

`A033715(n)*A057077(n)`
-/

namespace A139093.P2659889413387786401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A057077 n

end

end A139093.P2659889413387786401

namespace A139093

/-- `A033715(n)*A057077(n)` -/
def P2659889413387786401.Spec : Prop :=
  ∀ n, P2659889413387786401.a n = A139093 n

end A139093

/-! ## A139093.P12106874955969629709

`A087960(n)*A133692(n)`
-/

namespace A139093.P12106874955969629709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A133692 n

end

end A139093.P12106874955969629709

namespace A139093

/-- `A087960(n)*A133692(n)` -/
def P12106874955969629709.Spec : Prop :=
  ∀ n, P12106874955969629709.a n = A139093 n

end A139093

/-! ## A139093.P9344411666500798444

`A082564(n)/A033999(n)`
-/

namespace A139093.P9344411666500798444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 n : ℚ) / (A033999 n : ℚ)

end

end A139093.P9344411666500798444

namespace A139093

/-- `A082564(n)/A033999(n)` -/
def P9344411666500798444.Spec : Prop :=
  ∀ n, P9344411666500798444.a n = (A139093 n : ℚ)

end A139093

/-! ## A139093.P12147632150455567688

`2*A226225(n)-A033715(n)`
-/

namespace A139093.P12147632150455567688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226225 n - A033715 n

end

end A139093.P12147632150455567688

namespace A139093

/-- `2*A226225(n)-A033715(n)` -/
def P12147632150455567688.Spec : Prop :=
  ∀ n, P12147632150455567688.a n = A139093 n

end A139093

/-! ## A139093.P13594492156962470782

`A245572(n)-2*A028572(n)`
-/

namespace A139093.P13594492156962470782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 n - 2 * A028572 n

end

end A139093.P13594492156962470782

namespace A139093

/-- `A245572(n)-2*A028572(n)` -/
def P13594492156962470782.Spec : Prop :=
  ∀ n, P13594492156962470782.a n = A139093 n

end A139093

/-! ## A139093.P17797468910242744053

`A082564(n)/A057077(A057077(n)+n)`
-/

namespace A139093.P17797468910242744053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A139093.P17797468910242744053

namespace A139093

/-- `A082564(n)/A057077(A057077(n)+n)` -/
def P17797468910242744053.Spec : Prop :=
  ∀ n, P17797468910242744053.a n = (A139093 n : ℚ)

end A139093

/-! ## A139093.P11858768936384364067

`A057077(n+1)*A133692(n)`
-/

namespace A139093.P11858768936384364067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A133692 n

end

end A139093.P11858768936384364067

namespace A139093

/-- `A057077(n+1)*A133692(n)` -/
def P11858768936384364067.Spec : Prop :=
  ∀ n, P11858768936384364067.a n = A139093 n

end A139093

/-! ## A139093.P6358947488836931984

`(A084101(n+1)-2)*A033715(n)`
-/

namespace A139093.P6358947488836931984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084101 (n + 1) - 2) * A033715 n

end

end A139093.P6358947488836931984

namespace A139093

/-- `(A084101(n+1)-2)*A033715(n)` -/
def P6358947488836931984.Spec : Prop :=
  ∀ n, P6358947488836931984.a n = A139093 n

end A139093

/-! ## A139093.P8766992564167444059

`(A056594(n+1)+A056594(n))*A133692(n)`
-/

namespace A139093.P8766992564167444059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (n + 1) + A056594 n) * A133692 n

end

end A139093.P8766992564167444059

namespace A139093

/-- `(A056594(n+1)+A056594(n))*A133692(n)` -/
def P8766992564167444059.Spec : Prop :=
  ∀ n, P8766992564167444059.a n = A139093 n

end A139093

/-! ## A139093.P11539894591334543257

`2*A033715(A047481(n+1))-A033715(n)`
-/

namespace A139093.P11539894591334543257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033715 (A047481 (n + 1)).toNat - A033715 n

end

end A139093.P11539894591334543257

namespace A139093

/-- `2*A033715(A047481(n+1))-A033715(n)` -/
def P11539894591334543257.Spec : Prop :=
  ∀ n, P11539894591334543257.a n = A139093 n

end A139093

/-! ## A139093.P2466756404271603532

`A082564(2*n)*A087960(n)`
-/

namespace A139093.P2466756404271603532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (2 * n) * A087960 n

end

end A139093.P2466756404271603532

namespace A139093

/-- `A082564(2*n)*A087960(n)` -/
def P2466756404271603532.Spec : Prop :=
  ∀ n, P2466756404271603532.a n = A139093 n

end A139093

/-! ## A139093.P6376242622563375735

`A082564(n)/A057077(2*n)`
-/

namespace A139093.P6376242622563375735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A139093.P6376242622563375735

namespace A139093

/-- `A082564(n)/A057077(2*n)` -/
def P6376242622563375735.Spec : Prop :=
  ∀ n, P6376242622563375735.a n = (A139093 n : ℚ)

end A139093

/-! ## A139093.P8783874821089023639

`A133692(2*n)/A057077(n)`
-/

namespace A139093.P8783874821089023639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133692 (2 * n) : ℚ) / (A057077 n : ℚ)

end

end A139093.P8783874821089023639

namespace A139093

/-- `A133692(2*n)/A057077(n)` -/
def P8783874821089023639.Spec : Prop :=
  ∀ n, P8783874821089023639.a n = (A139093 n : ℚ)

end A139093

/-! ## A139093.P15206674387079913453

`A033715(n)*A188510(2*n+1)`
-/

namespace A139093.P15206674387079913453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A188510 (2 * n + 1)

end

end A139093.P15206674387079913453

namespace A139093

/-- `A033715(n)*A188510(2*n+1)` -/
def P15206674387079913453.Spec : Prop :=
  ∀ n, P15206674387079913453.a n = A139093 n

end A139093

/-! ## A139093.P16727093542391460532

`A033715(n)*A257170(2*n+1)`
-/

namespace A139093.P16727093542391460532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A257170 (2 * n + 1)

end

end A139093.P16727093542391460532

namespace A139093

/-- `A033715(n)*A257170(2*n+1)` -/
def P16727093542391460532.Spec : Prop :=
  ∀ n, P16727093542391460532.a n = A139093 n

end A139093

/-! ## A139093.P1269472077373863135

`A082564(n*gcd(4, 1-n))`
-/

namespace A139093.P1269472077373863135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (n * Int.gcd 4 (1 - (n : ℤ)))

end

end A139093.P1269472077373863135

namespace A139093

/-- `A082564(n*gcd(4, 1-n))` -/
def P1269472077373863135.Spec : Prop :=
  ∀ n, P1269472077373863135.a n = A139093 n

end A139093

/-! ## A139093.P3403487623251497120

`A082564(n)*A219977(n²)`
-/

namespace A139093.P3403487623251497120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n * A219977 (n ^ 2)

end

end A139093.P3403487623251497120

namespace A139093

/-- `A082564(n)*A219977(n²)` -/
def P3403487623251497120.Spec : Prop :=
  ∀ n, P3403487623251497120.a n = A139093 n

end A139093

/-! ## A139093.P5171544493452148927

`A082564(n)/A087960(n²)`
-/

namespace A139093.P5171544493452148927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A139093.P5171544493452148927

namespace A139093

/-- `A082564(n)/A087960(n²)` -/
def P5171544493452148927.Spec : Prop :=
  ∀ n, P5171544493452148927.a n = (A139093 n : ℚ)

end A139093

/-!
# A139094: Largest part of the n-th row in the integrated diagram of the modular table of partitions.

The programs for A139094, there is no canonical definition to state claims against.
-/

/-! ## A139094.P6190913472778293963

`A317765(∏{p}[A043320(n+1), #])`
-/

namespace A139094.P6190913472778293963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317765 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A139094.P6190913472778293963

/-! ## A139094.P3340476820569377995

`A317765(A187829(∏{p}[n+1, #]))`
-/

namespace A139094.P3340476820569377995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317765 (A187829 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A139094.P3340476820569377995

/-! ## A139094.P1096919660478006098

`A317765(∏{p}[n+1, #])%A361968(3*n+4)`
-/

namespace A139094.P1096919660478006098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317765 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A361968 (3 * n + 4))

end

end A139094.P1096919660478006098

/-! ## A139094.P12253682645040463932

`A001222(A006203(n+1)*A243287(n+1))`
-/

namespace A139094.P12253682645040463932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006203 (n + 1) * A243287 (n + 1)).toNat

end

end A139094.P12253682645040463932

/-! ## A139094.P7545414489551892098

`A317765(A164339(n+1))`
-/

namespace A139094.P7545414489551892098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317765 (A164339 (n + 1)).toNat

end

end A139094.P7545414489551892098

/-!
# A139095: Fibonacci numbers whose sum of proper divisors is also a Fibonacci number.

The programs for A139095, there is no canonical definition to state claims against.
-/

/-! ## A139095.P13099017625956344388

`∏{e}[A011782(n), A005478(#)]`
-/

namespace A139095.P13099017625956344388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005478 (Nat.factorization (f1 n).natAbs p)

end

end A139095.P13099017625956344388

/-! ## A139095.P15784457225323235871

`A000045(lt[A074283(n+1), 2]+1)`
-/

namespace A139095.P15784457225323235871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A139095.P15784457225323235871

/-! ## A139095.P16491707567646716845

`A000045(eq[A022307(n), A267810(n)])`
-/

namespace A139095.P16491707567646716845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A139095.P16491707567646716845

/-! ## A139095.P15971163626831666729

`A001578(eq[A022307(n), A267810(n)])`
-/

namespace A139095.P15971163626831666729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A139095.P15971163626831666729

/-! ## A139095.P7690149813096697125

`A000045(eq[A038575(n), A267810(n)])`
-/

namespace A139095.P7690149813096697125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A139095.P7690149813096697125

/-!
# A139096: Infraperfect numbers: a(n) = 2^(2*p - 1) - 2^p, where p is A000043(n).

The programs for A139096, there is no canonical definition to state claims against.
-/

/-! ## A139096.P10804264875413185604

`A139306(n+1)-(A000668(n+1)+1)`
-/

namespace A139096.P10804264875413185604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139306 (n + 1) - (A000668 (n + 1) + 1)

end

end A139096.P10804264875413185604

/-! ## A139096.P5742127750945890600

`A139306(n+1)-2^A000043(n+1)`
-/

namespace A139096.P5742127750945890600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139306 (n + 1) : ℚ) - (2 : ℚ) ^ (A000043 (n + 1) : ℤ)

end

end A139096.P5742127750945890600

/-! ## A139096.P16446041124275887939

`A139306(n+1)-A072868(n+1)`
-/

namespace A139096.P16446041124275887939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139306 (n + 1) - A072868 (n + 1)

end

end A139096.P16446041124275887939

/-! ## A139096.P4348621218869313894

`2*A257665(n+1)`
-/

namespace A139096.P4348621218869313894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257665 (n + 1)

end

end A139096.P4348621218869313894

/-! ## A139096.P9935152020584121570

`floor(A133049(n+1)/2)`
-/

namespace A139096.P9935152020584121570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133049 (n + 1) : ℚ) / 2⌋

end

end A139096.P9935152020584121570

/-!
# A139097: Form a sequence of words as follows: look to the left, towards the beginning of the sequence and write down the number of letters you see; repeat; then replace the words with the corresponding numbers.

The programs for A139097, there is no canonical definition to state claims against.
-/

/-! ## A139097.P10563182439772796457

`A094110(n+1)-A326937(Δ[A007055(n)])`
-/

namespace A139097.P10563182439772796457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (n + 1) - A326937 (f1 (n + 1) - f1 n).toNat

end

end A139097.P10563182439772796457

/-! ## A139097.P1466089011519339963

`A094110(n+1)-A326937(A007055(n))`
-/

namespace A139097.P1466089011519339963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (n + 1) - A326937 (A007055 n).toNat

end

end A139097.P1466089011519339963

/-! ## A139097.P15412441316679277874

`A094110(n+1)-A008683(A000079(n))`
-/

namespace A139097.P15412441316679277874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (n + 1) - A008683 (A000079 n).toNat

end

end A139097.P15412441316679277874

/-! ## A139097.P16831858128064316328

`A094110(n+1)-A008683(A187941(n))`
-/

namespace A139097.P16831858128064316328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (n + 1) - A008683 (A187941 n).toNat

end

end A139097.P16831858128064316328

/-! ## A139097.P14866180492477401056

`A094110(n+1)-A240328(A062025(n))`
-/

namespace A139097.P14866180492477401056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (n + 1) - A240328 (A062025 n).toNat

end

end A139097.P14866180492477401056

/-!
# A139098: a(n) = 8*n^2.

The programs for A139098, the canonical program `A139098.P9529922579529552041` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139098 has offset 0).

The definition of A139098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²` (program `A139098.P9529922579529552041`, by `A139098.P9529922579529552041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139098.P9529922579529552041

`8*n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139098

/-- `8*n²` -/
def P9529922579529552041.Spec : Prop :=
  ∀ n, (P9529922579529552041.a n : ℤ) = A139098 n

theorem P9529922579529552041.correct : P9529922579529552041.Spec := by
  intro n
  simp only [A139098]

end A139098

/-!
# A139099: Numbers 2n+1 for which A002326(n) are record values of A002326.

The programs for A139099, there is no canonical definition to state claims against.
-/

/-! ## A139099.P10025656174566310190

`∪[A001122(n+1), A179383(n+1)]`
-/

namespace A139099.P10025656174566310190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139099.P10025656174566310190

/-! ## A139099.P858733334991156204

`lcm(A179383(A028310(n)), A260196(n))`
-/

namespace A139099.P858733334991156204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179383 (A028310 n).toNat) (A260196 n)

end

end A139099.P858733334991156204

/-! ## A139099.P2018587738309416763

`or(A130713(n), A179383(A028310(n)))`
-/

namespace A139099.P2018587738309416763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130713 n) (A179383 (A028310 n).toNat)

end

end A139099.P2018587738309416763

/-! ## A139099.P4510478454310477579

`A179383(A028310(n))+A000038(A245057(n))`
-/

namespace A139099.P4510478454310477579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (A028310 n).toNat + A000038 (A245057 n).toNat

end

end A139099.P4510478454310477579

/-! ## A139099.P491749306524912602

`A292936(A008706(n))+A179383(A028310(n))`
-/

namespace A139099.P491749306524912602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A008706 n).toNat + A179383 (A028310 n).toNat

end

end A139099.P491749306524912602

/-! ## A139099.P6774315536575272736

`A014963(∑[n+1])*A179383(A028310(n))`
-/

namespace A139099.P6774315536575272736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A179383 (A028310 n).toNat

end

end A139099.P6774315536575272736

/-! ## A139099.P17821670997528636918

`A009191(A175787(n+1)²)*A179383(A028310(n))`
-/

namespace A139099.P17821670997528636918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A175787 (n + 1) ^ 2).toNat * A179383 (A028310 n).toNat

end

end A139099.P17821670997528636918

