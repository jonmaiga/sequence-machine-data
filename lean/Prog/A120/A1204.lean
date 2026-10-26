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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120400: Expansion of 1/(1-x-x^2-x^6).

The programs for A120400, the canonical program `A120400.P11015730959491525262` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120400 has offset 0).

The definition of A120400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^6))` (program `A120400.P11015730959491525262`, by `A120400.P11015730959491525262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120400.P11015730959491525262

`ogf(1/(1-x-x^2-x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120400

/-- `ogf(1/(1-x-x^2-x^6))` -/
def P11015730959491525262.Spec : Prop :=
  ∀ n, P11015730959491525262.a n = A120400 n

theorem P11015730959491525262.correct : P11015730959491525262.Spec := by
  intro n
  simp only [A120400]

end A120400

/-! ## A120400.P18201565204999070853

`a(n-1)+a(n-2)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`
-/

namespace A120400.P18201565204999070853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 6)

end

end A120400.P18201565204999070853

namespace A120400

/-- `a(n-1)+a(n-2)+a(n-6)` -/
def P18201565204999070853.Spec : Prop :=
  ∀ n, (P18201565204999070853.a n : ℤ) = A120400 n

end A120400

/-! ## A120400.P41391365240041758

`Δ[A164453(n+5)-A164451(n+5)]`
-/

namespace A120400.P41391365240041758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164453 (n + 5) - A164451 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120400.P41391365240041758

namespace A120400

/-- `Δ[A164453(n+5)-A164451(n+5)]` -/
def P41391365240041758.Spec : Prop :=
  ∀ n, P41391365240041758.a n = A120400 n

end A120400

/-! ## A120400.P8094968580518226415

`A217283(n)-A102683(A217298(n+1))`
-/

namespace A120400.P8094968580518226415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217283 n - A102683 (A217298 (n + 1)).toNat

end

end A120400.P8094968580518226415

namespace A120400

/-- `A217283(n)-A102683(A217298(n+1))` -/
def P8094968580518226415.Spec : Prop :=
  ∀ n, P8094968580518226415.a n = A120400 n

end A120400

/-! ## A120400.P16986048479744842976

`A217283(n)-and(A185264(n), A210713(n))`
-/

namespace A120400.P16986048479744842976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217283 n - Int.land (A185264 n) (A210713 n)

end

end A120400.P16986048479744842976

namespace A120400

/-- `A217283(n)-and(A185264(n), A210713(n))` -/
def P16986048479744842976.Spec : Prop :=
  ∀ n, P16986048479744842976.a n = A120400 n

end A120400

/-!
# A120401: Construct the sequence given by the floor of the imaginary part of zeros of the Riemann zeta function; take complement.

The programs for A120401, there is no canonical definition to state claims against.
-/

/-! ## A120401.P13354731337966652204

`comp[A013629(n+1)]`
-/

namespace A120401.P13354731337966652204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A120401.P13354731337966652204

/-! ## A120401.P14752827212355660170

`comp[A234802(n+1)]`
-/

namespace A120401.P14752827212355660170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A120401.P14752827212355660170

/-! ## A120401.P1404476823976223996

`comp[A092783(n+1)-1]`
-/

namespace A120401.P1404476823976223996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A120401.P1404476823976223996

/-! ## A120401.P12481315325940264639

`comp[eq[1, A234323(n+1)]+1]`
-/

namespace A120401.P12481315325940264639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A120401.P12481315325940264639

/-! ## A120401.P2953068258133375419

`eq[0, A234323(A028310(n))]`
-/

namespace A120401.P2953068258133375419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120401.P2953068258133375419

/-! ## A120401.P5058026464674670004

`lt[char[A013629(A054709(n+1))], 1]`
-/

namespace A120401.P5058026464674670004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (A054709 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A120401.P5058026464674670004

/-!
# A120402: a(1)=2; a(n)=first even number greater than a(n-1) such that 2*a(n)-1 is prime and a(i)+a(n)-1 is prime for all 1<=i<=n-1.

The programs for A120402, there is no canonical definition to state claims against.
-/

/-! ## A120402.P17719869199589148637

`A119751(n+1)+1`
-/

namespace A120402.P17719869199589148637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119751 (n + 1) + 1

end

end A120402.P17719869199589148637

/-! ## A120402.P6548311725947247618

`ceil(A113875(n+1)/2)`
-/

namespace A120402.P6548311725947247618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113875 (n + 1) : ℚ) / 2⌉

end

end A120402.P6548311725947247618

/-! ## A120402.P14735998848685789670

`(A113875(A000027(n+1))+1)/2`
-/

namespace A120402.P14735998848685789670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113875 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A120402.P14735998848685789670

/-! ## A120402.P9044381512805608792

`A025451(n)+floor(A113875(n+1)/2)`
-/

namespace A120402.P9044381512805608792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n + ⌊(A113875 (n + 1) : ℚ) / 2⌋

end

end A120402.P9044381512805608792

/-! ## A120402.P17224098619998237230

`A262681(n)+floor(A113875(n+1)/2)`
-/

namespace A120402.P17224098619998237230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n + ⌊(A113875 (n + 1) : ℚ) / 2⌋

end

end A120402.P17224098619998237230

/-!
# A120403: a(1)=3; a(n)=first odd number greater than a(n-1) such that 2*a(n)-1 is prime and a(i)+a(n)-1 is prime for all 1<=i<=n-1.

The programs for A120403, there is no canonical definition to state claims against.
-/

/-! ## A120403.P9299461929398155764

`A119752(n+1)+1`
-/

namespace A120403.P9299461929398155764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119752 (n + 1) + 1

end

end A120403.P9299461929398155764

/-! ## A120403.P7583323632866986121

`or(1, A119752(A005496(n)))`
-/

namespace A120403.P7583323632866986121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119752 (A005496 n).toNat)

end

end A120403.P7583323632866986121

/-! ## A120403.P15814036438533261377

`or(1, A119752(A005555(n)))`
-/

namespace A120403.P15814036438533261377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119752 (A005555 n).toNat)

end

end A120403.P15814036438533261377

/-! ## A120403.P17101880175555432754

`or(1, A119752(A077168(n)))`
-/

namespace A120403.P17101880175555432754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119752 (A077168 n).toNat)

end

end A120403.P17101880175555432754

/-! ## A120403.P16226405726558522098

`or(1, A119752(A348553(n)))`
-/

namespace A120403.P16226405726558522098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119752 (A348553 n).toNat)

end

end A120403.P16226405726558522098

/-!
# A120405: a(n) = 1, a(2) = 1, then append the dot product of (1,2) and (1,1) = 1*1, 1*2 = 1, 2; to the right of 1, 1; getting (1, 1, 1, 2). The next operation uses the dot product of (1, 2, 3, 4) and (1, 1, 1, 2), getting (1, 2, 3, 8) which we append to the right of (1, 1, 1, 2), getting (1, 1, 1, 2, 1, 2, 3, 8) and so on.

The programs for A120405, there is no canonical definition to state claims against.
-/

/-! ## A120405.P4605782464543820764

`A000007(n)+Δ[A120768(A028310(n))]`
-/

namespace A120405.P4605782464543820764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A120405.P4605782464543820764

/-! ## A120405.P7902219814862726356

`Δ[A120768(A028310(n))+A057427(n)]`
-/

namespace A120405.P7902219814862726356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120405.P7902219814862726356

/-! ## A120405.P13393960649784662223

`Δ[A120768(A028310(n))-A054977(n)]`
-/

namespace A120405.P13393960649784662223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120405.P13393960649784662223

/-! ## A120405.P6455962752620735875

`Δ[A120768(A028310(n))%A000070(n)]`
-/

namespace A120405.P6455962752620735875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120768 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120405.P6455962752620735875

/-! ## A120405.P3932624587080969659

`Δ[A120768(A028310(n))+A060576(n+1)+2]`
-/

namespace A120405.P3932624587080969659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (A028310 n).toNat + (A060576 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120405.P3932624587080969659

/-! ## A120405.P17732823045146058306

`Δ[A120768(A028310(n))]+A000056(n+1)%2`
-/

namespace A120405.P17732823045146058306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000056 (n + 1)) 2

end

end A120405.P17732823045146058306

/-! ## A120405.P13344272711918303996

`A120768(n+1)+A000007(n)-A120768(A028310(n))`
-/

namespace A120405.P13344272711918303996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (n + 1) + (A000007 n - A120768 (A028310 n).toNat)

end

end A120405.P13344272711918303996

/-! ## A120405.P13085478194858720987

`A054977(n)*A120768(n+1)-A120768(A028310(n))`
-/

namespace A120405.P13085478194858720987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A120768 (n + 1) - A120768 (A028310 n).toNat

end

end A120405.P13085478194858720987

/-! ## A120405.P10875951258122624099

`A120768(n+1)-A057427(n)*A120768(A028310(n))`
-/

namespace A120405.P10875951258122624099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120768 (n + 1) - A057427 n * A120768 (A028310 n).toNat

end

end A120405.P10875951258122624099

/-!
# A120406: Triangle read by rows: related to series expansion of the square root of 2 linear factors.

The programs for A120406, the canonical program `A120406.P171080817509202595` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120406 has offset 0).

The definition of A120406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120406.P171080817509202595

`2*C(row(n), col(n))²*C(2*row(n)+2, row(n))/C(2*row(n)+2, 2*col(n)+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120406

/-- `2*C(row(n), col(n))²*C(2*row(n)+2, row(n))/C(2*row(n)+2, 2*col(n)+1)` -/
def P171080817509202595.Spec : Prop :=
  ∀ n, P171080817509202595.a n = (A120406 n : ℚ)

end A120406

/-! ## A120406.P18260987011367859992

`A007318(n)*A135573(∑[A035214(n)])`
-/

namespace A120406.P18260987011367859992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135573 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120406.P18260987011367859992

namespace A120406

/-- `A007318(n)*A135573(∑[A035214(n)])` -/
def P18260987011367859992.Spec : Prop :=
  ∀ n, P18260987011367859992.a n = A120406 n

end A120406

/-! ## A120406.P6309699495997021962

`A007318(n)*A135573(A014132(n+1))`
-/

namespace A120406.P6309699495997021962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135573 (A014132 (n + 1)).toNat

end

end A120406.P6309699495997021962

namespace A120406

/-- `A007318(n)*A135573(A014132(n+1))` -/
def P6309699495997021962.Spec : Prop :=
  ∀ n, P6309699495997021962.a n = A120406 n

end A120406

/-! ## A120406.P13076014804238770522

`abs(A117440(n)*A135573(A014132(n+1)))`
-/

namespace A120406.P13076014804238770522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A135573 (A014132 (n + 1)).toNat|

end

end A120406.P13076014804238770522

namespace A120406

/-- `abs(A117440(n)*A135573(A014132(n+1)))` -/
def P13076014804238770522.Spec : Prop :=
  ∀ n, P13076014804238770522.a n = A120406 n

end A120406

/-! ## A120406.P17429736938891173273

`Δ[A102363(n)]*A135573(A014132(n+1))`
-/

namespace A120406.P17429736938891173273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135573 (A014132 (n + 1)).toNat

end

end A120406.P17429736938891173273

namespace A120406

/-- `Δ[A102363(n)]*A135573(A014132(n+1))` -/
def P17429736938891173273.Spec : Prop :=
  ∀ n, P17429736938891173273.a n = A120406 n

end A120406

/-!
# A120411: If A is a set of integers, the (2-fold) sumset consists of all the numbers which can be written as the sum of two (not necessarily distinct) elements in A. a(n) is the number of subsets of [1,2n] which are sumsets for some set of positive integers.

The programs for A120411, there is no canonical definition to state claims against.
-/

/-! ## A120411.P4282641509950940384

`∑[A190820(n)]-1`
-/

namespace A120411.P4282641509950940384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A120411.P4282641509950940384

/-! ## A120411.P10970483592970207811

`∑[∏{e}[2^n, A190820(#)]]`
-/

namespace A120411.P10970483592970207811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A190820 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120411.P10970483592970207811

/-! ## A120411.P9716553170302059554

`∑[A190820(n)/A054977(n)]`
-/

namespace A120411.P9716553170302059554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190820 n : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120411.P9716553170302059554

/-! ## A120411.P987602804600933970

`∑[gcd(A018843(n), A190820(n))]`
-/

namespace A120411.P987602804600933970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018843 n) (A190820 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120411.P987602804600933970

/-! ## A120411.P8066349505018115813

`A190820(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A120411.P8066349505018115813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190820 n + a (A028310 n - 1).toNat

end

end A120411.P8066349505018115813

/-!
# A120412: Number of unlabeled graphs with n equal to the number of vertices plus the number of edges.

The programs for A120412, there is no canonical definition to state claims against.
-/

/-! ## A120412.P2257558569475033283

`A003056(ceil(sqrt(A000718(n))))`
-/

namespace A120412.P2257558569475033283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A000718 n : ℝ)⌉.toNat

end

end A120412.P2257558569475033283

/-! ## A120412.P8170236456704003653

`A257639(A122852(n)+A072374(n+1))`
-/

namespace A120412.P8170236456704003653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A122852 n + A072374 (n + 1)).toNat

end

end A120412.P8170236456704003653

/-! ## A120412.P2302221671666726014

`A257639(A122852(n+1)+A122852(n))`
-/

namespace A120412.P2302221671666726014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A122852 (n + 1) + A122852 n).toNat

end

end A120412.P2302221671666726014

/-! ## A120412.P7836960201859169725

`A002024(A107113(n))-A238657(n+1)`
-/

namespace A120412.P7836960201859169725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A107113 n).toNat - A238657 (n + 1)

end

end A120412.P7836960201859169725

/-! ## A120412.P17119055208706964497

`A003059(A283877(n))`
-/

namespace A120412.P17119055208706964497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A283877 n).toNat

end

end A120412.P17119055208706964497

/-!
# A120413: Largest even number strictly less than n^2.

The programs for A120413, the canonical program `A120413.P1008279974531545103` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120413 has offset 1).

The definition of A120413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120413.P1008279974531545103

`2*ceil((n+1)²/2)-2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120413

/-- `2*ceil((n+1)²/2)-2` -/
def P1008279974531545103.Spec : Prop :=
  ∀ n, P1008279974531545103.a n = A120413 (n + 1)

theorem P1008279974531545103.correct : P1008279974531545103.Spec := by
  intro n
  simp only [A120413, Nat.add_sub_cancel]

end A120413

/-! ## A120413.P11155235981232338236

`2*(∑[or(1, n)]-1)`
-/

namespace A120413.P11155235981232338236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A120413.P11155235981232338236

namespace A120413

/-- `2*(∑[or(1, n)]-1)` -/
def P11155235981232338236.Spec : Prop :=
  ∀ n, P11155235981232338236.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P2142089749257108659

`and(n*(n+2), -2)`
-/

namespace A120413.P2142089749257108659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (n + 2) : ℤ) (-2)

end

end A120413.P2142089749257108659

namespace A120413

/-- `and(n*(n+2), -2)` -/
def P2142089749257108659.Spec : Prop :=
  ∀ n, P2142089749257108659.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P14509758075441169711

`xor(1, or(1, n*(n+2)))`
-/

namespace A120413.P14509758075441169711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (n * (n + 2)))

end

end A120413.P14509758075441169711

namespace A120413

/-- `xor(1, or(1, n*(n+2)))` -/
def P14509758075441169711.Spec : Prop :=
  ∀ n, (P14509758075441169711.a n : ℤ) = A120413 (n + 1)

end A120413

/-! ## A120413.P8238722371572920155

`xor(n*(n+2), and(1, n))`
-/

namespace A120413.P8238722371572920155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n * (n + 2)) (Nat.land 1 n)

end

end A120413.P8238722371572920155

namespace A120413

/-- `xor(n*(n+2), and(1, n))` -/
def P8238722371572920155.Spec : Prop :=
  ∀ n, (P8238722371572920155.a n : ℤ) = A120413 (n + 1)

end A120413

/-! ## A120413.P4544711353168505672

`record[and(n*(n-2), -2)]`
-/

namespace A120413.P4544711353168505672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ((n : ℤ) - 2)) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120413.P4544711353168505672

namespace A120413

/-- `record[and(n*(n-2), -2)]` -/
def P4544711353168505672.Spec : Prop :=
  ∀ n, P4544711353168505672.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P10925765625098154369

`∑[a(n-2)+4]` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A120413.P10925765625098154369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120413.P10925765625098154369

namespace A120413

/-- `∑[a(n-2)+4]` -/
def P10925765625098154369.Spec : Prop :=
  ∀ n, (P10925765625098154369.a n : ℤ) = A120413 (n + 1)

end A120413

/-! ## A120413.P16912899999002795321

`abs(or(1, -(n+1)²)+1)`
-/

namespace A120413.P16912899999002795321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-((n + 1) ^ 2 : ℤ)) + 1|

end

end A120413.P16912899999002795321

namespace A120413

/-- `abs(or(1, -(n+1)²)+1)` -/
def P16912899999002795321.Spec : Prop :=
  ∀ n, P16912899999002795321.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P7333062783847331646

`-(or(1, -(n+1)²)+1)`
-/

namespace A120413.P7333062783847331646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (-((n + 1) ^ 2 : ℤ)) + 1)

end

end A120413.P7333062783847331646

namespace A120413

/-- `-(or(1, -(n+1)²)+1)` -/
def P7333062783847331646.Spec : Prop :=
  ∀ n, P7333062783847331646.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P6053042808920965954

`∑[or(2*n, 2%(n+1))]`
-/

namespace A120413.P6053042808920965954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120413.P6053042808920965954

namespace A120413

/-- `∑[or(2*n, 2%(n+1))]` -/
def P6053042808920965954.Spec : Prop :=
  ∀ n, (P6053042808920965954.a n : ℤ) = A120413 (n + 1)

end A120413

/-! ## A120413.P9347918241150422319

`∑[∑[4-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A120413.P9347918241150422319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120413.P9347918241150422319

namespace A120413

/-- `∑[∑[4-a(n-1)]]` -/
def P9347918241150422319.Spec : Prop :=
  ∀ n, P9347918241150422319.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P171427752329054189

`ogf((2x+4x^2-2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A120413.P171427752329054189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, -2] [1, -2, 0, 2, -1] n

end

end A120413.P171427752329054189

namespace A120413

/-- `ogf((2x+4x^2-2x^3)/(1-2x+2x^3-x^4))` -/
def P171427752329054189.Spec : Prop :=
  ∀ n, P171427752329054189.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P8195006394965838358

`2*(A007590(n)+n)`
-/

namespace A120413.P8195006394965838358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007590 n + (n : ℤ))

end

end A120413.P8195006394965838358

namespace A120413

/-- `2*(A007590(n)+n)` -/
def P8195006394965838358.Spec : Prop :=
  ∀ n, P8195006394965838358.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P8457980634919071093

`2*(A183575(n+1)-n)`
-/

namespace A120413.P8457980634919071093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183575 (n + 1) - (n : ℤ))

end

end A120413.P8457980634919071093

namespace A120413

/-- `2*(A183575(n+1)-n)` -/
def P8457980634919071093.Spec : Prop :=
  ∀ n, P8457980634919071093.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P11803405555501662045

`A090381(n)%A084849(n)`
-/

namespace A120413.P11803405555501662045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090381 n) (A084849 n)

end

end A120413.P11803405555501662045

namespace A120413

/-- `A090381(n)%A084849(n)` -/
def P11803405555501662045.Spec : Prop :=
  ∀ n, P11803405555501662045.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P7229523960034655771

`A131895(n)%A095894(n)`
-/

namespace A120413.P7229523960034655771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131895 n) (A095894 n)

end

end A120413.P7229523960034655771

namespace A120413

/-- `A131895(n)%A095894(n)` -/
def P7229523960034655771.Spec : Prop :=
  ∀ n, P7229523960034655771.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P4742484292176048824

`xor(A000035(n), A005563(n))`
-/

namespace A120413.P4742484292176048824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A005563 n)

end

end A120413.P4742484292176048824

namespace A120413

/-- `xor(A000035(n), A005563(n))` -/
def P4742484292176048824.Spec : Prop :=
  ∀ n, P4742484292176048824.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P17415562514475175435

`∪[A033996(n), A060626(n)]`
-/

namespace A120413.P17415562514475175435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120413.P17415562514475175435

namespace A120413

/-- `∪[A033996(n), A060626(n)]` -/
def P17415562514475175435.Spec : Prop :=
  ∀ n, (P17415562514475175435.a n : ℤ) = A120413 (n + 1)

end A120413

/-! ## A120413.P1137854551895166658

`A153126(n)%A005448(n+1)`
-/

namespace A120413.P1137854551895166658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153126 n) (A005448 (n + 1))

end

end A120413.P1137854551895166658

namespace A120413

/-- `A153126(n)%A005448(n+1)` -/
def P1137854551895166658.Spec : Prop :=
  ∀ n, P1137854551895166658.a n = A120413 (n + 1)

end A120413

/-! ## A120413.P2281455280043588515

`A060626(n)%A184533(n+1)`
-/

namespace A120413.P2281455280043588515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060626 n) (A184533 (n + 1))

end

end A120413.P2281455280043588515

namespace A120413

/-- `A060626(n)%A184533(n+1)` -/
def P2281455280043588515.Spec : Prop :=
  ∀ n, P2281455280043588515.a n = A120413 (n + 1)

end A120413

/-!
# A120414: a(0)=0, a(1)=1; thereafter a(n) = ceiling((3/2)^(n-3)*n*(n-1)).

The programs for A120414, there is no canonical definition to state claims against.
-/

/-! ## A120414.P12226419094523662879

`A053186(∑[(n-1)*2*a(n-1)]-1)` with `a(0)=1, a(1)=2`
-/

namespace A120414.P12226419094523662879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 1) * (2 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A120414.P12226419094523662879

/-! ## A120414.P13980482088760084288

`∑[A338466(A130103(n))]`
-/

namespace A120414.P13980482088760084288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A130103 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120414.P13980482088760084288

/-! ## A120414.P16720696185188294383

`A345167(A288232(n)-n)`
-/

namespace A120414.P16720696185188294383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A288232 n - (n : ℤ)).toNat

end

end A120414.P16720696185188294383

/-!
# A120415: Expansion of 1/(1-x-x^3-x^6).

The programs for A120415, the canonical program `A120415.P11643391522053311908` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120415 has offset 0).

The definition of A120415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3-x^6))` (program `A120415.P11643391522053311908`, by `A120415.P11643391522053311908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120415.P11643391522053311908

`ogf(1/(1-x-x^3-x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120415

/-- `ogf(1/(1-x-x^3-x^6))` -/
def P11643391522053311908.Spec : Prop :=
  ∀ n, P11643391522053311908.a n = A120415 n

theorem P11643391522053311908.correct : P11643391522053311908.Spec := by
  intro n
  simp only [A120415]

end A120415

/-! ## A120415.P5561117382487583692

`a(n-1)+a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A120415.P5561117382487583692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 6)

end

end A120415.P5561117382487583692

namespace A120415

/-- `a(n-1)+a(n-3)+a(n-6)` -/
def P5561117382487583692.Spec : Prop :=
  ∀ n, (P5561117382487583692.a n : ℤ) = A120415 n

end A120415

/-! ## A120415.P4121338467705429919

`floor(root(A103464(n+4), 4))`
-/

namespace A120415.P4121338467705429919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103464 (n + 4) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A120415.P4121338467705429919

namespace A120415

/-- `floor(root(A103464(n+4), 4))` -/
def P4121338467705429919.Spec : Prop :=
  ∀ n, P4121338467705429919.a n = A120415 n

end A120415

/-! ## A120415.P1991293731919409869

`A316355(A202844(n)+A023532(n))`
-/

namespace A120415.P1991293731919409869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A202844 n + A023532 n).toNat

end

end A120415.P1991293731919409869

namespace A120415

/-- `A316355(A202844(n)+A023532(n))` -/
def P1991293731919409869.Spec : Prop :=
  ∀ n, P1991293731919409869.a n = A120415 n

end A120415

/-! ## A120415.P1609118858489273183

`A316355(A202844(n)+A025853(n))`
-/

namespace A120415.P1609118858489273183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A202844 n + A025853 n).toNat

end

end A120415.P1609118858489273183

namespace A120415

/-- `A316355(A202844(n)+A025853(n))` -/
def P1609118858489273183.Spec : Prop :=
  ∀ n, P1609118858489273183.a n = A120415 n

end A120415

/-!
# A120416: Numbers k such that k^2+1 divides k!.

The programs for A120416, the canonical program `A120416.P352851367963222565` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120416 has offset 1).

The definition of A120416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2082 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120416.P352851367963222565

