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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A186500: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186499.

The programs for A186500, the canonical program `A186500.P9619045521986740230` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186500 has offset 1).

The definition of A186500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186500.P9619045521986740230

`n+1+floor(sqrt(5*(n+1)²-7/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186500

/-- `n+1+floor(sqrt(5*(n+1)²-7/2))` -/
def P9619045521986740230.Spec : Prop :=
  ∀ n, P9619045521986740230.a n = A186500 (n + 1)

theorem P9619045521986740230.correct : P9619045521986740230.Spec := by
  intro n
  simp only [A186500, Nat.add_sub_cancel]

end A186500

/-! ## A186500.P16579562895497248799

`record[floor(cot(ϕ/(n+2)))+xor(1, n)+1]`
-/

namespace A186500.P16579562895497248799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.goldenRatio / (n + 2 : ℝ))⌋ + (Nat.xor 1 n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186500.P16579562895497248799

namespace A186500

/-- `record[floor(cot(ϕ/(n+2)))+xor(1, n)+1]` -/
def P16579562895497248799.Spec : Prop :=
  ∀ n, P16579562895497248799.a n = A186500 (n + 1)

end A186500

/-! ## A186500.P6166600225363075445

`round(sqrt((2*n+1)*(A001962(n+1)+1)))`
-/

namespace A186500.P6166600225363075445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n + 1 : ℤ) * (A001962 (n + 1) + 1) : ℝ))

end

end A186500.P6166600225363075445

namespace A186500

/-- `round(sqrt((2*n+1)*(A001962(n+1)+1)))` -/
def P6166600225363075445.Spec : Prop :=
  ∀ n, P6166600225363075445.a n = A186500 (n + 1)

end A186500

/-! ## A186500.P18409098052375928824

`A005379(2*comp[floor(ϕ*n)])`
-/

namespace A186500.P18409098052375928824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A186500.P18409098052375928824

namespace A186500

/-- `A005379(2*comp[floor(ϕ*n)])` -/
def P18409098052375928824.Spec : Prop :=
  ∀ n, P18409098052375928824.a n = A186500 (n + 1)

end A186500

/-!
# A186505: Antidiagonal sums of triangle A186084.

The programs for A186505, there is no canonical definition to state claims against.
-/

/-! ## A186505.P14915061415775781174

`Δ[A000196(A000720(A164263(n)))]`
-/

namespace A186505.P14915061415775781174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000720 (A164263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186505.P14915061415775781174

/-! ## A186505.P15341595412541941142

`Δ[A121900(Δ[A001970(n)])]`
-/

namespace A186505.P15341595412541941142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186505.P15341595412541941142

/-! ## A186505.P8491095432730370905

`A124789(lt[Δ[A266832(2*(n+1))], n+1])`
-/

namespace A186505.P8491095432730370905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A186505.P8491095432730370905

/-! ## A186505.P5875143595556348800

`A029204(eq[A029222(n), A029244(n+2)])`
-/

namespace A186505.P5875143595556348800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A186505.P5875143595556348800

/-! ## A186505.P18276621328998387814

`A124789(lt[A342800(n+1), A003432(n)])`
-/

namespace A186505.P18276621328998387814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A186505.P18276621328998387814

/-!
# A186507: Number of base-3 pyramids of height n.

The programs for A186507, there is no canonical definition to state claims against.
-/

/-! ## A186507.P13640511232798514451

`A326506(n+5)+A059906(A333732(n+1))`
-/

namespace A186507.P13640511232798514451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326506 (n + 5) + A059906 (A333732 (n + 1)).toNat

end

end A186507.P13640511232798514451

/-!
# A186508: Number of lunar divisors (A087029) of the decimal numbers 1, 10, 11, 100, 101, 110, 111, 1000, ... .

The programs for A186508, there is no canonical definition to state claims against.
-/

/-! ## A186508.P7529178326740822798

`A186951(A077168(n))+A063524(n)`
-/

namespace A186508.P7529178326740822798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (A077168 n).toNat + A063524 n

end

end A186508.P7529178326740822798

/-! ## A186508.P2592829141088388401

`A186951(n+1)+A000007(A186949(n))`
-/

namespace A186508.P2592829141088388401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (n + 1) + A000007 (A186949 n).toNat

end

end A186508.P2592829141088388401

/-! ## A186508.P1519790153317172850

`A186951(n+1)-A008683(A159696(n))`
-/

namespace A186508.P1519790153317172850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (n + 1) - A008683 (A159696 n).toNat

end

end A186508.P1519790153317172850

/-! ## A186508.P17716534436203117675

`A186951(n+1)+A010054(A115876(n+2))`
-/

namespace A186508.P17716534436203117675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (n + 1) + A010054 (A115876 (n + 2)).toNat

end

end A186508.P17716534436203117675

/-! ## A186508.P1412668552165248299

`A186951(n+1)+A008683(A079859(n+4))`
-/

namespace A186508.P1412668552165248299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (n + 1) + A008683 (A079859 (n + 4)).toNat

end

end A186508.P1412668552165248299

/-!
# A186510: Number of lunar divisors of the decimal (lunar) number 111...1 (with n 1's).

The programs for A186510, there is no canonical definition to state claims against.
-/

/-! ## A186510.P1192782328071636791

`A186943(2^n)`
-/

namespace A186510.P1192782328071636791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186943 (2 ^ n)

end

end A186510.P1192782328071636791

/-! ## A186510.P11555004122835604353

`record[A186943(n+1)]`
-/

namespace A186510.P11555004122835604353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186510.P11555004122835604353

/-! ## A186510.P5499931798251453206

`lcm(3, A186943(A000079(n)))`
-/

namespace A186510.P5499931798251453206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186943 (A000079 n).toNat)

end

end A186510.P5499931798251453206

/-!
# A186511: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186512.

The programs for A186511, the canonical program `A186511.P4252327057303222338` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186511 has offset 1).

The definition of A186511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186511.P4252327057303222338

`n+1+floor(sqrt((n+1)²/5+9/10))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186511

/-- `n+1+floor(sqrt((n+1)²/5+9/10))` -/
def P4252327057303222338.Spec : Prop :=
  ∀ n, P4252327057303222338.a n = A186511 (n + 1)

theorem P4252327057303222338.correct : P4252327057303222338.Spec := by
  intro n
  simp only [A186511, Nat.add_sub_cancel]

end A186511

/-! ## A186511.P13343731628370181941

`floor(sqrt(A036404(n+1))+n+1)`
-/

namespace A186511.P13343731628370181941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A036404 (n + 1) : ℝ) + (n + 1 : ℝ)⌋

end

end A186511.P13343731628370181941

namespace A186511

/-- `floor(sqrt(A036404(n+1))+n+1)` -/
def P13343731628370181941.Spec : Prop :=
  ∀ n, P13343731628370181941.a n = A186511 (n + 1)

end A186511

/-! ## A186511.P3760399925549542533

`floor(sqrt(A008807(2*n))+n+1)`
-/

namespace A186511.P3760399925549542533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A008807 (2 * n) : ℝ) + (n + 1 : ℝ)⌋

end

end A186511.P3760399925549542533

namespace A186511

/-- `floor(sqrt(A008807(2*n))+n+1)` -/
def P3760399925549542533.Spec : Prop :=
  ∀ n, P3760399925549542533.a n = A186511 (n + 1)

end A186511

/-! ## A186511.P12755894121477927961

`record[A028242(n)+A000196(A008807(n))]`
-/

namespace A186511.P12755894121477927961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A000196 (A008807 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186511.P12755894121477927961

namespace A186511

/-- `record[A028242(n)+A000196(A008807(n))]` -/
def P12755894121477927961.Spec : Prop :=
  ∀ n, P12755894121477927961.a n = A186511 (n + 1)

end A186511

/-! ## A186511.P374810926908935180

`floor(A194964((n+1)²)/(n+1)+n+1)`
-/

namespace A186511.P374810926908935180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194964 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋

end

end A186511.P374810926908935180

namespace A186511

/-- `floor(A194964((n+1)²)/(n+1)+n+1)` -/
def P374810926908935180.Spec : Prop :=
  ∀ n, P374810926908935180.a n = A186511 (n + 1)

end A186511

/-!
# A186512: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186511.

The programs for A186512, the canonical program `A186512.P6987244113700464767` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186512 has offset 1).

The definition of A186512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186512.P6987244113700464767

`n+1+floor(sqrt(5*(n+1)²-9/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186512

/-- `n+1+floor(sqrt(5*(n+1)²-9/2))` -/
def P6987244113700464767.Spec : Prop :=
  ∀ n, P6987244113700464767.a n = A186512 (n + 1)

theorem P6987244113700464767.correct : P6987244113700464767.Spec := by
  intro n
  simp only [A186512, Nat.add_sub_cancel]

end A186512

/-! ## A186512.P9810570293748335804

`ceil((ϕ-acot(2*n))*2*(n+1))`
-/

namespace A186512.P9810570293748335804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio - SequenceMachineLib.acot (2 * n : ℝ)) * (2 * (n + 1) : ℝ)⌉

end

end A186512.P9810570293748335804

namespace A186512

/-- `ceil((ϕ-acot(2*n))*2*(n+1))` -/
def P9810570293748335804.Spec : Prop :=
  ∀ n, P9810570293748335804.a n = A186512 (n + 1)

end A186512

/-! ## A186512.P12947486215637065758

`A005379(2*(A103517(n)+A005379(n)))`
-/

namespace A186512.P12947486215637065758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (2 * (A103517 n + A005379 n)).toNat

end

end A186512.P12947486215637065758

namespace A186512

/-- `A005379(2*(A103517(n)+A005379(n)))` -/
def P12947486215637065758.Spec : Prop :=
  ∀ n, P12947486215637065758.a n = A186512 (n + 1)

end A186512

/-! ## A186512.P13548209085890365046

`A002024(A283969(2*n+1)-3)`
-/

namespace A186512.P13548209085890365046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A283969 (2 * n + 1) - 3).toNat

end

end A186512.P13548209085890365046

namespace A186512

/-- `A002024(A283969(2*n+1)-3)` -/
def P13548209085890365046.Spec : Prop :=
  ∀ n, P13548209085890365046.a n = A186512 (n + 1)

end A186512

/-! ## A186512.P1474495781764816958

`A002024(A194126(2*n+1)+2*n)`
-/

namespace A186512.P1474495781764816958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A194126 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A186512.P1474495781764816958

namespace A186512

/-- `A002024(A194126(2*n+1)+2*n)` -/
def P1474495781764816958.Spec : Prop :=
  ∀ n, P1474495781764816958.a n = A186512 (n + 1)

end A186512

/-!
# A186513: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186514.

The programs for A186513, the canonical program `A186513.P11653591617409960415` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186513 has offset 1).

The definition of A186513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186513.P11653591617409960415

`comp[A186514(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186513

/-- `comp[A186514(n+1)-1]+1` -/
def P11653591617409960415.Spec : Prop :=
  ∀ n, (P11653591617409960415.a n : ℤ) = A186513 (n + 1)

theorem P11653591617409960415.correct : P11653591617409960415.Spec := by
  intro n
  simp only [A186513, Nat.add_sub_cancel]

end A186513

/-! ## A186513.P5557983926413963892

`lt[char[A186514(n+1)]*A003631(n+1), n]`
-/

namespace A186513.P5557983926413963892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003631 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186513.P5557983926413963892

namespace A186513

/-- `lt[char[A186514(n+1)]*A003631(n+1), n]` -/
def P5557983926413963892.Spec : Prop :=
  ∀ n, (P5557983926413963892.a n : ℤ) = A186513 (n + 1)

end A186513

/-! ## A186513.P7551129020182054918

`lt[char[A186514(n+1)]*A138656(n+2), n]`
-/

namespace A186513.P7551129020182054918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138656 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186513.P7551129020182054918

namespace A186513

/-- `lt[char[A186514(n+1)]*A138656(n+2), n]` -/
def P7551129020182054918.Spec : Prop :=
  ∀ n, (P7551129020182054918.a n : ℤ) = A186513 (n + 1)

end A186513

/-! ## A186513.P11716160534860592243

`lt[char[A186514(n+1)], n/A138656(n+1)]`
-/

namespace A186513.P11716160534860592243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A138656 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A186513.P11716160534860592243

namespace A186513

/-- `lt[char[A186514(n+1)], n/A138656(n+1)]` -/
def P11716160534860592243.Spec : Prop :=
  ∀ n, (P11716160534860592243.a n : ℤ) = A186513 (n + 1)

end A186513

/-! ## A186513.P5704522157730784724

`lt[char[A186514(n+1)]*A139756(n+1), n]`
-/

namespace A186513.P5704522157730784724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A139756 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186513.P5704522157730784724

namespace A186513

/-- `lt[char[A186514(n+1)]*A139756(n+1), n]` -/
def P5704522157730784724.Spec : Prop :=
  ∀ n, (P5704522157730784724.a n : ℤ) = A186513 (n + 1)

end A186513

/-! ## A186513.P4199446363170354157

`eq[char[A186514(n+1)], A151933(n)]`
-/

namespace A186513.P4199446363170354157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186513.P4199446363170354157

namespace A186513

/-- `eq[char[A186514(n+1)], A151933(n)]` -/
def P4199446363170354157.Spec : Prop :=
  ∀ n, (P4199446363170354157.a n : ℤ) = A186513 (n + 1)

end A186513

/-!
# A186514: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186513.

The programs for A186514, the canonical program `A186514.P2717258701859519625` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186514 has offset 1).

The definition of A186514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186514.P2717258701859519625

`n+1+floor(sqrt(5*(n+1)²+4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186514

/-- `n+1+floor(sqrt(5*(n+1)²+4))` -/
def P2717258701859519625.Spec : Prop :=
  ∀ n, (P2717258701859519625.a n : ℤ) = A186514 (n + 1)

theorem P2717258701859519625.correct : P2717258701859519625.Spec := by
  intro n
  simp only [A186514, Nat.add_sub_cancel]

end A186514

/-! ## A186514.P1859674774320347929

`floor(2*ϕ/acot(n+1))`
-/

namespace A186514.P1859674774320347929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio / SequenceMachineLib.acot (n + 1 : ℝ))⌋

end

end A186514.P1859674774320347929

namespace A186514

/-- `floor(2*ϕ/acot(n+1))` -/
def P1859674774320347929.Spec : Prop :=
  ∀ n, P1859674774320347929.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P4739926102231380343

`floor((sqrt(5)+1)/acot(n+1))`
-/

namespace A186514.P4739926102231380343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (5 : ℝ) + 1) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A186514.P4739926102231380343

namespace A186514

/-- `floor((sqrt(5)+1)/acot(n+1))` -/
def P4739926102231380343.Spec : Prop :=
  ∀ n, P4739926102231380343.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P12361984271882667377

`ceil(sqrt(A008531(n+1)/(n+1))+n)`
-/

namespace A186514.P12361984271882667377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A008531 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) + (n : ℝ)⌉

end

end A186514.P12361984271882667377

namespace A186514

/-- `ceil(sqrt(A008531(n+1)/(n+1))+n)` -/
def P12361984271882667377.Spec : Prop :=
  ∀ n, P12361984271882667377.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P18114409322258284365

`A005378(A008574(n+1)+2*A005378(n))`
-/

namespace A186514.P18114409322258284365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A008574 (n + 1) + 2 * A005378 n).toNat

end

end A186514.P18114409322258284365

namespace A186514

/-- `A005378(A008574(n+1)+2*A005378(n))` -/
def P18114409322258284365.Spec : Prop :=
  ∀ n, P18114409322258284365.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P3639081454010134744

`A005378(A005408(A005378(n))+A004767(n))`
-/

namespace A186514.P3639081454010134744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005408 (A005378 n).toNat + A004767 n).toNat

end

end A186514.P3639081454010134744

namespace A186514

/-- `A005378(A005408(A005378(n))+A004767(n))` -/
def P3639081454010134744.Spec : Prop :=
  ∀ n, P3639081454010134744.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P13339022670170188955

`A005378(A103517(A005408(n)+A005378(n)))`
-/

namespace A186514.P13339022670170188955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A103517 (A005408 n + A005378 n).toNat).toNat

end

end A186514.P13339022670170188955

namespace A186514

/-- `A005378(A103517(A005408(n)+A005378(n)))` -/
def P13339022670170188955.Spec : Prop :=
  ∀ n, P13339022670170188955.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P12599590033432357486

`A005378(A004275(A144396(n+1)+A005378(n)))`
-/

namespace A186514.P12599590033432357486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A004275 (A144396 (n + 1) + A005378 n).toNat).toNat

end

end A186514.P12599590033432357486

namespace A186514

/-- `A005378(A004275(A144396(n+1)+A005378(n)))` -/
def P12599590033432357486.Spec : Prop :=
  ∀ n, P12599590033432357486.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P4983752801280603469

`A005378(A004766(n+1)+A060143(n)+A005378(n))`
-/

namespace A186514.P4983752801280603469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A004766 (n + 1) + (A060143 n + A005378 n)).toNat

end

end A186514.P4983752801280603469

namespace A186514

/-- `A005378(A004766(n+1)+A060143(n)+A005378(n))` -/
def P4983752801280603469.Spec : Prop :=
  ∀ n, P4983752801280603469.a n = A186514 (n + 1)

end A186514

/-! ## A186514.P17725465537742797317

`A000267(A293405(n+1)+1)`
-/

namespace A186514.P17725465537742797317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A293405 (n + 1) + 1).toNat

end

end A186514.P17725465537742797317

namespace A186514

/-- `A000267(A293405(n+1)+1)` -/
def P17725465537742797317.Spec : Prop :=
  ∀ n, P17725465537742797317.a n = A186514 (n + 1)

end A186514

/-!
# A186515: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186516.

The programs for A186515, the canonical program `A186515.P18183641407450854378` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186515 has offset 1).

The definition of A186515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186515.P18183641407450854378

`2*n+1-A005378(A005206(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186515

/-- `2*n+1-A005378(A005206(a(n-1)))` -/
def P18183641407450854378.Spec : Prop :=
  ∀ n, P18183641407450854378.a n = A186515 (n + 1)

theorem P18183641407450854378.correct : P18183641407450854378.Spec := by
  intro n
  simp only [A186515, Nat.add_sub_cancel]

end A186515

/-! ## A186515.P10150909735522860761

`2*n+1-A005378(A005379(a(n-1)))` with `a(0)=1`
-/

namespace A186515.P10150909735522860761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) - A005378 (A005379 (a (n - 1)).toNat).toNat

end

end A186515.P10150909735522860761

namespace A186515

/-- `2*n+1-A005378(A005379(a(n-1)))` -/
def P10150909735522860761.Spec : Prop :=
  ∀ n, P10150909735522860761.a n = A186515 (n + 1)

end A186515

/-! ## A186515.P4979931867725309749

`floor(A186513(2*(n+1))/2)`
-/

namespace A186515.P4979931867725309749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186513 (2 * (n + 1)) : ℚ) / 2⌋

end

end A186515.P4979931867725309749

namespace A186515

/-- `floor(A186513(2*(n+1))/2)` -/
def P4979931867725309749.Spec : Prop :=
  ∀ n, P4979931867725309749.a n = A186515 (n + 1)

end A186515

/-! ## A186515.P7462438187645241478

`A004526(A186513(2*(n+1)))`
-/

namespace A186515.P7462438187645241478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186513 (2 * (n + 1))).toNat