`eq[0, A177353(n+1)]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120416

/-- `eq[0, A177353(n+1)]+1` -/
def P352851367963222565.Spec : Prop :=
  ∀ n, (P352851367963222565.a n : ℤ) = A120416 (n + 1)

theorem P352851367963222565.correct : P352851367963222565.Spec := by
  intro n
  simp only [A120416, Nat.add_sub_cancel]

end A120416

/-! ## A120416.P8133362797958914292

`lt[A177353(n+2), 1]+2`
-/

namespace A120416.P8133362797958914292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A120416.P8133362797958914292

namespace A120416

/-- `lt[A177353(n+2), 1]+2` -/
def P8133362797958914292.Spec : Prop :=
  ∀ n, (P8133362797958914292.a n : ℤ) = A120416 (n + 1)

end A120416

/-! ## A120416.P15639082874335266258

`eq[0, A177353(A028310(n))]`
-/

namespace A120416.P15639082874335266258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120416.P15639082874335266258

namespace A120416

/-- `eq[0, A177353(A028310(n))]` -/
def P15639082874335266258.Spec : Prop :=
  ∀ n, (P15639082874335266258.a n : ℤ) = A120416 (n + 1)

end A120416

/-! ## A120416.P9283402233967739039

`A065475(lt[A177353(n+1), 1])`
-/

namespace A120416.P9283402233967739039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A120416.P9283402233967739039

namespace A120416

/-- `A065475(lt[A177353(n+1), 1])` -/
def P9283402233967739039.Spec : Prop :=
  ∀ n, P9283402233967739039.a n = A120416 (n + 1)

end A120416

/-! ## A120416.P12636739000028178311

`eq[0, A177353(A065033(2*n))]`
-/

namespace A120416.P12636739000028178311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120416.P12636739000028178311

namespace A120416

/-- `eq[0, A177353(A065033(2*n))]` -/
def P12636739000028178311.Spec : Prop :=
  ∀ n, (P12636739000028178311.a n : ℤ) = A120416 (n + 1)

end A120416

/-! ## A120416.P6555974667508816713

`eq[0, A177353(A123108(2*n))]`
-/

namespace A120416.P6555974667508816713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120416.P6555974667508816713

namespace A120416

/-- `eq[0, A177353(A123108(2*n))]` -/
def P6555974667508816713.Spec : Prop :=
  ∀ n, (P6555974667508816713.a n : ℤ) = A120416 (n + 1)

end A120416

/-! ## A120416.P15938441823964446681

`eq[0, A177353(A233583(n+1))]`
-/

namespace A120416.P15938441823964446681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120416.P15938441823964446681

namespace A120416

/-- `eq[0, A177353(A233583(n+1))]` -/
def P15938441823964446681.Spec : Prop :=
  ∀ n, (P15938441823964446681.a n : ℤ) = A120416 (n + 1)

end A120416

/-!
# A120419: E.g.f. A(x) satisfies A(x) = (1 + (Integral A(x) dx)^2 / 2)^2.

The programs for A120419, there is no canonical definition to state claims against.
-/

/-! ## A120419.P7012228306507595640

`A281180(n+1)/A000079(n)`
-/

namespace A120419.P7012228306507595640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281180 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A120419.P7012228306507595640

/-! ## A120419.P4215926569310690254

`A281180(n+1)/Δ[A000051(n)]`
-/

namespace A120419.P4215926569310690254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281180 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A120419.P4215926569310690254

/-! ## A120419.P9223173545192533851

`A281180(n+1)/Δ[A000225(n)]`
-/

namespace A120419.P9223173545192533851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281180 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A120419.P9223173545192533851

/-! ## A120419.P9507050592215471718

`A281180(n+1)/record[A059268(n)]`
-/

namespace A120419.P9507050592215471718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281180 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A120419.P9507050592215471718

/-! ## A120419.P11896598319880898247

`A281182(2*n+1)/A074323(2*n+1)`
-/

namespace A120419.P11896598319880898247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281182 (2 * n + 1) : ℚ) / (A074323 (2 * n + 1) : ℚ)

end

end A120419.P11896598319880898247

/-!
# A120424: Having specified two initial terms, the "Half-Fibonacci" sequence proceeds like the Fibonacci sequence, except that the terms are halved before being added if they are even.

The programs for A120424, the canonical program `A120424.P10446514193267438551` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120424 has offset 0).

The definition of A120424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120424.P10446514193267438551

`(lcm(2, a(n-1))+lcm(2, a(n-2)))/2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120424

/-- `(lcm(2, a(n-1))+lcm(2, a(n-2)))/2` -/
def P10446514193267438551.Spec : Prop :=
  ∀ n, P10446514193267438551.a n = (A120424 n : ℚ)

end A120424

/-! ## A120424.P8687309096807829421

`A026741(a(n-1))+A026741(a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A120424.P8687309096807829421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A026741 (a (n - 1)).toNat + A026741 (a (n - 2)).toNat

end

end A120424.P8687309096807829421

namespace A120424

/-- `A026741(a(n-1))+A026741(a(n-2))` -/
def P8687309096807829421.Spec : Prop :=
  ∀ n, P8687309096807829421.a n = A120424 n

end A120424

/-! ## A120424.P9521628159246011961

`A323462(a(n-1))+A323462(a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A120424.P9521628159246011961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A323462 (a (n - 1)).toNat + A323462 (a (n - 2)).toNat

end

end A120424.P9521628159246011961

namespace A120424

/-- `A323462(a(n-1))+A323462(a(n-2))` -/
def P9521628159246011961.Spec : Prop :=
  ∀ n, P9521628159246011961.a n = A120424 n

end A120424

/-! ## A120424.P2383652596144110555

`A151749(n)*A279387(A000032(n))`
-/

namespace A120424.P2383652596144110555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151749 n * A279387 (A000032 n).toNat

end

end A120424.P2383652596144110555

namespace A120424

/-- `A151749(n)*A279387(A000032(n))` -/
def P2383652596144110555.Spec : Prop :=
  ∀ n, P2383652596144110555.a n = A120424 n

end A120424

/-! ## A120424.P10473899034557414324

`∩[A135382(n+1), A173444(n+1)]`
-/

namespace A120424.P10473899034557414324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120424.P10473899034557414324

namespace A120424

/-- `∩[A135382(n+1), A173444(n+1)]` -/
def P10473899034557414324.Spec : Prop :=
  ∀ n, (P10473899034557414324.a n : ℤ) = A120424 n

end A120424

/-!
# A120425: a(n) = maximum value among all k where 1<=k<=n of GCD(k,ceiling(n/k)).

The programs for A120425, there is no canonical definition to state claims against.
-/

/-! ## A120425.P17730510077542313642

`A242112(A055086(n)%A241983(n))`
-/

namespace A120425.P17730510077542313642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (Int.tmod (A055086 n) (A241983 n)).toNat

end

end A120425.P17730510077542313642

/-! ## A120425.P12435758798589305085

`A242112(A055086(n))+A000038(A241984(n))`
-/

namespace A120425.P12435758798589305085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A055086 n).toNat + A000038 (A241984 n).toNat

end

end A120425.P12435758798589305085

/-! ## A120425.P13028910470197334175

`A010121(A076338(n))*A242112(A055086(n))`
-/

namespace A120425.P13028910470197334175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A076338 n).toNat * A242112 (A055086 n).toNat

end

end A120425.P13028910470197334175

/-! ## A120425.P9619592645595740882

`A242112(A055086(n))%A190731(A007318(n))`
-/

namespace A120425.P9619592645595740882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242112 (A055086 n).toNat) (A190731 (A007318 n).toNat)

end

end A120425.P9619592645595740882

/-! ## A120425.P3884253999185203504

`A242112(A055086(n))+A003982(A253367(n+1))`
-/

namespace A120425.P3884253999185203504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A055086 n).toNat + A003982 (A253367 (n + 1)).toNat

end

end A120425.P3884253999185203504

/-!
# A120426: n-th number with the same prime signature as n.

The programs for A120426, there is no canonical definition to state claims against.
-/

/-! ## A120426.P17417270744723983341

`A077558(A000124(n+1)-A064839(n+1))`
-/

namespace A120426.P17417270744723983341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077558 (A000124 (n + 1) - A064839 (n + 1)).toNat

end

end A120426.P17417270744723983341

/-!
# A120427: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both squares; list all such pairs (x,y) with gcd(x,y) = 1 ordered by values of y; sequence gives y values.

The programs for A120427, the canonical program `A120427.P17896066987903461565` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120427 has offset 1).

The definition of A120427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120427.P8504526107068120165

`2*A020887(n+1)`
-/

namespace A120427.P8504526107068120165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020887 (n + 1)

end

end A120427.P8504526107068120165

namespace A120427

/-- `2*A020887(n+1)` -/
def P8504526107068120165.Spec : Prop :=
  ∀ n, P8504526107068120165.a n = A120427 (n + 1)

theorem P8504526107068120165.correct : P8504526107068120165.Spec := by
  intro n
  simp only [A120427, Nat.add_sub_cancel, A120427.P8504526107068120165.a, A120427.P17896066987903461565.a, A020887, A020887.P8491908464742690034.a, A020888, A020888.P7815334307482986800.f3, A020888.P7815334307482986800.f2, A020888.P7815334307482986800.f1, A020888.P7815334307482986800.a, A068068, A068068.P4574816363977512760.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P10258181745752134128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120427

/-! ## A120427.P17896066987903461565

`4*A020888(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A120427

/-- `4*A020888(n+1)` -/
def P17896066987903461565.Spec : Prop :=
  ∀ n, P17896066987903461565.a n = A120427 (n + 1)

theorem P17896066987903461565.correct : P17896066987903461565.Spec := by
  intro n
  simp only [A120427, Nat.add_sub_cancel]

end A120427

/-! ## A120427.P750696914493267965

`A004277(A020887(n+1))`
-/

namespace A120427.P750696914493267965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020887 (n + 1)).toNat

end

end A120427.P750696914493267965

namespace A120427

/-- `A004277(A020887(n+1))` -/
def P750696914493267965.Spec : Prop :=
  ∀ n, P750696914493267965.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P10189459561348297166

`A008574(A020888(n+1))`
-/

namespace A120427.P10189459561348297166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A020888 (n + 1)).toNat

end

end A120427.P10189459561348297166

namespace A120427

/-- `A008574(A020888(n+1))` -/
def P10189459561348297166.Spec : Prop :=
  ∀ n, P10189459561348297166.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P7316583174810567518

`A020887(n+1)²/A020888(n+1)`
-/

namespace A120427.P7316583174810567518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020887 (n + 1) ^ 2 : ℚ) / (A020888 (n + 1) : ℚ)

end

end A120427.P7316583174810567518

namespace A120427

/-- `A020887(n+1)²/A020888(n+1)` -/
def P7316583174810567518.Spec : Prop :=
  ∀ n, P7316583174810567518.a n = (A120427 (n + 1) : ℚ)

theorem P7316583174810567518.correct : P7316583174810567518.Spec := by
  intro n
  simp only [A120427, Nat.add_sub_cancel, A120427.P7316583174810567518.a, A120427.P17896066987903461565.a, A020887, A020887.P8491908464742690034.a, A020888, A020888.P7815334307482986800.f3, A020888.P7815334307482986800.f2, A020888.P7815334307482986800.f1, A020888.P7815334307482986800.a, A068068, A068068.P4574816363977512760.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P10258181745752134128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120427

/-! ## A120427.P10410901833234945004

`A005843(A020887(n+1)%A017557(n))`
-/

namespace A120427.P10410901833234945004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A020887 (n + 1)) (A017557 n)).toNat

end

end A120427.P10410901833234945004

namespace A120427

/-- `A005843(A020887(n+1)%A017557(n))` -/
def P10410901833234945004.Spec : Prop :=
  ∀ n, P10410901833234945004.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P15315108531499301943

`filter[A020887(n+1), A011765(#)]`
-/

namespace A120427.P15315108531499301943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A120427.P15315108531499301943

namespace A120427

/-- `filter[A020887(n+1), A011765(#)]` -/
def P15315108531499301943.Spec : Prop :=
  ∀ n, P15315108531499301943.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P11988332481265162931

`filter[A020887(n+1), A014577(#)]`
-/

namespace A120427.P11988332481265162931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A120427.P11988332481265162931

namespace A120427

/-- `filter[A020887(n+1), A014577(#)]` -/
def P11988332481265162931.Spec : Prop :=
  ∀ n, P11988332481265162931.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P2671804109062444783

`filter[A020887(n+1), A073089(#)]`
-/

namespace A120427.P2671804109062444783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A120427.P2671804109062444783

namespace A120427

/-- `filter[A020887(n+1), A073089(#)]` -/
def P2671804109062444783.Spec : Prop :=
  ∀ n, P2671804109062444783.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P13182585143498465525

`filter[A020887(n+1), A106665(#)]`
-/

namespace A120427.P13182585143498465525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A120427.P13182585143498465525

namespace A120427

/-- `filter[A020887(n+1), A106665(#)]` -/
def P13182585143498465525.Spec : Prop :=
  ∀ n, P13182585143498465525.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P5664887624230650784

`filter[A020887(n+1), A121262(#)]`
-/

namespace A120427.P5664887624230650784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A120427.P5664887624230650784

namespace A120427

/-- `filter[A020887(n+1), A121262(#)]` -/
def P5664887624230650784.Spec : Prop :=
  ∀ n, P5664887624230650784.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P633647502124140453

`filter[A020887(n+1), A133872(#)]`
-/

namespace A120427.P633647502124140453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A120427.P633647502124140453

namespace A120427

/-- `filter[A020887(n+1), A133872(#)]` -/
def P633647502124140453.Spec : Prop :=
  ∀ n, P633647502124140453.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P7464727693817644935

`filter[A020887(n+1), A152822(#)]`
-/

namespace A120427.P7464727693817644935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A120427.P7464727693817644935

namespace A120427

/-- `filter[A020887(n+1), A152822(#)]` -/
def P7464727693817644935.Spec : Prop :=
  ∀ n, P7464727693817644935.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P9561268422029189238

`filter[A020887(n+1), A262808(#)]`
-/

namespace A120427.P9561268422029189238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A120427.P9561268422029189238

namespace A120427

/-- `filter[A020887(n+1), A262808(#)]` -/
def P9561268422029189238.Spec : Prop :=
  ∀ n, P9561268422029189238.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P14311849962237919132

`filter[A020887(n+1), A305994(#)]`
-/

namespace A120427.P14311849962237919132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A120427.P14311849962237919132

namespace A120427

/-- `filter[A020887(n+1), A305994(#)]` -/
def P14311849962237919132.Spec : Prop :=
  ∀ n, P14311849962237919132.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P4675511166248319550

`filter[A020887(n+1), A319710(#)]`
-/

namespace A120427.P4675511166248319550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A120427.P4675511166248319550

namespace A120427

/-- `filter[A020887(n+1), A319710(#)]` -/
def P4675511166248319550.Spec : Prop :=
  ∀ n, P4675511166248319550.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P2366787546827618636

`filter[A020887(n+1), A353494(#)]`
-/

namespace A120427.P2366787546827618636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A120427.P2366787546827618636

namespace A120427

/-- `filter[A020887(n+1), A353494(#)]` -/
def P2366787546827618636.Spec : Prop :=
  ∀ n, P2366787546827618636.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P16115054666161561784

`filter[A020887(n+1), A358680(#)]`
-/

namespace A120427.P16115054666161561784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A120427.P16115054666161561784

namespace A120427

/-- `filter[A020887(n+1), A358680(#)]` -/
def P16115054666161561784.Spec : Prop :=
  ∀ n, P16115054666161561784.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P3952801711947455177

`filter[A020887(n+1), A359379(#)]`
-/

namespace A120427.P3952801711947455177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A120427.P3952801711947455177

namespace A120427

/-- `filter[A020887(n+1), A359379(#)]` -/
def P3952801711947455177.Spec : Prop :=
  ∀ n, P3952801711947455177.a n = A120427 (n + 1)

end A120427

/-! ## A120427.P15788205900668540294

`filter[A020887(n+1), A374036(#)]`
-/

namespace A120427.P15788205900668540294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A120427.P15788205900668540294

namespace A120427

/-- `filter[A020887(n+1), A374036(#)]` -/
def P15788205900668540294.Spec : Prop :=
  ∀ n, P15788205900668540294.a n = A120427 (n + 1)

end A120427

/-!
# A120430: Greater of prime powers that differ by 1. In other words, numbers k such that k-1 and k are prime powers.

The programs for A120430, there is no canonical definition to state claims against.
-/

/-! ## A120430.P6781429395476678769

`A006549(n+1)+1`
-/

namespace A120430.P6781429395476678769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (n + 1) + 1

end

end A120430.P6781429395476678769

/-! ## A120430.P14579838732985639045

`A164512(A004277(n))`
-/

namespace A120430.P14579838732985639045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A004277 n).toNat

end

end A120430.P14579838732985639045

/-! ## A120430.P14310762217724930105

`A164512(A004275(n+1))`
-/

namespace A120430.P14310762217724930105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A004275 (n + 1)).toNat

end

end A120430.P14310762217724930105

/-! ## A120430.P10455272402004231751

`A164512(A092535(n+1))`
-/

namespace A120430.P10455272402004231751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A092535 (n + 1)).toNat

end

end A120430.P10455272402004231751

/-! ## A120430.P402309657313864826

`A164512(A105360(n+1))`
-/

namespace A120430.P402309657313864826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A105360 (n + 1)).toNat

end

end A120430.P402309657313864826

/-!
# A120431: Numbers k such that k and k+2 are prime powers.

The programs for A120431, there is no canonical definition to state claims against.
-/

/-! ## A120431.P7545697596513598528

`A120432(n+1)-1`
-/

namespace A120431.P7545697596513598528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1) - 1

end

end A120431.P7545697596513598528

/-! ## A120431.P8315148194469347274

`∪[A064076(n+1), A334822(n+1)]`
-/

namespace A120431.P8315148194469347274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120431.P8315148194469347274

/-! ## A120431.P4411062516888928141

`∩[A001092(n+1)-2, A001092(n+1)]`
-/

namespace A120431.P4411062516888928141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001092 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120431.P4411062516888928141

/-! ## A120431.P14314977772415816545

`∩[A000961(n+1), A181062(n+1)-1]`
-/

namespace A120431.P14314977772415816545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120431.P14314977772415816545

/-! ## A120431.P17334508063786341579

`∩[A380757(n+1)-2, A380757(n+1)]`
-/

namespace A120431.P17334508063786341579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120431.P17334508063786341579

/-! ## A120431.P16269336692400499065

`∩[A000961(n+1), A000961(n+3)-2]`
-/

namespace A120431.P16269336692400499065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120431.P16269336692400499065

/-! ## A120431.P16279220991651634304

`∪[A064076(n+1), A164641(n+1)]`
-/

namespace A120431.P16279220991651634304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120431.P16279220991651634304

/-! ## A120431.P4112570783986562135

`record[A034699(A000961(n+3)-2)]`
-/

namespace A120431.P4112570783986562135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000961 (n + 3) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120431.P4112570783986562135

/-! ## A120431.P14728142600366735683

`record[A330691(A000961(n+1)+2)-2]`
-/

namespace A120431.P14728142600366735683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A000961 (n + 1) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120431.P14728142600366735683

/-! ## A120431.P3287840342401288813

`eq[A052125(n+2), A231813(n)]`
-/

namespace A120431.P3287840342401288813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120431.P3287840342401288813

/-! ## A120431.P9656244180885384701

`eq[A063919(n+2), A231813(n)]`
-/

namespace A120431.P9656244180885384701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120431.P9656244180885384701

/-! ## A120431.P2213024877380666355

`eq[A118106(n+2)², A231813(n)]`
-/

namespace A120431.P2213024877380666355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120431.P2213024877380666355

/-! ## A120431.P15294577447687372038

`eq[A066341(n+2), A231813(n)]`
-/

namespace A120431.P15294577447687372038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120431.P15294577447687372038

/-! ## A120431.P6561023013105947465

`A023443(A120432(n+1))`
-/

namespace A120431.P6561023013105947465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A120432 (n + 1)).toNat

end

end A120431.P6561023013105947465

/-! ## A120431.P16685678675569622181

`record[A345993(A345990(n+1))]`
-/

namespace A120431.P16685678675569622181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A345990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120431.P16685678675569622181

/-! ## A120431.P4427788372173220218

`eq[A010055(n+2), A231813(n)]`
-/

namespace A120431.P4427788372173220218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120431.P4427788372173220218

/-! ## A120431.P18389100010337979923

`eq[A028236(n+2), A231813(n)]`
-/

namespace A120431.P18389100010337979923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120431.P18389100010337979923

/-! ## A120431.P10219268187656433747

`record[A028233(record[A028233(n+3)]-2)]`
-/

namespace A120431.P10219268187656433747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120431.P10219268187656433747

/-! ## A120431.P3193841598469903922

`record[A309639(A000961(n+1)+2)-2]`
-/

namespace A120431.P3193841598469903922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (A000961 (n + 1) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120431.P3193841598469903922

/-! ## A120431.P13998903145585315620

`record[A010055(n+3)*A028233(n+1)]`
-/

namespace A120431.P13998903145585315620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 3) * A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120431.P13998903145585315620

/-!
# A120432: Numbers n such that n-1 and n+1 are prime powers.

The programs for A120432, there is no canonical definition to state claims against.
-/

/-! ## A120432.P15069300077608359075

`A120431(n+1)+1`
-/

namespace A120432.P15069300077608359075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) + 1

end

end A120432.P15069300077608359075

/-! ## A120432.P16497514508619929143

`∩[A000961(n+1)+1, A181062(n+1)]`
-/

namespace A120432.P16497514508619929143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120432.P16497514508619929143

/-! ## A120432.P7816335525220555219

`∩[A000961(n+1), A000961(n+3)-2]+1`
-/

namespace A120432.P7816335525220555219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A120432.P7816335525220555219

/-! ## A120432.P9046030670197094229

`∩[A181062(n+1), A057820(n)+a(n-1)]` with `a(0)=2`
-/

namespace A120432.P9046030670197094229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A057820 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120432.P9046030670197094229

/-! ## A120432.P9554016261645478440

`record[A034699(A000961(n+1)+2)-1]`
-/

namespace A120432.P9554016261645478440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000961 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120432.P9554016261645478440

/-! ## A120432.P4831768844162524071

`record[A034699(A034699(n+1)+2)-1]`
-/

namespace A120432.P4831768844162524071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A034699 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120432.P4831768844162524071

/-! ## A120432.P10637089926756301976

`record[A330691(A000961(n+1)+2)-1]`
-/

namespace A120432.P10637089926756301976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A000961 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120432.P10637089926756301976

/-! ## A120432.P176891445738370816

`eq[A066341(n+2), A231813(n)]+1`
-/

namespace A120432.P176891445738370816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120432.P176891445738370816

/-! ## A120432.P2165845337543982713

`A020725(A120431(n+1))`
-/

namespace A120432.P2165845337543982713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A120431 (n + 1)).toNat

end

end A120432.P2165845337543982713

/-! ## A120432.P2472066507792345160

`record[A345993(A345990(n+1))+1]`
-/

namespace A120432.P2472066507792345160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A345990 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120432.P2472066507792345160

/-! ## A120432.P18221467594863467139

`record[A345998(A345993(n+1)+2)]`
-/

namespace A120432.P18221467594863467139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (A345993 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120432.P18221467594863467139

/-! ## A120432.P116937783130312870

`record[A028233(A028233(n+1)+2)-1]`
-/

namespace A120432.P116937783130312870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028233 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120432.P116937783130312870

/-! ## A120432.P2590649142114852616

`record[A345993(A000961(n+1)+2)]-1`
-/

namespace A120432.P2590649142114852616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A000961 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A120432.P2590649142114852616

/-!
# A120433: Numbers whose Roman numeral representation uses the subtractive notation.

The programs for A120433, the canonical program `A120433.P11483961287416046233` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120433 has offset 1).

The definition of A120433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120433.P11483961287416046233

`eq[0, A089898(n)%5]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120433

/-- `eq[0, A089898(n)%5]` -/
def P11483961287416046233.Spec : Prop :=
  ∀ n, (P11483961287416046233.a n : ℤ) = A120433 (n + 1)

theorem P11483961287416046233.correct : P11483961287416046233.Spec := by
  intro n
  simp only [A120433, Nat.add_sub_cancel]

end A120433

/-! ## A120433.P431447348651014551

`eq[4, A061486(n)%5]`
-/

namespace A120433.P431447348651014551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061486 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120433.P431447348651014551

namespace A120433

/-- `eq[4, A061486(n)%5]` -/
def P431447348651014551.Spec : Prop :=
  ∀ n, (P431447348651014551.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P878117783838108641

`A057104(Δ[n²])/2`
-/

namespace A120433.P878117783838108641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057104 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A120433.P878117783838108641

namespace A120433

/-- `A057104(Δ[n²])/2` -/
def P878117783838108641.Spec : Prop :=
  ∀ n, P878117783838108641.a n = (A120433 (n + 1) : ℚ)

end A120433

/-! ## A120433.P14631019866502218706

`comp[floor(A007094(n)/2)]`
-/

namespace A120433.P14631019866502218706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007094 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A120433.P14631019866502218706

namespace A120433

/-- `comp[floor(A007094(n)/2)]` -/
def P14631019866502218706.Spec : Prop :=
  ∀ n, (P14631019866502218706.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P988011159808934696

`lt[63, A054055(2*n)²]`
-/

namespace A120433.P988011159808934696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120433.P988011159808934696

namespace A120433

/-- `lt[63, A054055(2*n)²]` -/
def P988011159808934696.Spec : Prop :=
  ∀ n, (P988011159808934696.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P5685363416003197750

`lt[7, A054055(2*n+1)]`
-/

namespace A120433.P5685363416003197750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120433.P5685363416003197750

namespace A120433

/-- `lt[7, A054055(2*n+1)]` -/
def P5685363416003197750.Spec : Prop :=
  ∀ n, (P5685363416003197750.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P16149857474321348513

`lt[1, n*A102681(2*n)]`
-/

namespace A120433.P16149857474321348513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102681 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120433.P16149857474321348513

namespace A120433

/-- `lt[1, n*A102681(2*n)]` -/
def P16149857474321348513.Spec : Prop :=
  ∀ n, (P16149857474321348513.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P17570862959225623395

`lt[8, log2(A086066(2*n+1))]`
-/

namespace A120433.P17570862959225623395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A086066 (2 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A120433.P17570862959225623395

namespace A120433

/-- `lt[8, log2(A086066(2*n+1))]` -/
def P17570862959225623395.Spec : Prop :=
  ∀ n, (P17570862959225623395.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P7375125396232327068

`lt[A030076(2*n+1)-1, 2]`
-/

namespace A120433.P7375125396232327068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (2 * n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A120433.P7375125396232327068

namespace A120433

/-- `lt[A030076(2*n+1)-1, 2]` -/
def P7375125396232327068.Spec : Prop :=
  ∀ n, (P7375125396232327068.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P14666054128210010585

`lt[A004184(A004179(n)), n]`
-/

namespace A120433.P14666054128210010585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004179 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A120433.P14666054128210010585

namespace A120433

/-- `lt[A004184(A004179(n)), n]` -/
def P14666054128210010585.Spec : Prop :=
  ∀ n, (P14666054128210010585.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P3052883519961470717

`record[A057979(A057104(n+2))]`
-/

namespace A120433.P3052883519961470717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057104 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120433.P3052883519961470717

namespace A120433

/-- `record[A057979(A057104(n+2))]` -/
def P3052883519961470717.Spec : Prop :=
  ∀ n, P3052883519961470717.a n = A120433 (n + 1)

end A120433

/-! ## A120433.P6625488221098727570

`A057979(A057104(2*(n+1)))`
-/

namespace A120433.P6625488221098727570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057104 (2 * (n + 1))).toNat

end

end A120433.P6625488221098727570

namespace A120433

/-- `A057979(A057104(2*(n+1)))` -/
def P6625488221098727570.Spec : Prop :=
  ∀ n, P6625488221098727570.a n = A120433 (n + 1)

end A120433

/-! ## A120433.P12340277456955145141

`lt[A004184(A004183(2*n)), n]`
-/

namespace A120433.P12340277456955145141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A120433.P12340277456955145141

namespace A120433

/-- `lt[A004184(A004183(2*n)), n]` -/
def P12340277456955145141.Spec : Prop :=
  ∀ n, (P12340277456955145141.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P9807056684425955942

`lt[A004184(2*n), A222254(2*n)]`
-/

namespace A120433.P9807056684425955942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120433.P9807056684425955942

namespace A120433

/-- `lt[A004184(2*n), A222254(2*n)]` -/
def P9807056684425955942.Spec : Prop :=
  ∀ n, (P9807056684425955942.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P11107496322913682786

`∪[A011534(n+1), A011539(n+1)]`
-/

namespace A120433.P11107496322913682786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120433.P11107496322913682786

namespace A120433

/-- `∪[A011534(n+1), A011539(n+1)]` -/
def P11107496322913682786.Spec : Prop :=
  ∀ n, (P11107496322913682786.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P11942612244247632504

`lt[A004151(2*A089898(n)), A089898(n)]`
-/

namespace A120433.P11942612244247632504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (2 * A089898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120433.P11942612244247632504

namespace A120433

/-- `lt[A004151(2*A089898(n)), A089898(n)]` -/
def P11942612244247632504.Spec : Prop :=
  ∀ n, (P11942612244247632504.a n : ℤ) = A120433 (n + 1)

end A120433

/-! ## A120433.P7549665950519831092

`eq[0, A179052(n)%5]`
-/

namespace A120433.P7549665950519831092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179052 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120433.P7549665950519831092

namespace A120433

/-- `eq[0, A179052(n)%5]` -/
def P7549665950519831092.Spec : Prop :=
  ∀ n, (P7549665950519831092.a n : ℤ) = A120433 (n + 1)

end A120433

/-!
# A120434: Triangle read by rows: counts permutations by number of big descents.

The programs for A120434, the canonical program `A120434.P2003402699123068110` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120434 has offset 2).

The definition of A120434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120434.P2003402699123068110

`A199335(A099375(n)+1+n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120434

/-- `A199335(A099375(n)+1+n)` -/
def P2003402699123068110.Spec : Prop :=
  ∀ n, P2003402699123068110.a n = A120434 (n + 2)

theorem P2003402699123068110.correct : P2003402699123068110.Spec := by
  intro n
  simp only [A120434, Nat.add_sub_cancel]

end A120434

/-! ## A120434.P8370687432636323205

`A199335(A061579(comp[∑[n]])+1)`
-/

namespace A120434.P8370687432636323205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A120434.P8370687432636323205

namespace A120434

/-- `A199335(A061579(comp[∑[n]])+1)` -/
def P8370687432636323205.Spec : Prop :=
  ∀ n, P8370687432636323205.a n = A120434 (n + 2)

end A120434

/-! ## A120434.P17545935464147356129

`A199335(A061579(comp[∑[n-1]]))`
-/

namespace A120434.P17545935464147356129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A120434.P17545935464147356129

namespace A120434

/-- `A199335(A061579(comp[∑[n-1]]))` -/
def P17545935464147356129.Spec : Prop :=
  ∀ n, P17545935464147356129.a n = A120434 (n + 2)

end A120434

/-! ## A120434.P9627598293353694929

`A199335(A114327(n)+A014132(n+1))`
-/

namespace A120434.P9627598293353694929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 (A114327 n + A014132 (n + 1)).toNat

end

end A120434.P9627598293353694929

namespace A120434

/-- `A199335(A114327(n)+A014132(n+1))` -/
def P9627598293353694929.Spec : Prop :=
  ∀ n, P9627598293353694929.a n = A120434 (n + 2)

end A120434

/-! ## A120434.P6803939463909363571

`A199335(A140978(n+1)-∑[A035214(n)])`
-/

namespace A120434.P6803939463909363571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 (A140978 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120434.P6803939463909363571

namespace A120434

/-- `A199335(A140978(n+1)-∑[A035214(n)])` -/
def P6803939463909363571.Spec : Prop :=
  ∀ n, P6803939463909363571.a n = A120434 (n + 2)

end A120434

/-!
# A120435: Triangle read by rows: T(n,k) = lcm(1,2,3,4,...,n)/k (1 <= k <= n).

The programs for A120435, the canonical program `A120435.P10240398656846760236` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120435 has offset 1).

The definition of A120435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120435.P10240398656846760236

`A003418(∑[char[∑[n]]])/(1-C(∑[char[∑[n]]], 2)+n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120435

/-- `A003418(∑[char[∑[n]]])/(1-C(∑[char[∑[n]]], 2)+n)` -/
def P10240398656846760236.Spec : Prop :=
  ∀ n, P10240398656846760236.a n = (A120435 (n + 1) : ℚ)

end A120435

/-! ## A120435.P11952808466208055878

`A003418(comp[C(n, 2)-1]-n)/(1-A057944(n)+n)`
-/

namespace A120435.P11952808466208055878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) : ℚ) / (1 - A057944 n + (n : ℤ) : ℚ)

end

end A120435.P11952808466208055878

namespace A120435

/-- `A003418(comp[C(n, 2)-1]-n)/(1-A057944(n)+n)` -/
def P11952808466208055878.Spec : Prop :=
  ∀ n, P11952808466208055878.a n = (A120435 (n + 1) : ℚ)

end A120435

/-! ## A120435.P15461396899406978159

`A003418(comp[C(n, 2)-1]-n)/(2*(n+1)-A004201(n+1))`
-/

namespace A120435.P15461396899406978159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) : ℚ) / ((2 * (n + 1) : ℤ) - A004201 (n + 1) : ℚ)

end

end A120435.P15461396899406978159

namespace A120435

/-- `A003418(comp[C(n, 2)-1]-n)/(2*(n+1)-A004201(n+1))` -/
def P15461396899406978159.Spec : Prop :=
  ∀ n, P15461396899406978159.a n = (A120435 (n + 1) : ℚ)

end A120435

/-! ## A120435.P5699316200322078341

`A003418(∑[A010054(n)])/A002260(n+1)`
-/

namespace A120435.P5699316200322078341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A120435.P5699316200322078341

namespace A120435

/-- `A003418(∑[A010054(n)])/A002260(n+1)` -/
def P5699316200322078341.Spec : Prop :=
  ∀ n, P5699316200322078341.a n = (A120435 (n + 1) : ℚ)

end A120435

/-! ## A120435.P9100407781718818753

`A003418(A002024(n+1))/A002260(n+1)`
-/

namespace A120435.P9100407781718818753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A002024 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A120435.P9100407781718818753

namespace A120435

/-- `A003418(A002024(n+1))/A002260(n+1)` -/
def P9100407781718818753.Spec : Prop :=
  ∀ n, P9100407781718818753.a n = (A120435 (n + 1) : ℚ)

end A120435

/-! ## A120435.P2938298726411107715

`A120108(A057944(n))/A002260(n+1)`
-/

namespace A120435.P2938298726411107715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (A057944 n).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A120435.P2938298726411107715

namespace A120435

/-- `A120108(A057944(n))/A002260(n+1)` -/
def P2938298726411107715.Spec : Prop :=
  ∀ n, P2938298726411107715.a n = (A120435 (n + 1) : ℚ)

end A120435

/-! ## A120435.P9678615440551256264

`A002944(A002260(n+1))*A120108(n)`
-/

namespace A120435.P9678615440551256264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A002260 (n + 1)).toNat * A120108 n

end

end A120435.P9678615440551256264

namespace A120435

/-- `A002944(A002260(n+1))*A120108(n)` -/
def P9678615440551256264.Spec : Prop :=
  ∀ n, P9678615440551256264.a n = A120435 (n + 1)

end A120435

/-! ## A120435.P12528949603812380289

`A120108(n)*A349203(A112367(n))`
-/

namespace A120435.P12528949603812380289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 n * A349203 (A112367 n).toNat

end

end A120435.P12528949603812380289

namespace A120435

/-- `A120108(n)*A349203(A112367(n))` -/
def P12528949603812380289.Spec : Prop :=
  ∀ n, P12528949603812380289.a n = A120435 (n + 1)

end A120435

/-! ## A120435.P9117762357922717855

`A135278(n)*A349203(n)`
-/

namespace A120435.P9117762357922717855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A349203 n

end

end A120435.P9117762357922717855

namespace A120435

/-- `A135278(n)*A349203(n)` -/
def P9117762357922717855.Spec : Prop :=
  ∀ n, P9117762357922717855.a n = A120435 (n + 1)

end A120435

/-! ## A120435.P12074687657463580735

`A074909(n+1)*A349203(n)`
-/

namespace A120435.P12074687657463580735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A349203 n

end

end A120435.P12074687657463580735

namespace A120435

/-- `A074909(n+1)*A349203(n)` -/
def P12074687657463580735.Spec : Prop :=
  ∀ n, P12074687657463580735.a n = A120435 (n + 1)

end A120435

/-!
# A120437: Differences of A037314 (sum of base-3 digits of n = sum of base-9 digits of n).

The programs for A120437, the canonical program `A120437.P11021873601031036809` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120437 has offset 1).

The definition of A120437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120437.P18291969682077204001

`A037314(n+1)-A037314(n)`
-/

namespace A120437.P18291969682077204001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (n + 1) - A037314 n

end

end A120437.P18291969682077204001

namespace A120437

/-- `A037314(n+1)-A037314(n)` -/
def P18291969682077204001.Spec : Prop :=
  ∀ n, P18291969682077204001.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P11021873601031036809

`A066443(val(n+1, 3))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120437

/-- `A066443(val(n+1, 3))` -/
def P11021873601031036809.Spec : Prop :=
  ∀ n, P11021873601031036809.a n = A120437 (n + 1)

theorem P11021873601031036809.correct : P11021873601031036809.Spec := by
  intro n
  simp only [A120437, Nat.add_sub_cancel]

end A120437

/-! ## A120437.P7555229059206071153

`A057660(3^val(n+1, 3))`
-/

namespace A120437.P7555229059206071153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (3 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A120437.P7555229059206071153

namespace A120437

/-- `A057660(3^val(n+1, 3))` -/
def P7555229059206071153.Spec : Prop :=
  ∀ n, P7555229059206071153.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P12343838796317187267

`A057660(A038500(n+1))`
-/

namespace A120437.P12343838796317187267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (A038500 (n + 1)).toNat

end

end A120437.P12343838796317187267

namespace A120437

/-- `A057660(A038500(n+1))` -/
def P12343838796317187267.Spec : Prop :=
  ∀ n, P12343838796317187267.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P1543805020539403900

`A046163(A080278(n+1))`
-/

namespace A120437.P1543805020539403900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A080278 (n + 1)).toNat

end

end A120437.P1543805020539403900

namespace A120437

/-- `A046163(A080278(n+1))` -/
def P1543805020539403900.Spec : Prop :=
  ∀ n, P1543805020539403900.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P7062763447471713627

`A078747(A370180(n+1))`
-/

namespace A120437.P7062763447471713627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078747 (A370180 (n + 1)).toNat

end

end A120437.P7062763447471713627

namespace A120437

/-- `A078747(A370180(n+1))` -/
def P7062763447471713627.Spec : Prop :=
  ∀ n, P7062763447471713627.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P17842779572707389861

`A057660(n+1)/A057660(A038502(n+1))`
-/

namespace A120437.P17842779572707389861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057660 (n + 1) : ℚ) / (A057660 (A038502 (n + 1)).toNat : ℚ)

end

end A120437.P17842779572707389861

namespace A120437

/-- `A057660(n+1)/A057660(A038502(n+1))` -/
def P17842779572707389861.Spec : Prop :=
  ∀ n, P17842779572707389861.a n = (A120437 (n + 1) : ℚ)

end A120437

/-! ## A120437.P12759476082767969805

`Δ[A037314(n)]`
-/

namespace A120437.P12759476082767969805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120437.P12759476082767969805

namespace A120437

/-- `Δ[A037314(n)]` -/
def P12759476082767969805.Spec : Prop :=
  ∀ n, P12759476082767969805.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P2613793345618744024

`Δ[A338086(n)/4]`
-/

namespace A120437.P2613793345618744024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338086 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120437.P2613793345618744024

namespace A120437

/-- `Δ[A338086(n)/4]` -/
def P2613793345618744024.Spec : Prop :=
  ∀ n, P2613793345618744024.a n = (A120437 (n + 1) : ℚ)

end A120437

/-! ## A120437.P16283505877153346002

`A008796(A074724(n+1))`
-/

namespace A120437.P16283505877153346002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (A074724 (n + 1)).toNat

end

end A120437.P16283505877153346002

namespace A120437

/-- `A008796(A074724(n+1))` -/
def P16283505877153346002.Spec : Prop :=
  ∀ n, P16283505877153346002.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P5411469803105127940

`A055246(A023717(n+1)-A023717(n))`
-/

namespace A120437.P5411469803105127940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (A023717 (n + 1) - A023717 n).toNat

end

end A120437.P5411469803105127940

namespace A120437

/-- `A055246(A023717(n+1)-A023717(n))` -/
def P5411469803105127940.Spec : Prop :=
  ∀ n, P5411469803105127940.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P18334730451496389753

`Δ[record[A065369(n)]]`
-/

namespace A120437.P18334730451496389753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120437.P18334730451496389753

namespace A120437

/-- `Δ[record[A065369(n)]]` -/
def P18334730451496389753.Spec : Prop :=
  ∀ n, P18334730451496389753.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P18373747538273756522

`A006368(A038500(n+1)²)`
-/

namespace A120437.P18373747538273756522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A038500 (n + 1) ^ 2).toNat

end

end A120437.P18373747538273756522

namespace A120437

/-- `A006368(A038500(n+1)²)` -/
def P18373747538273756522.Spec : Prop :=
  ∀ n, P18373747538273756522.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P12163448571503438178

`A028390(A038500(n+1)²)`
-/

namespace A120437.P12163448571503438178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028390 (A038500 (n + 1) ^ 2).toNat

end

end A120437.P12163448571503438178

namespace A120437

/-- `A028390(A038500(n+1)²)` -/
def P12163448571503438178.Spec : Prop :=
  ∀ n, P12163448571503438178.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P786782139676489443

`A037915(A038500(n+1)²)`
-/

namespace A120437.P786782139676489443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A038500 (n + 1) ^ 2).toNat

end

end A120437.P786782139676489443

namespace A120437

/-- `A037915(A038500(n+1)²)` -/
def P786782139676489443.Spec : Prop :=
  ∀ n, P786782139676489443.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P8301874925993762882

`A160136(A038500(n+1)²)`
-/

namespace A120437.P8301874925993762882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160136 (A038500 (n + 1) ^ 2).toNat

end

end A120437.P8301874925993762882

namespace A120437

/-- `A160136(A038500(n+1)²)` -/
def P8301874925993762882.Spec : Prop :=
  ∀ n, P8301874925993762882.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P4420645723831795863

`A267807(A038500(n+1)²)`
-/

namespace A120437.P4420645723831795863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267807 (A038500 (n + 1) ^ 2).toNat

end

end A120437.P4420645723831795863

namespace A120437

/-- `A267807(A038500(n+1)²)` -/
def P4420645723831795863.Spec : Prop :=
  ∀ n, P4420645723831795863.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P10623500593825505016

`A336699(A038500(n+1)²)`
-/

namespace A120437.P10623500593825505016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A038500 (n + 1) ^ 2).toNat

end

end A120437.P10623500593825505016

namespace A120437

/-- `A336699(A038500(n+1)²)` -/
def P10623500593825505016.Spec : Prop :=
  ∀ n, P10623500593825505016.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P9432405387213833384

`A342131(A038500(n+1)²+1)`
-/

namespace A120437.P9432405387213833384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (A038500 (n + 1) ^ 2 + 1).toNat

end

end A120437.P9432405387213833384

namespace A120437

/-- `A342131(A038500(n+1)²+1)` -/
def P9432405387213833384.Spec : Prop :=
  ∀ n, P9432405387213833384.a n = A120437 (n + 1)

end A120437

/-! ## A120437.P11302507248905662617

`A066530(A038500(n+1)²-1)`
-/

namespace A120437.P11302507248905662617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (A038500 (n + 1) ^ 2 - 1).toNat

end

end A120437.P11302507248905662617

namespace A120437

/-- `A066530(A038500(n+1)²-1)` -/
def P11302507248905662617.Spec : Prop :=
  ∀ n, P11302507248905662617.a n = A120437 (n + 1)

end A120437

/-!
# A120438: Average of twin-prime pairs modulo 10 (least absolute residue).

The programs for A120438, the canonical program `A120438.P18071063481821398629` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120438 has offset 1).

The definition of A120438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120438.P17621468734795790493

`A141035(A006512(n+1))`
-/

namespace A120438.P17621468734795790493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (A006512 (n + 1)).toNat

end

end A120438.P17621468734795790493

namespace A120438

/-- `A141035(A006512(n+1))` -/
def P17621468734795790493.Spec : Prop :=
  ∀ n, P17621468734795790493.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P4574927013925706701

`A141035(A067829(n+2))`
-/

namespace A120438.P4574927013925706701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (A067829 (n + 2)).toNat

end

end A120438.P4574927013925706701

namespace A120438

/-- `A141035(A067829(n+2))` -/
def P4574927013925706701.Spec : Prop :=
  ∀ n, P4574927013925706701.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P18071063481821398629

`A141035(A094743(n+2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120438

/-- `A141035(A094743(n+2))` -/
def P18071063481821398629.Spec : Prop :=
  ∀ n, P18071063481821398629.a n = A120438 (n + 1)

theorem P18071063481821398629.correct : P18071063481821398629.Spec := by
  intro n
  simp only [A120438, Nat.add_sub_cancel]

end A120438

/-! ## A120438.P636484399373245701

`-A141035(A054735(n+1))`
-/

namespace A120438.P636484399373245701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A141035 (A054735 (n + 1)).toNat

end

end A120438.P636484399373245701

namespace A120438

/-- `-A141035(A054735(n+1))` -/
def P636484399373245701.Spec : Prop :=
  ∀ n, P636484399373245701.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P7162170986299852779

`A141035(p?[A048974(n+1)])`
-/

namespace A120438.P7162170986299852779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120438.P7162170986299852779

namespace A120438

/-- `A141035(p?[A048974(n+1)])` -/
def P7162170986299852779.Spec : Prop :=
  ∀ n, P7162170986299852779.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P16067667799021056730

`A141035(p?[A052147(n+1)])`
-/

namespace A120438.P16067667799021056730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120438.P16067667799021056730

namespace A120438

/-- `A141035(p?[A052147(n+1)])` -/
def P16067667799021056730.Spec : Prop :=
  ∀ n, P16067667799021056730.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P10913635494163290186

`A141035(p?[A123123(n+1)])`
-/

namespace A120438.P10913635494163290186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120438.P10913635494163290186

namespace A120438

/-- `A141035(p?[A123123(n+1)])` -/
def P10913635494163290186.Spec : Prop :=
  ∀ n, P10913635494163290186.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P12960550343825599184

`A141035(A001359(n+1)+2)`
-/

namespace A120438.P12960550343825599184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (A001359 (n + 1) + 2).toNat

end

end A120438.P12960550343825599184

namespace A120438

/-- `A141035(A001359(n+1)+2)` -/
def P12960550343825599184.Spec : Prop :=
  ∀ n, P12960550343825599184.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P10092711094550178559

`2*A117444(A040040(n+1))`
-/

namespace A120438.P10092711094550178559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117444 (A040040 (n + 1)).toNat

end

end A120438.P10092711094550178559

namespace A120438

/-- `2*A117444(A040040(n+1))` -/
def P10092711094550178559.Spec : Prop :=
  ∀ n, P10092711094550178559.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P1019897037606663221

`A177154(A108605(n+1))-4`
-/

namespace A120438.P1019897037606663221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177154 (A108605 (n + 1)).toNat - 4

end

end A120438.P1019897037606663221

namespace A120438

/-- `A177154(A108605(n+1))-4` -/
def P1019897037606663221.Spec : Prop :=
  ∀ n, P1019897037606663221.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P13729153475006442371

`A141035(A054735(n+1)/2+1)`
-/

namespace A120438.P13729153475006442371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A120438.P13729153475006442371

namespace A120438

/-- `A141035(A054735(n+1)/2+1)` -/
def P13729153475006442371.Spec : Prop :=
  ∀ n, P13729153475006442371.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P614197654936721279

`A177154(A054735(n+1)-2)-4`
-/

namespace A120438.P614197654936721279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177154 (A054735 (n + 1) - 2).toNat - 4

end

end A120438.P614197654936721279

namespace A120438

/-- `A177154(A054735(n+1)-2)-4` -/
def P614197654936721279.Spec : Prop :=
  ∀ n, P614197654936721279.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P7547363452875477269

`2*A117444(A014574(n+1)/2)`
-/

namespace A120438.P7547363452875477269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117444 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A120438.P7547363452875477269

namespace A120438

/-- `2*A117444(A014574(n+1)/2)` -/
def P7547363452875477269.Spec : Prop :=
  ∀ n, P7547363452875477269.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P15651721568681551640

`2*A257145(A111046(n+1)/2)`
-/

namespace A120438.P15651721568681551640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257145 (SequenceMachineLib.roundAway ((A111046 (n + 1) : ℚ) / 2)).toNat

end

end A120438.P15651721568681551640

namespace A120438

/-- `2*A257145(A111046(n+1)/2)` -/
def P15651721568681551640.Spec : Prop :=
  ∀ n, P15651721568681551640.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P1493946387951705593

`A000007(n+1)-2*A257145(A040040(n+1))`
-/

namespace A120438.P1493946387951705593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - 2 * A257145 (A040040 (n + 1)).toNat

end

end A120438.P1493946387951705593

namespace A120438

/-- `A000007(n+1)-2*A257145(A040040(n+1))` -/
def P1493946387951705593.Spec : Prop :=
  ∀ n, P1493946387951705593.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P10740691327063222352

`A008683(∑[4*(n+1)])-2*A257145(A040040(n+1))`
-/

namespace A120438.P10740691327063222352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) - 2 * A257145 (A040040 (n + 1)).toNat

end

end A120438.P10740691327063222352

namespace A120438

/-- `A008683(∑[4*(n+1)])-2*A257145(A040040(n+1))` -/
def P10740691327063222352.Spec : Prop :=
  ∀ n, P10740691327063222352.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P14725040651696486426

`2*A257145(A040040(n+1))*A008683(A051698(n))`
-/

namespace A120438.P14725040651696486426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257145 (A040040 (n + 1)).toNat * A008683 (A051698 n).toNat

end

end A120438.P14725040651696486426

namespace A120438

/-- `2*A257145(A040040(n+1))*A008683(A051698(n))` -/
def P14725040651696486426.Spec : Prop :=
  ∀ n, P14725040651696486426.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P5824852769073272155

`2*A257145(A040040(n+1))*A008683(A063535(n))`
-/

namespace A120438.P5824852769073272155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257145 (A040040 (n + 1)).toNat * A008683 (A063535 n).toNat

end

end A120438.P5824852769073272155

namespace A120438

/-- `2*A257145(A040040(n+1))*A008683(A063535(n))` -/
def P5824852769073272155.Spec : Prop :=
  ∀ n, P5824852769073272155.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P8002461172928932775

`2*A257145(A040040(n+1))*A008683(A078721(n))`
-/

namespace A120438.P8002461172928932775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257145 (A040040 (n + 1)).toNat * A008683 (A078721 n).toNat

end

end A120438.P8002461172928932775

namespace A120438

/-- `2*A257145(A040040(n+1))*A008683(A078721(n))` -/
def P8002461172928932775.Spec : Prop :=
  ∀ n, P8002461172928932775.a n = A120438 (n + 1)

end A120438

/-! ## A120438.P3099789612515005530

`2*A257145(A040040(n+1))*A008683(A151800(n))`
-/

namespace A120438.P3099789612515005530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257145 (A040040 (n + 1)).toNat * A008683 (A151800 n).toNat

end

end A120438.P3099789612515005530

namespace A120438

/-- `2*A257145(A040040(n+1))*A008683(A151800(n))` -/
def P3099789612515005530.Spec : Prop :=
  ∀ n, P3099789612515005530.a n = A120438 (n + 1)

end A120438

/-!
# A120439: Average of twin-prime pairs modulo 5.

The programs for A120439, the canonical program `A120439.P4767351886391421295` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120439 has offset 1).

The definition of A120439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120439.P18224764891904957090

`round(tan(-A120438(n+1)))`
-/

namespace A120439.P18224764891904957090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (-A120438 (n + 1) : ℝ))

end

end A120439.P18224764891904957090

namespace A120439

/-- `round(tan(-A120438(n+1)))` -/
def P18224764891904957090.Spec : Prop :=
  ∀ n, P18224764891904957090.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P12013143242155597430

`(A006512(n+1)+1)%5-2`
-/

namespace A120439.P12013143242155597430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006512 (n + 1) + 1) 5 - 2

end

end A120439.P12013143242155597430

namespace A120439

/-- `(A006512(n+1)+1)%5-2` -/
def P12013143242155597430.Spec : Prop :=
  ∀ n, P12013143242155597430.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P17809508524338693145

`(A014574(n+1)+2)%5-2`
-/

namespace A120439.P17809508524338693145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014574 (n + 1) + 2) 5 - 2

end

end A120439.P17809508524338693145

namespace A120439

/-- `(A014574(n+1)+2)%5-2` -/
def P17809508524338693145.Spec : Prop :=
  ∀ n, P17809508524338693145.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P1769557846098037117

`(A067829(n+2)+1)%5-2`
-/

namespace A120439.P1769557846098037117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067829 (n + 2) + 1) 5 - 2

end

end A120439.P1769557846098037117

namespace A120439

/-- `(A067829(n+2)+1)%5-2` -/
def P1769557846098037117.Spec : Prop :=
  ∀ n, P1769557846098037117.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P5231816358891426142

`(A001359(n+1)-2)%5-2`
-/

namespace A120439.P5231816358891426142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1) - 2) 5 - 2

end

end A120439.P5231816358891426142

namespace A120439

/-- `(A001359(n+1)-2)%5-2` -/
def P5231816358891426142.Spec : Prop :=
  ∀ n, P5231816358891426142.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P11314076809403109071

`A117444(A014574(n+1))`
-/

namespace A120439.P11314076809403109071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A014574 (n + 1)).toNat

end

end A120439.P11314076809403109071

namespace A120439

/-- `A117444(A014574(n+1))` -/
def P11314076809403109071.Spec : Prop :=
  ∀ n, P11314076809403109071.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P16848828481104321161

`A105825(A006512(n+1))-2`
-/

namespace A120439.P16848828481104321161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (A006512 (n + 1)).toNat - 2

end

end A120439.P16848828481104321161

namespace A120439

/-- `A105825(A006512(n+1))-2` -/
def P16848828481104321161.Spec : Prop :=
  ∀ n, P16848828481104321161.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P9821309004171719742

`A117444(2*A040040(n+1))`
-/

namespace A120439.P9821309004171719742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (2 * A040040 (n + 1)).toNat

end

end A120439.P9821309004171719742

namespace A120439

/-- `A117444(2*A040040(n+1))` -/
def P9821309004171719742.Spec : Prop :=
  ∀ n, P9821309004171719742.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P3719674145430662265

`A105825(p?[A072281(n+1)])-2`
-/

namespace A120439.P3719674145430662265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A120439.P3719674145430662265

namespace A120439

/-- `A105825(p?[A072281(n+1)])-2` -/
def P3719674145430662265.Spec : Prop :=
  ∀ n, P3719674145430662265.a n = A120439 (n + 1)

end A120439

/-! ## A120439.P4256151681738421382

`A141035(A001359(n+1)+1)/2`
-/

namespace A120439.P4256151681738421382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141035 (A001359 (n + 1) + 1).toNat : ℚ) / 2

end

end A120439.P4256151681738421382

namespace A120439

/-- `A141035(A001359(n+1)+1)/2` -/
def P4256151681738421382.Spec : Prop :=
  ∀ n, P4256151681738421382.a n = (A120439 (n + 1) : ℚ)

end A120439

/-! ## A120439.P2628452951919039265

`A141035(A054735(n+1)+1)/2`
-/

namespace A120439.P2628452951919039265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141035 (A054735 (n + 1) + 1).toNat : ℚ) / 2

end

end A120439.P2628452951919039265

namespace A120439

/-- `A141035(A054735(n+1)+1)/2` -/
def P2628452951919039265.Spec : Prop :=
  ∀ n, P2628452951919039265.a n = (A120439 (n + 1) : ℚ)

end A120439

/-! ## A120439.P15153925096386298619

`A141035(A006512(n+1)-1)/2`
-/

namespace A120439.P15153925096386298619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141035 (A006512 (n + 1) - 1).toNat : ℚ) / 2

end

end A120439.P15153925096386298619

namespace A120439

/-- `A141035(A006512(n+1)-1)/2` -/
def P15153925096386298619.Spec : Prop :=
  ∀ n, P15153925096386298619.a n = (A120439 (n + 1) : ℚ)

end A120439

/-! ## A120439.P4767351886391421295

`A105825(p?[A000040(n+1)+2])-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120439