end

end A186515.P7462438187645241478

namespace A186515

/-- `A004526(A186513(2*(n+1)))` -/
def P7462438187645241478.Spec : Prop :=
  ∀ n, P7462438187645241478.a n = A186515 (n + 1)

end A186515

/-! ## A186515.P13785139480745476638

`record[A267458(A125147(n))-n]`
-/

namespace A186515.P13785139480745476638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A125147 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186515.P13785139480745476638

namespace A186515

/-- `record[A267458(A125147(n))-n]` -/
def P13785139480745476638.Spec : Prop :=
  ∀ n, P13785139480745476638.a n = A186515 (n + 1)

end A186515

/-! ## A186515.P12699202958692611575

`A172471(A274399((n+1)²))`
-/

namespace A186515.P12699202958692611575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A274399 ((n + 1) ^ 2)).toNat

end

end A186515.P12699202958692611575

namespace A186515

/-- `A172471(A274399((n+1)²))` -/
def P12699202958692611575.Spec : Prop :=
  ∀ n, P12699202958692611575.a n = A186515 (n + 1)

end A186515

/-! ## A186515.P2569080131570195251

`A003056(A049451(n+1))-(n+1)`
-/

namespace A186515.P2569080131570195251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A049451 (n + 1)).toNat - (n + 1 : ℤ)

end

end A186515.P2569080131570195251

namespace A186515

/-- `A003056(A049451(n+1))-(n+1)` -/
def P2569080131570195251.Spec : Prop :=
  ∀ n, P2569080131570195251.a n = A186515 (n + 1)

end A186515

/-!
# A186516: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186515.

The programs for A186516, the canonical program `A186516.P7489468236530869185` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186516 has offset 1).

The definition of A186516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186516.P7489468236530869185