/-- `A105825(p?[A000040(n+1)+2])-2` -/
def P4767351886391421295.Spec : Prop :=
  ∀ n, P4767351886391421295.a n = A120439 (n + 1)

theorem P4767351886391421295.correct : P4767351886391421295.Spec := by
  intro n
  simp only [A120439, Nat.add_sub_cancel]

end A120439

/-! ## A120439.P16000266758248226685

`A257145(A040040(n+1)+2*A040040(n+1))`
-/

namespace A120439.P16000266758248226685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257145 (A040040 (n + 1) + 2 * A040040 (n + 1)).toNat

end

end A120439.P16000266758248226685

namespace A120439

/-- `A257145(A040040(n+1)+2*A040040(n+1))` -/
def P16000266758248226685.Spec : Prop :=
  ∀ n, P16000266758248226685.a n = A120439 (n + 1)

end A120439

/-!
# A120440: Nearest integer to twin-prime pair averages divided by 10.

The programs for A120440, there is no canonical definition to state claims against.
-/

/-! ## A120440.P11968641369158753852

`ceil(A243811(n+1)/5)`
-/

namespace A120440.P11968641369158753852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243811 (n + 1) : ℚ) / 5⌉

end

end A120440.P11968641369158753852

/-! ## A120440.P6132599574429067677

`round(A040040(n+1)/5)`
-/

namespace A120440.P6132599574429067677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A040040 (n + 1) : ℚ) / 5)

end

end A120440.P6132599574429067677

/-! ## A120440.P3011223111537894167

`round(A168497(n+2)/5)`
-/

namespace A120440.P3011223111537894167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168497 (n + 2) : ℚ) / 5)

end

end A120440.P3011223111537894167

/-! ## A120440.P4569817967458545929

`round(A001359(n+1)/10)`
-/

namespace A120440.P4569817967458545929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001359 (n + 1) : ℚ) / 10)

end

end A120440.P4569817967458545929

/-! ## A120440.P5946122152305776080

`round(A014574(n+1)/10)`
-/

namespace A120440.P5946122152305776080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 10)

end

end A120440.P5946122152305776080

/-! ## A120440.P10112751592768433434

`round(p?[A000040(n+1)-2]/10)`
-/

namespace A120440.P10112751592768433434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10)

end

end A120440.P10112751592768433434

/-! ## A120440.P11113566300352990154

`floor((p?[A000040(n+2)+2]+3)/10)`
-/

namespace A120440.P11113566300352990154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℚ) / 10⌋

end

end A120440.P11113566300352990154

/-! ## A120440.P12944685346130904938

`A008616(A001359(n+1))`
-/

namespace A120440.P12944685346130904938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001359 (n + 1)).toNat

end

end A120440.P12944685346130904938

/-!
# A120441: "Mary had a little lamb" played on a touch-tone telephone. Numbers represent the buttons to press.

The programs for A120441, there is no canonical definition to state claims against.
-/

/-! ## A120441.P7031345889395234905

`round(sqrt(cosh(A256427(n+1))))`
-/

namespace A120441.P7031345889395234905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.cosh (A256427 (n + 1) : ℝ)))

end

end A120441.P7031345889395234905

/-! ## A120441.P7527214080812501482

`A015898(or(C(2, n), A256427(n+1)))`
-/

namespace A120441.P7527214080812501482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015898 (Int.lor (Nat.choose 2 n : ℤ) (A256427 (n + 1))).toNat

end

end A120441.P7527214080812501482

/-! ## A120441.P12462297816962871415

`A079971(or(C(2, n), A256427(n+1)))`
-/

namespace A120441.P12462297816962871415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079971 (Int.lor (Nat.choose 2 n : ℤ) (A256427 (n + 1))).toNat

end

end A120441.P12462297816962871415

/-! ## A120441.P296461468724740098

`A256404(or(C(2, n), A256427(n+1)))`
-/

namespace A120441.P296461468724740098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256404 (Int.lor (Nat.choose 2 n : ℤ) (A256427 (n + 1))).toNat

end

end A120441.P296461468724740098

/-! ## A120441.P10037232721993734903

`A256404(lcm((-1)^val(n+1, 2), A256427(n+1)))`
-/

namespace A120441.P10037232721993734903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256404 (Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A256427 (n + 1)))

end

end A120441.P10037232721993734903

/-!
# A120442: P-positions of John H. Conway's "Digit Deletions" game from "On Numbers and Games". Each number is the smallest positive integer that cannot be reduced to an earlier number in the sequence, by performing one of the following two operations: (1) changing one digit to a smaller digit (but not changing the leading digit to 0), or (2) deleting a 0 and all subsequent digits.

The programs for A120442, there is no canonical definition to state claims against.
-/

/-! ## A120442.P15566601072194832292

`8*n+3*n+1-A309978(A095239(n+1))`
-/

namespace A120442.P15566601072194832292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + ((3 * n + 1 : ℤ) - A309978 (A095239 (n + 1)).toNat)

end

end A120442.P15566601072194832292

/-! ## A120442.P8294057059308004455

`A299497(A250120(2*n)-A299417(n))`
-/

namespace A120442.P8294057059308004455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299497 (A250120 (2 * n) - A299417 n).toNat

end

end A120442.P8294057059308004455

/-! ## A120442.P17585577412915224703

`xor(A061470(n+1), A209229(A090017(n)))`
-/

namespace A120442.P17585577412915224703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061470 (n + 1)) (A209229 (A090017 n).toNat)

end

end A120442.P17585577412915224703

/-! ## A120442.P6032435958296655064

`A127421(n+1)-A309978(A095239(n+1))`
-/

namespace A120442.P6032435958296655064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1) - A309978 (A095239 (n + 1)).toNat

end

end A120442.P6032435958296655064

/-! ## A120442.P6412531412228386143

`A061470(n+1)-A014141(A135501(n+2))`
-/

namespace A120442.P6412531412228386143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061470 (n + 1) - A014141 (A135501 (n + 2)).toNat

end

end A120442.P6412531412228386143

/-!
# A120443: Number of (undirected) Hamiltonian paths in the n X n grid graph.

The programs for A120443, there is no canonical definition to state claims against.
-/

/-! ## A120443.P4257322442732870206

`round(A096969(n+1)/2)`
-/

namespace A120443.P4257322442732870206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A096969 (n + 1) : ℚ) / 2)

end

end A120443.P4257322442732870206

/-! ## A120443.P18332526370204582546

`A096969(n+1)/A036452(n+1)`
-/

namespace A120443.P18332526370204582546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096969 (n + 1) : ℚ) / (A036452 (n + 1) : ℚ)

end

end A120443.P18332526370204582546

/-! ## A120443.P11094709478797672344

`(A096969(n+1)+A000007(n))/2`
-/

namespace A120443.P11094709478797672344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096969 (n + 1) + A000007 n : ℚ) / 2

end

end A120443.P11094709478797672344

/-! ## A120443.P5185353690745815322

`A332307(∑[4*n]+1)`
-/

namespace A120443.P5185353690745815322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120443.P5185353690745815322

/-!
# A120444: First differences of A004125.

The programs for A120444, the canonical program `A120444.P14466474420296758408` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120444 has offset 1).

The definition of A120444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120444.P14466474420296758408

`A005408(n+1)-A000203(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120444

/-- `A005408(n+1)-A000203(n+2)` -/
def P14466474420296758408.Spec : Prop :=
  ∀ n, P14466474420296758408.a n = A120444 (n + 1)

theorem P14466474420296758408.correct : P14466474420296758408.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel]

end A120444

/-! ## A120444.P14215083822033912051

`2*n+3-∑{d}[n+2, #]`
-/

namespace A120444.P14215083822033912051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A120444.P14215083822033912051

namespace A120444

/-- `2*n+3-∑{d}[n+2, #]` -/
def P14215083822033912051.Spec : Prop :=
  ∀ n, P14215083822033912051.a n = A120444 (n + 1)

theorem P14215083822033912051.correct : P14215083822033912051.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P14215083822033912051.f1, A120444.P14215083822033912051.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P8524012863017792825

`n+3-∑{d}[n+2, #]+n`
-/

namespace A120444.P8524012863017792825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n : ℤ)

end

end A120444.P8524012863017792825

namespace A120444

/-- `n+3-∑{d}[n+2, #]+n` -/
def P8524012863017792825.Spec : Prop :=
  ∀ n, P8524012863017792825.a n = A120444 (n + 1)

theorem P8524012863017792825.correct : P8524012863017792825.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P8524012863017792825.f1, A120444.P8524012863017792825.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P4777729654549525107

`A033879(n+2)-1`
-/

namespace A120444.P4777729654549525107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 2) - 1

end

end A120444.P4777729654549525107

namespace A120444

/-- `A033879(n+2)-1` -/
def P4777729654549525107.Spec : Prop :=
  ∀ n, P4777729654549525107.a n = A120444 (n + 1)

theorem P4777729654549525107.correct : P4777729654549525107.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P4777729654549525107.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P14551413885977265615

`A157449(n+2)-2`
-/

namespace A120444.P14551413885977265615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157449 (n + 2) - 2

end

end A120444.P14551413885977265615

namespace A120444

/-- `A157449(n+2)-2` -/
def P14551413885977265615.Spec : Prop :=
  ∀ n, P14551413885977265615.a n = A120444 (n + 1)

theorem P14551413885977265615.correct : P14551413885977265615.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P14551413885977265615.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, A157449, A157449.P13170254361894922479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P5081817157787648095

`∑[2-A053222(n+1)]`
-/

namespace A120444.P5081817157787648095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120444.P5081817157787648095

namespace A120444

/-- `∑[2-A053222(n+1)]` -/
def P5081817157787648095.Spec : Prop :=
  ∀ n, P5081817157787648095.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P1404658665302156326

`n-∑[A053246(n+1)]`
-/

namespace A120444.P1404658665302156326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120444.P1404658665302156326

namespace A120444

/-- `n-∑[A053246(n+1)]` -/
def P1404658665302156326.Spec : Prop :=
  ∀ n, P1404658665302156326.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P17131445054295109585

`∑[A163553(n+1)-n]`
-/

namespace A120444.P17131445054295109585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120444.P17131445054295109585

namespace A120444

/-- `∑[A163553(n+1)-n]` -/
def P17131445054295109585.Spec : Prop :=
  ∀ n, P17131445054295109585.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P9496622912188195581

`∑[2-Δ[A000203(n+1)]]`
-/

namespace A120444.P9496622912188195581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120444.P9496622912188195581

namespace A120444

/-- `∑[2-Δ[A000203(n+1)]]` -/
def P9496622912188195581.Spec : Prop :=
  ∀ n, P9496622912188195581.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P2242441880684780642

`3-(A000203(2*n-(n-2))-2*n)`
-/

namespace A120444.P2242441880684780642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A000203 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat - (2 * n : ℤ))

end

end A120444.P2242441880684780642

namespace A120444

/-- `3-(A000203(2*n-(n-2))-2*n)` -/
def P2242441880684780642.Spec : Prop :=
  ∀ n, P2242441880684780642.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P16128334944579041291

`n+3-A000203(C(n+2, n+1))+n`
-/

namespace A120444.P16128334944579041291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A000203 (Nat.choose (n + 2) (n + 1)) + (n : ℤ)

end

end A120444.P16128334944579041291

namespace A120444

/-- `n+3-A000203(C(n+2, n+1))+n` -/
def P16128334944579041291.Spec : Prop :=
  ∀ n, P16128334944579041291.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P8524011341170040713

`A117966(A295882(n+2))-1`
-/

namespace A120444.P8524011341170040713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 (n + 2)).toNat - 1

end

end A120444.P8524011341170040713

namespace A120444

/-- `A117966(A295882(n+2))-1` -/
def P8524011341170040713.Spec : Prop :=
  ∀ n, P8524011341170040713.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P7035133584389952102

`A163553(n+1)-A001065(n+1)`
-/

namespace A120444.P7035133584389952102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1) - A001065 (n + 1)

end

end A120444.P7035133584389952102

namespace A120444

/-- `A163553(n+1)-A001065(n+1)` -/
def P7035133584389952102.Spec : Prop :=
  ∀ n, P7035133584389952102.a n = A120444 (n + 1)

theorem P7035133584389952102.correct : P7035133584389952102.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P7035133584389952102.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A163553, A163553.P3851183957942676447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P10453034378278243937

`A387001(n+1)-A092403(n+1)`
-/

namespace A120444.P10453034378278243937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387001 (n + 1) - A092403 (n + 1)

end

end A120444.P10453034378278243937

namespace A120444

/-- `A387001(n+1)-A092403(n+1)` -/
def P10453034378278243937.Spec : Prop :=
  ∀ n, P10453034378278243937.a n = A120444 (n + 1)

theorem P10453034378278243937.correct : P10453034378278243937.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P10453034378278243937.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, A092403, A092403.P9702063797173032194.a, A387001, A387001.P16811340479551848930.a, A224880, A224880.P6780601834210635688.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P8865875956793599915

`A144396(n+1)-A000203(n+2)`
-/

namespace A120444.P8865875956793599915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A000203 (n + 2)

end

end A120444.P8865875956793599915

namespace A120444

/-- `A144396(n+1)-A000203(n+2)` -/
def P8865875956793599915.Spec : Prop :=
  ∀ n, P8865875956793599915.a n = A120444 (n + 1)

end A120444

/-! ## A120444.P652882950075734490

`A000203(n+2)-A294015(n+2)`
-/

namespace A120444.P652882950075734490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A294015 (n + 2)

end

end A120444.P652882950075734490

namespace A120444

/-- `A000203(n+2)-A294015(n+2)` -/
def P652882950075734490.Spec : Prop :=
  ∀ n, P652882950075734490.a n = A120444 (n + 1)

theorem P652882950075734490.correct : P652882950075734490.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P652882950075734490.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, A294015, A294015.P9060703257274913068.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P879504767288868531

`A000203(n+2)-(A091818(n+2)+1)`
-/

namespace A120444.P879504767288868531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A091818 (n + 2) + 1)

end

end A120444.P879504767288868531

namespace A120444

/-- `A000203(n+2)-(A091818(n+2)+1)` -/
def P879504767288868531.Spec : Prop :=
  ∀ n, P879504767288868531.a n = A120444 (n + 1)

theorem P879504767288868531.correct : P879504767288868531.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P879504767288868531.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P4544584509000999809

`A016825(n+1)/2-A000203(n+2)`
-/

namespace A120444.P4544584509000999809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (n + 1) : ℚ) / 2 - (A000203 (n + 2) : ℚ)

end

end A120444.P4544584509000999809

namespace A120444

/-- `A016825(n+1)/2-A000203(n+2)` -/
def P4544584509000999809.Spec : Prop :=
  ∀ n, P4544584509000999809.a n = (A120444 (n + 1) : ℚ)

theorem P4544584509000999809.correct : P4544584509000999809.Spec := by
  intro n
  simp only [A120444, Nat.add_sub_cancel, A120444.P4544584509000999809.a, A120444.P14466474420296758408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120444

/-! ## A120444.P18046498978282341876

`∑[2-Δ[∑{d}[n+1, #]]]`
-/

namespace A120444.P18046498978282341876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120444.P18046498978282341876

namespace A120444

/-- `∑[2-Δ[∑{d}[n+1, #]]]` -/
def P18046498978282341876.Spec : Prop :=
  ∀ n, P18046498978282341876.a n = A120444 (n + 1)

end A120444

/-!
# A120445: Number of different convex inscribed polygons with n pair of sides of lengths d1, d2, ..., dn all distinct. Or number of bracelets with n pairs of beads, each pair of one among n colors.

The programs for A120445, the canonical program `A120445.P10341418943431913259` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120445 has offset 1).

The definition of A120445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120445.P10341418943431913259

`((2*(n+1))!/2^(n+1)+(2*(n+1)+1)*(n+1)!)/(4*(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120445

/-- `((2*(n+1))!/2^(n+1)+(2*(n+1)+1)*(n+1)!)/(4*(n+1))` -/
def P10341418943431913259.Spec : Prop :=
  ∀ n, P10341418943431913259.a n = (A120445 (n + 1) : ℚ)

end A120445

/-! ## A120445.P1564012756845209893

`Δ[∑[A137729(n)+n!]/2]`
-/

namespace A120445.P1564012756845209893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137729 n + (Nat.factorial n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120445.P1564012756845209893

namespace A120445

/-- `Δ[∑[A137729(n)+n!]/2]` -/
def P1564012756845209893.Spec : Prop :=
  ∀ n, P1564012756845209893.a n = (A120445 (n + 1) : ℚ)

end A120445

/-! ## A120445.P13723578105202879789

`(A137729(n+1)+A000142(n+1))/2`
-/

namespace A120445.P13723578105202879789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137729 (n + 1) + A000142 (n + 1) : ℚ) / 2

end

end A120445.P13723578105202879789

namespace A120445

/-- `(A137729(n+1)+A000142(n+1))/2` -/
def P13723578105202879789.Spec : Prop :=
  ∀ n, P13723578105202879789.a n = (A120445 (n + 1) : ℚ)

end A120445

/-! ## A120445.P6902963592372588316

`A214609(A110303(n+1)+A000070(2*n+1))`
-/

namespace A120445.P6902963592372588316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214609 (A110303 (n + 1) + A000070 (2 * n + 1)).toNat

end

end A120445.P6902963592372588316

namespace A120445

/-- `A214609(A110303(n+1)+A000070(2*n+1))` -/
def P6902963592372588316.Spec : Prop :=
  ∀ n, P6902963592372588316.a n = A120445 (n + 1)

end A120445

/-!
# A120446: Expansion of 1/(1-x-x^4-x^6).

The programs for A120446, the canonical program `A120446.P14188180720508523761` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120446 has offset 0).

The definition of A120446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4-x^6))` (program `A120446.P14188180720508523761`, by `A120446.P14188180720508523761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120446.P14188180720508523761

`ogf(1/(1-x-x^4-x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120446

/-- `ogf(1/(1-x-x^4-x^6))` -/
def P14188180720508523761.Spec : Prop :=
  ∀ n, P14188180720508523761.a n = A120446 n

theorem P14188180720508523761.correct : P14188180720508523761.Spec := by
  intro n
  simp only [A120446]

end A120446

/-! ## A120446.P6345150310302710212

`a(n-1)+a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A120446.P6345150310302710212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 4) + a (n - 6)

end

end A120446.P6345150310302710212

namespace A120446

/-- `a(n-1)+a(n-4)+a(n-6)` -/
def P6345150310302710212.Spec : Prop :=
  ∀ n, (P6345150310302710212.a n : ℤ) = A120446 n

end A120446

/-! ## A120446.P2229271957898236715

`A000930(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A120446.P2229271957898236715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000930 n - a (n - 3)

end

end A120446.P2229271957898236715

namespace A120446

/-- `A000930(n)-a(n-3)` -/
def P2229271957898236715.Spec : Prop :=
  ∀ n, P2229271957898236715.a n = A120446 n

end A120446

/-! ## A120446.P18116216848186570892

`∑[A078012(n)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A120446.P18116216848186570892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A120446.P18116216848186570892

namespace A120446

/-- `∑[A078012(n)]-a(n-3)` -/
def P18116216848186570892.Spec : Prop :=
  ∀ n, P18116216848186570892.a n = A120446 n

end A120446

/-! ## A120446.P11719684347547042495

`round(A000930(n)/A179070(n+1)*A000930(n))`
-/

namespace A120446.P11719684347547042495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000930 n : ℚ) / (A179070 (n + 1) : ℚ) * (A000930 n : ℚ))

end

end A120446.P11719684347547042495

namespace A120446

/-- `round(A000930(n)/A179070(n+1)*A000930(n))` -/
def P11719684347547042495.Spec : Prop :=
  ∀ n, P11719684347547042495.a n = A120446 n

end A120446

/-! ## A120446.P16373636321247995082

`round(A277252(n+4)/3)`
-/

namespace A120446.P16373636321247995082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A277252 (n + 4) : ℚ) / 3)

end

end A120446.P16373636321247995082

namespace A120446

/-- `round(A277252(n+4)/3)` -/
def P16373636321247995082.Spec : Prop :=
  ∀ n, P16373636321247995082.a n = A120446 n

end A120446

/-! ## A120446.P196235260316767898

`round(A000930(n)²/A179070(n+1))`
-/

namespace A120446.P196235260316767898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000930 n ^ 2 : ℚ) / (A179070 (n + 1) : ℚ))

end

end A120446.P196235260316767898

namespace A120446

/-- `round(A000930(n)²/A179070(n+1))` -/
def P196235260316767898.Spec : Prop :=
  ∀ n, P196235260316767898.a n = A120446 n

end A120446

/-!
# A120449: Array by antidiagonals of all primitive Orloj clock striking sequences.

The programs for A120449, there is no canonical definition to state claims against.
-/

/-! ## A120449.P4277485238581590332

`A063431(C(A080036(n), A306100(n)²))`
-/

namespace A120449.P4277485238581590332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (Nat.choose (A080036 n).toNat (A306100 n ^ 2).toNat)

end

end A120449.P4277485238581590332

/-! ## A120449.P7190221326885247080

`A214676(A376685(n+1)+A376662(n))`
-/

namespace A120449.P7190221326885247080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214676 (A376685 (n + 1) + A376662 n).toNat

end

end A120449.P7190221326885247080

/-! ## A120449.P15044861590137007551

`A214676(A278818(n)^A096591(2*(n+1)))`
-/

namespace A120449.P15044861590137007551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214676 (SequenceMachineLib.roundAway ((A278818 n : ℚ) ^ (A096591 (2 * (n + 1)) : ℤ))).toNat

end

end A120449.P15044861590137007551

/-!
# A120452: Number of partitions of n-1 boys and one girl with no couple.

The programs for A120452, there is no canonical definition to state claims against.
-/

/-! ## A120452.P11717675041743758173

`∑[A229816(n)]`
-/

namespace A120452.P11717675041743758173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P11717675041743758173

/-! ## A120452.P1398852234328277218

`∑[A000041(n)-A085811(n+2)]`
-/

namespace A120452.P1398852234328277218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P1398852234328277218

/-! ## A120452.P10905644347365396773

`A058884(n+1)+A027336(n+1)`
-/

namespace A120452.P10905644347365396773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 (n + 1) + A027336 (n + 1)

end

end A120452.P10905644347365396773

/-! ## A120452.P15322203110218071776

`∑[A000041(n)-A002865(abs(1-n))]`
-/

namespace A120452.P15322203110218071776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A002865 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P15322203110218071776

/-! ## A120452.P1533104263168132202

`A000041(n)+∑[∑[A085811(n+1)]]`
-/

namespace A120452.P1533104263168132202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P1533104263168132202

/-! ## A120452.P14815752307157105710

`∑[A002865(n)+∑[A085811(n+1)]]`
-/

namespace A120452.P14815752307157105710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P14815752307157105710

/-! ## A120452.P15501159256320446428

`A229816(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A120452.P15501159256320446428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229816 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A120452.P15501159256320446428

/-! ## A120452.P10180608815148216757

`∑[A182712(n)+A087787(n)]-A182712(n)`
-/

namespace A120452.P10180608815148216757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n + A087787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182712 n

end

end A120452.P10180608815148216757

/-! ## A120452.P14082829866767546150

`A000070(n)-∑[A085811(n+2)]`
-/

namespace A120452.P14082829866767546150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P14082829866767546150

/-! ## A120452.P3060373861936197610

`A000070(n)+A002865(n)-A000041(n)`
-/

namespace A120452.P3060373861936197610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A002865 n - A000041 n)

end

end A120452.P3060373861936197610

/-! ## A120452.P4775990493435257181

`A000041(n)+A000070(n)-A084376(n)`
-/

namespace A120452.P4775990493435257181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A000070 n - A084376 n)

end

end A120452.P4775990493435257181

/-! ## A120452.P11346777397614784622

`A027336(n+1)+A000070(n)-A000041(n+1)`
-/

namespace A120452.P11346777397614784622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A000070 n - A000041 (n + 1))

end

end A120452.P11346777397614784622

/-! ## A120452.P5571711966792500546

`∑[A035363(2*n)-A085811(n+2)]`
-/

namespace A120452.P5571711966792500546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120452.P5571711966792500546

/-! ## A120452.P2053931062433040807

`A215513(n+1)+A002865(n)-A220479(n+1)`
-/

namespace A120452.P2053931062433040807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215513 (n + 1) + (A002865 n - A220479 (n + 1))

end

end A120452.P2053931062433040807

/-! ## A120452.P14099780636808309744

`A344610(∑[n+1]+1)`
-/

namespace A120452.P14099780636808309744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120452.P14099780636808309744

/-!
# A120454: a(n) = ceiling(GPF(n)/LPF(n)) where GPF is greatest prime factor, LPF is least prime factor.

The programs for A120454, there is no canonical definition to state claims against.
-/

/-! ## A120454.P1495223567756198680

`ceil(A006530(n+1)/A020639(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120454.P1495223567756198680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)⌉

end

end A120454.P1495223567756198680

/-! ## A120454.P10518467099326000983

`floor(n/A130065(n+1))+1`
-/

namespace A120454.P10518467099326000983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A130065 (n + 1) : ℚ)⌋ + 1

end

end A120454.P10518467099326000983

/-! ## A120454.P412471552822449119

`ceil(A130064(n+1)/(n+1))`
-/

namespace A120454.P412471552822449119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130064 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A120454.P412471552822449119

/-! ## A120454.P12152049152619805415

`A143731(n+1)+A069897(n+1)`
-/

namespace A120454.P12152049152619805415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + A069897 (n + 1)

end

end A120454.P12152049152619805415

/-! ## A120454.P8549079763925465414

`ceil(A032742(n+1)/A052126(n+1))`
-/

namespace A120454.P8549079763925465414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032742 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)⌉

end

end A120454.P8549079763925465414

/-! ## A120454.P4546221218273242048

`ceil((n+1-A060681(n+1))/A052126(n+1))`
-/

namespace A120454.P4546221218273242048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) - A060681 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)⌉

end

end A120454.P4546221218273242048

/-! ## A120454.P6321750008616816859

`ceil(A032742(n+1)/(1-A171462(n+1)+n))`
-/

namespace A120454.P6321750008616816859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032742 (n + 1) : ℚ) / (1 - A171462 (n + 1) + (n : ℤ) : ℚ)⌉

end

end A120454.P6321750008616816859

/-! ## A120454.P14596435660382406969

`ceil(A006530(n+1)/(n+1)*A032742(n+1))`
-/

namespace A120454.P14596435660382406969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 1) : ℚ) / (n + 1 : ℚ) * (A032742 (n + 1) : ℚ)⌉

end

end A120454.P14596435660382406969

/-! ## A120454.P9302641693022171696

`ceil(gcd((2*n+1)²+n, A220096(n+1))/A052126(n+1))`
-/

namespace A120454.P9302641693022171696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd ((2 * n + 1) ^ 2 + n : ℤ) (A220096 (n + 1)) : ℚ) / (A052126 (n + 1) : ℚ)⌉

end

end A120454.P9302641693022171696

/-! ## A120454.P14525127755569285952

`ceil(A085392(n+1)/A014963(A028233(n+1)))`
-/

namespace A120454.P14525127755569285952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085392 (n + 1) : ℚ) / (A014963 (A028233 (n + 1)).toNat : ℚ)⌉

end

end A120454.P14525127755569285952

/-! ## A120454.P14112928790734542875

`ceil(A054576(2*(n+1))/A052126(n+1))`
-/

namespace A120454.P14112928790734542875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054576 (2 * (n + 1)) : ℚ) / (A052126 (n + 1) : ℚ)⌉

end

end A120454.P14112928790734542875

/-! ## A120454.P558669635961185347

`A382485(A066048(n+1))`
-/

namespace A120454.P558669635961185347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382485 (A066048 (n + 1)).toNat

end

end A120454.P558669635961185347

/-! ## A120454.P7386477327725596904

`ceil(A085392(n+1)/A085392(A028233((n+1)²)))`
-/

namespace A120454.P7386477327725596904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085392 (n + 1) : ℚ) / (A085392 (A028233 ((n + 1) ^ 2)).toNat : ℚ)⌉

end

end A120454.P7386477327725596904

/-!
# A120457: Sorted list of numbers of the form (p+1)*(q+1)*(r+1)*(s+1) that are not multiples of 48, where p, q, r, and s are primes.

The programs for A120457, there is no canonical definition to state claims against.
-/

/-! ## A120457.P12878394853798497082

`A003586(lt[3, A115570(3*n+2)])`
-/

namespace A120457.P12878394853798497082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120457.P12878394853798497082

/-! ## A120457.P12144891345261320656

`A340788(A340788(n+4)+A246200(2*n+1))`
-/

namespace A120457.P12144891345261320656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340788 (A340788 (n + 4) + A246200 (2 * n + 1)).toNat

end

end A120457.P12144891345261320656

/-!
# A120458: Triangle read by rows: row 0 is 1; for n>0, row n gives 1^n, prime(1)^n, prime(2)^n, ..., prime(n)^n.

The programs for A120458, the canonical program `A120458.P12527743672854816924` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120458 has offset 0).

The definition of A120458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120458.P12527743672854816924

`A008578(1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n+1]]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120458

/-- `A008578(1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n+1]]]` -/
def P12527743672854816924.Spec : Prop :=
  ∀ n, P12527743672854816924.a n = A120458 n

theorem P12527743672854816924.correct : P12527743672854816924.Spec := by
  intro n
  simp only [A120458]

end A120458

/-! ## A120458.P9730800951733929757

`A008578(A002260(n+1))^A003056(n)`
-/

namespace A120458.P9730800951733929757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (A002260 (n + 1)).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A120458.P9730800951733929757

namespace A120458

/-- `A008578(A002260(n+1))^A003056(n)` -/
def P9730800951733929757.Spec : Prop :=
  ∀ n, P9730800951733929757.a n = (A120458 n : ℚ)

end A120458

/-! ## A120458.P17800552049251574166

`A181819(2^(n-C(∑[char[∑[n]]], 2)))^∑[char[∑[n+1]]]`
-/

namespace A120458.P17800552049251574166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat ^ (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A120458.P17800552049251574166

namespace A120458

/-- `A181819(2^(n-C(∑[char[∑[n]]], 2)))^∑[char[∑[n+1]]]` -/
def P17800552049251574166.Spec : Prop :=
  ∀ n, P17800552049251574166.a n = A120458 n

end A120458

/-! ## A120458.P11789462407503897253

`A331835(2^(n-C(∑[char[∑[n]]], 2)))^∑[char[∑[n+1]]]`
-/

namespace A120458.P11789462407503897253
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat ^ (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A120458.P11789462407503897253

namespace A120458

/-- `A331835(2^(n-C(∑[char[∑[n]]], 2)))^∑[char[∑[n+1]]]` -/
def P11789462407503897253.Spec : Prop :=
  ∀ n, P11789462407503897253.a n = A120458 n

end A120458

/-! ## A120458.P9022651940932072950

`A122111(2^(n-C(∑[char[∑[n]]], 2)))^∑[char[∑[n+1]]]`
-/

namespace A120458.P9022651940932072950
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat ^ (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A120458.P9022651940932072950

namespace A120458

/-- `A122111(2^(n-C(∑[char[∑[n]]], 2)))^∑[char[∑[n+1]]]` -/
def P9022651940932072950.Spec : Prop :=
  ∀ n, P9022651940932072950.a n = A120458 n

end A120458

/-!
# A120459: Row sums of A120458.

The programs for A120459, there is no canonical definition to state claims against.
-/

/-! ## A120459.P15461212507874736194

`A120492(n+1)-A093360(n+1)`
-/

namespace A120459.P15461212507874736194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120492 (n + 1) - A093360 (n + 1)

end

end A120459.P15461212507874736194

/-! ## A120459.P3166399458874912809

`A120492(n+1)-A008578(n+2)^n`
-/

namespace A120459.P3166399458874912809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120492 (n + 1) - A008578 (n + 2) ^ n

end

end A120459.P3166399458874912809

/-! ## A120459.P7897581540954630190

`∑{p}[∏[eq[n, ∏{d}[n, #]]], #^n]+1`
-/

namespace A120459.P7897581540954630190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ n + 1

end

end A120459.P7897581540954630190

/-!
# A120460: Primes p such that (3*p^2+1)/4 is prime.

The programs for A120460, there is no canonical definition to state claims against.
-/

/-! ## A120460.P3090696596273280500

`p?[A121259(n+1)]`
-/

namespace A120460.P3090696596273280500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120460.P3090696596273280500

/-! ## A120460.P17016418170157272114

`p?[2*A111251(n+1)+1]`
-/

namespace A120460.P17016418170157272114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111251 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120460.P17016418170157272114

/-! ## A120460.P9679591839320792648

`p?[2*A002504(n+1)-1]`
-/

namespace A120460.P9679591839320792648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002504 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120460.P9679591839320792648

/-! ## A120460.P15711823018434701787

`∩[A121259(n+1), A042990(n)]`
-/

namespace A120460.P15711823018434701787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P15711823018434701787

/-! ## A120460.P5902056982110880600

`∩[A000040(n+1), A121259(n+1)]`
-/

namespace A120460.P5902056982110880600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P5902056982110880600

/-! ## A120460.P10536084157628938670

`∩[A006005(n+1), A121259(n+1)]`
-/

namespace A120460.P10536084157628938670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P10536084157628938670

/-! ## A120460.P17421041576088444068

`∩[A008578(n+1), A121259(n+1)]`
-/

namespace A120460.P17421041576088444068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P17421041576088444068

/-! ## A120460.P1524248236533365898

`∩[A046022(n+1), A121259(n+1)]`
-/

namespace A120460.P1524248236533365898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P1524248236533365898

/-! ## A120460.P2975032252438517075

`∩[A051948(n+1), A121259(n+1)]`
-/

namespace A120460.P2975032252438517075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P2975032252438517075

/-! ## A120460.P12483190358049036238

`∩[A065091(n+1), A121259(n+1)]`
-/

namespace A120460.P12483190358049036238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P12483190358049036238

/-! ## A120460.P10226053633260917027

`∩[A093515(n+1), A121259(n+1)]`
-/

namespace A120460.P10226053633260917027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P10226053633260917027

/-! ## A120460.P6264034448384282115

`∩[A053813(n+1), A121259(n+1)]`
-/

namespace A120460.P6264034448384282115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P6264034448384282115

/-! ## A120460.P11348994086961023092

`∩[A326715(n+1), A121259(n+1)]`
-/

namespace A120460.P11348994086961023092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P11348994086961023092

/-! ## A120460.P12335172867394024217

`∩[A066542(n+1), A121259(n+1)]`
-/

namespace A120460.P12335172867394024217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P12335172867394024217

/-! ## A120460.P13579791820864845578

`∩[A067133(n+1), A121259(n+1)]`
-/

namespace A120460.P13579791820864845578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P13579791820864845578

/-! ## A120460.P12648478539147328178

`∩[A053577(n+1), A121259(n+1)]`
-/

namespace A120460.P12648478539147328178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P12648478539147328178

/-! ## A120460.P387571943742584187

`∩[A066191(n+1), A121259(n+1)]`
-/

namespace A120460.P387571943742584187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120460.P387571943742584187

/-! ## A120460.P12187757486080219250

`filter[A121259(n+1), A010051(#)]`
-/

namespace A120460.P12187757486080219250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A120460.P12187757486080219250

/-! ## A120460.P8174715639088236525

`filter[A121259(n+1), A365716(#)]`
-/

namespace A120460.P8174715639088236525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A120460.P8174715639088236525

/-! ## A120460.P83668966523007915

`filter[A121259(n+1), A379969(#)]`
-/

namespace A120460.P83668966523007915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A120460.P83668966523007915

/-!
# A120461: Expansion of x*(4-x)/( (2x-1)*(x^2-x-1)).

The programs for A120461, the canonical program `A120461.P11746970576404570632` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120461 has offset 0).

The definition of A120461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4x-x^2)/(1-x-3x^2+2x^3))` (program `A120461.P11746970576404570632`, by `A120461.P11746970576404570632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120461.P11746970576404570632

`ogf((4x-x^2)/(1-x-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120461

/-- `ogf((4x-x^2)/(1-x-3x^2+2x^3))` -/
def P11746970576404570632.Spec : Prop :=
  ∀ n, P11746970576404570632.a n = A120461 n

theorem P11746970576404570632.correct : P11746970576404570632.Spec := by
  intro n
  simp only [A120461]

end A120461

/-! ## A120461.P18234903129020337450

`∑[A099163(n+1)]-A104005(n)`
-/

namespace A120461.P18234903129020337450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104005 n

end

end A120461.P18234903129020337450

namespace A120461

/-- `∑[A099163(n+1)]-A104005(n)` -/
def P18234903129020337450.Spec : Prop :=
  ∀ n, P18234903129020337450.a n = A120461 n

end A120461

/-! ## A120461.P13482438637153822743

`record[A135530(n)]-(A054877(n)+A052964(n))`
-/

namespace A120461.P13482438637153822743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A054877 n + A052964 n)

end

end A120461.P13482438637153822743

namespace A120461

/-- `record[A135530(n)]-(A054877(n)+A052964(n))` -/
def P13482438637153822743.Spec : Prop :=
  ∀ n, P13482438637153822743.a n = A120461 n

end A120461

/-! ## A120461.P14609624410059109542

`A000079(n+1)-(A054877(n)+A052964(n))`
-/

namespace A120461.P14609624410059109542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A054877 n + A052964 n)

end

end A120461.P14609624410059109542

namespace A120461

/-- `A000079(n+1)-(A054877(n)+A052964(n))` -/
def P14609624410059109542.Spec : Prop :=
  ∀ n, P14609624410059109542.a n = A120461 n

end A120461

/-! ## A120461.P17223973207032637541

`A000079(n)+A099163(n)-A061084(n+1)`
-/

namespace A120461.P17223973207032637541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A099163 n - A061084 (n + 1))

end

end A120461.P17223973207032637541

namespace A120461

/-- `A000079(n)+A099163(n)-A061084(n+1)` -/
def P17223973207032637541.Spec : Prop :=
  ∀ n, P17223973207032637541.a n = A120461 n

end A120461

/-! ## A120461.P16264978930402527099

`Δ[A048578(n)]-(A054877(n)+A052964(n))`
-/

namespace A120461.P16264978930402527099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A054877 n + A052964 n)

end

end A120461.P16264978930402527099

namespace A120461

/-- `Δ[A048578(n)]-(A054877(n)+A052964(n))` -/
def P16264978930402527099.Spec : Prop :=
  ∀ n, P16264978930402527099.a n = A120461 n

end A120461

/-! ## A120461.P15913343637021223812

`Δ[A126646(n)]-(A054877(n)+A052964(n))`
-/

namespace A120461.P15913343637021223812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A054877 n + A052964 n)

end

end A120461.P15913343637021223812

namespace A120461

/-- `Δ[A126646(n)]-(A054877(n)+A052964(n))` -/
def P15913343637021223812.Spec : Prop :=
  ∀ n, P15913343637021223812.a n = A120461 n

end A120461

/-!
# A120462: Expansion of -2*x*(-3-2*x+4*x^2) / ((x-1)*(2*x+1)*(2*x-1)*(1+x)).

The programs for A120462, the canonical program `A120462.P9055416981945760687` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120462 has offset 0).

The definition of A120462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6x+4x^2-8x^3)/(1-5x^2+4x^4))` (program `A120462.P9055416981945760687`, by `A120462.P9055416981945760687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120462.P9055416981945760687

`ogf((6x+4x^2-8x^3)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120462

/-- `ogf((6x+4x^2-8x^3)/(1-5x^2+4x^4))` -/
def P9055416981945760687.Spec : Prop :=
  ∀ n, P9055416981945760687.a n = A120462 n

theorem P9055416981945760687.correct : P9055416981945760687.Spec := by
  intro n
  simp only [A120462]

end A120462

/-! ## A120462.P17476464932866417093

`5*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=6, a(2)=4, a(3)=22`
-/

namespace A120462.P17476464932866417093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 4, 22] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A120462.P17476464932866417093

namespace A120462

/-- `5*a(n-2)-4*a(n-4)` -/
def P17476464932866417093.Spec : Prop :=
  ∀ n, P17476464932866417093.a n = A120462 n

end A120462

/-! ## A120462.P2099966478784571127

`lcm(2, A097072(n+1))`
-/

namespace A120462.P2099966478784571127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A097072 (n + 1))

end

end A120462.P2099966478784571127

namespace A120462

/-- `lcm(2, A097072(n+1))` -/
def P2099966478784571127.Spec : Prop :=
  ∀ n, (P2099966478784571127.a n : ℤ) = A120462 n

end A120462

/-! ## A120462.P2279990228378211877

`abs(Δ[A279030(n)]+1)`
-/

namespace A120462.P2279990228378211877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A120462.P2279990228378211877

namespace A120462

/-- `abs(Δ[A279030(n)]+1)` -/
def P2279990228378211877.Spec : Prop :=
  ∀ n, P2279990228378211877.a n = A120462 n

end A120462

/-! ## A120462.P14538946580747959896

`2*A193652(xor(1, n+1))`
-/

namespace A120462.P14538946580747959896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193652 (Nat.xor 1 (n + 1))

end

end A120462.P14538946580747959896

namespace A120462

/-- `2*A193652(xor(1, n+1))` -/
def P14538946580747959896.Spec : Prop :=
  ∀ n, P14538946580747959896.a n = A120462 n

end A120462

/-! ## A120462.P9419262870815001607

`A081631(n)-A167193(n)`
-/

namespace A120462.P9419262870815001607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 n - A167193 n

end

end A120462.P9419262870815001607

namespace A120462

/-- `A081631(n)-A167193(n)` -/
def P9419262870815001607.Spec : Prop :=
  ∀ n, P9419262870815001607.a n = A120462 n

end A120462

/-! ## A120462.P5925577313049099348

`A201630(n)-A255138(n)`
-/

namespace A120462.P5925577313049099348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201630 n - A255138 n

end

end A120462.P5925577313049099348

namespace A120462

/-- `A201630(n)-A255138(n)` -/
def P5925577313049099348.Spec : Prop :=
  ∀ n, P5925577313049099348.a n = A120462 n

end A120462

/-! ## A120462.P8842371385659716211

`xor(A133190(n), A255490(n))`
-/

namespace A120462.P8842371385659716211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133190 n) (A255490 n)

end

end A120462.P8842371385659716211

namespace A120462

/-- `xor(A133190(n), A255490(n))` -/
def P8842371385659716211.Spec : Prop :=
  ∀ n, P8842371385659716211.a n = A120462 n

end A120462

/-! ## A120462.P14784421348165920122

`Δ[A101622(n)]-A077925(n)`
-/

namespace A120462.P14784421348165920122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077925 n

end

end A120462.P14784421348165920122

namespace A120462

/-- `Δ[A101622(n)]-A077925(n)` -/
def P14784421348165920122.Spec : Prop :=
  ∀ n, P14784421348165920122.a n = A120462 n

end A120462

/-! ## A120462.P15134627199907072210

`A096773(n+1)+A062510(n)`
-/

namespace A120462.P15134627199907072210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (n + 1) + A062510 n

end

end A120462.P15134627199907072210

namespace A120462

/-- `A096773(n+1)+A062510(n)` -/
def P15134627199907072210.Spec : Prop :=
  ∀ n, P15134627199907072210.a n = A120462 n

end A120462

/-! ## A120462.P1623801684016468986

`A014551(n+1)-A077925(n)`
-/

namespace A120462.P1623801684016468986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) - A077925 n

end

end A120462.P1623801684016468986

namespace A120462

/-- `A014551(n+1)-A077925(n)` -/
def P1623801684016468986.Spec : Prop :=
  ∀ n, P1623801684016468986.a n = A120462 n

end A120462

/-! ## A120462.P16860890298306546543

`A000034(n)*A097072(n+1)`
-/

namespace A120462.P16860890298306546543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A097072 (n + 1)

end

end A120462.P16860890298306546543

namespace A120462

/-- `A000034(n)*A097072(n+1)` -/
def P16860890298306546543.Spec : Prop :=
  ∀ n, P16860890298306546543.a n = A120462 n

end A120462

/-! ## A120462.P8941617114250554277

`A151575(n+1)+A099430(n+1)`
-/

namespace A120462.P8941617114250554277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (n + 1) + A099430 (n + 1)

end

end A120462.P8941617114250554277

namespace A120462

/-- `A151575(n+1)+A099430(n+1)` -/
def P8941617114250554277.Spec : Prop :=
  ∀ n, P8941617114250554277.a n = A120462 n

end A120462

/-! ## A120462.P14498987729340726866

`A250554(n+1)-A263053(n+1)`
-/

namespace A120462.P14498987729340726866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250554 (n + 1) - A263053 (n + 1)

end

end A120462.P14498987729340726866

namespace A120462

/-- `A250554(n+1)-A263053(n+1)` -/
def P14498987729340726866.Spec : Prop :=
  ∀ n, P14498987729340726866.a n = A120462 n

end A120462

/-! ## A120462.P305409926140640067

`(A000035(n)+1)*A097072(n+1)`
-/

namespace A120462.P305409926140640067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A097072 (n + 1)

end

end A120462.P305409926140640067

namespace A120462

/-- `(A000035(n)+1)*A097072(n+1)` -/
def P305409926140640067.Spec : Prop :=
  ∀ n, P305409926140640067.a n = A120462 n

end A120462

/-! ## A120462.P11413448513451460740

`A052992(n+1)-A056594(2*n)`
-/

namespace A120462.P11413448513451460740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (n + 1) - A056594 (2 * n)

end

end A120462.P11413448513451460740

namespace A120462

/-- `A052992(n+1)-A056594(2*n)` -/
def P11413448513451460740.Spec : Prop :=
  ∀ n, P11413448513451460740.a n = A120462 n

end A120462

/-! ## A120462.P14388406778758185171

`A014551(n+1)+A151575(n+1)-1`
-/

namespace A120462.P14388406778758185171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) + (A151575 (n + 1) - 1)

end

end A120462.P14388406778758185171

namespace A120462

/-- `A014551(n+1)+A151575(n+1)-1` -/
def P14388406778758185171.Spec : Prop :=
  ∀ n, P14388406778758185171.a n = A120462 n

end A120462

/-! ## A120462.P9814861161400547002

`(1-A083944(n+1))*A040001(n+1)`
-/

namespace A120462.P9814861161400547002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A083944 (n + 1)) * A040001 (n + 1)

end

end A120462.P9814861161400547002

namespace A120462

/-- `(1-A083944(n+1))*A040001(n+1)` -/
def P9814861161400547002.Spec : Prop :=
  ∀ n, P9814861161400547002.a n = A120462 n

end A120462

/-! ## A120462.P13040815381452114351

`A005578(n+1)*A040003(n+1)-2`
-/

namespace A120462.P13040815381452114351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) * A040003 (n + 1) - 2

end

end A120462.P13040815381452114351

namespace A120462

/-- `A005578(n+1)*A040003(n+1)-2` -/
def P13040815381452114351.Spec : Prop :=
  ∀ n, P13040815381452114351.a n = A120462 n

end A120462

/-! ## A120462.P8889880695629367752

`A052992(n+1)-A034947(2*n+1)`
-/

namespace A120462.P8889880695629367752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (n + 1) - A034947 (2 * n + 1)

end

end A120462.P8889880695629367752

namespace A120462

/-- `A052992(n+1)-A034947(2*n+1)` -/
def P8889880695629367752.Spec : Prop :=
  ∀ n, P8889880695629367752.a n = A120462 n

end A120462

/-!
# A120463: Expansion of x*(1+x+2*x^3) / ((x-1)*(1+x)*(3*x^2-1)).

The programs for A120463, the canonical program `A120463.P10013612852783825773` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120463 has offset 0).

The definition of A120463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+2x^4)/(1-4x^2+3x^4))` (program `A120463.P10013612852783825773`, by `A120463.P10013612852783825773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120463.P10013612852783825773

`ogf((x+x^2+2x^4)/(1-4x^2+3x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120463

/-- `ogf((x+x^2+2x^4)/(1-4x^2+3x^4))` -/
def P10013612852783825773.Spec : Prop :=
  ∀ n, P10013612852783825773.a n = A120463 n

theorem P10013612852783825773.correct : P10013612852783825773.Spec := by
  intro n
  simp only [A120463]

end A120463

/-! ## A120463.P1958648751083273057

`gcd(3, n%2)+3*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A120463.P1958648751083273057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.gcd 3 (n % 2) + 3 * a (n - 2)

end

end A120463.P1958648751083273057

namespace A120463

/-- `gcd(3, n%2)+3*a(n-2)` -/
def P1958648751083273057.Spec : Prop :=
  ∀ n, (P1958648751083273057.a n : ℤ) = A120463 n

end A120463

/-! ## A120463.P17844927700099228565