`n+1+floor(sqrt(5*(n+1)²+7/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186516

/-- `n+1+floor(sqrt(5*(n+1)²+7/2))` -/
def P7489468236530869185.Spec : Prop :=
  ∀ n, P7489468236530869185.a n = A186516 (n + 1)

theorem P7489468236530869185.correct : P7489468236530869185.Spec := by
  intro n
  simp only [A186516, Nat.add_sub_cancel]

end A186516

/-! ## A186516.P17751308569012522537

`floor(2/acot(ϕ*(n+1)))`
-/

namespace A186516.P17751308569012522537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (Real.goldenRatio * (n + 1 : ℝ))⌋

end

end A186516.P17751308569012522537

namespace A186516

/-- `floor(2/acot(ϕ*(n+1)))` -/
def P17751308569012522537.Spec : Prop :=
  ∀ n, P17751308569012522537.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P16049578771816806134

`ceil(sqrt(5)/acot(n+1)+n)`
-/

namespace A186516.P16049578771816806134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (5 : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)⌉

end

end A186516.P16049578771816806134

namespace A186516

/-- `ceil(sqrt(5)/acot(n+1)+n)` -/
def P16049578771816806134.Spec : Prop :=
  ∀ n, P16049578771816806134.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P6656454544458209430

`ceil(sqrt(or(2, 5*(n+1)²))+n)`
-/

namespace A186516.P6656454544458209430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 2 (5 * (n + 1) ^ 2) : ℝ) + (n : ℝ)⌉

end

end A186516.P6656454544458209430

namespace A186516

/-- `ceil(sqrt(or(2, 5*(n+1)²))+n)` -/
def P6656454544458209430.Spec : Prop :=
  ∀ n, P6656454544458209430.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P3682354011478672994

`record[A234586(n+2)+A005378(n+1)]`
-/

namespace A186516.P3682354011478672994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (n + 2) + A005378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186516.P3682354011478672994

namespace A186516

/-- `record[A234586(n+2)+A005378(n+1)]` -/
def P3682354011478672994.Spec : Prop :=
  ∀ n, P3682354011478672994.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P15100487757812918118

`A005378(A001962(n+1))`
-/

namespace A186516.P15100487757812918118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A001962 (n + 1)).toNat

end

end A186516.P15100487757812918118

namespace A186516

/-- `A005378(A001962(n+1))` -/
def P15100487757812918118.Spec : Prop :=
  ∀ n, P15100487757812918118.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P14253409549627358784

`A005378(A184515(n+1))`
-/

namespace A186516.P14253409549627358784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A184515 (n + 1)).toNat

end

end A186516.P14253409549627358784

namespace A186516

/-- `A005378(A184515(n+1))` -/
def P14253409549627358784.Spec : Prop :=
  ∀ n, P14253409549627358784.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P10493910226930053574

`A005378(A283234(n+1))`
-/

namespace A186516.P10493910226930053574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A283234 (n + 1)).toNat

end

end A186516.P10493910226930053574

namespace A186516

/-- `A005378(A283234(n+1))` -/
def P10493910226930053574.Spec : Prop :=
  ∀ n, P10493910226930053574.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P10988328130543048228

`A005378(A001950(2*(n+1)))`
-/

namespace A186516.P10988328130543048228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A001950 (2 * (n + 1))).toNat

end

end A186516.P10988328130543048228

namespace A186516

/-- `A005378(A001950(2*(n+1)))` -/
def P10988328130543048228.Spec : Prop :=
  ∀ n, P10988328130543048228.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P6449171326753872711

`A005378(A007064(2*(n+1)))`
-/

namespace A186516.P6449171326753872711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A007064 (2 * (n + 1))).toNat

end

end A186516.P6449171326753872711

namespace A186516

/-- `A005378(A007064(2*(n+1)))` -/
def P6449171326753872711.Spec : Prop :=
  ∀ n, P6449171326753872711.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P8714970073501890408

`A005378(A007066(2*(n+1)))`
-/

namespace A186516.P8714970073501890408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A007066 (2 * (n + 1))).toNat

end

end A186516.P8714970073501890408

namespace A186516

/-- `A005378(A007066(2*(n+1)))` -/
def P8714970073501890408.Spec : Prop :=
  ∀ n, P8714970073501890408.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P12913923349383556103

`A005378(A003259(2*(n+1))+1)`
-/

namespace A186516.P12913923349383556103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A003259 (2 * (n + 1)) + 1).toNat

end

end A186516.P12913923349383556103

namespace A186516

/-- `A005378(A003259(2*(n+1))+1)` -/
def P12913923349383556103.Spec : Prop :=
  ∀ n, P12913923349383556103.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P13337985377265046515

`A005378(A008574(n+1)+A005378(2*n))`
-/

namespace A186516.P13337985377265046515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A008574 (n + 1) + A005378 (2 * n)).toNat

end

end A186516.P13337985377265046515

namespace A186516

/-- `A005378(A008574(n+1)+A005378(2*n))` -/
def P13337985377265046515.Spec : Prop :=
  ∀ n, P13337985377265046515.a n = A186516 (n + 1)

end A186516

/-! ## A186516.P2239438343475863924

`A065033(A186514(2*(n+1))-1)`
-/

namespace A186516.P2239438343475863924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A186514 (2 * (n + 1)) - 1).toNat

end

end A186516.P2239438343475863924

namespace A186516

/-- `A065033(A186514(2*(n+1))-1)` -/
def P2239438343475863924.Spec : Prop :=
  ∀ n, P2239438343475863924.a n = A186516 (n + 1)

end A186516

/-!
# A186518: Triangle A177517 mod 2. Mahonian numbers modulo 2.

The programs for A186518, there is no canonical definition to state claims against.
-/

/-! ## A186518.P14749181396068517095

`A177517(n+1)%2`
-/

namespace A186518.P14749181396068517095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177517 (n + 1)) 2

end

end A186518.P14749181396068517095

/-! ## A186518.P12650630942809517399

`and(A008461(n+1), A177517(n+1))`
-/

namespace A186518.P12650630942809517399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008461 (n + 1)) (A177517 (n + 1))

end

end A186518.P12650630942809517399

/-! ## A186518.P650771453029548165

`and(1, A017082(n)*A177517(n+1))`
-/

namespace A186518.P650771453029548165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017082 n * A177517 (n + 1))

end

end A186518.P650771453029548165

/-! ## A186518.P8746245357013100265

`and(1, A177517(n+1)²*A008349(n))`
-/

namespace A186518.P8746245357013100265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A177517 (n + 1) ^ 2 * A008349 n)

end

end A186518.P8746245357013100265

/-! ## A186518.P1929042354308525668

`and(1, (A016756(n)*A177517(n+1))²)`
-/

namespace A186518.P1929042354308525668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A016756 n * A177517 (n + 1)) ^ 2)

end

end A186518.P1929042354308525668

/-! ## A186518.P8772099597349539118

`and(1, A177517(n+1)²*A016950(n))`
-/

namespace A186518.P8772099597349539118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A177517 (n + 1) ^ 2 * A016950 n)

end

end A186518.P8772099597349539118

/-! ## A186518.P5671335341732382434

`and(1, A001232(n+1)*A177517(n+1))`
-/

namespace A186518.P5671335341732382434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001232 (n + 1) * A177517 (n + 1))

end

end A186518.P5671335341732382434

/-! ## A186518.P8474297941475075835

`and(1, A177517(n+1)²*A001361(n+1))`
-/

namespace A186518.P8474297941475075835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A177517 (n + 1) ^ 2 * A001361 (n + 1))

end

end A186518.P8474297941475075835

/-! ## A186518.P4611198637244727238

`and(1, (A014773(n+1)*A177517(n+1))²)`
-/

namespace A186518.P4611198637244727238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014773 (n + 1) * A177517 (n + 1)) ^ 2)

end

end A186518.P4611198637244727238

/-! ## A186518.P8982680938552987693

`and(A177517(n+1), A255327(2*n+1))`
-/

namespace A186518.P8982680938552987693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177517 (n + 1)) (A255327 (2 * n + 1))

end

end A186518.P8982680938552987693

/-! ## A186518.P252138224240528838

`and(A174692(n), A177517(n+1))`
-/

namespace A186518.P252138224240528838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A177517 (n + 1))

end

end A186518.P252138224240528838

/-! ## A186518.P12764423047314498022

`and(A004119(n), A177517(n+1))`
-/

namespace A186518.P12764423047314498022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A177517 (n + 1))

end

end A186518.P12764423047314498022

/-! ## A186518.P1425917162105210136

`and(A177517(n+1), A195744(n))`
-/

namespace A186518.P1425917162105210136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177517 (n + 1)) (A195744 n)

end

end A186518.P1425917162105210136

/-! ## A186518.P10231836775451055639

`and(A122041(n+1), A177517(n+1))`
-/

namespace A186518.P10231836775451055639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A177517 (n + 1))

end

end A186518.P10231836775451055639

/-! ## A186518.P2285501906024098693

`and(A159225(n+2), A177517(n+1))`
-/

namespace A186518.P2285501906024098693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159225 (n + 2)) (A177517 (n + 1))

end

end A186518.P2285501906024098693

/-! ## A186518.P9719835152305169213

`and(A177517(n+1), A196657(n))`
-/

namespace A186518.P9719835152305169213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177517 (n + 1)) (A196657 n)

end

end A186518.P9719835152305169213

/-! ## A186518.P2977051570896573912

`and(A177517(n+1), A345109(n+1))`
-/

namespace A186518.P2977051570896573912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177517 (n + 1)) (A345109 (n + 1))

end

end A186518.P2977051570896573912

/-! ## A186518.P12576362157473261698

`and(A005183(n), A177517(n+1))`
-/

namespace A186518.P12576362157473261698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005183 n) (A177517 (n + 1))

end

end A186518.P12576362157473261698

/-! ## A186518.P16781014260705662884

`and(A132750(n), A177517(n+1))`
-/

namespace A186518.P16781014260705662884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132750 n) (A177517 (n + 1))

end

end A186518.P16781014260705662884

/-! ## A186518.P12130923216090267050

`and(A131056(n+1), A177517(n+1))`
-/

namespace A186518.P12130923216090267050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131056 (n + 1)) (A177517 (n + 1))

end

end A186518.P12130923216090267050

/-!
# A186519: Row sums of A186518.

The programs for A186519, there is no canonical definition to state claims against.
-/

/-! ## A186519.P2971223811757152076

`A007895(A011782(n)-A173068(n))`
-/

namespace A186519.P2971223811757152076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A011782 n - A173068 n).toNat

end

end A186519.P2971223811757152076

/-!
# A186520: Number of evaluation schemes for x^n achieving the minimal number of multiplications, and with the maximal number of squarings among the multiplications.

The programs for A186520, there is no canonical definition to state claims against.
-/

/-! ## A186520.P3583740988935104118

`A227350(or(A001924(n+2), A007094(n)))`
-/

namespace A186520.P3583740988935104118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (Int.lor (A001924 (n + 2)) (A007094 n)).toNat

end

end A186520.P3583740988935104118

/-! ## A186520.P1965166351372072650

`A227350(or(A001924(n+2), A057561(n+1)))`
-/

namespace A186520.P1965166351372072650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (Int.lor (A001924 (n + 2)) (A057561 (n + 1))).toNat

end

end A186520.P1965166351372072650

/-!
# A186521: Numbers n>0 such that (7*10^(n+2)+666)*10^n+7 is prime.

The programs for A186521, there is no canonical definition to state claims against.
-/

/-! ## A186521.P3255930560687883647

`A172272(record[A260876(2*n)])`
-/

namespace A186521.P3255930560687883647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186521.P3255930560687883647

/-! ## A186521.P5235731035114270549

`A038591(n)+A038516(A034008(n))`
-/

namespace A186521.P5235731035114270549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n + A038516 (A034008 n).toNat

end

end A186521.P5235731035114270549

/-!
# A186522: Smallest prime factor of 2^n - 1 having the form k*n + 1.

The programs for A186522, there is no canonical definition to state claims against.
-/

/-! ## A186522.P4738142113405640637

`A186283(n+2)*(n+2)+1`
-/

namespace A186522.P4738142113405640637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186283 (n + 2) * (n + 2 : ℤ) + 1

end

end A186522.P4738142113405640637

/-! ## A186522.P11593119324533051861

`A004442((n+2)*A186283(n+2))`
-/

namespace A186522.P11593119324533051861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n + 2 : ℤ) * A186283 (n + 2)).toNat

end

end A186522.P11593119324533051861

/-! ## A186522.P14976593718032434540

`A020725((n+2)*A186283(n+2))`
-/

namespace A186522.P14976593718032434540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 2 : ℤ) * A186283 (n + 2)).toNat

end

end A186522.P14976593718032434540

/-! ## A186522.P4509238807297066720

`A065475((n+2)*A186283(n+2))`
-/

namespace A186522.P4509238807297066720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 ((n + 2 : ℤ) * A186283 (n + 2)).toNat

end

end A186522.P4509238807297066720

/-! ## A186522.P14765480666432076912

`A079097((n+2)*A186283(n+2))`
-/

namespace A186522.P14765480666432076912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 ((n + 2 : ℤ) * A186283 (n + 2)).toNat

end

end A186522.P14765480666432076912

/-!
# A186523: In lunar arithmetic in base 3, this is the number of lunar divisors of the number 111...1 (with n 1's).

The programs for A186523, there is no canonical definition to state claims against.
-/

/-! ## A186523.P11215328135859442356

`2*A080605(A151829(n+2))`
-/

namespace A186523.P11215328135859442356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080605 (A151829 (n + 2)).toNat

end

end A186523.P11215328135859442356

/-! ## A186523.P12744679157022393207

`2*A194640(A240571(n+2))`
-/

namespace A186523.P12744679157022393207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194640 (A240571 (n + 2)).toNat

end

end A186523.P12744679157022393207

/-! ## A186523.P5209776091697262237

`Δ[A248562(∑[A094288(n+1)])]`
-/

namespace A186523.P5209776091697262237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186523.P5209776091697262237

/-!
# A186524: Numbers n such that n == prime(n) (mod 7).

The programs for A186524, there is no canonical definition to state claims against.
-/

/-! ## A186524.P16405075880732924815

`eq[1, (A000040(n+1)-n)%7]+1`
-/

namespace A186524.P16405075880732924815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) - (n : ℤ)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186524.P16405075880732924815

/-! ## A186524.P3844107759339283572

`eq[n%7, A010876(A008578(n+1))]`
-/

namespace A186524.P3844107759339283572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186524.P3844107759339283572

/-! ## A186524.P14051761515761772031

`A000720(p?[A060462(A016993(n))])`
-/

namespace A186524.P14051761515761772031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P14051761515761772031

/-! ## A186524.P8161765582053095607

`A000720(p?[A079696(A017053(n))])`
-/

namespace A186524.P8161765582053095607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A017053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P8161765582053095607

/-! ## A186524.P5846881751647201440

`A049084(p?[A060462(A016993(n))])`
-/

namespace A186524.P5846881751647201440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P5846881751647201440

/-! ## A186524.P13880578666959678676

`A055396(p?[A060462(A016993(n))])`
-/

namespace A186524.P13880578666959678676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P13880578666959678676

/-! ## A186524.P8278469032868373504

`A056239(p?[A060462(A016993(n))])`
-/

namespace A186524.P8278469032868373504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P8278469032868373504

/-! ## A186524.P10163442530228596377

`A000720(p?[A164029(A016993(n))])`
-/

namespace A186524.P10163442530228596377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164029 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P10163442530228596377

/-! ## A186524.P7094517963283661612

`A000720(p?[A166460(A016993(n))])`
-/

namespace A186524.P7094517963283661612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P7094517963283661612

/-! ## A186524.P8264822472872427859

`A049084(p?[A166460(A016993(n))])`
-/

namespace A186524.P8264822472872427859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186524.P8264822472872427859

/-!
# A186525: Semiprimes of the form 7k+1.

The programs for A186525, the canonical program `A186525.P16661268253567134495` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186525 has offset 1).

The definition of A186525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186525.P18379341503275576126

`∩[7*n+1, A001358(n+2)]`
-/

namespace A186525.P18379341503275576126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186525.P18379341503275576126

namespace A186525

/-- `∩[7*n+1, A001358(n+2)]` -/
def P18379341503275576126.Spec : Prop :=
  ∀ n, (P18379341503275576126.a n : ℤ) = A186525 (n + 1)

end A186525

/-! ## A186525.P16661268253567134495

`A001358(eq[1, A001358(n+1)%7]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A186525

/-- `A001358(eq[1, A001358(n+1)%7]+1)` -/
def P16661268253567134495.Spec : Prop :=
  ∀ n, P16661268253567134495.a n = A186525 (n + 1)

theorem P16661268253567134495.correct : P16661268253567134495.Spec := by
  intro n
  simp only [A186525, Nat.add_sub_cancel]

end A186525

/-! ## A186525.P16155420488535296658

`A016993(eq[2, A001222(A016993(n))])`
-/

namespace A186525.P16155420488535296658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186525.P16155420488535296658

namespace A186525

/-- `A016993(eq[2, A001222(A016993(n))])` -/
def P16155420488535296658.Spec : Prop :=
  ∀ n, P16155420488535296658.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P195937505075214560

`A016993(eq[2, A033273(A016993(n))])`
-/

namespace A186525.P195937505075214560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186525.P195937505075214560

namespace A186525

/-- `A016993(eq[2, A033273(A016993(n))])` -/
def P195937505075214560.Spec : Prop :=
  ∀ n, P195937505075214560.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P15803709850126144836

`filter[A016993(n), A064911(#)]`
-/

namespace A186525.P15803709850126144836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P15803709850126144836

namespace A186525

/-- `filter[A016993(n), A064911(#)]` -/
def P15803709850126144836.Spec : Prop :=
  ∀ n, P15803709850126144836.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P6636294550175335312

`A016993(eq[2, A317141(A016993(n))])`
-/

namespace A186525.P6636294550175335312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186525.P6636294550175335312

namespace A186525

/-- `A016993(eq[2, A317141(A016993(n))])` -/
def P6636294550175335312.Spec : Prop :=
  ∀ n, P6636294550175335312.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P16617841216165768625

`∩[A001358(n+1), A016993(n)]`
-/

namespace A186525.P16617841216165768625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186525.P16617841216165768625

namespace A186525

/-- `∩[A001358(n+1), A016993(n)]` -/
def P16617841216165768625.Spec : Prop :=
  ∀ n, (P16617841216165768625.a n : ℤ) = A186525 (n + 1)

end A186525

/-! ## A186525.P7880383880871390157

`∩[A001358(n+1), A016921(n)+n]`
-/

namespace A186525.P7880383880871390157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186525.P7880383880871390157

namespace A186525

/-- `∩[A001358(n+1), A016921(n)+n]` -/
def P7880383880871390157.Spec : Prop :=
  ∀ n, (P7880383880871390157.a n : ℤ) = A186525 (n + 1)

end A186525

/-! ## A186525.P6819143271692237107

`∩[A001358(n+1), A271114(n)+n]`
-/

namespace A186525.P6819143271692237107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186525.P6819143271692237107

namespace A186525

/-- `∩[A001358(n+1), A271114(n)+n]` -/
def P6819143271692237107.Spec : Prop :=
  ∀ n, (P6819143271692237107.a n : ℤ) = A186525 (n + 1)

end A186525

/-! ## A186525.P5067954197666017263

`filter[A047274(2*(n+1)), A064911(#)]`
-/

namespace A186525.P5067954197666017263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P5067954197666017263

namespace A186525

/-- `filter[A047274(2*(n+1)), A064911(#)]` -/
def P5067954197666017263.Spec : Prop :=
  ∀ n, P5067954197666017263.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P1562851397660081698

`filter[A047336(2*n+1), A064911(#)]`
-/

namespace A186525.P1562851397660081698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P1562851397660081698

namespace A186525

/-- `filter[A047336(2*n+1), A064911(#)]` -/
def P1562851397660081698.Spec : Prop :=
  ∀ n, P1562851397660081698.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P953450243909203650

`filter[A047346(2*n+1), A064911(#)]`
-/

namespace A186525.P953450243909203650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P953450243909203650

namespace A186525

/-- `filter[A047346(2*n+1), A064911(#)]` -/
def P953450243909203650.Spec : Prop :=
  ∀ n, P953450243909203650.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P7522803072249134882

`filter[A047353(2*n+1), A064911(#)]`
-/

namespace A186525.P7522803072249134882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P7522803072249134882

namespace A186525

/-- `filter[A047353(2*n+1), A064911(#)]` -/
def P7522803072249134882.Spec : Prop :=
  ∀ n, P7522803072249134882.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P1518693769704034371

`filter[A047356(2*n+1), A064911(#)]`
-/

namespace A186525.P1518693769704034371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P1518693769704034371

namespace A186525

/-- `filter[A047356(2*n+1), A064911(#)]` -/
def P1518693769704034371.Spec : Prop :=
  ∀ n, P1518693769704034371.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P2924911741881922550

`filter[A047383(2*n+1), A064911(#)]`
-/

namespace A186525.P2924911741881922550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P2924911741881922550

namespace A186525

/-- `filter[A047383(2*n+1), A064911(#)]` -/
def P2924911741881922550.Spec : Prop :=
  ∀ n, P2924911741881922550.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P12228952085772521869

`filter[A166522(2*n+1), A064911(#)]`
-/

namespace A186525.P12228952085772521869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P12228952085772521869

namespace A186525

/-- `filter[A166522(2*n+1), A064911(#)]` -/
def P12228952085772521869.Spec : Prop :=
  ∀ n, P12228952085772521869.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P17311461144406525545

`filter[A168211(2*(n+1)), A064911(#)]`
-/

namespace A186525.P17311461144406525545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168211 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P17311461144406525545

namespace A186525

/-- `filter[A168211(2*(n+1)), A064911(#)]` -/
def P17311461144406525545.Spec : Prop :=
  ∀ n, P17311461144406525545.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P17052702129490586879

`filter[A168337(2*n+1), A064911(#)]`
-/

namespace A186525.P17052702129490586879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P17052702129490586879

namespace A186525

/-- `filter[A168337(2*n+1), A064911(#)]` -/
def P17052702129490586879.Spec : Prop :=
  ∀ n, P17052702129490586879.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P1720189967343692915

`filter[A304500(3*n), A064911(#)]`
-/

namespace A186525.P1720189967343692915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P1720189967343692915

namespace A186525

/-- `filter[A304500(3*n), A064911(#)]` -/
def P1720189967343692915.Spec : Prop :=
  ∀ n, P1720189967343692915.a n = A186525 (n + 1)

end A186525

/-! ## A186525.P9440293381515960110

`filter[A047278(3*n+1), A064911(#)]`
-/

namespace A186525.P9440293381515960110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047278 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A186525.P9440293381515960110

namespace A186525

/-- `filter[A047278(3*n+1), A064911(#)]` -/
def P9440293381515960110.Spec : Prop :=
  ∀ n, P9440293381515960110.a n = A186525 (n + 1)

end A186525

/-!
# A186526: Number T(n,k) of permutations on n elements with exactly k 3-cycles; triangle read by rows.

The programs for A186526, there is no canonical definition to state claims against.
-/

/-! ## A186526.P5329705336244956543

`and(A270059(n)!, A004526(A267052(n+4)))`
-/

namespace A186526.P5329705336244956543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A270059 n).toNat : ℤ) (A004526 (A267052 (n + 4)).toNat)

end

end A186526.P5329705336244956543

/-!
# A186527: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186527, there is no canonical definition to state claims against.
-/

/-! ## A186527.P6736415031144738439

`A186536(∑[4*n]+1)`
-/

namespace A186527.P6736415031144738439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186527.P6736415031144738439

/-!
# A186528: Number of (n+1)X2 0..2 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186528, there is no canonical definition to state claims against.
-/

/-! ## A186528.P15555816073942478133

`A205894(∑[n]+1)`
-/

namespace A186528.P15555816073942478133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186528.P15555816073942478133

/-! ## A186528.P5199543141638792368

`record[A010054(n)*A205894(n+1)]`
-/

namespace A186528.P5199543141638792368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186528.P5199543141638792368

/-! ## A186528.P14563229667040306432

`record[root(A205894(n+1), A059268(n))]`
-/

namespace A186528.P14563229667040306432
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205894 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186528.P14563229667040306432

/-! ## A186528.P13343134261453356458

`A277165(n)+A205894(A000124(n))`
-/

namespace A186528.P13343134261453356458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A205894 (A000124 n).toNat

end

end A186528.P13343134261453356458

/-! ## A186528.P4114403405783266391

`lcm(A033999(n), A205894(A000124(n)))`
-/

namespace A186528.P4114403405783266391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A205894 (A000124 n).toNat)

end

end A186528.P4114403405783266391

/-!
# A186529: Number of (n+1)X3 0..2 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186529, there is no canonical definition to state claims against.
-/

/-! ## A186529.P10313670950142356895

`A186536(∑[n+1]+2)`
-/

namespace A186529.P10313670950142356895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186529.P10313670950142356895

/-! ## A186529.P14580831687617462011

`record[A010054(n)*A186536(n+2)]`
-/

namespace A186529.P14580831687617462011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186536 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186529.P14580831687617462011

/-! ## A186529.P10967778269365376519

`record[root(A186536(n+2), A059268(n))]`
-/

namespace A186529.P10967778269365376519
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186536 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186529.P10967778269365376519

/-! ## A186529.P17033994482032916877

`A186536(A000096(n)+3)+A161035(n+1)`
-/

namespace A186529.P17033994482032916877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A000096 n + 3).toNat + A161035 (n + 1)

end

end A186529.P17033994482032916877

/-! ## A186529.P1087172699672873252

`A186536(A000096(n)+3)+A161061(n+1)`
-/

namespace A186529.P1087172699672873252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A000096 n + 3).toNat + A161061 (n + 1)

end

end A186529.P1087172699672873252

/-!
# A186530: Number of (n+1)X4 0..2 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186530, there is no canonical definition to state claims against.
-/

/-! ## A186530.P7892948320912666147

`A186536(∑[n+2]+4)`
-/

namespace A186530.P7892948320912666147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186530.P7892948320912666147

/-! ## A186530.P9224174478691524139

`A065648(n)*A186536(A141214(n)-A023445(n))`
-/

namespace A186530.P9224174478691524139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A186536 (A141214 n - A023445 n).toNat

end

end A186530.P9224174478691524139

/-! ## A186530.P17927110171517291113

`A186536(A141214(n)-A023445(n))%A186531(n+1)`
-/

namespace A186530.P17927110171517291113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186536 (A141214 n - A023445 n).toNat) (A186531 (n + 1))

end

end A186530.P17927110171517291113

/-! ## A186530.P6725207400571380074

`A186536(A141214(n)-A023445(n))+n*A000038(n)`
-/

namespace A186530.P6725207400571380074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A141214 n - A023445 n).toNat + (n : ℤ) * A000038 n

end

end A186530.P6725207400571380074

/-! ## A186530.P15671069251617908842

`A186536(A141214(n)-A023445(n))+n*A112316(n)`
-/

namespace A186530.P15671069251617908842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A141214 n - A023445 n).toNat + (n : ℤ) * A112316 n

end

end A186530.P15671069251617908842

/-!
# A186531: Number of (n+1)X5 0..2 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186531, there is no canonical definition to state claims against.
-/

/-! ## A186531.P15443055747374235561

`A186536(A141214(n)+7)`
-/

namespace A186531.P15443055747374235561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A141214 n + 7).toNat

end

end A186531.P15443055747374235561

/-! ## A186531.P15366840781656544279

`A186536(A052905(n)+9)`
-/

namespace A186531.P15366840781656544279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A052905 n + 9).toNat

end

end A186531.P15366840781656544279

/-! ## A186531.P18004875761305252259

`A186536(A055999(n)+10)`
-/

namespace A186531.P18004875761305252259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A055999 n + 10).toNat

end

end A186531.P18004875761305252259

/-! ## A186531.P5192690655950722040

`A186536(eq[5, A066657(n)])`
-/