`xor(3, n²)%n+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A120463.P17844927700099228565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 3 (n ^ 2) % n + 3 * a (n - 2)

end

end A120463.P17844927700099228565

namespace A120463

/-- `xor(3, n²)%n+3*a(n-2)` -/
def P17844927700099228565.Spec : Prop :=
  ∀ n, (P17844927700099228565.a n : ℤ) = A120463 n

end A120463

/-! ## A120463.P13681999396079135239

`A246360(n+1)-A040001(n)`
-/

namespace A120463.P13681999396079135239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (n + 1) - A040001 n

end

end A120463.P13681999396079135239

namespace A120463

/-- `A246360(n+1)-A040001(n)` -/
def P13681999396079135239.Spec : Prop :=
  ∀ n, P13681999396079135239.a n = A120463 n

end A120463

/-! ## A120463.P13926814936275245353

`record[A191450(n+1)]-A040001(n)`
-/

namespace A120463.P13926814936275245353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A040001 n

end

end A120463.P13926814936275245353

namespace A120463

/-- `record[A191450(n+1)]-A040001(n)` -/
def P13926814936275245353.Spec : Prop :=
  ∀ n, P13926814936275245353.a n = A120463 n

end A120463

/-! ## A120463.P17414179575460223592

`record[A279724(n+1)]-A040001(n)`
-/

namespace A120463.P17414179575460223592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A040001 n

end

end A120463.P17414179575460223592

namespace A120463

/-- `record[A279724(n+1)]-A040001(n)` -/
def P17414179575460223592.Spec : Prop :=
  ∀ n, P17414179575460223592.a n = A120463 n

end A120463

/-! ## A120463.P2891869593679775423

`A279724(A101881(n))-A040001(n)`
-/

namespace A120463.P2891869593679775423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (A101881 n).toNat - A040001 n

end

end A120463.P2891869593679775423

namespace A120463

/-- `A279724(A101881(n))-A040001(n)` -/
def P2891869593679775423.Spec : Prop :=
  ∀ n, P2891869593679775423.a n = A120463 n

end A120463

/-!
# A120464: a(n) = 5*a(n-1)+a(n-2)-2*a(n-3).

The programs for A120464, the canonical program `A120464.P12890736997624023736` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120464 has offset 0).

The definition of A120464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)-2*a(n-3)` (program `A120464.P12890736997624023736`, by `A120464.P12890736997624023736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120464.P12890736997624023736

`5*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120464

/-- `5*a(n-1)+a(n-2)-2*a(n-3)` -/
def P12890736997624023736.Spec : Prop :=
  ∀ n, P12890736997624023736.a n = A120464 n

theorem P12890736997624023736.correct : P12890736997624023736.Spec := by
  intro n
  simp only [A120464]

end A120464

/-! ## A120464.P2287473099735908162

`ogf((2x+x^2)/(1-5x-x^2+2x^3))`
-/

namespace A120464.P2287473099735908162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -5, -1, 2] n

end

end A120464.P2287473099735908162

namespace A120464

/-- `ogf((2x+x^2)/(1-5x-x^2+2x^3))` -/
def P2287473099735908162.Spec : Prop :=
  ∀ n, P2287473099735908162.a n = A120464 n

end A120464

/-!
# A120465: a(0)=1, a(1)=36, a(n)=204*a(n-2).

The programs for A120465, the canonical program `A120465.P2109454124883393486` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120465 has offset 0).