namespace A186531.P5192690655950722040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186531.P5192690655950722040

/-!
# A186532: Number of (n+1)X6 0..2 arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186532, there is no canonical definition to state claims against.
-/

/-! ## A186532.P7386312640214645685

`A186536(A374005(n+1))`
-/

namespace A186532.P7386312640214645685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (A374005 (n + 1)).toNat

end

end A186532.P7386312640214645685

/-! ## A186532.P16596070538638111835

`A186536(eq[7, A066657(n)])`
-/

namespace A186532.P16596070538638111835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186532.P16596070538638111835

/-!
# A186533: 

The programs for A186533, there is no canonical definition to state claims against.
-/

/-! ## A186533.P11011682225544934888

`A186536(eq[5, A193592(n)])`
-/

namespace A186533.P11011682225544934888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186533.P11011682225544934888

/-!
# A186534: 

The programs for A186534, there is no canonical definition to state claims against.
-/

/-! ## A186534.P15316282613135553313

`A186536(eq[4, A219347(n)])`
-/

namespace A186534.P15316282613135553313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186534.P15316282613135553313

/-!
# A186537: G.f.: Sum( x^k/(1-2*x+x^k), k=1..oo).

The programs for A186537, there is no canonical definition to state claims against.
-/

/-! ## A186537.P2906194834111869703

`∑[A007059(n)]`
-/

namespace A186537.P2906194834111869703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186537.P2906194834111869703

/-! ## A186537.P2033591137854028238

`A079500(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A186537.P2033591137854028238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A079500 (n - 1) + a (n - 1)

end

end A186537.P2033591137854028238

/-! ## A186537.P15365965081545254728

`A007059(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A186537.P15365965081545254728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007059 n + a (A023443 n).toNat

end

end A186537.P15365965081545254728

/-! ## A186537.P14344408506898908050

`∑[∑[A368279(n)]-A368279(n)]`
-/

namespace A186537.P14344408506898908050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A368279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186537.P14344408506898908050

/-! ## A186537.P3213954123854740089

`A007059(A000290(n)/n)+a(n-1)` with `a(0)=0`
-/

namespace A186537.P3213954123854740089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007059 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A186537.P3213954123854740089

/-! ## A186537.P18003679898018644561

`∑[A079500(n)]-A079500(n)`
-/

namespace A186537.P18003679898018644561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079500 n

end

end A186537.P18003679898018644561

/-!
# A186539: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-2+3j^2. Complement of A186540.

The programs for A186539, the canonical program `A186539.P4529541868566530237` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186539 has offset 1).

The definition of A186539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186539.P4529541868566530237

`n+1+floor(sqrt(1/3*(n+1)²))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186539

/-- `n+1+floor(sqrt(1/3*(n+1)²))` -/
def P4529541868566530237.Spec : Prop :=
  ∀ n, P4529541868566530237.a n = A186539 (n + 1)

theorem P4529541868566530237.correct : P4529541868566530237.Spec := by
  intro n
  simp only [A186539, Nat.add_sub_cancel]

end A186539

/-! ## A186539.P12101156852209407091

`∑[3-Δ[A195129(n)]]`
-/

namespace A186539.P12101156852209407091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186539.P12101156852209407091

namespace A186539

/-- `∑[3-Δ[A195129(n)]]` -/
def P12101156852209407091.Spec : Prop :=
  ∀ n, P12101156852209407091.a n = A186539 (n + 1)

end A186539

/-! ## A186539.P8376886236470081884

`ceil(sqrt(A087483(n))+n)`
-/

namespace A186539.P8376886236470081884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A087483 n : ℝ) + (n : ℝ)⌉

end

end A186539.P8376886236470081884

namespace A186539

/-- `ceil(sqrt(A087483(n))+n)` -/
def P8376886236470081884.Spec : Prop :=
  ∀ n, P8376886236470081884.a n = A186539 (n + 1)

end A186539

/-! ## A186539.P7987350826261143839

`∑[char[A022838(n+1)]+1]`
-/

namespace A186539.P7987350826261143839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186539.P7987350826261143839

namespace A186539

/-- `∑[char[A022838(n+1)]+1]` -/
def P7987350826261143839.Spec : Prop :=
  ∀ n, (P7987350826261143839.a n : ℤ) = A186539 (n + 1)

end A186539

/-! ## A186539.P14524713019272432869

`(A188085(n+1)+n+1)/2`
-/

namespace A186539.P14524713019272432869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188085 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A186539.P14524713019272432869

namespace A186539

/-- `(A188085(n+1)+n+1)/2` -/
def P14524713019272432869.Spec : Prop :=
  ∀ n, P14524713019272432869.a n = (A186539 (n + 1) : ℚ)

end A186539

/-! ## A186539.P17834791592660313770

`(A188073(n+1)+n-1)/2`
-/

namespace A186539.P17834791592660313770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188073 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A186539.P17834791592660313770

namespace A186539

/-- `(A188073(n+1)+n-1)/2` -/
def P17834791592660313770.Spec : Prop :=
  ∀ n, P17834791592660313770.a n = (A186539 (n + 1) : ℚ)

end A186539

/-! ## A186539.P13992627873951478644

`∑[A000020(Δ[A195129(n)])]`
-/

namespace A186539.P13992627873951478644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186539.P13992627873951478644

namespace A186539

/-- `∑[A000020(Δ[A195129(n)])]` -/
def P13992627873951478644.Spec : Prop :=
  ∀ n, P13992627873951478644.a n = A186539 (n + 1)

end A186539

/-!
# A186541: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-2+3j^2. Complement of A186542.

The programs for A186541, the canonical program `A186541.P17060601686119103478` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186541 has offset 1).

The definition of A186541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186541.P17060601686119103478

`n+1+floor(sqrt(1/3*(n+1)²+5/6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186541

/-- `n+1+floor(sqrt(1/3*(n+1)²+5/6))` -/
def P17060601686119103478.Spec : Prop :=
  ∀ n, P17060601686119103478.a n = A186541 (n + 1)

theorem P17060601686119103478.correct : P17060601686119103478.Spec := by
  intro n
  simp only [A186541, Nat.add_sub_cancel]

end A186541

/-! ## A186541.P4714865871002430261

`A172471(A003512(∑[A130823(n+1)]))`
-/

namespace A186541.P4714865871002430261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A003512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A186541.P4714865871002430261

namespace A186541

/-- `A172471(A003512(∑[A130823(n+1)]))` -/
def P4714865871002430261.Spec : Prop :=
  ∀ n, P4714865871002430261.a n = A186541 (n + 1)

end A186541

/-!
# A186542: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-2+3j^2. Complement of A186541.

The programs for A186542, the canonical program `A186542.P265499563007818074` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186542 has offset 1).

The definition of A186542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186542.P265499563007818074

`n+1+floor(sqrt(3*(n+1)²-5/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186542

/-- `n+1+floor(sqrt(3*(n+1)²-5/2))` -/
def P265499563007818074.Spec : Prop :=
  ∀ n, P265499563007818074.a n = A186542 (n + 1)

theorem P265499563007818074.correct : P265499563007818074.Spec := by
  intro n
  simp only [A186542, Nat.add_sub_cancel]

end A186542

/-! ## A186542.P10884192642504864798

`floor(sqrt(A067725(n))+1+n)`
-/

namespace A186542.P10884192642504864798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A067725 n : ℝ) + 1 + (n : ℝ)⌋

end

end A186542.P10884192642504864798

namespace A186542

/-- `floor(sqrt(A067725(n))+1+n)` -/
def P10884192642504864798.Spec : Prop :=
  ∀ n, P10884192642504864798.a n = A186542 (n + 1)

end A186542

/-!
# A186543: Complement of A179185.

The programs for A186543, there is no canonical definition to state claims against.
-/

/-! ## A186543.P16507556764607845617

`A003152(A179185(n+1)+1)+n-A179185(n+1)`
-/

namespace A186543.P16507556764607845617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A179185 (n + 1) + 1).toNat + ((n : ℤ) - A179185 (n + 1))

end

end A186543.P16507556764607845617

/-! ## A186543.P4416088307989298319

`eq[char[A179185(n+1)], A000007(n)]`
-/

namespace A186543.P4416088307989298319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186543.P4416088307989298319

/-! ## A186543.P2781491833886426524

`eq[char[A179185(n+1)], A000038(n)]`
-/

namespace A186543.P2781491833886426524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186543.P2781491833886426524

/-! ## A186543.P15935140251851974146

`eq[char[A179185(n+1)], A151933(n)]`
-/

namespace A186543.P15935140251851974146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186543.P15935140251851974146

/-! ## A186543.P15204918920331014981

`A187346(n+1)-A185238(A003415(n+4))`
-/

namespace A186543.P15204918920331014981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187346 (n + 1) - A185238 (A003415 (n + 4)).toNat

end

end A186543.P15204918920331014981

/-!
# A186544: a(n) = floor((Pi-2)*n/(Pi-3)); complement of A187320.

The programs for A186544, the canonical program `A186544.P12373539751613071509` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186544 has offset 1).

The definition of A186544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((π-2)*(n+1)/(π-3))` (program `A186544.P6034248342519698479`, by `A186544.P6034248342519698479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186544.P12373539751613071509

`floor((π-2)/(π-3)*(n+1))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186544

/-- `floor((π-2)/(π-3)*(n+1))` -/
def P12373539751613071509.Spec : Prop :=
  ∀ n, P12373539751613071509.a n = A186544 (n + 1)

theorem P12373539751613071509.correct : P12373539751613071509.Spec := by
  intro n
  simp only [A186544, Nat.add_sub_cancel]

end A186544

/-! ## A186544.P6034248342519698479

`floor((π-2)*(n+1)/(π-3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186544.P6034248342519698479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi - 2) * ((n + 1 : ℝ) / (Real.pi - 3))⌋

end

end A186544.P6034248342519698479

namespace A186544

/-- `floor((π-2)*(n+1)/(π-3))` -/
def P6034248342519698479.Spec : Prop :=
  ∀ n, P6034248342519698479.a n = A186544 (n + 1)

theorem P6034248342519698479.correct : P6034248342519698479.Spec := by
  intro n
  simp only [A186544, Nat.add_sub_cancel, A186544.P6034248342519698479.a, A186544.P12373539751613071509.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A186544

/-! ## A186544.P9828818999978166581

`A168273(A168273(2*(n+1)))+A002265(A002265(n+1))`
-/

namespace A186544.P9828818999978166581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A168273 (2 * (n + 1))).toNat + A002265 (A002265 (n + 1)).toNat

end

end A186544.P9828818999978166581

namespace A186544

/-- `A168273(A168273(2*(n+1)))+A002265(A002265(n+1))` -/
def P9828818999978166581.Spec : Prop :=
  ∀ n, P9828818999978166581.a n = A186544 (n + 1)

end A186544

/-! ## A186544.P8370518893875127893

`A004526(A158057(n+1))+A002265(A002265(n+1))`
-/

namespace A186544.P8370518893875127893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A158057 (n + 1)).toNat + A002265 (A002265 (n + 1)).toNat

end

end A186544.P8370518893875127893

namespace A186544

/-- `A004526(A158057(n+1))+A002265(A002265(n+1))` -/
def P8370518893875127893.Spec : Prop :=
  ∀ n, P8370518893875127893.a n = A186544 (n + 1)

end A186544

/-! ## A186544.P7116847756331306125

`∑[A184319(A008835(n+1))+7]`
-/

namespace A186544.P7116847756331306125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184319 (A008835 (n + 1)).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186544.P7116847756331306125

namespace A186544

/-- `∑[A184319(A008835(n+1))+7]` -/
def P7116847756331306125.Spec : Prop :=
  ∀ n, P7116847756331306125.a n = A186544 (n + 1)

end A186544

/-! ## A186544.P1576036613574391894

`∑[A037805(A318454(n+1))+8]`
-/

namespace A186544.P1576036613574391894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A318454 (n + 1)).toNat + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186544.P1576036613574391894

namespace A186544

/-- `∑[A037805(A318454(n+1))+8]` -/
def P1576036613574391894.Spec : Prop :=
  ∀ n, P1576036613574391894.a n = A186544 (n + 1)

end A186544

/-! ## A186544.P8021659312340180741

`∑[A047813(A237850(val(n+1, 4)!))]`
-/

namespace A186544.P8021659312340180741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A237850 (Nat.factorial (SequenceMachineLib.valuation (n + 1) 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186544.P8021659312340180741

namespace A186544

/-- `∑[A047813(A237850(val(n+1, 4)!))]` -/
def P8021659312340180741.Spec : Prop :=
  ∀ n, P8021659312340180741.a n = A186544 (n + 1)

end A186544

/-! ## A186544.P16349421148081491397

`∑[A173667(A006519(n+1))+8]`
-/

namespace A186544.P16349421148081491397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173667 (A006519 (n + 1)).toNat + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186544.P16349421148081491397

namespace A186544

/-- `∑[A173667(A006519(n+1))+8]` -/
def P16349421148081491397.Spec : Prop :=
  ∀ n, P16349421148081491397.a n = A186544 (n + 1)

end A186544

/-! ## A186544.P14472339053505214219

`∑[A136377(A333844(n+1)!)]`
-/

namespace A186544.P14472339053505214219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136377 (Nat.factorial (A333844 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186544.P14472339053505214219

namespace A186544

/-- `∑[A136377(A333844(n+1)!)]` -/
def P14472339053505214219.Spec : Prop :=
  ∀ n, P14472339053505214219.a n = A186544 (n + 1)

end A186544

/-!
# A186546: Floor-Sqrt transform of Catalan numbers (A000108).

The programs for A186546, the canonical program `A186546.P4788402888265503125` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186546 has offset 0).

The definition of A186546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186546.P4788402888265503125

`floor(sqrt(A000108(n)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186546

/-- `floor(sqrt(A000108(n)))` -/
def P4788402888265503125.Spec : Prop :=
  ∀ n, P4788402888265503125.a n = A186546 n

theorem P4788402888265503125.correct : P4788402888265503125.Spec := by
  intro n
  simp only [A186546]

end A186546

/-! ## A186546.P7652842596573931046

`floor(sqrt(A141351(n)))`
-/

namespace A186546.P7652842596573931046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A141351 n)

end

end A186546.P7652842596573931046

namespace A186546

/-- `floor(sqrt(A141351(n)))` -/
def P7652842596573931046.Spec : Prop :=
  ∀ n, P7652842596573931046.a n = A186546 n

end A186546

/-! ## A186546.P9065528147021464544

`floor(sqrt(abs(A168491(n))))`
-/

namespace A186546.P9065528147021464544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A168491 n|

end

end A186546.P9065528147021464544

namespace A186546

/-- `floor(sqrt(abs(A168491(n))))` -/
def P9065528147021464544.Spec : Prop :=
  ∀ n, P9065528147021464544.a n = A186546 n

end A186546

/-! ## A186546.P557680033460665909

`floor(sqrt(A089848(n+1)))`
-/

namespace A186546.P557680033460665909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A089848 (n + 1))

end

end A186546.P557680033460665909

namespace A186546

/-- `floor(sqrt(A089848(n+1)))` -/
def P557680033460665909.Spec : Prop :=
  ∀ n, P557680033460665909.a n = A186546 n

end A186546

/-! ## A186546.P11249296472727401365

`floor(sqrt(A120588(n+1)))`
-/

namespace A186546.P11249296472727401365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120588 (n + 1))

end

end A186546.P11249296472727401365

namespace A186546

/-- `floor(sqrt(A120588(n+1)))` -/
def P11249296472727401365.Spec : Prop :=
  ∀ n, P11249296472727401365.a n = A186546 n

end A186546

/-! ## A186546.P9865329513140894833

`floor(sqrt(A289653(n+1)))`
-/

namespace A186546.P9865329513140894833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A289653 (n + 1))

end

end A186546.P9865329513140894833

namespace A186546

/-- `floor(sqrt(A289653(n+1)))` -/
def P9865329513140894833.Spec : Prop :=
  ∀ n, P9865329513140894833.a n = A186546 n

end A186546

/-! ## A186546.P8148766109697846881

`floor(sqrt(A120304(n)+2))`
-/

namespace A186546.P8148766109697846881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120304 n + 2)

end

end A186546.P8148766109697846881

namespace A186546

/-- `floor(sqrt(A120304(n)+2))` -/
def P8148766109697846881.Spec : Prop :=
  ∀ n, P8148766109697846881.a n = A186546 n