The definition of A120465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `204*a(n-2)` (program `A120465.P2109454124883393486`, by `A120465.P2109454124883393486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120465.P2109454124883393486

`204*a(n-2)` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120465

/-- `204*a(n-2)` -/
def P2109454124883393486.Spec : Prop :=
  ∀ n, (P2109454124883393486.a n : ℤ) = A120465 n

theorem P2109454124883393486.correct : P2109454124883393486.Spec := by
  intro n
  simp only [A120465]

end A120465

/-!
# A120467: a(n) = Product_{i=0..n} prime(i+1)^(Fibonacci(i) mod 2).

The programs for A120467, there is no canonical definition to state claims against.
-/

/-! ## A120467.P8896118428325274528

`∏[A000040(n+1)^(n²%3)]`
-/

namespace A120467.P8896118428325274528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120467.P8896118428325274528

/-! ## A120467.P8432417680728828999

`∏[gcd(A035377(n), A273960(n+1))]`
-/

namespace A120467.P8432417680728828999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035377 n) (A273960 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120467.P8432417680728828999

/-! ## A120467.P16455536372143074062

`∏[A000040(n+1)^and(1, A000045(n))]`
-/

namespace A120467.P16455536372143074062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (Int.land 1 (A000045 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120467.P16455536372143074062

/-! ## A120467.P10197193584639772678

`gcd(A000040(n+1), A280728(n))*a(n-1)` with `a(0)=1`
-/

namespace A120467.P10197193584639772678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A000040 (n + 1)) (A280728 n) * a (n - 1)

end

end A120467.P10197193584639772678

/-! ## A120467.P12157206797304598320

`∏[gcd(A000040(n+1), A103709(2*n+3))]`
-/

namespace A120467.P12157206797304598320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A103709 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120467.P12157206797304598320

/-!
# A120468: Expansion of -2*x*(-8-12*x+9*x^2) / ( (x-1)*(3*x-1)*(3*x+1)*(1+x) ).

The programs for A120468, the canonical program `A120468.P1762633640874172715` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120468 has offset 0).

The definition of A120468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((16x+24x^2-18x^3)/(1-10x^2+9x^4))` (program `A120468.P1762633640874172715`, by `A120468.P1762633640874172715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120468.P1762633640874172715

`ogf((16x+24x^2-18x^3)/(1-10x^2+9x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120468

/-- `ogf((16x+24x^2-18x^3)/(1-10x^2+9x^4))` -/
def P1762633640874172715.Spec : Prop :=
  ∀ n, P1762633640874172715.a n = A120468 n

theorem P1762633640874172715.correct : P1762633640874172715.Spec := by
  intro n
  simp only [A120468]

end A120468

/-! ## A120468.P17693252808873574830

`ceil(11/2*3^n)-A133419(∑[ceil(3^(n-1))])`
-/

namespace A120468.P17693252808873574830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℚ) / 2 * (3 ^ n : ℚ)⌉ - A133419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120468.P17693252808873574830

namespace A120468

/-- `ceil(11/2*3^n)-A133419(∑[ceil(3^(n-1))])` -/
def P17693252808873574830.Spec : Prop :=
  ∀ n, P17693252808873574830.a n = A120468 n

end A120468

/-! ## A120468.P10488302647688263773

`A163332(xor(3, A074324(2*n+3)))`
-/

namespace A120468.P10488302647688263773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (Int.xor 3 (A074324 (2 * n + 3))).toNat

end

end A120468.P10488302647688263773

namespace A120468

/-- `A163332(xor(3, A074324(2*n+3)))` -/
def P10488302647688263773.Spec : Prop :=
  ∀ n, P10488302647688263773.a n = A120468 n

end A120468

/-!
# A120469: Expansion of -(20*x^12 + 184*x^11 + 121*x^10 - 915*x^9 -1 524*x^8 - 132*x^7 + 1068*x^6 + 581*x^5 - 71*x^4 - 112*x^3 - 14*x^2 + 5*x +1) / ((3*x +1) * (16*x^12 + 140*x^11 + 2*x^10 - 968*x^9 - 830*x^8 + 946*x^7 + 982*x^6 - 239*x^5 - 351*x^4 - 5*x^3 + 39*x^2 + 3*x -1)).

The programs for A120469, there is no canonical definition to state claims against.
-/

/-! ## A120469.P15602144682573751856

`A065475(floor(sqrt(A033518(n))))`
-/

namespace A120469.P15602144682573751856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (Int.sqrt (A033518 n)).toNat

end

end A120469.P15602144682573751856

/-!
# A120470: a(n) = 2*4^n + (-1)^n*2^(n-1).

The programs for A120470, the canonical program `A120470.P11606726994522707544` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120470 has offset 1).

The definition of A120470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^(n+1)+(-1)^(n+1)*2^n` (program `A120470.P11606726994522707544`, by `A120470.P11606726994522707544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120470.P11606726994522707544

`2*4^(n+1)+(-1)^(n+1)*2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120470

/-- `2*4^(n+1)+(-1)^(n+1)*2^n` -/
def P11606726994522707544.Spec : Prop :=
  ∀ n, P11606726994522707544.a n = A120470 (n + 1)

theorem P11606726994522707544.correct : P11606726994522707544.Spec := by
  intro n
  simp only [A120470, Nat.add_sub_cancel]

end A120470

/-! ## A120470.P13999888586641060230

`ogf((7+20x)/(1-2x-8x^2))`
-/

namespace A120470.P13999888586641060230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 20] [1, -2, -8] n

end

end A120470.P13999888586641060230

namespace A120470

/-- `ogf((7+20x)/(1-2x-8x^2))` -/
def P13999888586641060230.Spec : Prop :=
  ∀ n, P13999888586641060230.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P12435718877958324373

`Δ[2*(2^(2*n+1)-a(n-1))]` with `a(0)=3`
-/

namespace A120470.P12435718877958324373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 * ((2 ^ (2 * n + 1) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P12435718877958324373

namespace A120470

/-- `Δ[2*(2^(2*n+1)-a(n-1))]` -/
def P12435718877958324373.Spec : Prop :=
  ∀ n, P12435718877958324373.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P15092631274544178568

`2^n*A014551(n+3)`
-/

namespace A120470.P15092631274544178568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014551 (n + 3)

end

end A120470.P15092631274544178568

namespace A120470

/-- `2^n*A014551(n+3)` -/
def P15092631274544178568.Spec : Prop :=
  ∀ n, P15092631274544178568.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P12261889824298644837

`2^n*A166977(n+3)`
-/

namespace A120470.P12261889824298644837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A166977 (n + 3)

end

end A120470.P12261889824298644837

namespace A120470

/-- `2^n*A166977(n+3)` -/
def P12261889824298644837.Spec : Prop :=
  ∀ n, P12261889824298644837.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P6320822751855509165

`abs(A009117(n+2)-2^n)`
-/

namespace A120470.P6320822751855509165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009117 (n + 2) - (2 ^ n : ℤ)|

end

end A120470.P6320822751855509165

namespace A120470

/-- `abs(A009117(n+2)-2^n)` -/
def P6320822751855509165.Spec : Prop :=
  ∀ n, P6320822751855509165.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P14546912857028724276

`Δ[2^n*A283642(n+1)]`
-/

namespace A120470.P14546912857028724276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A283642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P14546912857028724276

namespace A120470

/-- `Δ[2^n*A283642(n+1)]` -/
def P14546912857028724276.Spec : Prop :=
  ∀ n, P14546912857028724276.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P18124039089177016350

`Δ[2^n*A001045(n+3)]`
-/

namespace A120470.P18124039089177016350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P18124039089177016350

namespace A120470

/-- `Δ[2^n*A001045(n+3)]` -/
def P18124039089177016350.Spec : Prop :=
  ∀ n, P18124039089177016350.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P9514532534777299330

`Δ[(-2)^n*A077925(n+2)]`
-/

namespace A120470.P9514532534777299330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A077925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P9514532534777299330

namespace A120470

/-- `Δ[(-2)^n*A077925(n+2)]` -/
def P9514532534777299330.Spec : Prop :=
  ∀ n, P9514532534777299330.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P14202256112103988138

`A014551(n+3)*A000079(n)`
-/

namespace A120470.P14202256112103988138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 3) * A000079 n

end

end A120470.P14202256112103988138

namespace A120470

/-- `A014551(n+3)*A000079(n)` -/
def P14202256112103988138.Spec : Prop :=
  ∀ n, P14202256112103988138.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P14645255757369521601

`Δ[A101622(n+2)]*A000079(n)`
-/

namespace A120470.P14645255757369521601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A120470.P14645255757369521601

namespace A120470

/-- `Δ[A101622(n+2)]*A000079(n)` -/
def P14645255757369521601.Spec : Prop :=
  ∀ n, P14645255757369521601.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P7568662118002751778

`A014551(n+3)*A131577(n+1)`
-/

namespace A120470.P7568662118002751778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 3) * A131577 (n + 1)

end

end A120470.P7568662118002751778

namespace A120470

/-- `A014551(n+3)*A131577(n+1)` -/
def P7568662118002751778.Spec : Prop :=
  ∀ n, P7568662118002751778.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P16103565222137512012

`A014551(n+3)*A016116(2*n)`
-/

namespace A120470.P16103565222137512012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 3) * A016116 (2 * n)

end

end A120470.P16103565222137512012

namespace A120470

/-- `A014551(n+3)*A016116(2*n)` -/
def P16103565222137512012.Spec : Prop :=
  ∀ n, P16103565222137512012.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P11115402801807903228

`(A321643(n)+A007283(n))*A000079(n)`
-/

namespace A120470.P11115402801807903228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321643 n + A007283 n) * A000079 n

end

end A120470.P11115402801807903228

namespace A120470

/-- `(A321643(n)+A007283(n))*A000079(n)` -/
def P11115402801807903228.Spec : Prop :=
  ∀ n, P11115402801807903228.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P3356521237050086522

`(A005010(n)-A014551(n))*A000079(n)`
-/

namespace A120470.P3356521237050086522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005010 n - A014551 n) * A000079 n

end

end A120470.P3356521237050086522

namespace A120470

/-- `(A005010(n)-A014551(n))*A000079(n)` -/
def P3356521237050086522.Spec : Prop :=
  ∀ n, P3356521237050086522.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P6247798895968963727

`(A171497(n+1)-A033999(n))*A000079(n)`
-/

namespace A120470.P6247798895968963727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171497 (n + 1) - A033999 n) * A000079 n

end

end A120470.P6247798895968963727

namespace A120470

/-- `(A171497(n+1)-A033999(n))*A000079(n)` -/
def P6247798895968963727.Spec : Prop :=
  ∀ n, P6247798895968963727.a n = A120470 (n + 1)

end A120470

/-! ## A120470.P9712151366369693516

`A003665(n+3)/4`
-/

namespace A120470.P9712151366369693516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003665 (n + 3) : ℚ) / 4

end

end A120470.P9712151366369693516

namespace A120470

/-- `A003665(n+3)/4` -/
def P9712151366369693516.Spec : Prop :=
  ∀ n, P9712151366369693516.a n = (A120470 (n + 1) : ℚ)

end A120470

/-! ## A120470.P2149011107428501096

`Δ[A246036(n+1)/2]`
-/

namespace A120470.P2149011107428501096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246036 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P2149011107428501096

namespace A120470

/-- `Δ[A246036(n+1)/2]` -/
def P2149011107428501096.Spec : Prop :=
  ∀ n, P2149011107428501096.a n = (A120470 (n + 1) : ℚ)

end A120470

/-! ## A120470.P5524345707723165129

`Δ[A110953(n+2)/4]`
-/

namespace A120470.P5524345707723165129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110953 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P5524345707723165129

namespace A120470

/-- `Δ[A110953(n+2)/4]` -/
def P5524345707723165129.Spec : Prop :=
  ∀ n, P5524345707723165129.a n = (A120470 (n + 1) : ℚ)

end A120470

/-! ## A120470.P12789538359734653527

`Δ[A003683(n+3)/4]`
-/

namespace A120470.P12789538359734653527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003683 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120470.P12789538359734653527

namespace A120470

/-- `Δ[A003683(n+3)/4]` -/
def P12789538359734653527.Spec : Prop :=
  ∀ n, P12789538359734653527.a n = (A120470 (n + 1) : ℚ)

end A120470

/-!
# A120471: a(n) = 6 * A015518(n).

The programs for A120471, the canonical program `A120471.P1065442861071889028` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120471 has offset 0).

The definition of A120471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*A015518(n)` (program `A120471.P1065442861071889028`, by `A120471.P1065442861071889028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120471.P15090059174215101313

`2*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A120471.P15090059174215101313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2)

end

end A120471.P15090059174215101313

namespace A120471

/-- `2*a(n-1)+3*a(n-2)` -/
def P15090059174215101313.Spec : Prop :=
  ∀ n, (P15090059174215101313.a n : ℤ) = A120471 n

end A120471

/-! ## A120471.P1065442861071889028

`6*A015518(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120471

/-- `6*A015518(n)` -/
def P1065442861071889028.Spec : Prop :=
  ∀ n, P1065442861071889028.a n = A120471 n

theorem P1065442861071889028.correct : P1065442861071889028.Spec := by
  intro n
  simp only [A120471]

end A120471

/-! ## A120471.P9755079664584655933

`ogf(6x/(1-2x-3x^2))`
-/

namespace A120471.P9755079664584655933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -2, -3] n

end

end A120471.P9755079664584655933

namespace A120471

/-- `ogf(6x/(1-2x-3x^2))` -/
def P9755079664584655933.Spec : Prop :=
  ∀ n, P9755079664584655933.a n = A120471 n

end A120471

/-! ## A120471.P8080680721148803271

`6*round(3^n/4)`
-/

namespace A120471.P8080680721148803271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 4)

end

end A120471.P8080680721148803271

namespace A120471

/-- `6*round(3^n/4)` -/
def P8080680721148803271.Spec : Prop :=
  ∀ n, P8080680721148803271.a n = A120471 n

end A120471

/-! ## A120471.P1869210415062309558

`lcm(3, xor(2, a(n-1)))` with `a(0)=0`
-/

namespace A120471.P1869210415062309558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 3 (Nat.xor 2 (a (n - 1)))

end

end A120471.P1869210415062309558

namespace A120471

/-- `lcm(3, xor(2, a(n-1)))` -/
def P1869210415062309558.Spec : Prop :=
  ∀ n, (P1869210415062309558.a n : ℤ) = A120471 n

end A120471

/-! ## A120471.P15146236494539597989

`lcm(6, floor((-3)^n/2))`
-/

namespace A120471.P15146236494539597989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 ⌊((-3) ^ n : ℚ) / 2⌋

end

end A120471.P15146236494539597989

namespace A120471

/-- `lcm(6, floor((-3)^n/2))` -/
def P15146236494539597989.Spec : Prop :=
  ∀ n, (P15146236494539597989.a n : ℤ) = A120471 n

end A120471

/-! ## A120471.P3493520456153853872

`abs(3*xor(2, a(n-1)))` with `a(0)=0`
-/

namespace A120471.P3493520456153853872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * Nat.xor 2 (a (n - 1))

end

end A120471.P3493520456153853872

namespace A120471

/-- `abs(3*xor(2, a(n-1)))` -/
def P3493520456153853872.Spec : Prop :=
  ∀ n, (P3493520456153853872.a n : ℤ) = A120471 n

end A120471

/-! ## A120471.P13712849315746454135

`xor(2, ∑[or(2, 3^n-1)])`
-/

namespace A120471.P13712849315746454135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((3 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120471.P13712849315746454135

namespace A120471

/-- `xor(2, ∑[or(2, 3^n-1)])` -/
def P13712849315746454135.Spec : Prop :=
  ∀ n, P13712849315746454135.a n = A120471 n

end A120471

/-! ## A120471.P6707494313205654587

`xor(gcd(2, n+1), ∑[3^n])`
-/

namespace A120471.P6707494313205654587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.gcd 2 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120471.P6707494313205654587

namespace A120471

/-- `xor(gcd(2, n+1), ∑[3^n])` -/
def P6707494313205654587.Spec : Prop :=
  ∀ n, (P6707494313205654587.a n : ℤ) = A120471 n

end A120471

/-! ## A120471.P9480638619190662788

`3^n+3^n-a(n-1)` with `a(0)=0`
-/

namespace A120471.P9480638619190662788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℤ) + ((3 ^ n : ℤ) - a (n - 1))

end

end A120471.P9480638619190662788

namespace A120471

/-- `3^n+3^n-a(n-1)` -/
def P9480638619190662788.Spec : Prop :=
  ∀ n, P9480638619190662788.a n = A120471 n

end A120471

/-! ## A120471.P2505302291747024848

`3^n-(a(n-1)-3^n)` with `a(0)=0`
-/

namespace A120471.P2505302291747024848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℤ) - (a (n - 1) - (3 ^ n : ℤ))

end

end A120471.P2505302291747024848

namespace A120471

/-- `3^n-(a(n-1)-3^n)` -/
def P2505302291747024848.Spec : Prop :=
  ∀ n, P2505302291747024848.a n = A120471 n

end A120471

/-! ## A120471.P8140852774260064610

`abs(6*A014983(n))`
-/

namespace A120471.P8140852774260064610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 * A014983 n|

end

end A120471.P8140852774260064610

namespace A120471

/-- `abs(6*A014983(n))` -/
def P8140852774260064610.Spec : Prop :=
  ∀ n, P8140852774260064610.a n = A120471 n

end A120471

/-! ## A120471.P1487243391468814361

`xor(2, A152011(n+1))`
-/

namespace A120471.P1487243391468814361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A152011 (n + 1))

end

end A120471.P1487243391468814361

namespace A120471

/-- `xor(2, A152011(n+1))` -/
def P1487243391468814361.Spec : Prop :=
  ∀ n, P1487243391468814361.a n = A120471 n

end A120471

/-! ## A120471.P8002278435196076341

`xor(3, A103425(n+1))`
-/

namespace A120471.P8002278435196076341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A103425 (n + 1))

end

end A120471.P8002278435196076341

namespace A120471

/-- `xor(3, A103425(n+1))` -/
def P8002278435196076341.Spec : Prop :=
  ∀ n, P8002278435196076341.a n = A120471 n

end A120471

/-! ## A120471.P9625605031126279084

`abs(2*A084567(n+1))`
-/

namespace A120471.P9625605031126279084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A084567 (n + 1)|

end

end A120471.P9625605031126279084

namespace A120471

/-- `abs(2*A084567(n+1))` -/
def P9625605031126279084.Spec : Prop :=
  ∀ n, P9625605031126279084.a n = A120471 n

end A120471

/-! ## A120471.P7217846712241367339

`A164907(n)-A033999(n)`
-/

namespace A120471.P7217846712241367339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n - A033999 n

end

end A120471.P7217846712241367339

namespace A120471

/-- `A164907(n)-A033999(n)` -/
def P7217846712241367339.Spec : Prop :=
  ∀ n, P7217846712241367339.a n = A120471 n

end A120471

/-! ## A120471.P624939593714151737

`A132357(n)-A131714(n)`
-/

namespace A120471.P624939593714151737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132357 n - A131714 n

end

end A120471.P624939593714151737

namespace A120471

/-- `A132357(n)-A131714(n)` -/
def P624939593714151737.Spec : Prop :=
  ∀ n, P624939593714151737.a n = A120471 n

end A120471

/-! ## A120471.P16003253108415992808

`xor(A010684(n), A164907(n))`
-/

namespace A120471.P16003253108415992808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A164907 n)

end

end A120471.P16003253108415992808

namespace A120471

/-- `xor(A010684(n), A164907(n))` -/
def P16003253108415992808.Spec : Prop :=
  ∀ n, P16003253108415992808.a n = A120471 n

end A120471

/-! ## A120471.P1905415645215137025

`A029858(n+1)+A010674(n)`
-/

namespace A120471.P1905415645215137025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) + A010674 n

end

end A120471.P1905415645215137025

namespace A120471

/-- `A029858(n+1)+A010674(n)` -/
def P1905415645215137025.Spec : Prop :=
  ∀ n, P1905415645215137025.a n = A120471 n

end A120471

/-! ## A120471.P8503034897473787168

`A099430(n+1)+A092438(n)`
-/

namespace A120471.P8503034897473787168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 (n + 1) + A092438 n

end

end A120471.P8503034897473787168

namespace A120471

/-- `A099430(n+1)+A092438(n)` -/
def P8503034897473787168.Spec : Prop :=
  ∀ n, P8503034897473787168.a n = A120471 n

end A120471

/-!
# A120473: a(n) = A000045[n]*(A004001[n + 1] - 2*A004001[n] + A004001[n - 1]).

The programs for A120473, there is no canonical definition to state claims against.
-/

/-! ## A120473.P4383969918756963532

`Δ[A120475(abs(1-n)+1)]`
-/

namespace A120473.P4383969918756963532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120475 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120473.P4383969918756963532

/-! ## A120473.P4311466655155968901

`A120475(n+1)-A120475(abs(1-n)+1)`
-/

namespace A120473.P4311466655155968901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120475 (n + 1) - A120475 (|1 - (n : ℤ)| + 1).toNat

end

end A120473.P4311466655155968901

/-! ## A120473.P14763047668898738545

`A000045(n+1)*Δ[A010060(A276445(n+1))]`
-/

namespace A120473.P14763047668898738545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A276445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A120473.P14763047668898738545

/-! ## A120473.P4518250921190766203

`Δ[A010060(A276445(n+1))]*A212804(n+2)`
-/

namespace A120473.P4518250921190766203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A276445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 (n + 2)

end

end A120473.P4518250921190766203

/-! ## A120473.P10203039325189864734

`A000045(n+1)*Δ[A036987(A265332(n+1)²)]`
-/

namespace A120473.P10203039325189864734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A265332 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A120473.P10203039325189864734

/-!
# A120474: Second differences of A004001.

The programs for A120474, the canonical program `A120474.P16095270401045431404` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120474 has offset 1).

The definition of A120474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120474.P16095270401045431404

`A093879(n+2)-A093879(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120474

/-- `A093879(n+2)-A093879(n+1)` -/
def P16095270401045431404.Spec : Prop :=
  ∀ n, P16095270401045431404.a n = A120474 (n + 1)

theorem P16095270401045431404.correct : P16095270401045431404.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel]

end A120474

/-! ## A120474.P2182832535497513879

`A004001(n+3)-2*A004001(n+2)+A004001(n+1)`
-/

namespace A120474.P2182832535497513879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 3) - 2 * A004001 (n + 2) + A004001 (n + 1)

end

end A120474.P2182832535497513879

namespace A120474

/-- `A004001(n+3)-2*A004001(n+2)+A004001(n+1)` -/
def P2182832535497513879.Spec : Prop :=
  ∀ n, P2182832535497513879.a n = A120474 (n + 1)

theorem P2182832535497513879.correct : P2182832535497513879.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel, A120474.P2182832535497513879.a, A120474.P16095270401045431404.a, A004001, A004001.P15027099775036681873.a, A093879, A093879.P16906810151059446800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120474

/-! ## A120474.P2762100771551167360

`Δ[Δ[a(a(n-1)-1)+a(n-a(n-1))]]` with `a(0)=1, a(1)=1`
-/

namespace A120474.P2762100771551167360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (f2 (n - 1) - 1) + f2 (n - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P2762100771551167360

namespace A120474

/-- `Δ[Δ[a(a(n-1)-1)+a(n-a(n-1))]]` -/
def P2762100771551167360.Spec : Prop :=
  ∀ n, P2762100771551167360.a n = A120474 (n + 1)

theorem P2762100771551167360.correct : P2762100771551167360.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel, A120474.P2762100771551167360.f2, A120474.P2762100771551167360.f1, A120474.P2762100771551167360.a, A120474.P16095270401045431404.a, A093879, A093879.P16906810151059446800.a, A004001, A004001.P15027099775036681873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120474

/-! ## A120474.P8916722600505343982

`Δ[A093879(n+1)]`
-/

namespace A120474.P8916722600505343982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P8916722600505343982

namespace A120474

/-- `Δ[A093879(n+1)]` -/
def P8916722600505343982.Spec : Prop :=
  ∀ n, P8916722600505343982.a n = A120474 (n + 1)

theorem P8916722600505343982.correct : P8916722600505343982.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel, A120474.P8916722600505343982.f1, A120474.P8916722600505343982.a, A120474.P16095270401045431404.a, SequenceMachineLib.memo_apply]

end A120474

/-! ## A120474.P9109220531087533278

`Δ[abs(Δ[A283468(n+1)])]`
-/

namespace A120474.P9109220531087533278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P9109220531087533278

namespace A120474

/-- `Δ[abs(Δ[A283468(n+1)])]` -/
def P9109220531087533278.Spec : Prop :=
  ∀ n, P9109220531087533278.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P5907887475120063883

`Δ[Δ[A004074(n+1)/2]]`
-/

namespace A120474.P5907887475120063883
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P5907887475120063883

namespace A120474

/-- `Δ[Δ[A004074(n+1)/2]]` -/
def P5907887475120063883.Spec : Prop :=
  ∀ n, P5907887475120063883.a n = (A120474 (n + 1) : ℚ)

theorem P5907887475120063883.correct : P5907887475120063883.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel, A120474.P5907887475120063883.f2, A120474.P5907887475120063883.f1, A120474.P5907887475120063883.a, A120474.P16095270401045431404.a, A004074, A004074.P7923375237967652699.a, A093879, A093879.P16906810151059446800.a, A004001, A004001.P15027099775036681873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120474

/-! ## A120474.P5098248955468506379

`Δ[A000045(Δ[A004074(n+1)]+1)]`
-/

namespace A120474.P5098248955468506379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P5098248955468506379

namespace A120474

/-- `Δ[A000045(Δ[A004074(n+1)]+1)]` -/
def P5098248955468506379.Spec : Prop :=
  ∀ n, P5098248955468506379.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P8320843377639863074

`Δ[A080513(Δ[A004074(n+1)]+1)]`
-/

namespace A120474.P8320843377639863074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P8320843377639863074

namespace A120474

/-- `Δ[A080513(Δ[A004074(n+1)]+1)]` -/
def P8320843377639863074.Spec : Prop :=
  ∀ n, P8320843377639863074.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P1501130222257584278

`Δ[A110654(Δ[A004074(n+1)]+1)]`
-/

namespace A120474.P1501130222257584278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P1501130222257584278

namespace A120474

/-- `Δ[A110654(Δ[A004074(n+1)]+1)]` -/
def P1501130222257584278.Spec : Prop :=
  ∀ n, P1501130222257584278.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P17594427848415390660

`Δ[A006093(Δ[A283468(n+1)]²+1)]`
-/

namespace A120474.P17594427848415390660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ((f2 (n + 1) - f2 n) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P17594427848415390660

namespace A120474

/-- `Δ[A006093(Δ[A283468(n+1)]²+1)]` -/
def P17594427848415390660.Spec : Prop :=
  ∀ n, P17594427848415390660.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P14128012559173221881

`Δ[Δ[A283472(n+1)+A283469(n+1)]]`
-/

namespace A120474.P14128012559173221881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (n + 1) + A283469 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P14128012559173221881

namespace A120474

/-- `Δ[Δ[A283472(n+1)+A283469(n+1)]]` -/
def P14128012559173221881.Spec : Prop :=
  ∀ n, P14128012559173221881.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P11657897241580996576

`A116592(n+1)-A004001(n+2)-A004001(n+2)`
-/

namespace A120474.P11657897241580996576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116592 (n + 1) - A004001 (n + 2) - A004001 (n + 2)

end

end A120474.P11657897241580996576

namespace A120474

/-- `A116592(n+1)-A004001(n+2)-A004001(n+2)` -/
def P11657897241580996576.Spec : Prop :=
  ∀ n, P11657897241580996576.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P15261747811303332823

`Δ[Δ[A004001(n+1)]]`
-/

namespace A120474.P15261747811303332823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P15261747811303332823

namespace A120474

/-- `Δ[Δ[A004001(n+1)]]` -/
def P15261747811303332823.Spec : Prop :=
  ∀ n, P15261747811303332823.a n = A120474 (n + 1)

theorem P15261747811303332823.correct : P15261747811303332823.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel, A120474.P15261747811303332823.f2, A120474.P15261747811303332823.f1, A120474.P15261747811303332823.a, A120474.P16095270401045431404.a, A004001, A004001.P15027099775036681873.a, A093879, A093879.P16906810151059446800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120474

/-! ## A120474.P7772050447523013156

`Δ[abs(Δ[A095901(n+1)])]`
-/

namespace A120474.P7772050447523013156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P7772050447523013156

namespace A120474

/-- `Δ[abs(Δ[A095901(n+1)])]` -/
def P7772050447523013156.Spec : Prop :=
  ∀ n, P7772050447523013156.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P9114523629994475063

`Δ[gcd(2, Δ[A080677(n+1)])]`
-/

namespace A120474.P9114523629994475063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A120474.P9114523629994475063

namespace A120474

/-- `Δ[gcd(2, Δ[A080677(n+1)])]` -/
def P9114523629994475063.Spec : Prop :=
  ∀ n, P9114523629994475063.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P9087597573665336470

`Δ[A036987(A265332(n+2)²)]`
-/

namespace A120474.P9087597573665336470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A265332 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P9087597573665336470

namespace A120474

/-- `Δ[A036987(A265332(n+2)²)]` -/
def P9087597573665336470.Spec : Prop :=
  ∀ n, P9087597573665336470.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P16798967131344348508

`Δ[A000045(1-Δ[A080677(n+1)])]`
-/

namespace A120474.P16798967131344348508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P16798967131344348508

namespace A120474

/-- `Δ[A000045(1-Δ[A080677(n+1)])]` -/
def P16798967131344348508.Spec : Prop :=
  ∀ n, P16798967131344348508.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P5630842237196448054

`Δ[A080677(2-Δ[A080677(n+1)])]`
-/

namespace A120474.P5630842237196448054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P5630842237196448054

namespace A120474

/-- `Δ[A080677(2-Δ[A080677(n+1)])]` -/
def P5630842237196448054.Spec : Prop :=
  ∀ n, P5630842237196448054.a n = A120474 (n + 1)

end A120474

/-! ## A120474.P5419277285031626601

`Δ[Δ[A284019(n+1)+A005185(n+1)]]`
-/

namespace A120474.P5419277285031626601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284019 (n + 1) + A005185 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120474.P5419277285031626601

namespace A120474

/-- `Δ[Δ[A284019(n+1)+A005185(n+1)]]` -/
def P5419277285031626601.Spec : Prop :=
  ∀ n, P5419277285031626601.a n = A120474 (n + 1)

theorem P5419277285031626601.correct : P5419277285031626601.Spec := by
  intro n
  simp only [A120474, Nat.add_sub_cancel, A120474.P5419277285031626601.f2, A120474.P5419277285031626601.f1, A120474.P5419277285031626601.a, A120474.P16095270401045431404.a, A005185, A005185.P15523785795587217945.a, A093879, A093879.P16906810151059446800.a, A284019, A284019.P8425388726725023330.a, A004001, A004001.P15027099775036681873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120474

/-! ## A120474.P8794703445706050852

`Δ[gcd(2, A276441(n+2))]`
-/

namespace A120474.P8794703445706050852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A276441 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A120474.P8794703445706050852

namespace A120474

/-- `Δ[gcd(2, A276441(n+2))]` -/
def P8794703445706050852.Spec : Prop :=
  ∀ n, P8794703445706050852.a n = A120474 (n + 1)

end A120474

/-!
# A120475: a(n) = Sum_{m=1..n} A000045(m)*(A004001(m+1) - 2*A004001(m) + A004001(m-1)).

The programs for A120475, there is no canonical definition to state claims against.
-/

/-! ## A120475.P15114263653351427871

`∑[A000045(n+1)*Δ[A010060(A276445(n+1))]]`
-/

namespace A120475.P15114263653351427871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A276445 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120475.P15114263653351427871

/-! ## A120475.P4949339844050610843

`∑[A120473(n)]`
-/

namespace A120475.P4949339844050610843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120475.P4949339844050610843

/-! ## A120475.P1248030641538229731

`∑{d}[A000079(n), A120473(log2(#))]`
-/

namespace A120475.P1248030641538229731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120473 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A120475.P1248030641538229731

/-!
# A120476: Triangle read by rows: a(n,m)=(2*n-1)*(n-m)*(n+m+1)/2, where n is the column and m the row index.

The programs for A120476, the canonical program `A120476.P16713608828303402629` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120476 has offset 0).

The definition of A120476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120476.P6307947948165082213

`(2-A158405(n+1))*A049777(n+1)`
-/

namespace A120476.P6307947948165082213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A158405 (n + 1)) * A049777 (n + 1)

end

end A120476.P6307947948165082213

namespace A120476

/-- `(2-A158405(n+1))*A049777(n+1)` -/
def P6307947948165082213.Spec : Prop :=
  ∀ n, P6307947948165082213.a n = A120476 n

end A120476

/-! ## A120476.P16713608828303402629

`A049777(n+1)*A165747(A002262(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120476

/-- `A049777(n+1)*A165747(A002262(n))` -/
def P16713608828303402629.Spec : Prop :=
  ∀ n, P16713608828303402629.a n = A120476 n

theorem P16713608828303402629.correct : P16713608828303402629.Spec := by
  intro n
  simp only [A120476]

end A120476

/-! ## A120476.P2228820658039216630

`A022958(A158405(n+1))*A049777(n+1)`
-/

namespace A120476.P2228820658039216630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A158405 (n + 1)).toNat * A049777 (n + 1)

end

end A120476.P2228820658039216630

namespace A120476

/-- `A022958(A158405(n+1))*A049777(n+1)` -/
def P2228820658039216630.Spec : Prop :=
  ∀ n, P2228820658039216630.a n = A120476 n

end A120476

/-! ## A120476.P16215373784735915185

`(2-A099375(A061579(n)))*A049777(n+1)`
-/

namespace A120476.P16215373784735915185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099375 (A061579 n).toNat) * A049777 (n + 1)

end

end A120476.P16215373784735915185

namespace A120476

/-- `(2-A099375(A061579(n)))*A049777(n+1)` -/
def P16215373784735915185.Spec : Prop :=
  ∀ n, P16215373784735915185.a n = A120476 n

end A120476

/-! ## A120476.P7730047286324509881

`A205376(n+1)/8*A165747(A002262(n))`
-/

namespace A120476.P7730047286324509881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205376 (n + 1) : ℚ) / 8 * (A165747 (A002262 n).toNat : ℚ)

end

end A120476.P7730047286324509881

namespace A120476

/-- `A205376(n+1)/8*A165747(A002262(n))` -/
def P7730047286324509881.Spec : Prop :=
  ∀ n, P7730047286324509881.a n = (A120476 n : ℚ)

end A120476

/-! ## A120476.P5214778562232193377

`A205376(n+1)/8*A022958(A158405(n+1))`
-/

namespace A120476.P5214778562232193377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205376 (n + 1) : ℚ) / 8 * (A022958 (A158405 (n + 1)).toNat : ℚ)

end

end A120476.P5214778562232193377

namespace A120476

/-- `A205376(n+1)/8*A022958(A158405(n+1))` -/
def P5214778562232193377.Spec : Prop :=
  ∀ n, P5214778562232193377.a n = (A120476 n : ℚ)

end A120476

/-! ## A120476.P3401644296109911543

`(A004736(n+1)-A051162(n))*A049777(n+1)`
-/

namespace A120476.P3401644296109911543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - A051162 n) * A049777 (n + 1)

end

end A120476.P3401644296109911543

namespace A120476

/-- `(A004736(n+1)-A051162(n))*A049777(n+1)` -/
def P3401644296109911543.Spec : Prop :=
  ∀ n, P3401644296109911543.a n = A120476 n

end A120476

/-! ## A120476.P5129912136123832909

`A128116(n+1)-A003991(n+1)*A051162(n)`
-/

namespace A120476.P5129912136123832909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128116 (n + 1) - A003991 (n + 1) * A051162 n

end

end A120476.P5129912136123832909

namespace A120476

/-- `A128116(n+1)-A003991(n+1)*A051162(n)` -/
def P5129912136123832909.Spec : Prop :=
  ∀ n, P5129912136123832909.a n = A120476 n

end A120476

/-! ## A120476.P16826339951998508389

`A049777(n+1)*A269735(A059268(n))`
-/

namespace A120476.P16826339951998508389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) * A269735 (A059268 n).toNat

end

end A120476.P16826339951998508389

namespace A120476

/-- `A049777(n+1)*A269735(A059268(n))` -/
def P16826339951998508389.Spec : Prop :=
  ∀ n, P16826339951998508389.a n = A120476 n

end A120476

/-! ## A120476.P11944241674462951589

`A205376(n+1)/8*A269735(A059268(n))`
-/

namespace A120476.P11944241674462951589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205376 (n + 1) : ℚ) / 8 * (A269735 (A059268 n).toNat : ℚ)

end

end A120476.P11944241674462951589

namespace A120476

/-- `A205376(n+1)/8*A269735(A059268(n))` -/
def P11944241674462951589.Spec : Prop :=
  ∀ n, P11944241674462951589.a n = (A120476 n : ℚ)

end A120476

/-!
# A120477: Apply partial sum operator 5 times to partition numbers.

The programs for A120477, there is no canonical definition to state claims against.
-/

/-! ## A120477.P10225088722471416092

`∑[A014161(n)]`
-/

namespace A120477.P10225088722471416092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120477.P10225088722471416092

/-! ## A120477.P3860617561254097915

`∑[∑[A014160(n)]]`
-/

namespace A120477.P3860617561254097915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120477.P3860617561254097915

/-! ## A120477.P4095440906940419739

`∑[∑[∑[A014153(n)]]]`
-/

namespace A120477.P4095440906940419739
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120477.P4095440906940419739

/-! ## A120477.P17684207317124873593

`∑[∑[∑[∑[A000070(n)]]]]`
-/

namespace A120477.P17684207317124873593
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120477.P17684207317124873593

/-! ## A120477.P16285162983692409018

`∑[∑[∑[∑[∑[A000041(n)]]]]]`
-/

namespace A120477.P16285162983692409018
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120477.P16285162983692409018

/-! ## A120477.P290013181677378024

`A320753(n+1)-(A320753(n)+A014161(n+1))`
-/

namespace A120477.P290013181677378024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320753 (n + 1) - (A320753 n + A014161 (n + 1))

end

end A120477.P290013181677378024

/-!
# A120478: a(n) = binomial(n+6,5) - binomial(n,5).

The programs for A120478, the canonical program `A120478.P17489744207200591089` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120478 has offset 0).

The definition of A120478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 5)-C(n, 5)` (program `A120478.P17489744207200591089`, by `A120478.P17489744207200591089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120478.P17489744207200591089

`C(n+6, 5)-C(n, 5)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120478

/-- `C(n+6, 5)-C(n, 5)` -/
def P17489744207200591089.Spec : Prop :=
  ∀ n, P17489744207200591089.a n = A120478 n

theorem P17489744207200591089.correct : P17489744207200591089.Spec := by
  intro n
  simp only [A120478]

end A120478

/-! ## A120478.P13768414644193978365

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=6, a(1)=21, a(2)=56, a(3)=126, a(4)=252`
-/

namespace A120478.P13768414644193978365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 21, 56, 126, 252] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A120478.P13768414644193978365

namespace A120478

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13768414644193978365.Spec : Prop :=
  ∀ n, P13768414644193978365.a n = A120478 n

end A120478

/-! ## A120478.P12417051805466409846

`A008488(n+1)`
-/

namespace A120478.P12417051805466409846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008488 (n + 1)

end

end A120478.P12417051805466409846

namespace A120478

/-- `A008488(n+1)` -/
def P12417051805466409846.Spec : Prop :=
  ∀ n, P12417051805466409846.a n = A120478 n

end A120478

/-! ## A120478.P13245040420535673452

`∑[(2*n+1)*(∑[n]+4)]+2`
-/

namespace A120478.P13245040420535673452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A120478.P13245040420535673452

namespace A120478

/-- `∑[(2*n+1)*(∑[n]+4)]+2` -/
def P13245040420535673452.Spec : Prop :=
  ∀ n, (P13245040420535673452.a n : ℤ) = A120478 n

end A120478

/-! ## A120478.P17498270428905175049

`Δ[A008499(n)]`
-/

namespace A120478.P17498270428905175049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120478.P17498270428905175049

namespace A120478

/-- `Δ[A008499(n)]` -/
def P17498270428905175049.Spec : Prop :=
  ∀ n, P17498270428905175049.a n = A120478 n

end A120478

/-! ## A120478.P18084108528483217943

`record[A008488(abs(1-n))]`
-/

namespace A120478.P18084108528483217943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008488 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120478.P18084108528483217943

namespace A120478

/-- `record[A008488(abs(1-n))]` -/
def P18084108528483217943.Spec : Prop :=
  ∀ n, P18084108528483217943.a n = A120478 n

end A120478

/-! ## A120478.P11780821455905260383

`Δ[∑[A159833(n)]+2*n]`
-/

namespace A120478.P11780821455905260383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120478.P11780821455905260383

namespace A120478

/-- `Δ[∑[A159833(n)]+2*n]` -/
def P11780821455905260383.Spec : Prop :=
  ∀ n, P11780821455905260383.a n = A120478 n

end A120478

/-! ## A120478.P16945596555549167315

`Δ[A124089(n+6)-A000579(n)]`
-/

namespace A120478.P16945596555549167315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6) - A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120478.P16945596555549167315

namespace A120478

/-- `Δ[A124089(n+6)-A000579(n)]` -/
def P16945596555549167315.Spec : Prop :=
  ∀ n, P16945596555549167315.a n = A120478 n

theorem P16945596555549167315.correct : P16945596555549167315.Spec := by
  intro n
  simp only [A120478, Nat.add_sub_cancel, A120478.P16945596555549167315.f1, A120478.P16945596555549167315.a, A120478.P17489744207200591089.a, A000579, A000579.P13663713855180125612.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120478

/-! ## A120478.P11397371252776088082

`record[A052905(A038722(n+1))+A052905(n)]`
-/

namespace A120478.P11397371252776088082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A038722 (n + 1)).toNat + A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120478.P11397371252776088082

namespace A120478

/-- `record[A052905(A038722(n+1))+A052905(n)]` -/
def P11397371252776088082.Spec : Prop :=
  ∀ n, P11397371252776088082.a n = A120478 n

end A120478

/-!
# A120479: Primes of the form k^3 + k^2 + 1.

The programs for A120479, there is no canonical definition to state claims against.
-/

/-! ## A120479.P6976856458976192701

`A098547(A119863(n+1))`
-/

namespace A120479.P6976856458976192701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 (A119863 (n + 1)).toNat

end

end A120479.P6976856458976192701

/-! ## A120479.P4300720622151166569

`A011379(A119863(n+1))+A106400(n)²`
-/

namespace A120479.P4300720622151166569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A119863 (n + 1)).toNat + A106400 n ^ 2

end

end A120479.P4300720622151166569

/-! ## A120479.P4448474478512890137

`A054977(2*n+3)+A011379(A119863(n+1))`
-/

namespace A120479.P4448474478512890137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * n + 3) + A011379 (A119863 (n + 1)).toNat

end

end A120479.P4448474478512890137

/-! ## A120479.P12289819790454286576

`A011379(A119863(n+1))+A002407(n+1)%2`
-/

namespace A120479.P12289819790454286576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A119863 (n + 1)).toNat + Int.tmod (A002407 (n + 1)) 2

end

end A120479.P12289819790454286576

/-! ## A120479.P14153145960628151141

`A011379(A119863(n+1))+A267101(n+5)%2`
-/

namespace A120479.P14153145960628151141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A119863 (n + 1)).toNat + Int.tmod (A267101 (n + 5)) 2

end

end A120479.P14153145960628151141

/-! ## A120479.P17496137077185164449

`A324116(A267101(n+1))+A011379(A119863(n+1))`
-/

namespace A120479.P17496137077185164449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324116 (A267101 (n + 1)).toNat + A011379 (A119863 (n + 1)).toNat

end

end A120479.P17496137077185164449

/-!
# A120481: Number of distinct prime divisors of F(n) + L(n), where F(n) is the n-th Fibonacci number and L(n) is the n-th Lucas number.

The programs for A120481, the canonical program `A120481.P11454531323970913850` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120481 has offset 1).

The definition of A120481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120481.P11454531323970913850

`A001221(A000045(n+1)+A000032(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120481

/-- `A001221(A000045(n+1)+A000032(n+1))` -/
def P11454531323970913850.Spec : Prop :=
  ∀ n, P11454531323970913850.a n = A120481 (n + 1)

theorem P11454531323970913850.correct : P11454531323970913850.Spec := by
  intro n
  simp only [A120481, Nat.add_sub_cancel]

end A120481

/-! ## A120481.P17303292747118083904

`A022307(n+2)+Δ[round(2*n/3)]`
-/

namespace A120481.P17303292747118083904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (n + 2) + (f1 (n + 1) - f1 n)

end

end A120481.P17303292747118083904

namespace A120481

/-- `A022307(n+2)+Δ[round(2*n/3)]` -/
def P17303292747118083904.Spec : Prop :=
  ∀ n, P17303292747118083904.a n = A120481 (n + 1)

end A120481

/-! ## A120481.P12486260579825693370

`A204418(n)+A022307(n+2)`
-/

namespace A120481.P12486260579825693370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + A022307 (n + 2)

end

end A120481.P12486260579825693370

namespace A120481

/-- `A204418(n)+A022307(n+2)` -/
def P12486260579825693370.Spec : Prop :=
  ∀ n, P12486260579825693370.a n = A120481 (n + 1)

end A120481

/-! ## A120481.P13765570409922069222

`A115360(4*n)+A022307(n+2)`
-/

namespace A120481.P13765570409922069222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (4 * n) + A022307 (n + 2)

end

end A120481.P13765570409922069222

namespace A120481

/-- `A115360(4*n)+A022307(n+2)` -/
def P13765570409922069222.Spec : Prop :=
  ∀ n, P13765570409922069222.a n = A120481 (n + 1)

end A120481

/-! ## A120481.P14994178895603843472

`A122027(A193292(n+2))`
-/

namespace A120481.P14994178895603843472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122027 (A193292 (n + 2)).toNat

end

end A120481.P14994178895603843472

namespace A120481

/-- `A122027(A193292(n+2))` -/
def P14994178895603843472.Spec : Prop :=
  ∀ n, P14994178895603843472.a n = A120481 (n + 1)

end A120481

/-!
# A120482: Recurrence sequence derived from the digits of the square root of 3 after its decimal point.

The programs for A120482, there is no canonical definition to state claims against.
-/

/-! ## A120482.P15726315586611696509

`A229200(a(n-1))-1` with `a(0)=0`
-/

namespace A120482.P15726315586611696509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A229200 (a (n - 1)).toNat - 1

end

end A120482.P15726315586611696509

/-!
# A120484: a(n) = Sum(Sum p_i, {Sum p_i=prime(n)}, p_i is prime).

The programs for A120484, there is no canonical definition to state claims against.
-/

/-! ## A120484.P7499917937258434866

`p?[xor(1, n)+1]*A056768(n+1)`
-/

namespace A120484.P7499917937258434866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A056768 (n + 1)

end

end A120484.P7499917937258434866

/-! ## A120484.P14616972511089936605

`(A168470(n+1)+1)*p?[xor(1, n)+1]`
-/

namespace A120484.P14616972511089936605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168470 (n + 1) + 1) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A120484.P14616972511089936605

/-! ## A120484.P9113374712589855887

`p?[xor(1, n)+1]*A000607(p?[n-(-1)^n])`
-/

namespace A120484.P9113374712589855887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A000607 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

end

end A120484.P9113374712589855887

/-! ## A120484.P13199035348957488387

`A276560(A000040(n+1))`
-/

namespace A120484.P13199035348957488387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276560 (A000040 (n + 1)).toNat

end

end A120484.P13199035348957488387

/-! ## A120484.P15004311981590220501

`A276560(A049551(n+1))`
-/

namespace A120484.P15004311981590220501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276560 (A049551 (n + 1)).toNat

end

end A120484.P15004311981590220501

/-!
# A120485: a(n) = n^n - (n-1)^n + (n-2)^n - ... + (-1)^(k+n)*k^n + ... + (-1)^(2+n)*2^n + (-1)^(1+n)*1^n = Sum_{k=1..n} (-1)^(k+n)*k^n.

The programs for A120485, there is no canonical definition to state claims against.
-/

/-! ## A120485.P4690263663540745022

`A091884(∑[n]+n)`
-/

namespace A120485.P4690263663540745022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A120485.P4690263663540745022

/-! ## A120485.P2575663584752677069

`lcm(1-and(2, n), A091884(A000096(n)))`
-/

namespace A120485.P2575663584752677069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A091884 (A000096 n).toNat)

end

end A120485.P2575663584752677069

/-! ## A120485.P15133298880104877092

`A091884(A000096(n))%A014566(n)`
-/

namespace A120485.P15133298880104877092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091884 (A000096 n).toNat) (A014566 n)

end

end A120485.P15133298880104877092

/-! ## A120485.P16929366565999742698

`gcd(A000038(n), A091884(A000096(n)))`
-/

namespace A120485.P16929366565999742698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A091884 (A000096 n).toNat)

end

end A120485.P16929366565999742698

/-! ## A120485.P7926210342455798003