end A186546

/-! ## A186546.P8460041030646154382

`floor(sqrt(A246604(n)+2))`
-/

namespace A186546.P8460041030646154382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A246604 n + 2)

end

end A186546.P8460041030646154382

namespace A186546

/-- `floor(sqrt(A246604(n)+2))` -/
def P8460041030646154382.Spec : Prop :=
  ∀ n, P8460041030646154382.a n = A186546 n

end A186546

/-! ## A186546.P6040164529844842618

`floor(sqrt(A028303(2*n)))`
-/

namespace A186546.P6040164529844842618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028303 (2 * n))

end

end A186546.P6040164529844842618

namespace A186546

/-- `floor(sqrt(A028303(2*n)))` -/
def P6040164529844842618.Spec : Prop :=
  ∀ n, P6040164529844842618.a n = A186546 n

end A186546

/-! ## A186546.P17476679527007126117

`floor(sqrt(A028304(2*n)))`
-/

namespace A186546.P17476679527007126117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028304 (2 * n))

end

end A186546.P17476679527007126117

namespace A186546

/-- `floor(sqrt(A028304(2*n)))` -/
def P17476679527007126117.Spec : Prop :=
  ∀ n, P17476679527007126117.a n = A186546 n

end A186546

/-! ## A186546.P7768753409149357963

`floor(sqrt(A126120(2*n)))`
-/

namespace A186546.P7768753409149357963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126120 (2 * n))

end

end A186546.P7768753409149357963

namespace A186546

/-- `floor(sqrt(A126120(2*n)))` -/
def P7768753409149357963.Spec : Prop :=
  ∀ n, P7768753409149357963.a n = A186546 n

end A186546

/-! ## A186546.P13656349362793371453

`floor(sqrt(A126324(2*n)))`
-/

namespace A186546.P13656349362793371453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126324 (2 * n))

end

end A186546.P13656349362793371453

namespace A186546

/-- `floor(sqrt(A126324(2*n)))` -/
def P13656349362793371453.Spec : Prop :=
  ∀ n, P13656349362793371453.a n = A186546 n

end A186546

/-! ## A186546.P10491722914172488814

`floor(sqrt(A208355(2*n)))`
-/

namespace A186546.P10491722914172488814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A208355 (2 * n))

end

end A186546.P10491722914172488814

namespace A186546

/-- `floor(sqrt(A208355(2*n)))` -/
def P10491722914172488814.Spec : Prop :=
  ∀ n, P10491722914172488814.a n = A186546 n

end A186546

/-! ## A186546.P4290305670071929005

`floor(sqrt(A329696(2*n)))`
-/

namespace A186546.P4290305670071929005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A329696 (2 * n))

end

end A186546.P4290305670071929005

namespace A186546

/-- `floor(sqrt(A329696(2*n)))` -/
def P4290305670071929005.Spec : Prop :=
  ∀ n, P4290305670071929005.a n = A186546 n

end A186546

/-! ## A186546.P8320059861458152470

`floor(sqrt(A089408(2*n+1)))`
-/

namespace A186546.P8320059861458152470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A089408 (2 * n + 1))

end

end A186546.P8320059861458152470

namespace A186546

/-- `floor(sqrt(A089408(2*n+1)))` -/
def P8320059861458152470.Spec : Prop :=
  ∀ n, P8320059861458152470.a n = A186546 n

end A186546

/-! ## A186546.P3839512657459101098

`floor(sqrt(A097331(2*n+1)))`
-/

namespace A186546.P3839512657459101098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A097331 (2 * n + 1))

end

end A186546.P3839512657459101098

namespace A186546

/-- `floor(sqrt(A097331(2*n+1)))` -/
def P3839512657459101098.Spec : Prop :=
  ∀ n, P3839512657459101098.a n = A186546 n

end A186546

/-! ## A186546.P3305210032918867216

`floor(sqrt(abs(A182492(2*(n+1)+2*n+1))))`
-/

namespace A186546.P3305210032918867216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A182492 (2 * (n + 1) + (2 * n + 1))|

end

end A186546.P3305210032918867216

namespace A186546

/-- `floor(sqrt(abs(A182492(2*(n+1)+2*n+1))))` -/
def P3305210032918867216.Spec : Prop :=
  ∀ n, P3305210032918867216.a n = A186546 n

end A186546

/-! ## A186546.P5141730691515928877

`floor(sqrt(A263986(n)+A000045(n)))`
-/

namespace A186546.P5141730691515928877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A263986 n + A000045 n)

end

end A186546.P5141730691515928877

namespace A186546

/-- `floor(sqrt(A263986(n)+A000045(n)))` -/
def P5141730691515928877.Spec : Prop :=
  ∀ n, P5141730691515928877.a n = A186546 n

end A186546

/-! ## A186546.P9219268612072332082

`floor(sqrt(A263986(n)+A212804(n+1)))`
-/

namespace A186546.P9219268612072332082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A263986 n + A212804 (n + 1))

end

end A186546.P9219268612072332082

namespace A186546

/-- `floor(sqrt(A263986(n)+A212804(n+1)))` -/
def P9219268612072332082.Spec : Prop :=
  ∀ n, P9219268612072332082.a n = A186546 n

end A186546

/-! ## A186546.P14813626613060899759

`ceil(sqrt(A286987(n+1)+A000108(n)))-1`
-/

namespace A186546.P14813626613060899759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A286987 (n + 1) + A000108 n : ℝ)⌉ - 1

end

end A186546.P14813626613060899759

namespace A186546

/-- `ceil(sqrt(A286987(n+1)+A000108(n)))-1` -/
def P14813626613060899759.Spec : Prop :=
  ∀ n, P14813626613060899759.a n = A186546 n

end A186546

/-!
# A186547: 1/8192 the number of (n+2)X3 0..3 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186547, there is no canonical definition to state claims against.
-/

/-! ## A186547.P8886304078436783997

`A186553(∑[n]+1)`
-/

namespace A186547.P8886304078436783997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186547.P8886304078436783997

/-! ## A186547.P7494656087150100743

`lcm(2, A186553(A000124(n)))`
-/

namespace A186547.P7494656087150100743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186553 (A000124 n).toNat)

end

end A186547.P7494656087150100743

/-! ## A186547.P1255850163791701963

`record[gcd(A002262(n), A186553(n+1))]`
-/

namespace A186547.P1255850163791701963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186547.P1255850163791701963

/-! ## A186547.P3745230349407758780

`A186553(A000124(n))%A332156(n)`
-/

namespace A186547.P3745230349407758780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186553 (A000124 n).toNat) (A332156 n)

end

end A186547.P3745230349407758780

/-! ## A186547.P13547547022302714556

`char[A000120(n)]*A186553(A000124(n))`
-/

namespace A186547.P13547547022302714556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186553 (A000124 n).toNat

end

end A186547.P13547547022302714556

/-!
# A186548: 1/8192 the number of (n+2)X4 0..3 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186548, there is no canonical definition to state claims against.
-/

/-! ## A186548.P17524879966162702911

`A186553(∑[n+1]+2)`
-/

namespace A186548.P17524879966162702911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186548.P17524879966162702911

/-! ## A186548.P6403202978591010959

`record[gcd(A002262(n), A186553(n+2))]`
-/

namespace A186548.P6403202978591010959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186553 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186548.P6403202978591010959

/-! ## A186548.P7374867054385344161

`A186553(A133263(n+1))+A185284(n)`
-/

namespace A186548.P7374867054385344161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A133263 (n + 1)).toNat + A185284 n

end

end A186548.P7374867054385344161

/-! ## A186548.P10932396119996288942

`A186553(A133263(n+1))+A098854(n+1)`
-/

namespace A186548.P10932396119996288942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A133263 (n + 1)).toNat + A098854 (n + 1)

end

end A186548.P10932396119996288942

/-!
# A186549: 1/8192 the number of (n+2)X5 0..3 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186549, there is no canonical definition to state claims against.
-/

/-! ## A186549.P14257958667875401446

`A186553(A167614(n+1))`
-/

namespace A186549.P14257958667875401446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A167614 (n + 1)).toNat

end

end A186549.P14257958667875401446

/-! ## A186549.P1092891259023922348

`A186553(A034856(n+1)+5)`
-/

namespace A186549.P1092891259023922348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A034856 (n + 1) + 5).toNat

end

end A186549.P1092891259023922348

/-! ## A186549.P693535279990215638

`A186553(eq[4, A131818(n+1)])`
-/

namespace A186549.P693535279990215638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186549.P693535279990215638

/-! ## A186549.P248351769709536380

`A186553(∑[n+3]+1)`
-/

namespace A186549.P248351769709536380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186549.P248351769709536380

/-!
# A186550: 1/8192 the number of (n+2)X6 0..3 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186550, there is no canonical definition to state claims against.
-/

/-! ## A186550.P14979010767910505090

`A186553(C(n+5, 2)-n)`
-/

namespace A186550.P14979010767910505090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (Nat.choose (n + 5) 2 - n)

end

end A186550.P14979010767910505090

/-! ## A186550.P14602205252720770285

`A186553(A052905(n)+9)`
-/

namespace A186550.P14602205252720770285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A052905 n + 9).toNat

end

end A186550.P14602205252720770285

/-! ## A186550.P1712003864483709394

`A186553(eq[5, A066657(n)])`
-/

namespace A186550.P1712003864483709394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186550.P1712003864483709394

/-! ## A186550.P5868728611115292371

`A186553(A167614(n+2)+1)`
-/

namespace A186550.P5868728611115292371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A167614 (n + 2) + 1).toNat

end

end A186550.P5868728611115292371

/-!
# A186551: 

The programs for A186551, there is no canonical definition to state claims against.
-/

/-! ## A186551.P6686953436897457370

`A186553(A167499(n+3))`
-/

namespace A186551.P6686953436897457370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (A167499 (n + 3)).toNat

end

end A186551.P6686953436897457370

/-!
# A186552: 

The programs for A186552, there is no canonical definition to state claims against.
-/

/-! ## A186552.P6126582106054358871

`A186553(eq[3, A219347(n)])`
-/

namespace A186552.P6126582106054358871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186552.P6126582106054358871

/-!
# A186554: Number of (n+1)X2 0..3 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186554, there is no canonical definition to state claims against.
-/

/-! ## A186554.P1718637212155816583

`A186558(∑[n]+1)`
-/

namespace A186554.P1718637212155816583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186554.P1718637212155816583

/-! ## A186554.P68275291355306391

`record[A103451(n)*A186558(n+1)]`
-/

namespace A186554.P68275291355306391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A186558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186554.P68275291355306391

/-! ## A186554.P15740127738283662117

`record[root(A186558(n+1), A193738(n))]`
-/

namespace A186554.P15740127738283662117
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186558 (n + 1) : ℝ) ^ (1 / (A193738 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186554.P15740127738283662117

/-! ## A186554.P233638086611083927

`Δ[A005555(n)]*A186558(A000124(n))`
-/

namespace A186554.P233638086611083927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A186558 (A000124 n).toNat

end

end A186554.P233638086611083927

/-! ## A186554.P2218585053090225652

`A007318(A003056(n))*A186558(A000124(n))`
-/

namespace A186554.P2218585053090225652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003056 n).toNat * A186558 (A000124 n).toNat

end

end A186554.P2218585053090225652

/-!
# A186555: Number of (n+1)X3 0..3 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186555, there is no canonical definition to state claims against.
-/

/-! ## A186555.P16664103396569352305

`A186558(∑[n+1]+2)`
-/

namespace A186555.P16664103396569352305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186555.P16664103396569352305

/-! ## A186555.P1063978000168345431

`A317844(n+1)+A186558(A014132(C(n+1, 2)+1)+1)`
-/

namespace A186555.P1063978000168345431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317844 (n + 1) + A186558 (A014132 (Nat.choose (n + 1) 2 + 1) + 1).toNat

end

end A186555.P1063978000168345431

/-! ## A186555.P7229672147120696990

`A186558(A014132(C(n+1, 2)+1)+1)*A375706(2*(n+2))`
-/

namespace A186555.P7229672147120696990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (A014132 (Nat.choose (n + 1) 2 + 1) + 1).toNat * A375706 (2 * (n + 2))

end

end A186555.P7229672147120696990

/-!
# A186556: Number of (n+1)X4 0..3 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186556, there is no canonical definition to state claims against.
-/

/-! ## A186556.P5331772617995231620

`A186558(A000217(n+2)+3)`
-/

namespace A186556.P5331772617995231620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (A000217 (n + 2) + 3).toNat

end

end A186556.P5331772617995231620

/-! ## A186556.P6208239495961903348

`A186558(eq[4, A131818(n+1)])`
-/

namespace A186556.P6208239495961903348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186556.P6208239495961903348

/-!
# A186557: 

The programs for A186557, there is no canonical definition to state claims against.
-/

/-! ## A186557.P2251728991206240500

`A186558(C(n+5, 2)-n)`
-/

namespace A186557.P2251728991206240500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (Nat.choose (n + 5) 2 - n)

end

end A186557.P2251728991206240500

/-! ## A186557.P5682599019509591351

`A186558(eq[5, A066657(n)])`
-/

namespace A186557.P5682599019509591351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186557.P5682599019509591351

/-!
# A186559: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186559, there is no canonical definition to state claims against.
-/

/-! ## A186559.P14407078531986585750

`A186568(∑[4*n]+1)`
-/

namespace A186559.P14407078531986585750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186559.P14407078531986585750

/-! ## A186559.P148823585719997885

`or(1, A186568(or(1, ∑[4*n])))`
-/

namespace A186559.P148823585719997885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186568 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A186559.P148823585719997885

/-! ## A186559.P15439020947769239789

`or(1, A186568((Δ[n²]²+1)/2))`
-/

namespace A186559.P15439020947769239789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186568 (SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1 : ℚ) / 2)).toNat)

end

end A186559.P15439020947769239789

/-! ## A186559.P9317169927142370066

`lcm(1-and(2, n), A186568(A001844(n)))`
-/

namespace A186559.P9317169927142370066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A186568 (A001844 n).toNat)

end

end A186559.P9317169927142370066

/-! ## A186559.P9796127005604742945

`A186568(A001844(n))+A011741(n)`
-/

namespace A186559.P9796127005604742945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A001844 n).toNat + A011741 n

end

end A186559.P9796127005604742945

/-!
# A186560: Number of (n+2)X3 0..2 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186560, there is no canonical definition to state claims against.
-/

/-! ## A186560.P15236128324163373221

`A186568(∑[n]+1)`
-/

namespace A186560.P15236128324163373221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186560.P15236128324163373221

/-! ## A186560.P6349799621937138651

`or(char[1], A186568(A000124(n)))`
-/

namespace A186560.P6349799621937138651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186568 (A000124 n).toNat)

end

end A186560.P6349799621937138651

/-! ## A186560.P11977437440362241490

`A007318(∑[n])*A186568(A000124(n))`
-/

namespace A186560.P11977437440362241490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186568 (A000124 n).toNat

end

end A186560.P11977437440362241490

/-! ## A186560.P4983776014364103506

`char[A053392(n)]*A186568(A000124(n))`
-/

namespace A186560.P4983776014364103506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186568 (A000124 n).toNat

end

end A186560.P4983776014364103506

/-! ## A186560.P769549343713061230

`char[A110658(n)]*A186568(A000124(n))`
-/

namespace A186560.P769549343713061230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186568 (A000124 n).toNat

end

end A186560.P769549343713061230

/-! ## A186560.P9773104766099064948

`A186568(A000124(n))%A023051(n+1)`
-/

namespace A186560.P9773104766099064948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186568 (A000124 n).toNat) (A023051 (n + 1))

end

end A186560.P9773104766099064948

/-! ## A186560.P1990246547081933637

`A186568(A000124(n))/A007318(C(2, n))`
-/

namespace A186560.P1990246547081933637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186568 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A186560.P1990246547081933637

/-! ## A186560.P16108446183369351537

`A186568(A000124(n))+char[A186568(n+1)]`
-/

namespace A186560.P16108446183369351537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186560.P16108446183369351537

/-! ## A186560.P12895526991651479133

`A014963(6*(n+1))*A186568(A000124(n))`
-/

namespace A186560.P12895526991651479133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A186568 (A000124 n).toNat

end

end A186560.P12895526991651479133

/-! ## A186560.P5311611332531551237

`A186568(A000124(n))+A008683(12*n+8)`
-/

namespace A186560.P5311611332531551237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A000124 n).toNat + A008683 (12 * n + 8)

end

end A186560.P5311611332531551237

/-!
# A186561: Number of (n+2) X 4 0..2 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186561, there is no canonical definition to state claims against.
-/

/-! ## A186561.P16027123847228633501

`A186568(∑[n+1]+2)`
-/

namespace A186561.P16027123847228633501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186561.P16027123847228633501

/-! ## A186561.P17924854716799238943

`or(1, A186568(A152948(n+3)))`
-/

namespace A186561.P17924854716799238943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186568 (A152948 (n + 3)).toNat)

end

end A186561.P17924854716799238943

/-! ## A186561.P16030667420569805912

`char[A057163(n)]*A186568(A152948(n+3))`
-/

namespace A186561.P16030667420569805912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186568 (A152948 (n + 3)).toNat

end

end A186561.P16030667420569805912

/-! ## A186561.P14653741125551416778

`A007318(C(2, n))*A186568(A152948(n+3))`
-/

namespace A186561.P14653741125551416778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186568 (A152948 (n + 3)).toNat

end

end A186561.P14653741125551416778

/-! ## A186561.P10065263143780205839

`ceil(1/A000041(n))*A186568(A152948(n+3))`
-/

namespace A186561.P10065263143780205839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A186568 (A152948 (n + 3)).toNat

end

end A186561.P10065263143780205839

/-! ## A186561.P17619281846534853371

`(A007318(n)%2)!*A186568(A152948(n+3))`
-/

namespace A186561.P17619281846534853371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A186568 (A152948 (n + 3)).toNat

end

end A186561.P17619281846534853371

/-! ## A186561.P8005902245978691614

`A000010(C(2, n)!)*A186568(A152948(n+3))`
-/

namespace A186561.P8005902245978691614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A186568 (A152948 (n + 3)).toNat

end

end A186561.P8005902245978691614

/-! ## A186561.P7369926891926776002

`A000045(C(2, n))!*A186568(A152948(n+3))`
-/

namespace A186561.P7369926891926776002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 (Nat.choose 2 n)).toNat : ℤ) * A186568 (A152948 (n + 3)).toNat

end

end A186561.P7369926891926776002

/-! ## A186561.P16022392785505670819

`A014963(6*(n+1))*A186568(A152948(n+3))`
-/

namespace A186561.P16022392785505670819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A186568 (A152948 (n + 3)).toNat

end

end A186561.P16022392785505670819

/-! ## A186561.P15832039926815534301

`A000045(((-1)^n)²)*A186568(A152948(n+3))`
-/

namespace A186561.P15832039926815534301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A186568 (A152948 (n + 3)).toNat

end

end A186561.P15832039926815534301

/-!
# A186562: Number of (n+2) X 5 0..2 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186562, there is no canonical definition to state claims against.
-/

/-! ## A186562.P295865288780837875

`A186568(∑[n+2]+4)`
-/

namespace A186562.P295865288780837875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186562.P295865288780837875

/-! ## A186562.P1836225351059315692

`or(1, A186568(A167614(n+1)))`
-/

namespace A186562.P1836225351059315692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186568 (A167614 (n + 1)).toNat)

end

end A186562.P1836225351059315692

/-! ## A186562.P17013514874474168804

`or(1, A186568(A046691(n)+7))`
-/

namespace A186562.P17013514874474168804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186568 (A046691 n + 7).toNat)

end

end A186562.P17013514874474168804

/-! ## A186562.P2155844790194081225

`char[A060126(n)]*A186568(A046691(n)+7)`
-/

namespace A186562.P2155844790194081225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186568 (A046691 n + 7).toNat

end

end A186562.P2155844790194081225

/-! ## A186562.P610520818812638990

`A186568(A167614(n+1))+A000038(n+3)`
-/

namespace A186562.P610520818812638990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A167614 (n + 1)).toNat + A000038 (n + 3)

end

end A186562.P610520818812638990

/-! ## A186562.P14508406794322200262

`A007318(C(2, n))*A186568(A167614(n+1))`
-/

namespace A186562.P14508406794322200262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186568 (A167614 (n + 1)).toNat

end

end A186562.P14508406794322200262

/-! ## A186562.P13699998121867564558

`A007318(C(2, n))*A186568(A046691(n)+7)`
-/

namespace A186562.P13699998121867564558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186568 (A046691 n + 7).toNat

end

end A186562.P13699998121867564558

/-! ## A186562.P18443885461053041590

`A186568(A167614(n+1))+A000045(C(n, 64))`
-/

namespace A186562.P18443885461053041590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A167614 (n + 1)).toNat + A000045 (Nat.choose n 64)

end

end A186562.P18443885461053041590

/-! ## A186562.P17842469455545809224

`ceil(1/A007318(n))*A186568(A167614(n+1))`
-/

namespace A186562.P17842469455545809224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A186568 (A167614 (n + 1)).toNat

end

end A186562.P17842469455545809224

/-! ## A186562.P16580713396394432672

`A014963(6*(n+1))*A186568(A167614(n+1))`
-/

namespace A186562.P16580713396394432672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A186568 (A167614 (n + 1)).toNat

end

end A186562.P16580713396394432672

/-!
# A186563: Number of (n+2) X 6 0..2 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186563, there is no canonical definition to state claims against.
-/

/-! ## A186563.P12984023847575126749

`A186568(∑[n+3]+7)`
-/

namespace A186563.P12984023847575126749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186563.P12984023847575126749

/-! ## A186563.P6959599464272954937

`or(char[1], A186568(A167614(n+2)+1))`
-/

namespace A186563.P6959599464272954937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186568 (A167614 (n + 2) + 1).toNat)

end

end A186563.P6959599464272954937

/-! ## A186563.P17331601305332925628

`xor(1, xor(1, A186568(A034856(n+2)+6)))`
-/

namespace A186563.P17331601305332925628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A186568 (A034856 (n + 2) + 6).toNat))

end

end A186563.P17331601305332925628

/-! ## A186563.P15074172209663552262

`A186568(A167614(n+2)+1)+A000038(n+2)`
-/

namespace A186563.P15074172209663552262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A167614 (n + 2) + 1).toNat + A000038 (n + 2)

end

end A186563.P15074172209663552262

/-! ## A186563.P12369125970619056925

`A158388(n+1)*A186568(A167614(n+2)+1)`
-/

namespace A186563.P12369125970619056925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A186568 (A167614 (n + 2) + 1).toNat

end

end A186563.P12369125970619056925

/-! ## A186563.P3114945883325293427

`A007318(C(2, n))*A186568(A167614(n+2)+1)`
-/

namespace A186563.P3114945883325293427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186568 (A167614 (n + 2) + 1).toNat

end

end A186563.P3114945883325293427

/-! ## A186563.P11447760941989324286

`A186568(A167614(n+2)+1)/A007318(C(n, 2))`
-/

namespace A186563.P11447760941989324286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186568 (A167614 (n + 2) + 1).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A186563.P11447760941989324286

/-! ## A186563.P13305347014402202017

`A014963(10*(n+1))*A186568(A034856(n+2)+6)`
-/

namespace A186563.P13305347014402202017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A186568 (A034856 (n + 2) + 6).toNat

end

end A186563.P13305347014402202017

/-! ## A186563.P2485182850282917613

`A014963(C(n+4, 2))*A186568(A167614(n+2)+1)`
-/

namespace A186563.P2485182850282917613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 4) 2) * A186568 (A167614 (n + 2) + 1).toNat

end

end A186563.P2485182850282917613

/-! ## A186563.P2170854883490889084

`A007318(C(2, n+2))*A186568(A034856(n+2)+6)`
-/

namespace A186563.P2170854883490889084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A186568 (A034856 (n + 2) + 6).toNat

end

end A186563.P2170854883490889084

/-!
# A186564: Number of (n+2) X 7 0..2 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186564, there is no canonical definition to state claims against.
-/

/-! ## A186564.P10160905199104786203

`A186568(C(n+6, 2)-n)`
-/

namespace A186564.P10160905199104786203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (Nat.choose (n + 6) 2 - n)

end

end A186564.P10160905199104786203

/-! ## A186564.P11519634364750771334

`A186568(A374005(n+1))`
-/

namespace A186564.P11519634364750771334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A374005 (n + 1)).toNat

end

end A186564.P11519634364750771334

/-! ## A186564.P15052430489632299979

`A186568(A167499(n+3))`
-/

namespace A186564.P15052430489632299979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A167499 (n + 3)).toNat

end

end A186564.P15052430489632299979

/-! ## A186564.P1312184944528777327

`A186568(A155212(n)+13)`
-/

namespace A186564.P1312184944528777327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A155212 n + 13).toNat

end

end A186564.P1312184944528777327

/-! ## A186564.P8639529340152954027

`A186568(A056000(n)+15)`
-/

namespace A186564.P8639529340152954027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A056000 n + 15).toNat

end

end A186564.P8639529340152954027

/-!
# A186565: Number of (n+2) X 8 0..2 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186565, there is no canonical definition to state claims against.
-/

/-! ## A186565.P7963044209380802185

`A186568(∑[n+5]+16)`
-/

namespace A186565.P7963044209380802185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A186565.P7963044209380802185

/-! ## A186565.P15418771419616044576

`or(char[1], A186568(A000217(n+5)+6))`
-/

namespace A186565.P15418771419616044576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186568 (A000217 (n + 5) + 6).toNat)

end

end A186565.P15418771419616044576

/-! ## A186565.P11041270545378432151

`A186568(A166136(n+4))%A104799(n+1)`
-/

namespace A186565.P11041270545378432151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186568 (A166136 (n + 4)).toNat) (A104799 (n + 1))

end

end A186565.P11041270545378432151

/-! ## A186565.P9610043211330550844

`A110090(3*n+1)*A186568(A374007(n+1))`
-/

namespace A186565.P9610043211330550844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 (3 * n + 1) * A186568 (A374007 (n + 1)).toNat

end

end A186565.P9610043211330550844

/-! ## A186565.P1492562083924846316

`A007318(C(2, n))*A186568(A000217(n+5)+6)`
-/

namespace A186565.P1492562083924846316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186568 (A000217 (n + 5) + 6).toNat

end

end A186565.P1492562083924846316

/-!
# A186566: Number of (n+2)X9 0..2 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186566, there is no canonical definition to state claims against.
-/

/-! ## A186566.P10681554611786576996

`A186568(A374008(n+1))`
-/

namespace A186566.P10681554611786576996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A374008 (n + 1)).toNat

end

end A186566.P10681554611786576996

/-! ## A186566.P2500932717046409640

`A186568(A056119(n)+28)`
-/

namespace A186566.P2500932717046409640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A056119 n + 28).toNat

end

end A186566.P2500932717046409640

/-! ## A186566.P9587666254441679883

`A186568(eq[11, A066657(n)])`
-/

namespace A186566.P9587666254441679883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186566.P9587666254441679883

/-! ## A186566.P8289872250108971488

`A186568(A167614(n+5)+4)`
-/

namespace A186566.P8289872250108971488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A167614 (n + 5) + 4).toNat

end

end A186566.P8289872250108971488

/-! ## A186566.P12728713002194104817

`A186568(A000124(n+6)+6)`
-/

namespace A186566.P12728713002194104817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A000124 (n + 6) + 6).toNat

end

end A186566.P12728713002194104817

/-!
# A186567: Number of (n+2)X10 0..2 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186567, there is no canonical definition to state claims against.
-/

/-! ## A186567.P9383927372912259591

`A186568(A374009(n+1))`
-/

namespace A186567.P9383927372912259591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A374009 (n + 1)).toNat

end

end A186567.P9383927372912259591

/-! ## A186567.P15224546938560246045

`A186568(A000124(n+7)+7)`
-/

namespace A186567.P15224546938560246045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A000124 (n + 7) + 7).toNat

end

end A186567.P15224546938560246045

/-! ## A186567.P4421690412340414596

`A186568(A000217(n+7)+8)`
-/

namespace A186567.P4421690412340414596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (A000217 (n + 7) + 8).toNat

end

end A186567.P4421690412340414596

/-! ## A186567.P9205057573128798626

`A186568(eq[9, A131818(n+1)])`
-/

namespace A186567.P9205057573128798626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186567.P9205057573128798626

/-! ## A186567.P18248175297140156814

`A186568(Δ[A000292(n+7)]-n)`
-/

namespace A186567.P18248175297140156814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186568 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A186567.P18248175297140156814

/-!
# A186569: Number of (n+2) X (n+2) 0..5 arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A186569, there is no canonical definition to state claims against.
-/

/-! ## A186569.P581928531567791504

`A186570(∑[4*n]+1)`
-/

namespace A186569.P581928531567791504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186570 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186569.P581928531567791504

/-! ## A186569.P6338383770296301373

`lcm((-1)^n, A186570(A001844(n)))`
-/

namespace A186569.P6338383770296301373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A186570 (A001844 n).toNat)

end

end A186569.P6338383770296301373

/-! ## A186569.P4363302589771753788

`A186570(A001844(n))*A284562(n)`
-/

namespace A186569.P4363302589771753788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186570 (A001844 n).toNat * A284562 n

end

end A186569.P4363302589771753788

/-! ## A186569.P14407990185217667342

`A007318(∑[n])*A186570(A001844(n))`
-/

namespace A186569.P14407990185217667342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186570 (A001844 n).toNat

end

end A186569.P14407990185217667342

/-! ## A186569.P14640759099971202889

`A186570(A001844(n))+A131185(3*(n+1))`
-/

namespace A186569.P14640759099971202889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186570 (A001844 n).toNat + A131185 (3 * (n + 1))

end

end A186569.P14640759099971202889

/-!
# A186571: Number of (n+2)X(n+2) 0..6 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186571, there is no canonical definition to state claims against.
-/

/-! ## A186571.P15764624087922258745

`A186572(∑[4*n]+1)`
-/

namespace A186571.P15764624087922258745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186572 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186571.P15764624087922258745

/-! ## A186571.P5204240794870759775

`or(1, A186572(A001844(n)))`
-/

namespace A186571.P5204240794870759775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186572 (A001844 n).toNat)

end

end A186571.P5204240794870759775

/-! ## A186571.P10436691909011333844

`A186572(A001844(n))+A061858(n)`
-/

namespace A186571.P10436691909011333844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186572 (A001844 n).toNat + A061858 n

end

end A186571.P10436691909011333844

/-! ## A186571.P14559201521057588978

`A186572(A001844(n))*A238015(n)`
-/

namespace A186571.P14559201521057588978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186572 (A001844 n).toNat * A238015 n

end

end A186571.P14559201521057588978

/-! ## A186571.P3783595762256057883

`A007318(∑[n])*A186572(A001844(n))`
-/

namespace A186571.P3783595762256057883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186572 (A001844 n).toNat

end

end A186571.P3783595762256057883

/-!
# A186573: Number of (n+2)X(n+2) 0..7 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186573, there is no canonical definition to state claims against.
-/

/-! ## A186573.P5599122363502049159

`A186574(∑[4*n]+1)`
-/

namespace A186573.P5599122363502049159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186573.P5599122363502049159

/-! ## A186573.P1810912262430789398

`A186574(A001844(n))+char[10]`
-/

namespace A186573.P1810912262430789398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186574 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186573.P1810912262430789398

/-! ## A186573.P4297087053832730609

`A326634(n)+A186574(A001844(n))`
-/

namespace A186573.P4297087053832730609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326634 n + A186574 (A001844 n).toNat

end

end A186573.P4297087053832730609

/-! ## A186573.P4556513631200039123

`A326642(n)+A186574(A001844(n))`
-/

namespace A186573.P4556513631200039123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326642 n + A186574 (A001844 n).toNat

end

end A186573.P4556513631200039123

/-! ## A186573.P3600809878911501724

`A186574(A001844(n))*A329340(n)`
-/

namespace A186573.P3600809878911501724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186574 (A001844 n).toNat * A329340 n

end

end A186573.P3600809878911501724

/-!
# A186575: Expansion of (1 + 2*x + 6*x^2)/(1 - x - x^2 - 2*x^3) in powers of x.

The programs for A186575, the canonical program `A186575.P17962324891392911200` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186575 has offset 0).

The definition of A186575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+6x^2)/(1-x-x^2-2x^3))` (program `A186575.P17962324891392911200`, by `A186575.P17962324891392911200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186575.P17962324891392911200