`lcm(A033999(n), A091884(A000096(n)))`
-/

namespace A120485.P7926210342455798003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A091884 (A000096 n).toNat)

end

end A120485.P7926210342455798003

/-! ## A120485.P4097352200592383321

`or(A000007(n), A091884(A000096(n)))`
-/

namespace A120485.P4097352200592383321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091884 (A000096 n).toNat)

end

end A120485.P4097352200592383321

/-! ## A120485.P17778904466101751020

`or(A091884(A000096(n)), A151934(n))`
-/

namespace A120485.P17778904466101751020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091884 (A000096 n).toNat) (A151934 n)

end

end A120485.P17778904466101751020

/-!
# A120486: Partial sums of A000188.

The programs for A120486, the canonical program `A120486.P15640467166856276779` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120486 has offset 1).

The definition of A120486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120486.P7569409043389887739

`A132345(n+1)+n+1`
-/

namespace A120486.P7569409043389887739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (n + 1) + (n + 1 : ℤ)

end

end A120486.P7569409043389887739

namespace A120486

/-- `A132345(n+1)+n+1` -/
def P7569409043389887739.Spec : Prop :=
  ∀ n, P7569409043389887739.a n = A120486 (n + 1)

theorem P7569409043389887739.correct : P7569409043389887739.Spec := by
  intro n
  simp only [A120486, Nat.add_sub_cancel, A120486.P7569409043389887739.a, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120486

/-! ## A120486.P14461834356575752949

`1/2*(A132188(n+1)+n+1)`
-/

namespace A120486.P14461834356575752949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A132188 (n + 1) + (n + 1 : ℤ) : ℚ)

end

end A120486.P14461834356575752949

namespace A120486

/-- `1/2*(A132188(n+1)+n+1)` -/
def P14461834356575752949.Spec : Prop :=
  ∀ n, P14461834356575752949.a n = (A120486 (n + 1) : ℚ)

theorem P14461834356575752949.correct : P14461834356575752949.Spec := by
  intro n
  simp only [A120486, Nat.add_sub_cancel, A120486.P14461834356575752949.a, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132188, A132188.P7469144520474104274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120486

/-! ## A120486.P13936811038547806035

`1/2*A132189(n+1)+n+1`
-/

namespace A120486.P13936811038547806035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A132189 (n + 1) : ℚ) + (n + 1 : ℚ)

end

end A120486.P13936811038547806035

namespace A120486

/-- `1/2*A132189(n+1)+n+1` -/
def P13936811038547806035.Spec : Prop :=
  ∀ n, P13936811038547806035.a n = (A120486 (n + 1) : ℚ)

theorem P13936811038547806035.correct : P13936811038547806035.Spec := by
  intro n
  simp only [A120486, Nat.add_sub_cancel, A120486.P13936811038547806035.a, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132189, A132189.P8063069834652726525.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120486

/-! ## A120486.P15640467166856276779

`∑[∏{p}[n+1, #^val(n+1, #²)]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120486

/-- `∑[∏{p}[n+1, #^val(n+1, #²)]]` -/
def P15640467166856276779.Spec : Prop :=
  ∀ n, (P15640467166856276779.a n : ℤ) = A120486 (n + 1)

theorem P15640467166856276779.correct : P15640467166856276779.Spec := by
  intro n
  simp only [A120486, Nat.add_sub_cancel]

end A120486

/-! ## A120486.P6584631729349788072

`∏{p}[n+1, #^val(n+1, #²)]+a(n-1)` with `a(0)=1`
-/

namespace A120486.P6584631729349788072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) + a (n - 1)

end

end A120486.P6584631729349788072

namespace A120486

/-- `∏{p}[n+1, #^val(n+1, #²)]+a(n-1)` -/
def P6584631729349788072.Spec : Prop :=
  ∀ n, (P6584631729349788072.a n : ℤ) = A120486 (n + 1)

end A120486

/-! ## A120486.P2698758596824755569

`∑[A000188(n+1)]`
-/

namespace A120486.P2698758596824755569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P2698758596824755569

namespace A120486

/-- `∑[A000188(n+1)]` -/
def P2698758596824755569.Spec : Prop :=
  ∀ n, P2698758596824755569.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P11539552526614182282

`∑[sqrt(A008833(n+1))]`
-/

namespace A120486.P11539552526614182282
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P11539552526614182282

namespace A120486

/-- `∑[sqrt(A008833(n+1))]` -/
def P11539552526614182282.Spec : Prop :=
  ∀ n, P11539552526614182282.a n = (A120486 (n + 1) : ℝ)

end A120486

/-! ## A120486.P1821237515250067828

`∑[A057918(n+1)+1]`
-/

namespace A120486.P1821237515250067828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P1821237515250067828

namespace A120486

/-- `∑[A057918(n+1)+1]` -/
def P1821237515250067828.Spec : Prop :=
  ∀ n, P1821237515250067828.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P14717962992649545793

`∑[A337101(2*(n+1))]`
-/

namespace A120486.P14717962992649545793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P14717962992649545793

namespace A120486

/-- `∑[A337101(2*(n+1))]` -/
def P14717962992649545793.Spec : Prop :=
  ∀ n, P14717962992649545793.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P10101028333294586388

`∑[(n+1)/A019554(n+1)]`
-/

namespace A120486.P10101028333294586388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019554 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P10101028333294586388

namespace A120486

/-- `∑[(n+1)/A019554(n+1)]` -/
def P10101028333294586388.Spec : Prop :=
  ∀ n, P10101028333294586388.a n = (A120486 (n + 1) : ℚ)

end A120486

/-! ## A120486.P6806687657665837021

`∑[A355264(n+1)/(n+1)]`
-/

namespace A120486.P6806687657665837021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355264 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P6806687657665837021

namespace A120486

/-- `∑[A355264(n+1)/(n+1)]` -/
def P6806687657665837021.Spec : Prop :=
  ∀ n, P6806687657665837021.a n = (A120486 (n + 1) : ℚ)

end A120486

/-! ## A120486.P7366186537875103747

`(A132188(n+1)+n+1)/2`
-/

namespace A120486.P7366186537875103747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132188 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A120486.P7366186537875103747

namespace A120486

/-- `(A132188(n+1)+n+1)/2` -/
def P7366186537875103747.Spec : Prop :=
  ∀ n, P7366186537875103747.a n = (A120486 (n + 1) : ℚ)

theorem P7366186537875103747.correct : P7366186537875103747.Spec := by
  intro n
  simp only [A120486, Nat.add_sub_cancel, A120486.P7366186537875103747.a, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132188, A132188.P7469144520474104274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120486

/-! ## A120486.P1953391229825452433

`A132189(n+1)/2+n+1`
-/

namespace A120486.P1953391229825452433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132189 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A120486.P1953391229825452433

namespace A120486

/-- `A132189(n+1)/2+n+1` -/
def P1953391229825452433.Spec : Prop :=
  ∀ n, P1953391229825452433.a n = (A120486 (n + 1) : ℚ)

theorem P1953391229825452433.correct : P1953391229825452433.Spec := by
  intro n
  simp only [A120486, Nat.add_sub_cancel, A120486.P1953391229825452433.a, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132189, A132189.P8063069834652726525.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120486

/-! ## A120486.P6575219293470186964

`∑[A019554(A003557(n+1))]`
-/

namespace A120486.P6575219293470186964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P6575219293470186964

namespace A120486

/-- `∑[A019554(A003557(n+1))]` -/
def P6575219293470186964.Spec : Prop :=
  ∀ n, P6575219293470186964.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P15411694058350520142

`∑[A055229(n+1)*A056622(n+1)]`
-/

namespace A120486.P15411694058350520142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A056622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P15411694058350520142

namespace A120486

/-- `∑[A055229(n+1)*A056622(n+1)]` -/
def P15411694058350520142.Spec : Prop :=
  ∀ n, P15411694058350520142.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P17845349228885997044

`record[A133310(n)+A132345(A133310(n))]`
-/

namespace A120486.P17845349228885997044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n + A132345 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120486.P17845349228885997044

namespace A120486

/-- `record[A133310(n)+A132345(A133310(n))]` -/
def P17845349228885997044.Spec : Prop :=
  ∀ n, P17845349228885997044.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P10424308541612577901

`∑[A117811(2*(n+1))]`
-/

namespace A120486.P10424308541612577901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P10424308541612577901

namespace A120486

/-- `∑[A117811(2*(n+1))]` -/
def P10424308541612577901.Spec : Prop :=
  ∀ n, P10424308541612577901.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P430908101594366865

`∑[A064727(4*(n+1))]`
-/

namespace A120486.P430908101594366865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120486.P430908101594366865

namespace A120486

/-- `∑[A064727(4*(n+1))]` -/
def P430908101594366865.Spec : Prop :=
  ∀ n, P430908101594366865.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P11808002741988449146

`record[A132345(A126759(n))+A126759(n)]`
-/

namespace A120486.P11808002741988449146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A126759 n).toNat + A126759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120486.P11808002741988449146

namespace A120486

/-- `record[A132345(A126759(n))+A126759(n)]` -/
def P11808002741988449146.Spec : Prop :=
  ∀ n, P11808002741988449146.a n = A120486 (n + 1)

end A120486

/-! ## A120486.P8182415797579848849

`record[A132345(A117910(n))+A117910(n)]`
-/

namespace A120486.P8182415797579848849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A117910 n).toNat + A117910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120486.P8182415797579848849

namespace A120486

/-- `record[A132345(A117910(n))+A117910(n)]` -/
def P8182415797579848849.Spec : Prop :=
  ∀ n, P8182415797579848849.a n = A120486 (n + 1)

end A120486

/-!
# A120487: Denominator of 1^n/n + 2^n/(n-1) + 3^n/(n-2) + ... + (n-1)^n/2 + n^n/1.

The programs for A120487, there is no canonical definition to state claims against.
-/

/-! ## A120487.P4621155461872536355

`gcd(record[A346085(n)], A002805(n+1))`
-/

namespace A120487.P4621155461872536355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002805 (n + 1))

end

end A120487.P4621155461872536355

/-! ## A120487.P11335117352871462745

`gcd(A002805(n+2), A038610(n+2))`
-/

namespace A120487.P11335117352871462745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002805 (n + 2)) (A038610 (n + 2))

end

end A120487.P11335117352871462745

/-! ## A120487.P824528754818296566

`gcd(A038610(n+2)², A027611(n+2))`
-/

namespace A120487.P824528754818296566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (n + 2) ^ 2) (A027611 (n + 2))

end

end A120487.P824528754818296566

/-! ## A120487.P5060319259713805227

`gcd(A084715(n+2)², A213999(∑[n+2]-1))`
-/

namespace A120487.P5060319259713805227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084715 (n + 2) ^ 2) (A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A120487.P5060319259713805227

/-! ## A120487.P286968641330410131

`lcm(A002805(n+1), A060509(n+2))/A060509(n+2)`
-/

namespace A120487.P286968641330410131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002805 (n + 1)) (A060509 (n + 2)) : ℚ) / (A060509 (n + 2) : ℚ)

end

end A120487.P286968641330410131

/-!
# A120488: Number of nonisomorphic perfect 1-factorizations of complete graph K_{2n}.

The programs for A120488, there is no canonical definition to state claims against.
-/

/-! ## A120488.P5327030402802830287

`A052905(and(A095583(n), A145269(n)))`
-/

namespace A120488.P5327030402802830287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (Int.land (A095583 n) (A145269 n)).toNat

end

end A120488.P5327030402802830287

/-! ## A120488.P6940831810978283481

`A052905(A077393(n+1)-A345195(n))`
-/

namespace A120488.P6940831810978283481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A077393 (n + 1) - A345195 n).toNat

end

end A120488.P6940831810978283481

/-! ## A120488.P4966764371931998488

`A052905(A272278(n)%A147274(n+1))`
-/

namespace A120488.P4966764371931998488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (Int.tmod (A272278 n) (A147274 (n + 1))).toNat

end

end A120488.P4966764371931998488

/-! ## A120488.P10998539107565155723

`A052905(and(A204607(n+5), A369014(n)))`
-/

namespace A120488.P10998539107565155723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (Int.land (A204607 (n + 5)) (A369014 n)).toNat

end

end A120488.P10998539107565155723

/-!
# A120489: Number of nonisomorphic perfect 1-factorizations of complete bipartite graph K_{n,n}.

The programs for A120489, there is no canonical definition to state claims against.
-/

/-! ## A120489.P8526973537088119109

`A394971(n+1)+A014378(A243614(2*n+3))`
-/

namespace A120489.P8526973537088119109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394971 (n + 1) + A014378 (A243614 (2 * n + 3)).toNat

end

end A120489.P8526973537088119109

/-! ## A120489.P15198496030474726716

`A143841(A128882(n))`
-/

namespace A120489.P15198496030474726716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143841 (A128882 n).toNat

end

end A120489.P15198496030474726716

/-! ## A120489.P5710894521785703178

`A365658(A209970(n)+1)`
-/

namespace A120489.P5710894521785703178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365658 (A209970 n + 1).toNat

end

end A120489.P5710894521785703178

/-! ## A120489.P9704761629277006034

`A394971(A242419(n+1))`
-/

namespace A120489.P9704761629277006034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394971 (A242419 (n + 1)).toNat

end

end A120489.P9704761629277006034

/-! ## A120489.P4529415672174676886

`A394971(record[A377091(n)+1])`
-/

namespace A120489.P4529415672174676886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120489.P4529415672174676886

/-!
# A120490: 1 + Sum[ k^(n-1), {k,1,n}].

The programs for A120490, there is no canonical definition to state claims against.
-/

/-! ## A120490.P1522769705774593033

`1+A076015(n+1)`
-/

namespace A120490.P1522769705774593033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A076015 (n + 1)

end

end A120490.P1522769705774593033

/-! ## A120490.P7255855335165543255

`1+2*(n+1)^n-A191686(n+1)`
-/

namespace A120490.P7255855335165543255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((2 * (n + 1) ^ n : ℤ) - A191686 (n + 1))

end

end A120490.P7255855335165543255

/-! ## A120490.P10396094987222786513

`2*A000169(n+1)-A191686(n+1)+1`
-/

namespace A120490.P10396094987222786513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000169 (n + 1) - A191686 (n + 1) + 1

end

end A120490.P10396094987222786513

/-! ## A120490.P11732378745897758223

`A192001(A001844(n))+1`
-/

namespace A120490.P11732378745897758223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192001 (A001844 n).toNat + 1

end

end A120490.P11732378745897758223

/-! ## A120490.P15674783832653198454

`A103438(∑[A016825(n)])+1`
-/

namespace A120490.P15674783832653198454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A120490.P15674783832653198454

/-!
# A120491: Numbers k such that 22*3^k + 1 is prime.

The programs for A120491, there is no canonical definition to state claims against.
-/

/-! ## A120491.P2164848676884743573

`record[A216440(n+1)%A325811(n+1)]`
-/

namespace A120491.P2164848676884743573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216440 (n + 1)) (A325811 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120491.P2164848676884743573

/-! ## A120491.P16443643181984257754

`A333489(n+1)+A120886(A095062(n+1))`
-/

namespace A120491.P16443643181984257754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1) + A120886 (A095062 (n + 1)).toNat

end

end A120491.P16443643181984257754

/-! ## A120491.P14236246495294549782

`eq[A052126(n+1), A053602(A075245(n+3))]`
-/

namespace A120491.P14236246495294549782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A075245 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120491.P14236246495294549782

/-! ## A120491.P1281071417205481484

`eq[A002117(A084475(3*n)), A326033(n+1)]`
-/

namespace A120491.P1281071417205481484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A084475 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120491.P1281071417205481484

/-!
# A120492: 1 + Sum[ Prime[k]^(n-1), {k,1,n}].

The programs for A120492, there is no canonical definition to state claims against.
-/

/-! ## A120492.P10050477791695006667

`A120459(n)+A093360(n+1)`
-/

namespace A120492.P10050477791695006667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120459 n + A093360 (n + 1)

end

end A120492.P10050477791695006667

/-! ## A120492.P5509207695827944232

`A120459(n)+A008578(n+2)^n`
-/

namespace A120492.P5509207695827944232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120459 n + A008578 (n + 2) ^ n

end

end A120492.P5509207695827944232

/-! ## A120492.P17284195140196234181

`A120459(n)+A197987(n+1)/A001248(n+1)`
-/

namespace A120492.P17284195140196234181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120459 n : ℚ) + (A197987 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A120492.P17284195140196234181

/-! ## A120492.P7079065963873296211

`∑{d}[A181821(A000040(n+1)), A181819(#)^n]`
-/

namespace A120492.P7079065963873296211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A181819 d ^ n

end

end A120492.P7079065963873296211

/-!
# A120493: Triangle T(n,k) read by rows ; multiply row n of Pascal's triangle (A007318) by A024175(n).

The programs for A120493, the canonical program `A120493.P11300911534930013935` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120493 has offset 0).

The definition of A120493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7681 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120493.P11300911534930013935

`A007318(n)*A024175(A003056(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120493

/-- `A007318(n)*A024175(A003056(n))` -/
def P11300911534930013935.Spec : Prop :=
  ∀ n, P11300911534930013935.a n = A120493 n

theorem P11300911534930013935.correct : P11300911534930013935.Spec := by
  intro n
  simp only [A120493]

end A120493

/-! ## A120493.P28198779657236540

`sqrt(A008459(n))*A024175(A003056(n))`
-/

namespace A120493.P28198779657236540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A024175 (A003056 n).toNat : ℝ)

end

end A120493.P28198779657236540

namespace A120493

/-- `sqrt(A008459(n))*A024175(A003056(n))` -/
def P28198779657236540.Spec : Prop :=
  ∀ n, P28198779657236540.a n = (A120493 n : ℝ)

end A120493

/-! ## A120493.P11271563113296935786

`Δ[A102363(n)]*A024175(A003056(n))`
-/

namespace A120493.P11271563113296935786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A024175 (A003056 n).toNat

end

end A120493.P11271563113296935786

namespace A120493

/-- `Δ[A102363(n)]*A024175(A003056(n))` -/
def P11271563113296935786.Spec : Prop :=
  ∀ n, P11271563113296935786.a n = A120493 n

end A120493

/-! ## A120493.P1276139548329758847

`(A014473(n)+1)*A024175(A003056(n))`
-/

namespace A120493.P1276139548329758847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A024175 (A003056 n).toNat

end

end A120493.P1276139548329758847

namespace A120493

/-- `(A014473(n)+1)*A024175(A003056(n))` -/
def P1276139548329758847.Spec : Prop :=
  ∀ n, P1276139548329758847.a n = A120493 n

theorem P1276139548329758847.correct : P1276139548329758847.Spec := by
  intro n
  simp only [A120493, Nat.add_sub_cancel, A120493.P1276139548329758847.a, A120493.P11300911534930013935.a, A003056, A003056.P5318256527314048597.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A024175, A024175.P2877136297432760661.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A120493

/-! ## A120493.P3175881364583824434

`A008619(A109128(n))*A024175(A003056(n))`
-/

namespace A120493.P3175881364583824434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109128 n).toNat * A024175 (A003056 n).toNat

end

end A120493.P3175881364583824434

namespace A120493

/-- `A008619(A109128(n))*A024175(A003056(n))` -/
def P3175881364583824434.Spec : Prop :=
  ∀ n, P3175881364583824434.a n = A120493 n

end A120493

/-!
# A120494: A vector group determinant sequence in which the next element is made by a sum of the older elements over a vector like 2 X 2 matrix group.

The programs for A120494, there is no canonical definition to state claims against.
-/

/-! ## A120494.P9857443028729395590

`xor(1, A098009(round(ϕ*a(n-2))))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A120494.P9857443028729395590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.xor 1 (A098009 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) : ℝ))).toNat)

end

end A120494.P9857443028729395590

/-! ## A120494.P5755965997103094284

`A266582(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A120494.P5755965997103094284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266582 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A120494.P5755965997103094284

/-! ## A120494.P14067389057371701618

`A121166(A107475(n))`
-/

namespace A120494.P14067389057371701618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121166 (A107475 n).toNat

end

end A120494.P14067389057371701618

/-!
# A120495: A vector group determinant sequence in which the next element is made by a sum of the older elements over a six element sl(2,2) vector like 2 X 2 matrix group.

The programs for A120495, there is no canonical definition to state claims against.
-/

/-! ## A120495.P170094580434562429

`A171717(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A120495.P170094580434562429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A171717 (a (n - 1) + a (n - 2)).toNat

end

end A120495.P170094580434562429

/-! ## A120495.P5982297957943323213

`A006924(A000579(n))+A000045(n)`
-/

namespace A120495.P5982297957943323213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 (A000579 n).toNat + A000045 n

end

end A120495.P5982297957943323213

/-! ## A120495.P5120080261528508862

`A006924(A058275(n))+A000045(n)`
-/

namespace A120495.P5120080261528508862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 (A058275 n).toNat + A000045 n

end

end A120495.P5120080261528508862

/-! ## A120495.P4185859697867962729

`A120659(n)+A006924(A000579(n))`
-/

namespace A120495.P4185859697867962729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120659 n + A006924 (A000579 n).toNat

end

end A120495.P4185859697867962729

/-!
# A120496: A determinant sum sequence of the D3 dihehral 2 X 2 representation.

The programs for A120496, there is no canonical definition to state claims against.
-/

/-! ## A120496.P374548572873383660

`C(A089911(n), A053879(C(n+7, 7)))`
-/

namespace A120496.P374548572873383660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089911 n).toNat (A053879 (Nat.choose (n + 7) 7)).toNat

end

end A120496.P374548572873383660

/-! ## A120496.P2310966018881076025

`A000045(n)*A107238(A107244(n))`
-/

namespace A120496.P2310966018881076025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A107238 (A107244 n).toNat

end

end A120496.P2310966018881076025

/-! ## A120496.P14271387726655701047

`A000045(n)*A322441(A011852(n))`
-/

namespace A120496.P14271387726655701047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A322441 (A011852 n).toNat

end

end A120496.P14271387726655701047

/-! ## A120496.P9125201563815304408

`A107238(A107244(n))*A120659(n)`
-/

namespace A120496.P9125201563815304408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107238 (A107244 n).toNat * A120659 n

end

end A120496.P9125201563815304408

/-! ## A120496.P2483749272184062854

`A000045(n)*A003178(A374636(n))`
-/

namespace A120496.P2483749272184062854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A003178 (A374636 n).toNat

end

end A120496.P2483749272184062854

/-!
# A120497: Positive integers whose number of divisors is a perfect power.

The programs for A120497, there is no canonical definition to state claims against.
-/

/-! ## A120497.P5507380867926097230

`filter[A018252(n+1), A181183(#)]`
-/

namespace A120497.P5507380867926097230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P5507380867926097230

/-! ## A120497.P14687477977912857389

`filter[A056653(n+1), A181183(#)]`
-/

namespace A120497.P14687477977912857389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P14687477977912857389

/-! ## A120497.P16589108888230999656

`filter[A103164(n+1), A181183(#)]`
-/

namespace A120497.P16589108888230999656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P16589108888230999656

/-! ## A120497.P18148089289924348881

`filter[A139118(n+1), A181183(#)]`
-/

namespace A120497.P18148089289924348881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P18148089289924348881

/-! ## A120497.P14914042780055032556

`filter[A141468(n+2), A181183(#)]`
-/

namespace A120497.P14914042780055032556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P14914042780055032556

/-! ## A120497.P16409460992384269410

`eq[0, A286852(A000005(n+1))]+1`
-/

namespace A120497.P16409460992384269410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120497.P16409460992384269410

/-! ## A120497.P68368010247353957

`filter[A073846(2*n+1), A181183(#)]`
-/

namespace A120497.P68368010247353957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P68368010247353957

/-! ## A120497.P5231510388544558543

`filter[A222307(2*n+1), A181183(#)]`
-/

namespace A120497.P5231510388544558543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A120497.P5231510388544558543

/-! ## A120497.P14871804065531812046

`∪[A030626(n+1), A036436(n+1)]`
-/

namespace A120497.P14871804065531812046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120497.P14871804065531812046

/-! ## A120497.P1198679804523193193

`∪[A036436(n+1), A048945(n+1)]`
-/

namespace A120497.P1198679804523193193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120497.P1198679804523193193

/-!
# A120498: Numbers C from the ABC conjecture.

The programs for A120498, there is no canonical definition to state claims against.
-/

/-! ## A120498.P10322696387350713400

`record[A130510(A323237(n+1))]`
-/

namespace A120498.P10322696387350713400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A323237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P10322696387350713400

/-! ## A120498.P42480005600004822

`record[A130510(n+1)%A130510(n+2)]`
-/

namespace A120498.P42480005600004822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130510 (n + 1)) (A130510 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P42480005600004822

/-! ## A120498.P9162298531600823639

`record[A130510(A253887(n+1))]`
-/

namespace A120498.P9162298531600823639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P9162298531600823639

/-! ## A120498.P3604673114863070650

`record[A130510(A152271(n))]`
-/

namespace A120498.P3604673114863070650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P3604673114863070650

/-! ## A120498.P15928431960949434675

`record[A130510(A003602(n+1))]`
-/

namespace A120498.P15928431960949434675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P15928431960949434675

/-! ## A120498.P7320930802074845930

`record[A130510(A065033(n+1))-A059841(n+1)]`
-/

namespace A120498.P7320930802074845930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A065033 (n + 1)).toNat - A059841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P7320930802074845930

/-! ## A120498.P13120305747193322938

`record[A059841(n)*A130510(A065033(n))]`
-/

namespace A120498.P13120305747193322938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A130510 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P13120305747193322938

/-! ## A120498.P16171465780366983506

`record[A130510(A194960(n+1))]`
-/

namespace A120498.P16171465780366983506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A194960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P16171465780366983506

/-! ## A120498.P13925684686494972455

`record[A130510(A141256(n))]`
-/

namespace A120498.P13925684686494972455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P13925684686494972455

/-! ## A120498.P1652743375610180430

`record[A225426(A001651(n+1)+2)]`
-/

namespace A120498.P1652743375610180430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (A001651 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P1652743375610180430

/-! ## A120498.P3879366909269252185

`record[A130510(A027751(n+1))]`
-/

namespace A120498.P3879366909269252185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (A027751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120498.P3879366909269252185