`ogf((1+2x+6x^2)/(1-x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186575

/-- `ogf((1+2x+6x^2)/(1-x-x^2-2x^3))` -/
def P17962324891392911200.Spec : Prop :=
  ∀ n, P17962324891392911200.a n = A186575 n

theorem P17962324891392911200.correct : P17962324891392911200.Spec := by
  intro n
  simp only [A186575]

end A186575

/-! ## A186575.P13380780233263443366

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A186575.P13380780233263443366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A186575.P13380780233263443366

namespace A186575

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P13380780233263443366.Spec : Prop :=
  ∀ n, (P13380780233263443366.a n : ℤ) = A186575 n

end A186575

/-! ## A186575.P9620817724792092458

`2^(n+1)+A099837(n+1)`
-/

namespace A186575.P9620817724792092458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A099837 (n + 1)

end

end A186575.P9620817724792092458

namespace A186575

/-- `2^(n+1)+A099837(n+1)` -/
def P9620817724792092458.Spec : Prop :=
  ∀ n, P9620817724792092458.a n = A186575 n

end A186575

/-! ## A186575.P16345854821479450130

`2^(n+1)-A061347(n+1)`
-/

namespace A186575.P16345854821479450130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A061347 (n + 1)

end

end A186575.P16345854821479450130

namespace A186575

/-- `2^(n+1)-A061347(n+1)` -/
def P16345854821479450130.Spec : Prop :=
  ∀ n, P16345854821479450130.a n = A186575 n

end A186575

/-! ## A186575.P14046048893098415504

`2^(n+1)-A131713(n+2)`
-/

namespace A186575.P14046048893098415504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A131713 (n + 2)

end

end A186575.P14046048893098415504

namespace A186575

/-- `2^(n+1)-A131713(n+2)` -/
def P14046048893098415504.Spec : Prop :=
  ∀ n, P14046048893098415504.a n = A186575 n

end A186575

/-! ## A186575.P8682642392523929974

`A092297(n+1)+A078070(n)`
-/

namespace A186575.P8682642392523929974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092297 (n + 1) + A078070 n

end

end A186575.P8682642392523929974

namespace A186575

/-- `A092297(n+1)+A078070(n)` -/
def P8682642392523929974.Spec : Prop :=
  ∀ n, P8682642392523929974.a n = A186575 n

end A186575

/-! ## A186575.P3832396886273340091

`A341905(n+1)+A077947(n)`
-/

namespace A186575.P3832396886273340091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341905 (n + 1) + A077947 n

end

end A186575.P3832396886273340091

namespace A186575

/-- `A341905(n+1)+A077947(n)` -/
def P3832396886273340091.Spec : Prop :=
  ∀ n, P3832396886273340091.a n = A186575 n

end A186575

/-! ## A186575.P14929409817449743544

`A284353(n)+A178142(n+1)`
-/

namespace A186575.P14929409817449743544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 n + A178142 (n + 1)

end

end A186575.P14929409817449743544

namespace A186575

/-- `A284353(n)+A178142(n+1)` -/
def P14929409817449743544.Spec : Prop :=
  ∀ n, P14929409817449743544.a n = A186575 n

end A186575

/-! ## A186575.P363417442304916110

`A021337(n)+A000079(n+1)-1`
-/

namespace A186575.P363417442304916110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021337 n + (A000079 (n + 1) - 1)

end

end A186575.P363417442304916110

namespace A186575

/-- `A021337(n)+A000079(n+1)-1` -/
def P363417442304916110.Spec : Prop :=
  ∀ n, P363417442304916110.a n = A186575 n

end A186575

/-! ## A186575.P16766461438311616610

`A000079(n+1)-A057079(2*n)`
-/

namespace A186575.P16766461438311616610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A057079 (2 * n)

end

end A186575.P16766461438311616610

namespace A186575

/-- `A000079(n+1)-A057079(2*n)` -/
def P16766461438311616610.Spec : Prop :=
  ∀ n, P16766461438311616610.a n = A186575 n

end A186575

/-! ## A186575.P9451701025085598060

`A011782(n+2)-A057079(2*n)`
-/

namespace A186575.P9451701025085598060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A057079 (2 * n)

end

end A186575.P9451701025085598060

namespace A186575

/-- `A011782(n+2)-A057079(2*n)` -/
def P9451701025085598060.Spec : Prop :=
  ∀ n, P9451701025085598060.a n = A186575 n

end A186575

/-! ## A186575.P9835837039816439418

`A000051(n+1)-(A061347(n+1)+1)`
-/

namespace A186575.P9835837039816439418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A061347 (n + 1) + 1)

end

end A186575.P9835837039816439418

namespace A186575

/-- `A000051(n+1)-(A061347(n+1)+1)` -/
def P9835837039816439418.Spec : Prop :=
  ∀ n, P9835837039816439418.a n = A186575 n

end A186575

/-! ## A186575.P12280423419468871959

`A135694(2*n+1)+A000079(n+1)`
-/

namespace A186575.P12280423419468871959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 (2 * n + 1) + A000079 (n + 1)

end

end A186575.P12280423419468871959

namespace A186575

/-- `A135694(2*n+1)+A000079(n+1)` -/
def P12280423419468871959.Spec : Prop :=
  ∀ n, P12280423419468871959.a n = A186575 n

end A186575

/-! ## A186575.P5165357867399083967

`A122552(n+1)+2*A078010(n+1)`
-/

namespace A186575.P5165357867399083967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 (n + 1) + 2 * A078010 (n + 1)

end

end A186575.P5165357867399083967

namespace A186575

/-- `A122552(n+1)+2*A078010(n+1)` -/
def P5165357867399083967.Spec : Prop :=
  ∀ n, P5165357867399083967.a n = A186575 n

end A186575

/-! ## A186575.P6940146218834132456

`A000051(n+1)-(A057079(2*n)+1)`
-/

namespace A186575.P6940146218834132456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A057079 (2 * n) + 1)

end

end A186575.P6940146218834132456

namespace A186575

/-- `A000051(n+1)-(A057079(2*n)+1)` -/
def P6940146218834132456.Spec : Prop :=
  ∀ n, P6940146218834132456.a n = A186575 n

end A186575

/-! ## A186575.P13341490237987940166

`A000225(n+1)+1-A057079(2*n)`
-/

namespace A186575.P13341490237987940166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A057079 (2 * n))

end

end A186575.P13341490237987940166

namespace A186575

/-- `A000225(n+1)+1-A057079(2*n)` -/
def P13341490237987940166.Spec : Prop :=
  ∀ n, P13341490237987940166.a n = A186575 n

end A186575

/-! ## A186575.P15643052932040920869

`A057079(2*n+3)+A000079(n+1)`
-/

namespace A186575.P15643052932040920869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n + 3) + A000079 (n + 1)

end

end A186575.P15643052932040920869

namespace A186575

/-- `A057079(2*n+3)+A000079(n+1)` -/
def P15643052932040920869.Spec : Prop :=
  ∀ n, P15643052932040920869.a n = A186575 n

end A186575

/-! ## A186575.P16310551412858141086

`A057079(2*n+3)+A011782(n+2)`
-/

namespace A186575.P16310551412858141086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n + 3) + A011782 (n + 2)

end

end A186575.P16310551412858141086

namespace A186575

/-- `A057079(2*n+3)+A011782(n+2)` -/
def P16310551412858141086.Spec : Prop :=
  ∀ n, P16310551412858141086.a n = A186575 n

end A186575

/-! ## A186575.P1054034155981078605

`A078010(n)+A078010(n+1)*A122553(n)`
-/

namespace A186575.P1054034155981078605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n + A078010 (n + 1) * A122553 n

end

end A186575.P1054034155981078605

namespace A186575

/-- `A078010(n)+A078010(n+1)*A122553(n)` -/
def P1054034155981078605.Spec : Prop :=
  ∀ n, P1054034155981078605.a n = A186575 n

end A186575

/-! ## A186575.P16824229704808624459

`A049347(n+1)+A122552(n+1)+A077947(n+1)`
-/

namespace A186575.P16824229704808624459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A122552 (n + 1) + A077947 (n + 1))

end

end A186575.P16824229704808624459

namespace A186575

/-- `A049347(n+1)+A122552(n+1)+A077947(n+1)` -/
def P16824229704808624459.Spec : Prop :=
  ∀ n, P16824229704808624459.a n = A186575 n

end A186575

/-!
# A186576: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^[n*phi] where phi = (1+sqrt(5))/2.

The programs for A186576, there is no canonical definition to state claims against.
-/

/-! ## A186576.P4852330282880488808

`A195120(A148487(n+1))`
-/

namespace A186576.P4852330282880488808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A148487 (n + 1)).toNat

end

end A186576.P4852330282880488808

/-! ## A186576.P4074535583140702085

`A101402(A157418(n+1))-char[7]`
-/

namespace A186576.P4074535583140702085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A157418 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186576.P4074535583140702085

/-! ## A186576.P7726024189165389451

`A272485(n+1)-A044941(n!*∑[1/n!])`
-/

namespace A186576.P7726024189165389451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272485 (n + 1) - A044941 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A186576.P7726024189165389451

/-! ## A186576.P6766351795730038078

`A110655(A071356(n)+A027423(n))`
-/

namespace A186576.P6766351795730038078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A071356 n + A027423 n).toNat

end

end A186576.P6766351795730038078

/-!
# A186577: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^[n*phi^2] where phi = (1+sqrt(5))/2.

The programs for A186577, there is no canonical definition to state claims against.
-/

/-! ## A186577.P8246239459509961374

`A028310(abs(A141342(n+1)))`
-/

namespace A186577.P8246239459509961374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A141342 (n + 1)|.toNat

end

end A186577.P8246239459509961374

/-! ## A186577.P15125894513586679404

`or(A010059((n+1)!), A364473(n))`
-/

namespace A186577.P15125894513586679404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (Nat.factorial (n + 1))) (A364473 n)

end

end A186577.P15125894513586679404

/-! ## A186577.P17771374664417380025

`A109613(A097331(n)+A052896(n))`
-/

namespace A186577.P17771374664417380025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A097331 n + A052896 n).toNat

end

end A186577.P17771374664417380025

/-!
# A186578: Number of (n+2)X(n+2) 0..4 arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A186578, there is no canonical definition to state claims against.
-/

/-! ## A186578.P15506143144548674860

`A186579((n+1)²+n²)`
-/

namespace A186578.P15506143144548674860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186579 ((n + 1) ^ 2 + n ^ 2)

end

end A186578.P15506143144548674860

/-! ## A186578.P7563109890276519795

`or(1, A186579(A001844(n)))`
-/

namespace A186578.P7563109890276519795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186579 (A001844 n).toNat)

end

end A186578.P7563109890276519795

/-! ## A186578.P14165569735762467115

`A007318(∑[n])*A186579(A001844(n))`
-/

namespace A186578.P14165569735762467115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186579 (A001844 n).toNat

end

end A186578.P14165569735762467115

/-! ## A186578.P5861807610333865527

`A268384(2*n)+A186579(A001844(n))`
-/

namespace A186578.P5861807610333865527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268384 (2 * n) + A186579 (A001844 n).toNat

end

end A186578.P5861807610333865527

/-! ## A186578.P17684020200811735162

`A007318(C(2, n))²*A186579(A001844(n))`
-/

namespace A186578.P17684020200811735162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A186579 (A001844 n).toNat

end

end A186578.P17684020200811735162

/-!
# A186580: Number of (n+3)X(n+3) 0..2 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186580, there is no canonical definition to state claims against.
-/

/-! ## A186580.P7415363821221916963

`A186589(∑[4*n]+1)`
-/

namespace A186580.P7415363821221916963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186580.P7415363821221916963

/-! ## A186580.P16354106997346831319

`or(1, A186589(n²+(n+1)²))`
-/

namespace A186580.P16354106997346831319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186589 (n ^ 2 + (n + 1) ^ 2))

end

end A186580.P16354106997346831319

/-! ## A186580.P17650614902860288324

`A001511(2*n+1)*A186589(n²+(n+1)²)`
-/

namespace A186580.P17650614902860288324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A186589 (n ^ 2 + (n + 1) ^ 2)

end

end A186580.P17650614902860288324

/-! ## A186580.P992611117899153359

`A007318(∑[n])*A186589(A001844(n))`
-/

namespace A186580.P992611117899153359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186589 (A001844 n).toNat

end

end A186580.P992611117899153359

/-! ## A186580.P16937242335358249290

`A186589(A001844(n))/A007318(C(n, 2))²`
-/

namespace A186580.P16937242335358249290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186589 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n 2) ^ 2 : ℚ)

end

end A186580.P16937242335358249290

/-!
# A186581: Number of (n+3) X 4 0..2 arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A186581, there is no canonical definition to state claims against.
-/

/-! ## A186581.P7758778923927369325

`A186589(∑[n]+1)`
-/

namespace A186581.P7758778923927369325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186581.P7758778923927369325

/-! ## A186581.P7219584485410227400

`or(char[4], A186589(A000124(n)))`
-/

namespace A186581.P7219584485410227400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186589 (A000124 n).toNat)

end

end A186581.P7219584485410227400

/-! ## A186581.P1738033205907242110

`A007318(∑[n])*A186589(A000124(n))`
-/

namespace A186581.P1738033205907242110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186589 (A000124 n).toNat

end

end A186581.P1738033205907242110

/-! ## A186581.P12633028279699646869

`A186589(A000124(n))+A000007(n+2)`
-/

namespace A186581.P12633028279699646869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A000124 n).toNat + A000007 (n + 2)

end

end A186581.P12633028279699646869

/-! ## A186581.P10305095426530654892

`A186589(A000124(n))%A290503(n+1)`
-/

namespace A186581.P10305095426530654892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186589 (A000124 n).toNat) (A290503 (n + 1))

end

end A186581.P10305095426530654892

/-!
# A186582: Number of (n+3) X 5 0..2 arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A186582, there is no canonical definition to state claims against.
-/

/-! ## A186582.P5915052825177486517

`A186589(∑[n+1]+2)`
-/

namespace A186582.P5915052825177486517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186582.P5915052825177486517

/-! ## A186582.P1171199211363374994

`A186589(A167487(n)-5)+char[43]`
-/

namespace A186582.P1171199211363374994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A167487 n - 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186582.P1171199211363374994

/-! ## A186582.P15070818002913558576

`or(and(1, n), A186589(A167499(n)-3))`
-/

namespace A186582.P15070818002913558576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A186589 (A167499 n - 3).toNat)

end

end A186582.P15070818002913558576

/-! ## A186582.P14405308473234946778

`A033999(n)²*A186589(A152948(n+3))`
-/

namespace A186582.P14405308473234946778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A186589 (A152948 (n + 3)).toNat

end

end A186582.P14405308473234946778

/-! ## A186582.P15051540872349608050

`A007318(∑[n])*A186589(A167487(n)-5)`
-/

namespace A186582.P15051540872349608050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186589 (A167487 n - 5).toNat

end

end A186582.P15051540872349608050

/-!
# A186583: Number of (n+3) X 6 0..2 arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A186583, there is no canonical definition to state claims against.
-/

/-! ## A186583.P16893944752721921294

`A186589(∑[n+2]+4)`
-/

namespace A186583.P16893944752721921294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186583.P16893944752721921294

/-! ## A186583.P13668632710235145158

`or(char[1], A186589(A167614(n+1)))`
-/

namespace A186583.P13668632710235145158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186589 (A167614 (n + 1)).toNat)

end

end A186583.P13668632710235145158

/-! ## A186583.P4158499610231784331

`or(char[1], A186589(A167499(n)+n))`
-/

namespace A186583.P4158499610231784331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186589 (A167499 n + (n : ℤ)).toNat)

end

end A186583.P4158499610231784331

/-! ## A186583.P11814339255122253301

`and(1, n)!*A186589(A046691(n)+7)`
-/

namespace A186583.P11814339255122253301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A186589 (A046691 n + 7).toNat

end

end A186583.P11814339255122253301

/-! ## A186583.P3458264311064420636

`A186589(A167614(n+1))%A186581(n+1)`
-/

namespace A186583.P3458264311064420636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186589 (A167614 (n + 1)).toNat) (A186581 (n + 1))

end

end A186583.P3458264311064420636

/-!
# A186584: Number of (n+3)X7 0..2 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186584, there is no canonical definition to state claims against.
-/

/-! ## A186584.P382793272495090397

`A186589(∑[n+3]+7)`
-/

namespace A186584.P382793272495090397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186584.P382793272495090397

/-! ## A186584.P13557831322660965154

`or(char[1], A186589(A046691(n+1)+8))`
-/

namespace A186584.P13557831322660965154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186589 (A046691 (n + 1) + 8).toNat)

end

end A186584.P13557831322660965154

/-! ## A186584.P18280204495397509251

`A007318(C(2, n))*A186589(A046691(n+1)+8)`
-/

namespace A186584.P18280204495397509251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186589 (A046691 (n + 1) + 8).toNat

end

end A186584.P18280204495397509251

/-! ## A186584.P14070919501621766232

`A000034(2*(n+1))*A186589(Δ[A008778(n)]+6)`
-/

namespace A186584.P14070919501621766232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1)) * A186589 (f1 (n + 1) - f1 n + 6).toNat

end

end A186584.P14070919501621766232

/-! ## A186584.P4937930837503292368

`A000040(n+2)%2*A186589(A046691(n+1)+8)`
-/

namespace A186584.P4937930837503292368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A186589 (A046691 (n + 1) + 8).toNat

end

end A186584.P4937930837503292368

/-!
# A186585: Number of (n+3)X8 0..2 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186585, there is no canonical definition to state claims against.
-/

/-! ## A186585.P16250778995060110016

`A186589(A374005(n+1))`
-/

namespace A186585.P16250778995060110016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A374005 (n + 1)).toNat

end

end A186585.P16250778995060110016

/-! ## A186585.P8682929684504270635

`A186589(A167499(n+3))`
-/

namespace A186585.P8682929684504270635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A167499 (n + 3)).toNat

end

end A186585.P8682929684504270635

/-! ## A186585.P16450933030784189511

`A186589(A155212(n)+13)`
-/

namespace A186585.P16450933030784189511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A155212 n + 13).toNat

end

end A186585.P16450933030784189511

/-! ## A186585.P15444998047632097160

`A186589(A056000(n)+15)`
-/

namespace A186585.P15444998047632097160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A056000 n + 15).toNat

end

end A186585.P15444998047632097160

/-! ## A186585.P8706688698613856214

`A186589(A166136(n+3)-1)`
-/

namespace A186585.P8706688698613856214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A166136 (n + 3) - 1).toNat

end

end A186585.P8706688698613856214

/-!
# A186586: Number of (n+3)X9 0..2 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186586, there is no canonical definition to state claims against.
-/

/-! ## A186586.P18146641286302570717

`A186589(∑[n+5]+16)`
-/

namespace A186586.P18146641286302570717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A186586.P18146641286302570717

/-! ## A186586.P7716221639016126863

`or(char[1], A186589(A000217(n+5)+6))`
-/

namespace A186586.P7716221639016126863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186589 (A000217 (n + 5) + 6).toNat)

end

end A186586.P7716221639016126863

/-! ## A186586.P7103494198761957688

`or(char[1], A186589(A055998(n+3)+9))`
-/

namespace A186586.P7103494198761957688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186589 (A055998 (n + 3) + 9).toNat)

end

end A186586.P7103494198761957688

/-! ## A186586.P4328926423728347922

`A007318(floor(n/9))*A186589(A055998(n+3)+9)`
-/

namespace A186586.P4328926423728347922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 9⌋.toNat * A186589 (A055998 (n + 3) + 9).toNat

end

end A186586.P4328926423728347922

/-! ## A186586.P15760275490753003187

`A186589(A055998(n+3)+9)+val(A005117(n+1), 4)`
-/

namespace A186586.P15760275490753003187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A055998 (n + 3) + 9).toNat + (SequenceMachineLib.valuation (A005117 (n + 1)).toNat 4 : ℤ)

end

end A186586.P15760275490753003187

/-!
# A186587: Number of (n+3)X10 0..2 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186587, there is no canonical definition to state claims against.
-/

/-! ## A186587.P14061542580399183466

`A186589(A374008(n+1))`
-/

namespace A186587.P14061542580399183466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A374008 (n + 1)).toNat

end

end A186587.P14061542580399183466

/-! ## A186587.P18125084170263949875

`A186589(A167487(n+5))`
-/

namespace A186587.P18125084170263949875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A167487 (n + 5)).toNat

end

end A186587.P18125084170263949875

/-! ## A186587.P11077065661718162202

`A186589(A056119(n)+28)`
-/

namespace A186587.P11077065661718162202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A056119 n + 28).toNat

end

end A186587.P11077065661718162202

/-! ## A186587.P16086757455574615998

`A186589(A166136(n+5)+1)`
-/

namespace A186587.P16086757455574615998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A166136 (n + 5) + 1).toNat

end

end A186587.P16086757455574615998

/-! ## A186587.P13602214173704934788

`A186589(A167499(n+5)+2)`
-/

namespace A186587.P13602214173704934788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A167499 (n + 5) + 2).toNat

end

end A186587.P13602214173704934788

/-!
# A186588: Number of (n+3)X11 0..2 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186588, there is no canonical definition to state claims against.
-/

/-! ## A186588.P5638738569269496155

`A186589(A374009(n+1))`
-/

namespace A186588.P5638738569269496155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A374009 (n + 1)).toNat

end

end A186588.P5638738569269496155

/-! ## A186588.P3266611522171074865

`A186589(A167499(n+6)+3)`
-/

namespace A186588.P3266611522171074865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A167499 (n + 6) + 3).toNat

end

end A186588.P3266611522171074865

/-! ## A186588.P16557149672776313521

`A186589(A000124(n+7)+7)`
-/

namespace A186588.P16557149672776313521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A000124 (n + 7) + 7).toNat

end

end A186588.P16557149672776313521

/-! ## A186588.P13042146096256260233

`A186589(A000096(n+6)+9)`
-/

namespace A186588.P13042146096256260233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A000096 (n + 6) + 9).toNat

end

end A186588.P13042146096256260233

/-! ## A186588.P4955715852740009203

`A186589(A000217(n+7)+8)`
-/

namespace A186588.P4955715852740009203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186589 (A000217 (n + 7) + 8).toNat

end

end A186588.P4955715852740009203

/-!
# A186590: Number of (n+3)X(n+3) 0..3 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186590, there is no canonical definition to state claims against.
-/

/-! ## A186590.P11418179747788659563

`A186599(∑[4*n]+1)`
-/

namespace A186590.P11418179747788659563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186590.P11418179747788659563

/-! ## A186590.P17272214614148965807

`A186599(A001844(n))+char[18]`
-/

namespace A186590.P17272214614148965807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186590.P17272214614148965807

/-! ## A186590.P6244731124337544431

`lcm(A033999(n), A186599(A001844(n)))`
-/

namespace A186590.P6244731124337544431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186599 (A001844 n).toNat)

end

end A186590.P6244731124337544431

/-! ## A186590.P728757827162964458

`or(A000035(n), A186599(A001844(n)))`
-/

namespace A186590.P728757827162964458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A186599 (A001844 n).toNat)

end

end A186590.P728757827162964458

/-! ## A186590.P2069324392785469751

`A007318(∑[n])*A186599(A001844(n))`
-/

namespace A186590.P2069324392785469751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186599 (A001844 n).toNat

end

end A186590.P2069324392785469751

/-!
# A186591: Number of (n+3)X4 0..3 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186591, there is no canonical definition to state claims against.
-/

/-! ## A186591.P11233326882616114432

`A186599(∑[n]+1)`
-/

namespace A186591.P11233326882616114432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186591.P11233326882616114432

/-! ## A186591.P11891433283721732502

`or(char[1], A186599(A000124(n)))`
-/

namespace A186591.P11891433283721732502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186599 (A000124 n).toNat)

end

end A186591.P11891433283721732502

/-! ## A186591.P9829986794710514124

`lcm(A033999(n), A186599(A000124(n)))`
-/

namespace A186591.P9829986794710514124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186599 (A000124 n).toNat)

end

end A186591.P9829986794710514124

/-! ## A186591.P11934573837642059590

`A007318(∑[n])*A186599(A000124(n))`
-/

namespace A186591.P11934573837642059590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186599 (A000124 n).toNat

end

end A186591.P11934573837642059590

/-! ## A186591.P16677851019122803

`A186599(A000124(n))+A019590(n+3)`
-/

namespace A186591.P16677851019122803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A000124 n).toNat + A019590 (n + 3)

end

end A186591.P16677851019122803

/-!
# A186592: Number of (n+3)X5 0..3 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186592, there is no canonical definition to state claims against.
-/

/-! ## A186592.P10185734160720957871

`A186599(∑[n+1]+2)`
-/

namespace A186592.P10185734160720957871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186592.P10185734160720957871

/-! ## A186592.P3536553665461185532

`lcm(3, A186599(A000124(n+1)+1))`
-/

namespace A186592.P3536553665461185532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186599 (A000124 (n + 1) + 1).toNat)

end

end A186592.P3536553665461185532

/-! ## A186592.P878953526231174240

`A033999(n)²*A186599(A152948(n+3))`
-/

namespace A186592.P878953526231174240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A186599 (A152948 (n + 3)).toNat

end

end A186592.P878953526231174240

/-! ## A186592.P5986655806119446959

`A007318(C(2, n))*A186599(A000124(n+1)+1)`
-/

namespace A186592.P5986655806119446959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186599 (A000124 (n + 1) + 1).toNat

end

end A186592.P5986655806119446959

/-! ## A186592.P2562669965326114338

`A007318(and(1, -n))*A186599(A000124(n+1)+1)`
-/

namespace A186592.P2562669965326114338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A186599 (A000124 (n + 1) + 1).toNat

end

end A186592.P2562669965326114338

/-!
# A186593: Number of (n+3)X6 0..3 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186593, there is no canonical definition to state claims against.
-/

/-! ## A186593.P10836498320614929440

`A186599(∑[n+2]+4)`
-/

namespace A186593.P10836498320614929440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186593.P10836498320614929440

/-! ## A186593.P1471183389563799091

`or(char[1], A186599(A046691(n)+7))`
-/

namespace A186593.P1471183389563799091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186599 (A046691 n + 7).toNat)

end

end A186593.P1471183389563799091

/-! ## A186593.P6999979559634987368

`lcm((-1)^n, A186599(A167614(n+1)))`
-/

namespace A186593.P6999979559634987368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A186599 (A167614 (n + 1)).toNat)

end

end A186593.P6999979559634987368

/-! ## A186593.P2510763098819592350

`A186599(A052905(n)+5-n)+char[28]`
-/

namespace A186593.P2510763098819592350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A052905 n + (5 - (n : ℤ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186593.P2510763098819592350

/-! ## A186593.P17490098085107007317

`A186599(A167614(n+1))+A025469(n)`
-/

namespace A186593.P17490098085107007317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167614 (n + 1)).toNat + A025469 n

end

end A186593.P17490098085107007317

/-!
# A186594: Number of (n+3)X7 0..3 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186594, there is no canonical definition to state claims against.
-/

/-! ## A186594.P15630481408696233781

`A186599(∑[n+3]+7)`
-/

namespace A186594.P15630481408696233781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186594.P15630481408696233781

/-! ## A186594.P16775760539077598335

`lcm(3, A186599(A000217(n+3)+4))`
-/

namespace A186594.P16775760539077598335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186599 (A000217 (n + 3) + 4).toNat)

end

end A186594.P16775760539077598335

/-! ## A186594.P7732125122468784769

`A007318(C(2, n))*A186599(A000217(n+3)+4)`
-/

namespace A186594.P7732125122468784769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186599 (A000217 (n + 3) + 4).toNat

end

end A186594.P7732125122468784769

/-! ## A186594.P2730037708573730668

`A186599(A000217(n+3)+4)/A007318(C(n, 2))`
-/

namespace A186594.P2730037708573730668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186599 (A000217 (n + 3) + 4).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A186594.P2730037708573730668

/-! ## A186594.P1449481668637373217

`A007318(and(1, -n))*A186599(A000217(n+3)+4)`
-/

namespace A186594.P1449481668637373217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A186599 (A000217 (n + 3) + 4).toNat

end

end A186594.P1449481668637373217

/-!
# A186595: Number of (n+3) X 8 0..3 arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A186595, there is no canonical definition to state claims against.
-/

/-! ## A186595.P17088094609962390890

`A186599(A167499(n+3))`
-/

namespace A186595.P17088094609962390890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167499 (n + 3)).toNat

end

end A186595.P17088094609962390890

/-! ## A186595.P10059068146617378250

`A186599(A155212(n)+13)`
-/

namespace A186595.P10059068146617378250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A155212 n + 13).toNat

end

end A186595.P10059068146617378250

/-! ## A186595.P2902548981237340080

`A186599(A056000(n)+15)`
-/

namespace A186595.P2902548981237340080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A056000 n + 15).toNat

end

end A186595.P2902548981237340080

/-! ## A186595.P16817768965382075964

`A186599(eq[7, A066657(n)])`
-/

namespace A186595.P16817768965382075964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186595.P16817768965382075964

/-! ## A186595.P15893160771399009856

`A186599(A167614(n+3)+2)`
-/

namespace A186595.P15893160771399009856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167614 (n + 3) + 2).toNat

end

end A186595.P15893160771399009856

/-!
# A186596: Number of (n+3)X9 0..3 arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A186596, there is no canonical definition to state claims against.
-/

/-! ## A186596.P2062595976735093398

`A186599(A166136(n+4))`
-/

namespace A186596.P2062595976735093398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A166136 (n + 4)).toNat

end

end A186596.P2062595976735093398

/-! ## A186596.P9973074298794478304

`A186599(A167499(n+4)+1)`
-/

namespace A186596.P9973074298794478304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167499 (n + 4) + 1).toNat

end

end A186596.P9973074298794478304

/-! ## A186596.P3277322431953649133

`A186599(A167614(n+4)+3)`
-/

namespace A186596.P3277322431953649133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167614 (n + 4) + 3).toNat

end

end A186596.P3277322431953649133

/-! ## A186596.P9998788986036999147

`A186599(A000124(n+5)+5)`
-/

namespace A186596.P9998788986036999147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A000124 (n + 5) + 5).toNat

end

end A186596.P9998788986036999147

/-! ## A186596.P15720957125615588991

`A186599(A000096(n+4)+7)`
-/

namespace A186596.P15720957125615588991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A000096 (n + 4) + 7).toNat

end

end A186596.P15720957125615588991

/-!
# A186597: Number of (n+3) X 10 0..3 arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A186597, there is no canonical definition to state claims against.
-/

/-! ## A186597.P5835160410287720213

`A186599(A167487(n+5))`
-/

namespace A186597.P5835160410287720213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167487 (n + 5)).toNat

end

end A186597.P5835160410287720213

/-! ## A186597.P6580770687851177718

`A186599(A056119(n)+28)`
-/

namespace A186597.P6580770687851177718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A056119 n + 28).toNat

end

end A186597.P6580770687851177718

/-! ## A186597.P9952178103414228927

`A186599(eq[11, A066657(n)])`
-/

namespace A186597.P9952178103414228927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186597.P9952178103414228927

/-! ## A186597.P6787750676953109651

`A186599(A166136(n+5)+1)`
-/

namespace A186597.P6787750676953109651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A166136 (n + 5) + 1).toNat

end

end A186597.P6787750676953109651

/-! ## A186597.P9768631364004455814

`A186599(A167614(n+5)+4)`
-/

namespace A186597.P9768631364004455814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167614 (n + 5) + 4).toNat

end

end A186597.P9768631364004455814

/-!
# A186598: Number of (n+3) X 11 0..3 arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A186598, there is no canonical definition to state claims against.
-/

/-! ## A186598.P1896049744337096034

`A186599(eq[13, A066657(n)])`
-/

namespace A186598.P1896049744337096034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186598.P1896049744337096034

/-! ## A186598.P12537469756008989964

`A186599(A167487(n+6)+1)`
-/

namespace A186598.P12537469756008989964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167487 (n + 6) + 1).toNat

end

end A186598.P12537469756008989964

/-! ## A186598.P15596541997705985231

`A186599(A167499(n+6)+3)`
-/

namespace A186598.P15596541997705985231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A167499 (n + 6) + 3).toNat

end

end A186598.P15596541997705985231

/-! ## A186598.P17141135776667785291

`A186599(A000124(n+7)+7)`
-/

namespace A186598.P17141135776667785291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A000124 (n + 7) + 7).toNat

end

end A186598.P17141135776667785291

/-! ## A186598.P8809297896392082788

`A186599(A000217(n+7)+8)`
-/

namespace A186598.P8809297896392082788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (A000217 (n + 7) + 8).toNat

end

end A186598.P8809297896392082788

