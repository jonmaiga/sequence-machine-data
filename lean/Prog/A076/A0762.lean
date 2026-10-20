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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076201: a(n), for n > 1, equals the least prime p such that p - a(n-1) is a cube, a(1)=2.

The programs for A076201, there is no canonical definition to state claims against.
-/

/-! ## A076201.P17595269916246354409

`∑[A118880(A118794(n))]+2`
-/

namespace A076201.P17595269916246354409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A118794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A076201.P17595269916246354409

/-!
# A076203: Numbers n such that the sum of the digits of 2^n is prime.

The programs for A076203, the canonical program `A076203.P5595011529543371954` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076203 has offset 1).

The definition of A076203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076203.P4558234911336075506

`eq[1, A001222(A001370(n))]`
-/

namespace A076203.P4558234911336075506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076203.P4558234911336075506

namespace A076203

/-- `eq[1, A001222(A001370(n))]` -/
def P4558234911336075506.Spec : Prop :=
  ∀ n, (P4558234911336075506.a n : ℤ) = A076203 (n + 1)

end A076203

/-! ## A076203.P4560768798992061513

`lt[2%A000005(A001370(n+1)), 1]+1`
-/

namespace A076203.P4560768798992061513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A000005 (A001370 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076203.P4560768798992061513

namespace A076203

/-- `lt[2%A000005(A001370(n+1)), 1]+1` -/
def P4560768798992061513.Spec : Prop :=
  ∀ n, (P4560768798992061513.a n : ℤ) = A076203 (n + 1)

end A076203

/-! ## A076203.P16024371513848247804

`A005843(eq[2, A318470(A001370(n))])/2`
-/

namespace A076203.P16024371513848247804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318470 (A001370 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A076203.P16024371513848247804

namespace A076203

/-- `A005843(eq[2, A318470(A001370(n))])/2` -/
def P16024371513848247804.Spec : Prop :=
  ∀ n, P16024371513848247804.a n = (A076203 (n + 1) : ℚ)

end A076203

/-! ## A076203.P5595011529543371954

`lt[A010051(2*(n+1)), A010051(A001370(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076203

/-- `lt[A010051(2*(n+1)), A010051(A001370(n))]` -/
def P5595011529543371954.Spec : Prop :=
  ∀ n, (P5595011529543371954.a n : ℤ) = A076203 (n + 1)

theorem P5595011529543371954.correct : P5595011529543371954.Spec := by
  intro n
  simp only [A076203, Nat.add_sub_cancel]

end A076203

/-! ## A076203.P9502788837132028131

`eq[A000038(n), A086165(A001370(n))]`
-/

namespace A076203.P9502788837132028131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076203.P9502788837132028131

namespace A076203

/-- `eq[A000038(n), A086165(A001370(n))]` -/
def P9502788837132028131.Spec : Prop :=
  ∀ n, (P9502788837132028131.a n : ℤ) = A076203 (n + 1)

end A076203

/-! ## A076203.P2294147932411292237

`lt[A048050(A001370(n)), A051903(n+1)]`
-/

namespace A076203.P2294147932411292237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A001370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076203.P2294147932411292237

namespace A076203

/-- `lt[A048050(A001370(n)), A051903(n+1)]` -/
def P2294147932411292237.Spec : Prop :=
  ∀ n, (P2294147932411292237.a n : ℤ) = A076203 (n + 1)

end A076203

/-! ## A076203.P12778396747645623801

`eq[2, A181819(A066001(n)-A354618(n))]`
-/

namespace A076203.P12778396747645623801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A066001 n - A354618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076203.P12778396747645623801

namespace A076203

/-- `eq[2, A181819(A066001(n)-A354618(n))]` -/
def P12778396747645623801.Spec : Prop :=
  ∀ n, (P12778396747645623801.a n : ℤ) = A076203 (n + 1)

end A076203

/-! ## A076203.P9214205478387315768

`eq[1, A231820(∑{digits}[2^n, #]+1)]`
-/

namespace A076203.P9214205478387315768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076203.P9214205478387315768

namespace A076203

/-- `eq[1, A231820(∑{digits}[2^n, #]+1)]` -/
def P9214205478387315768.Spec : Prop :=
  ∀ n, (P9214205478387315768.a n : ℤ) = A076203 (n + 1)

end A076203

/-! ## A076203.P1387856769966076756

`eq[2, A000005(∑{digits}[A000225(n)+1, #])]`
-/

namespace A076203.P1387856769966076756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076203.P1387856769966076756

namespace A076203

/-- `eq[2, A000005(∑{digits}[A000225(n)+1, #])]` -/
def P1387856769966076756.Spec : Prop :=
  ∀ n, (P1387856769966076756.a n : ℤ) = A076203 (n + 1)

end A076203

/-!
# A076204: Numbers whose cube has a prime sum of digits.

The programs for A076204, there is no canonical definition to state claims against.
-/

/-! ## A076204.P2429812486483609118

`A109408(n+1)^(1/3)`
-/

namespace A076204.P2429812486483609118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109408 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A076204.P2429812486483609118

/-! ## A076204.P8276484426812774532

`eq[1, A231820(∑{digits}[n^3, #]+1)]`
-/

namespace A076204.P8276484426812774532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076204.P8276484426812774532

/-! ## A076204.P3230223330557901942

`eq[0, A007920(A004164(n))]`
-/

namespace A076204.P3230223330557901942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076204.P3230223330557901942

/-! ## A076204.P15749694088689231175

`eq[2, A074206(A004164(n)²)]`
-/

namespace A076204.P15749694088689231175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A004164 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076204.P15749694088689231175

/-! ## A076204.P7236313827179379545

`eq[A000007(n), A072480(A004164(n))]`
-/

namespace A076204.P7236313827179379545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A004164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076204.P7236313827179379545

/-!
# A076205: Numbers n such that 30*n+{1,7,11,13,17,19,23,29} are all composite.

The programs for A076205, there is no canonical definition to state claims against.
-/

/-! ## A076205.P15245522557303593487

`eq[0, A098591(A028310(n))]`
-/

namespace A076205.P15245522557303593487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098591 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076205.P15245522557303593487

/-!
# A076206: Numbers with digital root equal to their number of divisors.

The programs for A076206, the canonical program `A076206.P11566431045651896836` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076206 has offset 1).

The definition of A076206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076206.P11566431045651896836

`eq[A032741(n)+1, dr(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076206

/-- `eq[A032741(n)+1, dr(n)]` -/
def P11566431045651896836.Spec : Prop :=
  ∀ n, (P11566431045651896836.a n : ℤ) = A076206 (n + 1)

theorem P11566431045651896836.correct : P11566431045651896836.Spec := by
  intro n
  simp only [A076206, Nat.add_sub_cancel]

end A076206

/-! ## A076206.P16307993903633539332

`eq[dr(n), A000005(A028310(n))]`
-/

namespace A076206.P16307993903633539332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076206.P16307993903633539332

namespace A076206

/-- `eq[dr(n), A000005(A028310(n))]` -/
def P16307993903633539332.Spec : Prop :=
  ∀ n, (P16307993903633539332.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P12625328207226331246

`eq[dr(n), A174571(A145154(n))]`
-/

namespace A076206.P12625328207226331246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076206.P12625328207226331246

namespace A076206

/-- `eq[dr(n), A174571(A145154(n))]` -/
def P12625328207226331246.Spec : Prop :=
  ∀ n, (P12625328207226331246.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P12172445545084519290

`eq[dr(n), A320111(A257088(n))]`
-/

namespace A076206.P12172445545084519290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076206.P12172445545084519290

namespace A076206

/-- `eq[dr(n), A320111(A257088(n))]` -/
def P12172445545084519290.Spec : Prop :=
  ∀ n, (P12172445545084519290.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P17988086236946490920

`eq[A032741(n)+1, A010888(n)]`
-/

namespace A076206.P17988086236946490920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076206.P17988086236946490920

namespace A076206

/-- `eq[A032741(n)+1, A010888(n)]` -/
def P17988086236946490920.Spec : Prop :=
  ∀ n, (P17988086236946490920.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P1270805149593234792

`eq[A010888(n+1), A320111(2*(n+1))]+1`
-/

namespace A076206.P1270805149593234792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076206.P1270805149593234792

namespace A076206

/-- `eq[A010888(n+1), A320111(2*(n+1))]+1` -/
def P1270805149593234792.Spec : Prop :=
  ∀ n, (P1270805149593234792.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P10917977550561462016

`eq[A000005(A028310(n)), A010888(n)]`
-/

namespace A076206.P10917977550561462016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076206.P10917977550561462016

namespace A076206

/-- `eq[A000005(A028310(n)), A010888(n)]` -/
def P10917977550561462016.Spec : Prop :=
  ∀ n, (P10917977550561462016.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P12585986290798421150

`eq[A010888(n), A199343(A032741(n))]`
-/

namespace A076206.P12585986290798421150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076206.P12585986290798421150

namespace A076206

/-- `eq[A010888(n), A199343(A032741(n))]` -/
def P12585986290798421150.Spec : Prop :=
  ∀ n, (P12585986290798421150.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P2529685604731680350

`eq[A010888(n), A174571(A145154(n))]`
-/

namespace A076206.P2529685604731680350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076206.P2529685604731680350

namespace A076206

/-- `eq[A010888(n), A174571(A145154(n))]` -/
def P2529685604731680350.Spec : Prop :=
  ∀ n, (P2529685604731680350.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P8906576635665218366

`eq[A010888(n), A320111(A257088(n))]`
-/

namespace A076206.P8906576635665218366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076206.P8906576635665218366

namespace A076206

/-- `eq[A010888(n), A320111(A257088(n))]` -/
def P8906576635665218366.Spec : Prop :=
  ∀ n, (P8906576635665218366.a n : ℤ) = A076206 (n + 1)

end A076206

/-! ## A076206.P12272068998746807797

`eq[A010888(n), A112329(A008574(n))]`
-/

namespace A076206.P12272068998746807797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076206.P12272068998746807797

namespace A076206

/-- `eq[A010888(n), A112329(A008574(n))]` -/
def P12272068998746807797.Spec : Prop :=
  ∀ n, (P12272068998746807797.a n : ℤ) = A076206 (n + 1)

end A076206

/-!
# A076207: Triangular numbers whose sum of primes from smallest to largest prime factor is triangular and whose sum of composites from smallest to largest prime factor is triangular.

The programs for A076207, there is no canonical definition to state claims against.
-/

/-! ## A076207.P16379947975465806564

`A111074(A111081(n+1)+A003327(n+1))`
-/

namespace A076207.P16379947975465806564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111074 (A111081 (n + 1) + A003327 (n + 1)).toNat

end

end A076207.P16379947975465806564

/-!
# A076210: Numbers k such that (-k!! + (k+1)!! + 1)/2 is prime.

The programs for A076210, there is no canonical definition to state claims against.
-/

/-! ## A076210.P11354662545474742416

`A067526(A011971(n+1))+n`
-/

namespace A076210.P11354662545474742416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067526 (A011971 (n + 1)).toNat + (n : ℤ)

end

end A076210.P11354662545474742416

/-!
# A076212: Numbers k such that k and Fibonacci(k) have the same number of prime factors, counted with multiplicity.

The programs for A076212, there is no canonical definition to state claims against.
-/

/-! ## A076212.P896642275627634750

`eq[A001222(n+1), A038575(n+1)]+1`
-/

namespace A076212.P896642275627634750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076212.P896642275627634750

/-! ## A076212.P4453366696375926626

`eq[A038575(n+1), A304687(n+1)]+1`
-/

namespace A076212.P4453366696375926626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076212.P4453366696375926626

/-! ## A076212.P3813049783892003188

`eq[A038575(n)+2, A001222(A008458(n))]`
-/

namespace A076212.P3813049783892003188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076212.P3813049783892003188

/-! ## A076212.P8318862522438402391

`A122079(eq[A038575(n), A284289(n)])`
-/

namespace A076212.P8318862522438402391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076212.P8318862522438402391

/-!
# A076213: 2*a(n)-1 = sign(A005132(n+1)-A005132(n)).

The programs for A076213, there is no canonical definition to state claims against.
-/

/-! ## A076213.P12181023643074484456

`1-A160351(n+1)`
-/

namespace A076213.P12181023643074484456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160351 (n + 1)

end

end A076213.P12181023643074484456

/-! ## A076213.P12056961823368972167

`ceil(Δ[sqrt(A064289(n))])`
-/

namespace A076213.P12056961823368972167
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A064289 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A076213.P12056961823368972167

/-! ## A076213.P18056500817354415134

`ceil(Δ[atan(A005132(n))])`
-/

namespace A076213.P18056500817354415134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A005132 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A076213.P18056500817354415134

/-! ## A076213.P10451539449773943848

`ceil(1/A160356(n+1))`
-/

namespace A076213.P10451539449773943848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A160356 (n + 1) : ℚ)⌉

end

end A076213.P10451539449773943848

/-! ## A076213.P13967183718974449914

`ceil(A160357(n+1)/2)`
-/

namespace A076213.P13967183718974449914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160357 (n + 1) : ℚ) / 2⌉

end

end A076213.P13967183718974449914

/-! ## A076213.P13039391034904023704

`char[A057165(n+1)-1]`
-/

namespace A076213.P13039391034904023704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A076213.P13039391034904023704

/-! ## A076213.P3779323696500288266

`char[eq[1, A160357(n)]-1]`
-/

namespace A076213.P3779323696500288266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A076213.P3779323696500288266

/-! ## A076213.P7076700328115756036

`1-char[A057166(n+1)-1]`
-/

namespace A076213.P7076700328115756036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057166 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A076213.P7076700328115756036

/-! ## A076213.P7959432243371160310

`A000045(Δ[A064289(n)]+1)`
-/

namespace A076213.P7959432243371160310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 1).toNat

end

end A076213.P7959432243371160310

/-! ## A076213.P9346092262455712119

`A001065(Δ[A064289(n)]+2)`
-/

namespace A076213.P9346092262455712119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f1 (n + 1) - f1 n + 2).toNat

end

end A076213.P9346092262455712119

/-! ## A076213.P2106847258137419752

`A001221(Δ[A064289(n)]+2)`
-/

namespace A076213.P2106847258137419752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 2).toNat

end

end A076213.P2106847258137419752

/-! ## A076213.P1727906572212616550

`A001222(Δ[A064289(n)]+2)`
-/

namespace A076213.P1727906572212616550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 2).toNat

end

end A076213.P1727906572212616550

/-! ## A076213.P18007125766393374799

`A008683(Δ[A064289(n)]+5)`
-/

namespace A076213.P18007125766393374799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 5).toNat

end

end A076213.P18007125766393374799

/-!
# A076216: Partial sum of coefficients in the continued fraction expansion of sum(k>=0,1/2^(2^k-1)).

The programs for A076216, the canonical program `A076216.P540175759321930494` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076216 has offset 1).

The definition of A076216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076216.P10321636906430323388

`∑[A006466(n)]`
-/

namespace A076216.P10321636906430323388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076216.P10321636906430323388

namespace A076216

/-- `∑[A006466(n)]` -/
def P10321636906430323388.Spec : Prop :=
  ∀ n, P10321636906430323388.a n = A076216 (n + 1)

end A076216

/-! ## A076216.P540175759321930494

`eq[1, A253414(n-floor(n/3))²]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076216

/-- `eq[1, A253414(n-floor(n/3))²]+1` -/
def P540175759321930494.Spec : Prop :=
  ∀ n, (P540175759321930494.a n : ℤ) = A076216 (n + 1)

theorem P540175759321930494.correct : P540175759321930494.Spec := by
  intro n
  simp only [A076216, Nat.add_sub_cancel]

end A076216

/-! ## A076216.P10821112951195488298

`comp[A014682(∑[A006464(n)])]`
-/

namespace A076216.P10821112951195488298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A076216.P10821112951195488298

namespace A076216

/-- `comp[A014682(∑[A006464(n)])]` -/
def P10821112951195488298.Spec : Prop :=
  ∀ n, (P10821112951195488298.a n : ℤ) = A076216 (n + 1)

end A076216

/-! ## A076216.P4550192902605480617

`A006466(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A076216.P4550192902605480617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006466 n + a (A023443 n).toNat

end

end A076216.P4550192902605480617

namespace A076216

/-- `A006466(n)+a(A023443(n))` -/
def P4550192902605480617.Spec : Prop :=
  ∀ n, P4550192902605480617.a n = A076216 (n + 1)

end A076216

/-! ## A076216.P8920615121652248631

`A028310(a(n-1))+A006466(n)` with `a(0)=1`
-/

namespace A076216.P8920615121652248631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A006466 n

end

end A076216.P8920615121652248631

namespace A076216

/-- `A028310(a(n-1))+A006466(n)` -/
def P8920615121652248631.Spec : Prop :=
  ∀ n, P8920615121652248631.a n = A076216 (n + 1)

end A076216

/-! ## A076216.P9420683872889775416

`∑[A347589(n)%3]+1`
-/

namespace A076216.P9420683872889775416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347589 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A076216.P9420683872889775416

namespace A076216

/-- `∑[A347589(n)%3]+1` -/
def P9420683872889775416.Spec : Prop :=
  ∀ n, P9420683872889775416.a n = A076216 (n + 1)

end A076216

/-! ## A076216.P8048638997709772535

`A000005(∏[A006466(n)])+n`
-/

namespace A076216.P8048638997709772535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A076216.P8048638997709772535

namespace A076216

/-- `A000005(∏[A006466(n)])+n` -/
def P8048638997709772535.Spec : Prop :=
  ∀ n, P8048638997709772535.a n = A076216 (n + 1)

end A076216

/-! ## A076216.P5910509580197336677

`A001222(∏[A006466(n)])+1+n`
-/

namespace A076216.P5910509580197336677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + 1 + (n : ℤ)

end

end A076216.P5910509580197336677

namespace A076216

/-- `A001222(∏[A006466(n)])+1+n` -/
def P5910509580197336677.Spec : Prop :=
  ∀ n, P5910509580197336677.a n = A076216 (n + 1)

end A076216

/-!
# A076217: a(1)=1, a(n) = a(n-1) + n * sign(n-a(n-1)).

The programs for A076217, the canonical program `A076217.P17566438699919456229` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076217 has offset 1).

The definition of A076217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076217.P17566438699919456229

`n+1-(n*(a(n-1)-(n+1)))%(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076217

/-- `n+1-(n*(a(n-1)-(n+1)))%(n+1)` -/
def P17566438699919456229.Spec : Prop :=
  ∀ n, P17566438699919456229.a n = A076217 (n + 1)

theorem P17566438699919456229.correct : P17566438699919456229.Spec := by
  intro n
  simp only [A076217, Nat.add_sub_cancel]

end A076217

/-! ## A076217.P12274955026752032113

`(a(n-1)+n)%A294178(n)+1` with `a(0)=1`
-/

namespace A076217.P12274955026752032113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A294178 n) + 1

end

end A076217.P12274955026752032113

namespace A076217

/-- `(a(n-1)+n)%A294178(n)+1` -/
def P12274955026752032113.Spec : Prop :=
  ∀ n, P12274955026752032113.a n = A076217 (n + 1)

end A076217

/-! ## A076217.P9938409806604123663

`∑[(n+1)*A156277(A006530(n+1)^and(1, n+1))]`
-/

namespace A076217.P9938409806604123663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156277 (A006530 (n + 1) ^ Nat.land 1 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076217.P9938409806604123663

namespace A076217

/-- `∑[(n+1)*A156277(A006530(n+1)^and(1, n+1))]` -/
def P9938409806604123663.Spec : Prop :=
  ∀ n, P9938409806604123663.a n = A076217 (n + 1)

end A076217

/-! ## A076217.P9141618554553249016

`a(n-1)*A146023(A298972(5*n+4))-A131738(n)` with `a(0)=1`
-/

namespace A076217.P9141618554553249016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A146023 (A298972 (5 * n + 4)).toNat - A131738 n

end

end A076217.P9141618554553249016

namespace A076217

/-- `a(n-1)*A146023(A298972(5*n+4))-A131738(n)` -/
def P9141618554553249016.Spec : Prop :=
  ∀ n, P9141618554553249016.a n = A076217 (n + 1)

end A076217

/-!
# A076218: Numbers n such that 2*n^2 - 3*n + 1 is a square.

The programs for A076218, the canonical program `A076218.P16672917366290304066` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076218 has offset 1).

The definition of A076218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076218.P16672917366290304066

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=145`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076218

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P16672917366290304066.Spec : Prop :=
  ∀ n, P16672917366290304066.a n = A076218 (n + 1)

theorem P16672917366290304066.correct : P16672917366290304066.Spec := by
  intro n
  simp only [A076218, Nat.add_sub_cancel]

end A076218

/-! ## A076218.P4672342945029463243

`A098706(n)/2`
-/

namespace A076218.P4672342945029463243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098706 n : ℚ) / 2

end

end A076218.P4672342945029463243

namespace A076218

/-- `A098706(n)/2` -/
def P4672342945029463243.Spec : Prop :=
  ∀ n, P4672342945029463243.a n = (A076218 (n + 1) : ℚ)

end A076218

/-! ## A076218.P7136505294206678993

`ceil(A055792(n)/2)`
-/

namespace A076218.P7136505294206678993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055792 n : ℚ) / 2⌉

end

end A076218.P7136505294206678993

namespace A076218

/-- `ceil(A055792(n)/2)` -/
def P7136505294206678993.Spec : Prop :=
  ∀ n, P7136505294206678993.a n = A076218 (n + 1)

end A076218

/-! ## A076218.P1854641072605307670

`xor(1, A215936(2*n)²)`
-/

namespace A076218.P1854641072605307670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A215936 (2 * n) ^ 2)

end

end A076218.P1854641072605307670

namespace A076218

/-- `xor(1, A215936(2*n)²)` -/
def P1854641072605307670.Spec : Prop :=
  ∀ n, P1854641072605307670.a n = A076218 (n + 1)

end A076218

/-! ## A076218.P1115262673594373510

`ceil(A055872(comp[2*(n+1)]+1)/2)`
-/

namespace A076218.P1115262673594373510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055872 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2⌉

end

end A076218.P1115262673594373510

namespace A076218

/-- `ceil(A055872(comp[2*(n+1)]+1)/2)` -/
def P1115262673594373510.Spec : Prop :=
  ∀ n, P1115262673594373510.a n = A076218 (n + 1)

end A076218

/-! ## A076218.P2329712670458163415

`A331261(A019442(n+1))`
-/

namespace A076218.P2329712670458163415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331261 (A019442 (n + 1)).toNat

end

end A076218.P2329712670458163415

namespace A076218

/-- `A331261(A019442(n+1))` -/
def P2329712670458163415.Spec : Prop :=
  ∀ n, P2329712670458163415.a n = A076218 (n + 1)

end A076218

/-! ## A076218.P13279155061161915329

`record[xor(1, A079291(A124625(n)))]`
-/

namespace A076218.P13279155061161915329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A079291 (A124625 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076218.P13279155061161915329

namespace A076218

/-- `record[xor(1, A079291(A124625(n)))]` -/
def P13279155061161915329.Spec : Prop :=
  ∀ n, P13279155061161915329.a n = A076218 (n + 1)

end A076218

/-! ## A076218.P8200607199961443472

`record[A000129(n)*A215936(n)]`
-/

namespace A076218.P8200607199961443472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A215936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076218.P8200607199961443472

namespace A076218

/-- `record[A000129(n)*A215936(n)]` -/
def P8200607199961443472.Spec : Prop :=
  ∀ n, P8200607199961443472.a n = A076218 (n + 1)

end A076218

/-! ## A076218.P7665888518667995518

`(A057427(n)+A055792(n))/2`
-/

namespace A076218.P7665888518667995518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n + A055792 n : ℚ) / 2

end

end A076218.P7665888518667995518

namespace A076218

/-- `(A057427(n)+A055792(n))/2` -/
def P7665888518667995518.Spec : Prop :=
  ∀ n, P7665888518667995518.a n = (A076218 (n + 1) : ℚ)

end A076218

/-! ## A076218.P4137429312607610675

`(A178334(n)+A055792(n))/2`
-/

namespace A076218.P4137429312607610675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178334 n + A055792 n : ℚ) / 2

end

end A076218.P4137429312607610675

namespace A076218

/-- `(A178334(n)+A055792(n))/2` -/
def P4137429312607610675.Spec : Prop :=
  ∀ n, P4137429312607610675.a n = (A076218 (n + 1) : ℚ)

end A076218

/-!
# A076219: Smallest positive integer m such that m! begins with n in base 10.

The programs for A076219, there is no canonical definition to state claims against.
-/

/-! ## A076219.P17700683829144309263

`or(C(2, n), A018799(n+1))`
-/

namespace A076219.P17700683829144309263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A018799 (n + 1))

end

end A076219.P17700683829144309263

/-! ## A076219.P11734747491610848801

`A018799(a(ceil(sin(n)²)-1)+n)` with `a(0)=1`
-/

namespace A076219.P11734747491610848801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018799 (a (⌈Real.sin (n : ℝ) ^ 2⌉ - 1).toNat + (n : ℤ)).toNat

end

end A076219.P11734747491610848801

/-! ## A076219.P5077479164489254371

`A028310(A018799(n+1))`
-/

namespace A076219.P5077479164489254371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A018799 (n + 1)).toNat

end

end A076219.P5077479164489254371

/-! ## A076219.P16582426532968548956

`A065033(2*A018799(n+1))`
-/

namespace A076219.P16582426532968548956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A018799 (n + 1)).toNat

end

end A076219.P16582426532968548956

/-! ## A076219.P11683924241529574235

`A123108(2*A018799(n+1))`
-/

namespace A076219.P11683924241529574235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A018799 (n + 1)).toNat

end

end A076219.P11683924241529574235

/-! ## A076219.P12106879776151664779

`A018799(n+1)+A000007(n)`
-/

namespace A076219.P12106879776151664779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (n + 1) + A000007 n

end

end A076219.P12106879776151664779

/-! ## A076219.P4642310719682525956

`A018799(n+1)+and(1, A000079(n))`
-/

namespace A076219.P4642310719682525956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (n + 1) + Int.land 1 (A000079 n)

end

end A076219.P4642310719682525956

/-!
# A076220: Number of permutations of 1..n in which every pair of adjacent numbers are relatively prime.

The programs for A076220, there is no canonical definition to state claims against.
-/

/-! ## A076220.P10577578086049479468

`A072504(∏{e}[n+1, #+1]*A010552(n))`
-/

namespace A076220.P10577578086049479468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A010552 n).toNat

end

end A076220.P10577578086049479468

/-! ## A076220.P167549319599786998

`A072504(∑{d}[n+1, gcd(n, #)]*A010552(n))`
-/

namespace A076220.P167549319599786998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) * A010552 n).toNat

end

end A076220.P167549319599786998

/-! ## A076220.P12082124427848614700

`A072504(∑{d}[n+1, ceil(1/#)]*A010552(n))`
-/

namespace A076220.P12082124427848614700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 ((∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉) * A010552 n).toNat

end

end A076220.P12082124427848614700

/-! ## A076220.P17907458033210805819

`A072504(2^∑{e}[n+1, log2(#+1)]*A010552(n))`
-/

namespace A076220.P17907458033210805819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) * (A010552 n : ℝ))).toNat

end

end A076220.P17907458033210805819

/-! ## A076220.P4908565246275362105

`A072504(A000005(n+1)*A010552(n))`
-/

namespace A076220.P4908565246275362105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A000005 (n + 1) * A010552 n).toNat

end

end A076220.P4908565246275362105

/-!
# A076221: Triangle read by rows: A(n,k) is the number of x, x<=n, which are coprime to and not equal to k.

The programs for A076221, there is no canonical definition to state claims against.
-/

/-! ## A076221.P17538917411432624342

`∑[A010054(n)]-A001876(A000213(n))`
-/

namespace A076221.P17538917411432624342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001876 (A000213 n).toNat

end

end A076221.P17538917411432624342

/-! ## A076221.P17413266697018484552

`A115758(n+1)+A095827(A123519(n))`
-/

namespace A076221.P17413266697018484552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115758 (n + 1) + A095827 (A123519 n).toNat

end

end A076221.P17413266697018484552

/-! ## A076221.P112110388465343510

`A002024(n+1)-A001876(A000213(n))`
-/

namespace A076221.P112110388465343510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A001876 (A000213 n).toNat

end

end A076221.P112110388465343510

/-! ## A076221.P3034825669674552791

`A003056(n)-A379958(A234351(n+2))`
-/

namespace A076221.P3034825669674552791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A379958 (A234351 (n + 2)).toNat

end

end A076221.P3034825669674552791

/-! ## A076221.P4276167924778973650

`A001221(A080239(n+1)*A120383(n+1))`
-/

namespace A076221.P4276167924778973650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080239 (n + 1) * A120383 (n + 1)).toNat

end

end A076221.P4276167924778973650

/-!
# A076223: Minimum of n-th row of A076221.

The programs for A076223, there is no canonical definition to state claims against.
-/

/-! ## A076223.P5690648580168576217

`A000720(n+1)-A173667(A003309(n+1))`
-/

namespace A076223.P5690648580168576217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A173667 (A003309 (n + 1)).toNat

end

end A076223.P5690648580168576217

/-! ## A076223.P3988117412650017623

`A070549(n+1)-A173667(A003309(n+1))`
-/

namespace A076223.P3988117412650017623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070549 (n + 1) - A173667 (A003309 (n + 1)).toNat

end

end A076223.P3988117412650017623

/-! ## A076223.P4763918178009767514

`A000720(n+1)-A173667(A186380(n+1))`
-/

namespace A076223.P4763918178009767514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A173667 (A186380 (n + 1)).toNat

end

end A076223.P4763918178009767514

/-! ## A076223.P3058413807336740461

`∑[A010051(n+1)]-A173667(A003309(n+1))`
-/

namespace A076223.P3058413807336740461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173667 (A003309 (n + 1)).toNat

end

end A076223.P3058413807336740461

/-! ## A076223.P12683099897525520275

`A055679(2*(n+1))-A173667(A003309(n+1))`
-/

namespace A076223.P12683099897525520275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1)) - A173667 (A003309 (n + 1)).toNat

end

end A076223.P12683099897525520275

/-!
# A076225: Counts of the maximum value in n-th row of A076221.

The programs for A076225, the canonical program `A076225.P14623703994589845812` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076225 has offset 1).

The definition of A076225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076225.P14623703994589845812

`∑[∑{e}[n+1, #]!%2-∑{p}[n+1, val((n+1)²-#, 2*n+1)]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076225

/-- `∑[∑{e}[n+1, #]!%2-∑{p}[n+1, val((n+1)²-#, 2*n+1)]]` -/
def P14623703994589845812.Spec : Prop :=
  ∀ n, P14623703994589845812.a n = A076225 (n + 1)

theorem P14623703994589845812.correct : P14623703994589845812.Spec := by
  intro n
  simp only [A076225, Nat.add_sub_cancel]

end A076225

/-! ## A076225.P14874626709261695763

`∑[C(2, ∑{e}[n+1, #+1])]-∑[∑{p}[n+1, val((n+1)²-#, 2*n+1)]]`
-/

namespace A076225.P14874626709261695763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), SequenceMachineLib.valuation (((n + 1) ^ 2 : ℤ) - (p : ℤ)).toNat (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A076225.P14874626709261695763

namespace A076225

/-- `∑[C(2, ∑{e}[n+1, #+1])]-∑[∑{p}[n+1, val((n+1)²-#, 2*n+1)]]` -/
def P14874626709261695763.Spec : Prop :=
  ∀ n, P14874626709261695763.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P9681222390150229621

`1+A056171(n+1)`
-/

namespace A076225.P9681222390150229621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A056171 (n + 1)

end

end A076225.P9681222390150229621

namespace A076225

/-- `1+A056171(n+1)` -/
def P9681222390150229621.Spec : Prop :=
  ∀ n, P9681222390150229621.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P15818403142131498478

`A338363(n+1)-n`
-/

namespace A076225.P15818403142131498478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338363 (n + 1) - (n : ℤ)

end

end A076225.P15818403142131498478

namespace A076225

/-- `A338363(n+1)-n` -/
def P15818403142131498478.Spec : Prop :=
  ∀ n, P15818403142131498478.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P17267140619707134831

`log2(A056672(n+1))+1`
-/

namespace A076225.P17267140619707134831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056672 (n + 1) : ℝ) + 1

end

end A076225.P17267140619707134831

namespace A076225

/-- `log2(A056672(n+1))+1` -/
def P17267140619707134831.Spec : Prop :=
  ∀ n, P17267140619707134831.a n = (A076225 (n + 1) : ℝ)

end A076225

/-! ## A076225.P6877617737155240794

`∑[ceil(1/(3-A052126(n+1)²))]`
-/

namespace A076225.P6877617737155240794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (3 - A052126 (n + 1) ^ 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076225.P6877617737155240794

namespace A076225

/-- `∑[ceil(1/(3-A052126(n+1)²))]` -/
def P6877617737155240794.Spec : Prop :=
  ∀ n, P6877617737155240794.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P3302883789019237781

`A036234(n+1)-A056172(n+1)`
-/

namespace A076225.P3302883789019237781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A056172 (n + 1)

end

end A076225.P3302883789019237781

namespace A076225

/-- `A036234(n+1)-A056172(n+1)` -/
def P3302883789019237781.Spec : Prop :=
  ∀ n, P3302883789019237781.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P13992103997195124055

`A000005(A056672(n+1))`
-/

namespace A076225.P13992103997195124055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056672 (n + 1)).toNat

end

end A076225.P13992103997195124055

namespace A076225

/-- `A000005(A056672(n+1))` -/
def P13992103997195124055.Spec : Prop :=
  ∀ n, P13992103997195124055.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P3154274717026721609

`A001222(2*A056672(n+1))`
-/

namespace A076225.P3154274717026721609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A056672 (n + 1)).toNat

end

end A076225.P3154274717026721609

namespace A076225

/-- `A001222(2*A056672(n+1))` -/
def P3154274717026721609.Spec : Prop :=
  ∀ n, P3154274717026721609.a n = A076225 (n + 1)

end A076225

/-! ## A076225.P17022084617064587691

`∑[A008683(Δ[A339509(n)])]`
-/

namespace A076225.P17022084617064587691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076225.P17022084617064587691

namespace A076225

/-- `∑[A008683(Δ[A339509(n)])]` -/
def P17022084617064587691.Spec : Prop :=
  ∀ n, P17022084617064587691.a n = A076225 (n + 1)

end A076225

/-!
# A076227: Number of surviving Collatz residues mod 2^n.

The programs for A076227, there is no canonical definition to state claims against.
-/

/-! ## A076227.P2139663573530257495

`A126042(A062399(n))`
-/

namespace A076227.P2139663573530257495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (A062399 n).toNat

end

end A076227.P2139663573530257495

/-! ## A076227.P15155371840257440017

`A090109(A126042(n))`
-/

namespace A076227.P15155371840257440017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A126042 n).toNat

end

end A076227.P15155371840257440017

/-! ## A076227.P3827589118455322710

`A126042(A120126(n))`
-/

namespace A076227.P3827589118455322710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (A120126 n).toNat

end

end A076227.P3827589118455322710

/-! ## A076227.P16873032910745388152

`A126042(A351870(n))`
-/

namespace A076227.P16873032910745388152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (A351870 n).toNat

end

end A076227.P16873032910745388152

/-! ## A076227.P3881929273903467861

`A126042(A004894(n+1))`
-/

namespace A076227.P3881929273903467861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (A004894 (n + 1)).toNat

end

end A076227.P3881929273903467861

/-!
# A076228: Number of terms k in the trajectory of the Collatz function applied to n such that k < n.

The programs for A076228, there is no canonical definition to state claims against.
-/

/-! ## A076228.P13991566070247995337

`A159999(n+1)-1`
-/

namespace A076228.P13991566070247995337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159999 (n + 1) - 1

end

end A076228.P13991566070247995337

/-! ## A076228.P5143770458817805606

`n-A246436(n+1)`
-/

namespace A076228.P5143770458817805606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246436 (n + 1)

end

end A076228.P5143770458817805606

/-! ## A076228.P10215014315676632353

`A008908(n+1)-A213204(n+1)`
-/

namespace A076228.P10215014315676632353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A213204 (n + 1)

end

end A076228.P10215014315676632353

/-! ## A076228.P6914942469793551302

`A006577(n+1)-A222597(n+1)`
-/

namespace A076228.P6914942469793551302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A222597 (n + 1)

end

end A076228.P6914942469793551302

/-! ## A076228.P13987145950676301037

`A008908(n+1)-(A222597(n+1)+1)`
-/

namespace A076228.P13987145950676301037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A222597 (n + 1) + 1)

end

end A076228.P13987145950676301037

/-! ## A076228.P6909507792448909332

`A070198(n)%A159999(n+1)`
-/

namespace A076228.P6909507792448909332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A159999 (n + 1))

end

end A076228.P6909507792448909332

/-! ## A076228.P15421722984536920290

`A079782(n+1)%A159999(n+1)`
-/

namespace A076228.P15421722984536920290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A159999 (n + 1))

end

end A076228.P15421722984536920290

/-! ## A076228.P15263586124246951457

`A083685(n+1)%A159999(n+1)`
-/

namespace A076228.P15263586124246951457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A159999 (n + 1))

end

end A076228.P15263586124246951457

/-! ## A076228.P3589654820130770575

`A121934(n+1)%A159999(n+1)`
-/

namespace A076228.P3589654820130770575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A159999 (n + 1))

end

end A076228.P3589654820130770575

/-!
# A076230: Numbers k such that sigma_2(k)/k and sigma_4(k)/k are integers.

The programs for A076230, there is no canonical definition to state claims against.
-/

/-! ## A076230.P924049340612208376

`∩[A046762(n+1), A046764(n+1)]`
-/

namespace A076230.P924049340612208376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076230.P924049340612208376

/-!
# A076231: Numbers k such that sigma(k)/k, sigma_3(k)/k and sigma_5(k)/k are all integers.

The programs for A076231, there is no canonical definition to state claims against.
-/

/-! ## A076231.P3430835088432533092

`∩[A055709(n+1), A055713(n+1)]`
-/

namespace A076231.P3430835088432533092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076231.P3430835088432533092

/-! ## A076231.P8677500958194218828

`A325639(A057919(n+3)-2)`
-/

namespace A076231.P8677500958194218828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325639 (A057919 (n + 3) - 2).toNat

end

end A076231.P8677500958194218828

/-! ## A076231.P13402806465281451730

`A007691(lt[(-1)^∑{e}[n+1, #], A241470(n+1)])`
-/

namespace A076231.P13402806465281451730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A076231.P13402806465281451730

/-!
# A076233: Numbers k such that sigma(k)/k and sigma_3(k)/k are both integers.

The programs for A076233, there is no canonical definition to state claims against.
-/

/-! ## A076233.P15502923289281673384

`∩[A046763(n+1), A055715(n+1)]`
-/

namespace A076233.P15502923289281673384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076233.P15502923289281673384

/-! ## A076233.P14272934675662334165

`A007691(lt[A144218(n), A097157(3*n+2)])`
-/

namespace A076233.P14272934675662334165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097157 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076233.P14272934675662334165

/-! ## A076233.P12445380261343983084

`∩[A055713(n+1), A055715(n+1)]`
-/

namespace A076233.P12445380261343983084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076233.P12445380261343983084

/-! ## A076233.P11352945098367095893

`A007691(lt[A328596(n+1), A301289(n)])`
-/

namespace A076233.P11352945098367095893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076233.P11352945098367095893

/-! ## A076233.P4065011762916522968

`A007691(lt[A268172(n), A098122(2*n)])`
-/

namespace A076233.P4065011762916522968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268172 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098122 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076233.P4065011762916522968

/-!
# A076234: Numbers k such that sigma(k)/k, sigma_3(k)/k, sigma_5(k)/k and sigma_7(k)/k are all integers.

The programs for A076234, there is no canonical definition to state claims against.
-/

/-! ## A076234.P7668832806933360760

`A076231(eq[A046786(n), A348033(n+1)])`
-/

namespace A076234.P7668832806933360760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076231 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076234.P7668832806933360760

/-!
# A076235: Least of the least frequent values in rows of A076221.

The programs for A076235, there is no canonical definition to state claims against.
-/

/-! ## A076235.P1599245115223654034

`A000720(n+1)-A188297(Δ[A001924(n)])`
-/

namespace A076235.P1599245115223654034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A188297 (f1 (n + 1) - f1 n).toNat

end

end A076235.P1599245115223654034

/-! ## A076235.P17817404704203690096

`A000720(n+1)-A188297(∑[A000045(n+1)])`
-/

namespace A076235.P17817404704203690096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A188297 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076235.P17817404704203690096

/-! ## A076235.P17353209272354118005

`A000720(n+1)-A188297(A000720(A105554(n+1)))`
-/

namespace A076235.P17353209272354118005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A188297 (A000720 (A105554 (n + 1)).toNat).toNat

end

end A076235.P17353209272354118005

/-! ## A076235.P3012320305221242380

`∑[A334196(n+1)^A000746(n)]`
-/

namespace A076235.P3012320305221242380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334196 (n + 1) : ℚ) ^ (A000746 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076235.P3012320305221242380

/-! ## A076235.P3437611896647720654

`∑[A334196(n+1)^A086601(n+2)]`
-/

namespace A076235.P3437611896647720654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334196 (n + 1) : ℚ) ^ (A086601 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076235.P3437611896647720654

/-!
# A076236: a(n) = A050435(n) mod A002808(n).

The programs for A076236, the canonical program `A076236.P15465252075086350596` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076236 has offset 1).

The definition of A076236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076236.P15465252075086350596

`A050435(n+1)%A002808(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076236

/-- `A050435(n+1)%A002808(n+1)` -/
def P15465252075086350596.Spec : Prop :=
  ∀ n, P15465252075086350596.a n = A076236 (n + 1)

theorem P15465252075086350596.correct : P15465252075086350596.Spec := by
  intro n
  simp only [A076236, Nat.add_sub_cancel]

end A076236

/-! ## A076236.P16871156385156606009

`A002808(A002808(n+1))%Δ[A053767(n)]`
-/

namespace A076236.P16871156385156606009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A002808 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A076236.P16871156385156606009

namespace A076236

/-- `A002808(A002808(n+1))%Δ[A053767(n)]` -/
def P16871156385156606009.Spec : Prop :=
  ∀ n, P16871156385156606009.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P1103587140530792603

`A002808(comp[A351078(n)])%A002808(n+1)`
-/

namespace A076236.P1103587140530792603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A002808 (n + 1))

end

end A076236.P1103587140530792603

namespace A076236

/-- `A002808(comp[A351078(n)])%A002808(n+1)` -/
def P1103587140530792603.Spec : Prop :=
  ∀ n, P1103587140530792603.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P11281153730072243254

`A018252(A079696(n+1))%comp[A351078(n)]`
-/

namespace A076236.P11281153730072243254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A079696 (n + 1)).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A076236.P11281153730072243254

namespace A076236

/-- `A018252(A079696(n+1))%comp[A351078(n)]` -/
def P11281153730072243254.Spec : Prop :=
  ∀ n, P11281153730072243254.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P16443238653733787402

`A002808(A141468(n+3))%A002808(n+1)`
-/

namespace A076236.P16443238653733787402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A141468 (n + 3)).toNat) (A002808 (n + 1))

end

end A076236.P16443238653733787402

namespace A076236

/-- `A002808(A141468(n+3))%A002808(n+1)` -/
def P16443238653733787402.Spec : Prop :=
  ∀ n, P16443238653733787402.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P9587428709157823552

`A002808(lt[1, A107286(n)])%A002808(n+1)`
-/

namespace A076236.P9587428709157823552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002808 (n + 1))

end

end A076236.P9587428709157823552

namespace A076236

/-- `A002808(lt[1, A107286(n)])%A002808(n+1)` -/
def P9587428709157823552.Spec : Prop :=
  ∀ n, P9587428709157823552.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P97278431142308913

`A002808(lt[1, A107463(n)])%A002808(n+1)`
-/

namespace A076236.P97278431142308913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002808 (n + 1))

end

end A076236.P97278431142308913

namespace A076236

/-- `A002808(lt[1, A107463(n)])%A002808(n+1)` -/
def P97278431142308913.Spec : Prop :=
  ∀ n, P97278431142308913.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P15400718676948821259

`A002808(lt[1, A175126(n)])%A002808(n+1)`
-/

namespace A076236.P15400718676948821259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002808 (n + 1))

end

end A076236.P15400718676948821259

namespace A076236

/-- `A002808(lt[1, A175126(n)])%A002808(n+1)` -/
def P15400718676948821259.Spec : Prop :=
  ∀ n, P15400718676948821259.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P6170341320009145625

`A002808(lt[1, A328772(n)])%A002808(n+1)`
-/

namespace A076236.P6170341320009145625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002808 (n + 1))

end

end A076236.P6170341320009145625

namespace A076236

/-- `A002808(lt[1, A328772(n)])%A002808(n+1)` -/
def P6170341320009145625.Spec : Prop :=
  ∀ n, P6170341320009145625.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P7253877306970235153

`A002808(comp[A158611(n+1)])%A002808(n+1)`
-/

namespace A076236.P7253877306970235153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A002808 (n + 1))

end

end A076236.P7253877306970235153

namespace A076236

/-- `A002808(comp[A158611(n+1)])%A002808(n+1)` -/
def P7253877306970235153.Spec : Prop :=
  ∀ n, P7253877306970235153.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P14379264803602897457

`A018252(A018252(n+2)+1)%A018252(n+2)`
-/

namespace A076236.P14379264803602897457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A018252 (n + 2) + 1).toNat) (A018252 (n + 2))

end

end A076236.P14379264803602897457

namespace A076236

/-- `A018252(A018252(n+2)+1)%A018252(n+2)` -/
def P14379264803602897457.Spec : Prop :=
  ∀ n, P14379264803602897457.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P8754024534006031885

`A002808(comp[A040976(n+1)]+2)%A002808(n+1)`
-/

namespace A076236.P8754024534006031885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)) (A002808 (n + 1))

end

end A076236.P8754024534006031885

namespace A076236

/-- `A002808(comp[A040976(n+1)]+2)%A002808(n+1)` -/
def P8754024534006031885.Spec : Prop :=
  ∀ n, P8754024534006031885.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P7233930451989554381

`A002808(lt[0, A334107(n+1)]+1)%A002808(n+1)`
-/

namespace A076236.P7233930451989554381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)) (A002808 (n + 1))

end

end A076236.P7233930451989554381

namespace A076236

/-- `A002808(lt[0, A334107(n+1)]+1)%A002808(n+1)` -/
def P7233930451989554381.Spec : Prop :=
  ∀ n, P7233930451989554381.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P14207650982840044622

`A002808(lt[1, A069359(n+1)]+1)%A002808(n+1)`
-/

namespace A076236.P14207650982840044622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)) (A002808 (n + 1))

end

end A076236.P14207650982840044622

namespace A076236

/-- `A002808(lt[1, A069359(n+1)]+1)%A002808(n+1)` -/
def P14207650982840044622.Spec : Prop :=
  ∀ n, P14207650982840044622.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P7255656983723560407

`A065860(A002808(n+1))`
-/

namespace A076236.P7255656983723560407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065860 (A002808 (n + 1)).toNat

end

end A076236.P7255656983723560407

namespace A076236

/-- `A065860(A002808(n+1))` -/
def P7255656983723560407.Spec : Prop :=
  ∀ n, P7255656983723560407.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P2577292991989585619

`A065860(A018252(n+2))`
-/

namespace A076236.P2577292991989585619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065860 (A018252 (n + 2)).toNat

end

end A076236.P2577292991989585619

namespace A076236

/-- `A065860(A018252(n+2))` -/
def P2577292991989585619.Spec : Prop :=
  ∀ n, P2577292991989585619.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P9674826097969128548

`A065860(A060462(n+2)+1)`
-/

namespace A076236.P9674826097969128548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065860 (A060462 (n + 2) + 1).toNat

end

end A076236.P9674826097969128548

namespace A076236

/-- `A065860(A060462(n+2)+1)` -/
def P9674826097969128548.Spec : Prop :=
  ∀ n, P9674826097969128548.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P8968500049883089660

`A065860(A282671(n+1)/2)`
-/

namespace A076236.P8968500049883089660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065860 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A076236.P8968500049883089660

namespace A076236

/-- `A065860(A282671(n+1)/2)` -/
def P8968500049883089660.Spec : Prop :=
  ∀ n, P8968500049883089660.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P6800977139066221888

`A065860(A139270(n+2)/2)`
-/

namespace A076236.P6800977139066221888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065860 (SequenceMachineLib.roundAway ((A139270 (n + 2) : ℚ) / 2)).toNat

end

end A076236.P6800977139066221888

namespace A076236

/-- `A065860(A139270(n+2)/2)` -/
def P6800977139066221888.Spec : Prop :=
  ∀ n, P6800977139066221888.a n = A076236 (n + 1)

end A076236

/-! ## A076236.P2939263187900433855

`A065860(A079772(n+1)-A056608(n+1))`
-/

namespace A076236.P2939263187900433855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065860 (A079772 (n + 1) - A056608 (n + 1)).toNat

end

end A076236.P2939263187900433855

namespace A076236

/-- `A065860(A079772(n+1)-A056608(n+1))` -/
def P2939263187900433855.Spec : Prop :=
  ∀ n, P2939263187900433855.a n = A076236 (n + 1)

end A076236

/-!
# A076237: a(n) = A050435(n) mod n.

The programs for A076237, the canonical program `A076237.P11217215264667886405` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076237 has offset 1).

The definition of A076237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050435, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076237.P11217215264667886405

`A050435(n+1)%(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076237

/-- `A050435(n+1)%(n+1)` -/
def P11217215264667886405.Spec : Prop :=
  ∀ n, P11217215264667886405.a n = A076237 (n + 1)

theorem P11217215264667886405.correct : P11217215264667886405.Spec := by
  intro n
  simp only [A076237, Nat.add_sub_cancel]

end A076237

/-! ## A076237.P16464340977264698948

`A018252(A018252(n+2)+1)%(n+1)`
-/

namespace A076237.P16464340977264698948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A018252 (n + 2) + 1).toNat) (n + 1 : ℤ)

end

end A076237.P16464340977264698948

namespace A076237

/-- `A018252(A018252(n+2)+1)%(n+1)` -/
def P16464340977264698948.Spec : Prop :=
  ∀ n, P16464340977264698948.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P14135737040192464936

`A073367(Δ[A053767(n)])`
-/

namespace A076237.P14135737040192464936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (f1 (n + 1) - f1 n).toNat

end

end A076237.P14135737040192464936

namespace A076237

/-- `A073367(Δ[A053767(n)])` -/
def P14135737040192464936.Spec : Prop :=
  ∀ n, P14135737040192464936.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P17223213232748858675

`A073367(comp[A351078(n)])`
-/

namespace A076237.P17223213232748858675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076237.P17223213232748858675

namespace A076237

/-- `A073367(comp[A351078(n)])` -/
def P17223213232748858675.Spec : Prop :=
  ∀ n, P17223213232748858675.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P16545881626466692580

`A073367(A002808(n+1))`
-/

namespace A076237.P16545881626466692580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (A002808 (n + 1)).toNat

end

end A076237.P16545881626466692580

namespace A076237

/-- `A073367(A002808(n+1))` -/
def P16545881626466692580.Spec : Prop :=
  ∀ n, P16545881626466692580.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P3320243157606237903

`A073367(A018252(n+2))`
-/

namespace A076237.P3320243157606237903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (A018252 (n + 2)).toNat

end

end A076237.P3320243157606237903

namespace A076237

/-- `A073367(A018252(n+2))` -/
def P3320243157606237903.Spec : Prop :=
  ∀ n, P3320243157606237903.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P8755838283313784297

`A073367(A079696(n+1)-1)`
-/

namespace A076237.P8755838283313784297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (A079696 (n + 1) - 1).toNat

end

end A076237.P8755838283313784297

namespace A076237

/-- `A073367(A079696(n+1)-1)` -/
def P8755838283313784297.Spec : Prop :=
  ∀ n, P8755838283313784297.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P15544798943713534335

`A073367(comp[C(A006530(n+1), n)])`
-/

namespace A076237.P15544798943713534335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076237.P15544798943713534335

namespace A076237

/-- `A073367(comp[C(A006530(n+1), n)])` -/
def P15544798943713534335.Spec : Prop :=
  ∀ n, P15544798943713534335.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P4410487647595500805

`A073367(comp[C(A020639(n+1), n)])`
-/

namespace A076237.P4410487647595500805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076237.P4410487647595500805

namespace A076237

/-- `A073367(comp[C(A020639(n+1), n)])` -/
def P4410487647595500805.Spec : Prop :=
  ∀ n, P4410487647595500805.a n = A076237 (n + 1)

end A076237

/-! ## A076237.P8737079400626984046

`A073367(lt[2, A000005(n+1)]+1)`
-/

namespace A076237.P8737079400626984046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A076237.P8737079400626984046

namespace A076237

/-- `A073367(lt[2, A000005(n+1)]+1)` -/
def P8737079400626984046.Spec : Prop :=
  ∀ n, P8737079400626984046.a n = A076237 (n + 1)

end A076237

/-!
# A076238: a(n) = A050436(n) mod A002808(n).

The programs for A076238, the canonical program `A076238.P18351837479544488770` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076238 has offset 1).

The definition of A076238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A050436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076238.P18351837479544488770

`A050436(n+1)%A002808(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A076238

/-- `A050436(n+1)%A002808(n+1)` -/
def P18351837479544488770.Spec : Prop :=
  ∀ n, P18351837479544488770.a n = A076238 (n + 1)

theorem P18351837479544488770.correct : P18351837479544488770.Spec := by
  intro n
  simp only [A076238, Nat.add_sub_cancel]

end A076238

/-! ## A076238.P4331447480138343978

`A050436(n+1)%Δ[A053767(n)]`
-/

namespace A076238.P4331447480138343978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (f1 (n + 1) - f1 n)

end

end A076238.P4331447480138343978

namespace A076238

/-- `A050436(n+1)%Δ[A053767(n)]` -/
def P4331447480138343978.Spec : Prop :=
  ∀ n, P4331447480138343978.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P10969443582408683365

`A018252(A050435(n+1)+1)%A018252(n+2)`
-/

namespace A076238.P10969443582408683365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A050435 (n + 1) + 1).toNat) (A018252 (n + 2))

end

end A076238.P10969443582408683365

namespace A076238

/-- `A018252(A050435(n+1)+1)%A018252(n+2)` -/
def P10969443582408683365.Spec : Prop :=
  ∀ n, P10969443582408683365.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P2874206124771418743

`A076237(A002808(n+1))`
-/

namespace A076238.P2874206124771418743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076237 (A002808 (n + 1)).toNat

end

end A076238.P2874206124771418743

namespace A076238

/-- `A076237(A002808(n+1))` -/
def P2874206124771418743.Spec : Prop :=
  ∀ n, P2874206124771418743.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P105767270422285122

`A076237(A056653(n+1))`
-/

namespace A076238.P105767270422285122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076237 (A056653 (n + 1)).toNat

end

end A076238.P105767270422285122

namespace A076238

/-- `A076237(A056653(n+1))` -/
def P105767270422285122.Spec : Prop :=
  ∀ n, P105767270422285122.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P17670008377893876948

`A076237(A018252(n+2))`
-/

namespace A076238.P17670008377893876948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076237 (A018252 (n + 2)).toNat

end

end A076238.P17670008377893876948

namespace A076238

/-- `A076237(A018252(n+2))` -/
def P17670008377893876948.Spec : Prop :=
  ∀ n, P17670008377893876948.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P6321484584474963303

`A050435(A018252(n+2))%Δ[A053767(n)]`
-/

namespace A076238.P6321484584474963303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (A018252 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A076238.P6321484584474963303

namespace A076238

/-- `A050435(A018252(n+2))%Δ[A053767(n)]` -/
def P6321484584474963303.Spec : Prop :=
  ∀ n, P6321484584474963303.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P15103737627068688741

`A050435(A002808(n+1))%A018252(n+2)`
-/

namespace A076238.P15103737627068688741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (A002808 (n + 1)).toNat) (A018252 (n + 2))

end

end A076238.P15103737627068688741

namespace A076238

/-- `A050435(A002808(n+1))%A018252(n+2)` -/
def P15103737627068688741.Spec : Prop :=
  ∀ n, P15103737627068688741.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P9587525989678460066

`A050435(lt[1, A078898(n)])%A018252(n+2)`
-/

namespace A076238.P9587525989678460066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A018252 (n + 2))

end

end A076238.P9587525989678460066

namespace A076238

/-- `A050435(lt[1, A078898(n)])%A018252(n+2)` -/
def P9587525989678460066.Spec : Prop :=
  ∀ n, P9587525989678460066.a n = A076238 (n + 1)

end A076238

/-! ## A076238.P16131504085346702286

`A073367(A050435(n+1))`
-/

namespace A076238.P16131504085346702286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073367 (A050435 (n + 1)).toNat

end

end A076238.P16131504085346702286

namespace A076238

/-- `A073367(A050435(n+1))` -/
def P16131504085346702286.Spec : Prop :=
  ∀ n, P16131504085346702286.a n = A076238 (n + 1)

end A076238

/-!
# A076239: Remainder when 3rd-order composite ccc(n) = A050436(n) is divided by n.

The programs for A076239, the canonical program `A076239.P17511644699145666000` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076239 has offset 1).

The definition of A076239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076239.P17511644699145666000

`A050436(n+1)%(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A076239

/-- `A050436(n+1)%(n+1)` -/
def P17511644699145666000.Spec : Prop :=
  ∀ n, P17511644699145666000.a n = A076239 (n + 1)

theorem P17511644699145666000.correct : P17511644699145666000.Spec := by
  intro n
  simp only [A076239, Nat.add_sub_cancel]

end A076239

/-! ## A076239.P10603242457293840442

`A002808(A002808(A002808(n+1)))%(n+1)`
-/

namespace A076239.P10603242457293840442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A002808 (A002808 (n + 1)).toNat).toNat) (n + 1 : ℤ)

end

end A076239.P10603242457293840442

namespace A076239

/-- `A002808(A002808(A002808(n+1)))%(n+1)` -/
def P10603242457293840442.Spec : Prop :=
  ∀ n, P10603242457293840442.a n = A076239 (n + 1)

end A076239

/-! ## A076239.P12867341356359894997

`A050435(A002808(n+1))%(n+1)`
-/

namespace A076239.P12867341356359894997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (A002808 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076239.P12867341356359894997

namespace A076239

/-- `A050435(A002808(n+1))%(n+1)` -/
def P12867341356359894997.Spec : Prop :=
  ∀ n, P12867341356359894997.a n = A076239 (n + 1)

end A076239

/-! ## A076239.P11646412882879318786

`A018252(A072668(A072668(n+1)+1)+2)%(n+1)`
-/

namespace A076239.P11646412882879318786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A072668 (A072668 (n + 1) + 1).toNat + 2).toNat) (n + 1 : ℤ)

end

end A076239.P11646412882879318786

namespace A076239

/-- `A018252(A072668(A072668(n+1)+1)+2)%(n+1)` -/
def P11646412882879318786.Spec : Prop :=
  ∀ n, P11646412882879318786.a n = A076239 (n + 1)

end A076239

/-! ## A076239.P13180294460738297552

`A050435(A050435(n+1)-A076236(n+1))%(n+1)`
-/

namespace A076239.P13180294460738297552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (A050435 (n + 1) - A076236 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076239.P13180294460738297552

namespace A076239

/-- `A050435(A050435(n+1)-A076236(n+1))%(n+1)` -/
def P13180294460738297552.Spec : Prop :=
  ∀ n, P13180294460738297552.a n = A076239 (n + 1)

end A076239

/-! ## A076239.P13746498761250914218

`A056653(A056653(A056653(n+1)))%(n+1)`
-/

namespace A076239.P13746498761250914218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056653 (A056653 (A056653 (n + 1)).toNat).toNat) (n + 1 : ℤ)

end

end A076239.P13746498761250914218

namespace A076239

/-- `A056653(A056653(A056653(n+1)))%(n+1)` -/
def P13746498761250914218.Spec : Prop :=
  ∀ n, P13746498761250914218.a n = A076239 (n + 1)

end A076239

/-!
# A076240: Remainder when 2nd order prime pp(n) = A006450(n) is divided by n-th prime = A000040(n).

The programs for A076240, the canonical program `A076240.P7115261136017360923` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076240 has offset 1).

The definition of A076240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076240.P12801977012291695247

`A006450(n+1)%Δ[A007504(n)]`
-/

namespace A076240.P12801977012291695247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) (f1 (n + 1) - f1 n)

end

end A076240.P12801977012291695247

namespace A076240

/-- `A006450(n+1)%Δ[A007504(n)]` -/
def P12801977012291695247.Spec : Prop :=
  ∀ n, P12801977012291695247.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P16945354116656963439

`A073136(n+1)%Δ[A007504(n)]`
-/

namespace A076240.P16945354116656963439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073136 (n + 1)) (f1 (n + 1) - f1 n)

end

end A076240.P16945354116656963439

namespace A076240

/-- `A073136(n+1)%Δ[A007504(n)]` -/
def P16945354116656963439.Spec : Prop :=
  ∀ n, P16945354116656963439.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P11746460037826187011

`A168152(n+1)%A000040(n+1)`
-/

namespace A076240.P11746460037826187011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168152 (n + 1)) (A000040 (n + 1))

end

end A076240.P11746460037826187011

namespace A076240

/-- `A168152(n+1)%A000040(n+1)` -/
def P11746460037826187011.Spec : Prop :=
  ∀ n, P11746460037826187011.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P4004891039591556007

`A006450(ceil(sqrt(n²+4)))%A000040(n+1)`
-/

namespace A076240.P4004891039591556007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat) (A000040 (n + 1))

end

end A076240.P4004891039591556007

namespace A076240

/-- `A006450(ceil(sqrt(n²+4)))%A000040(n+1)` -/
def P4004891039591556007.Spec : Prop :=
  ∀ n, P4004891039591556007.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P5856319510602184875

`A006450(A000027(n+1))%(A100484(n+1)/2)`
-/

namespace A076240.P5856319510602184875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A000027 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2))

end

end A076240.P5856319510602184875

namespace A076240

/-- `A006450(A000027(n+1))%(A100484(n+1)/2)` -/
def P5856319510602184875.Spec : Prop :=
  ∀ n, P5856319510602184875.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P5041253975183447908

`A006450(n+1)-A000040(n+1)*A218461(n+1)`
-/

namespace A076240.P5041253975183447908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A000040 (n + 1) * A218461 (n + 1)

end

end A076240.P5041253975183447908

namespace A076240

/-- `A006450(n+1)-A000040(n+1)*A218461(n+1)` -/
def P5041253975183447908.Spec : Prop :=
  ∀ n, P5041253975183447908.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P7115261136017360923

`A318660(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076240

/-- `A318660(A000040(n+1))` -/
def P7115261136017360923.Spec : Prop :=
  ∀ n, P7115261136017360923.a n = A076240 (n + 1)

theorem P7115261136017360923.correct : P7115261136017360923.Spec := by
  intro n
  simp only [A076240, Nat.add_sub_cancel]

end A076240

/-! ## A076240.P10913391099860363594

`A318660(record[A006530(n+2)])`
-/

namespace A076240.P10913391099860363594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318660 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P10913391099860363594

namespace A076240

/-- `A318660(record[A006530(n+2)])` -/
def P10913391099860363594.Spec : Prop :=
  ∀ n, P10913391099860363594.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P14469415641441279236

`A318660(record[A020639(n+2)])`
-/

namespace A076240.P14469415641441279236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318660 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P14469415641441279236

namespace A076240

/-- `A318660(record[A020639(n+2)])` -/
def P14469415641441279236.Spec : Prop :=
  ∀ n, P14469415641441279236.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P4037712223256933146

`A004648(A008578(n+2))`
-/

namespace A076240.P4037712223256933146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A008578 (n + 2)).toNat

end

end A076240.P4037712223256933146

namespace A076240

/-- `A004648(A008578(n+2))` -/
def P4037712223256933146.Spec : Prop :=
  ∀ n, P4037712223256933146.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P10310910648684231940

`A004648(A182986(n+2))`
-/

namespace A076240.P10310910648684231940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A182986 (n + 2)).toNat

end

end A076240.P10310910648684231940

namespace A076240

/-- `A004648(A182986(n+2))` -/
def P10310910648684231940.Spec : Prop :=
  ∀ n, P10310910648684231940.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P9985102106726910179

`A004648(p?[A004280(n+1)])`
-/

namespace A076240.P9985102106726910179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076240.P9985102106726910179

namespace A076240

/-- `A004648(p?[A004280(n+1)])` -/
def P9985102106726910179.Spec : Prop :=
  ∀ n, P9985102106726910179.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P7947942773963332640

`A004648(record[A006530(n+2)])`
-/

namespace A076240.P7947942773963332640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P7947942773963332640

namespace A076240

/-- `A004648(record[A006530(n+2)])` -/
def P7947942773963332640.Spec : Prop :=
  ∀ n, P7947942773963332640.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P18175516766762461548

`A004648(record[A020639(n+2)])`
-/

namespace A076240.P18175516766762461548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P18175516766762461548

namespace A076240

/-- `A004648(record[A020639(n+2)])` -/
def P18175516766762461548.Spec : Prop :=
  ∀ n, P18175516766762461548.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P8857527671536579783

`A077254(p?[A000040(n+1)])`
-/

namespace A076240.P8857527671536579783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076240.P8857527671536579783

namespace A076240

/-- `A077254(p?[A000040(n+1)])` -/
def P8857527671536579783.Spec : Prop :=
  ∀ n, P8857527671536579783.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P13169001427361932605

`A077254(record[A006530(n+2)])`
-/

namespace A076240.P13169001427361932605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P13169001427361932605

namespace A076240

/-- `A077254(record[A006530(n+2)])` -/
def P13169001427361932605.Spec : Prop :=
  ∀ n, P13169001427361932605.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P2501972082809080811

`A077254(record[A014963(n+2)])`
-/

namespace A076240.P2501972082809080811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P2501972082809080811

namespace A076240

/-- `A077254(record[A014963(n+2)])` -/
def P2501972082809080811.Spec : Prop :=
  ∀ n, P2501972082809080811.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P18093433126680560174

`A004648(p?[A089026(n+1)])`
-/

namespace A076240.P18093433126680560174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076240.P18093433126680560174

namespace A076240

/-- `A004648(p?[A089026(n+1)])` -/
def P18093433126680560174.Spec : Prop :=
  ∀ n, P18093433126680560174.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P14925749879905451462

`A077254(record[A020639(n+2)])`
-/

namespace A076240.P14925749879905451462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076240.P14925749879905451462

namespace A076240

/-- `A077254(record[A020639(n+2)])` -/
def P14925749879905451462.Spec : Prop :=
  ∀ n, P14925749879905451462.a n = A076240 (n + 1)

end A076240

/-! ## A076240.P1160549210514047919

`A004648(p?[A284307(n+1)])`
-/

namespace A076240.P1160549210514047919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076240.P1160549210514047919

namespace A076240

/-- `A004648(p?[A284307(n+1)])` -/
def P1160549210514047919.Spec : Prop :=
  ∀ n, P1160549210514047919.a n = A076240 (n + 1)

end A076240

/-!
# A076241: Remainder when 2nd order prime pp(n)=A006450(n) is divided by n.

The programs for A076241, the canonical program `A076241.P12636829170902356370` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076241 has offset 1).

The definition of A076241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076241.P16335535541013075277

`A006450(n+1)%(n+1)`
-/

namespace A076241.P16335535541013075277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) (n + 1 : ℤ)

end

end A076241.P16335535541013075277

namespace A076241

/-- `A006450(n+1)%(n+1)` -/
def P16335535541013075277.Spec : Prop :=
  ∀ n, P16335535541013075277.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P8197416751662714020

`A262021(n+1)%(n+1)`
-/

namespace A076241.P8197416751662714020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262021 (n + 1)) (n + 1 : ℤ)

end

end A076241.P8197416751662714020

namespace A076241

/-- `A262021(n+1)%(n+1)` -/
def P8197416751662714020.Spec : Prop :=
  ∀ n, P8197416751662714020.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P11867408589111668338

`(A080697(n+1)/(n+1))%(n+1)`
-/

namespace A076241.P11867408589111668338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A080697 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A076241.P11867408589111668338

namespace A076241

/-- `(A080697(n+1)/(n+1))%(n+1)` -/
def P11867408589111668338.Spec : Prop :=
  ∀ n, P11867408589111668338.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P14439277657485256227

`(A073136(n+1)-A000040(n+1))%(n+1)`
-/

namespace A076241.P14439277657485256227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073136 (n + 1) - A000040 (n + 1)) (n + 1 : ℤ)

end

end A076241.P14439277657485256227

namespace A076241

/-- `(A073136(n+1)-A000040(n+1))%(n+1)` -/
def P14439277657485256227.Spec : Prop :=
  ∀ n, P14439277657485256227.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P11771808192350315028

`(A168152(n+1)+A040976(n+1)+2)%(n+1)`
-/

namespace A076241.P11771808192350315028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168152 (n + 1) + (A040976 (n + 1) + 2)) (n + 1 : ℤ)

end

end A076241.P11771808192350315028

namespace A076241

/-- `(A168152(n+1)+A040976(n+1)+2)%(n+1)` -/
def P11771808192350315028.Spec : Prop :=
  ∀ n, P11771808192350315028.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P15528218344955183360

`A175247(n+2)%(n+1)`
-/

namespace A076241.P15528218344955183360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175247 (n + 2)) (n + 1 : ℤ)

end

end A076241.P15528218344955183360

namespace A076241

/-- `A175247(n+2)%(n+1)` -/
def P15528218344955183360.Spec : Prop :=
  ∀ n, P15528218344955183360.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P12636829170902356370

`A302493(A024620(n+1))%(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076241

/-- `A302493(A024620(n+1))%(n+1)` -/
def P12636829170902356370.Spec : Prop :=
  ∀ n, P12636829170902356370.a n = A076241 (n + 1)

theorem P12636829170902356370.correct : P12636829170902356370.Spec := by
  intro n
  simp only [A076241, Nat.add_sub_cancel]

end A076241

/-! ## A076241.P4807272788322536387

`p?[A076610(n+1)]%(n+1)`
-/

namespace A076241.P4807272788322536387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A076241.P4807272788322536387

namespace A076241

/-- `p?[A076610(n+1)]%(n+1)` -/
def P4807272788322536387.Spec : Prop :=
  ∀ n, P4807272788322536387.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P2274518792096137989

`A064988(A000040(n+1))%(n+1)`
-/

namespace A076241.P2274518792096137989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (A000040 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076241.P2274518792096137989

namespace A076241

/-- `A064988(A000040(n+1))%(n+1)` -/
def P2274518792096137989.Spec : Prop :=
  ∀ n, P2274518792096137989.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P16431390593887979254

`A065133(p?[comp[n²]])`
-/

namespace A076241.P16431390593887979254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076241.P16431390593887979254

namespace A076241

/-- `A065133(p?[comp[n²]])` -/
def P16431390593887979254.Spec : Prop :=
  ∀ n, P16431390593887979254.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P14170691476303298838

`A065133(A000040(n+1))`
-/

namespace A076241.P14170691476303298838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A000040 (n + 1)).toNat

end

end A076241.P14170691476303298838

namespace A076241

/-- `A065133(A000040(n+1))` -/
def P14170691476303298838.Spec : Prop :=
  ∀ n, P14170691476303298838.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P8191040633615679778

`A065133(A008578(n+2))`
-/

namespace A076241.P8191040633615679778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A008578 (n + 2)).toNat

end

end A076241.P8191040633615679778

namespace A076241

/-- `A065133(A008578(n+2))` -/
def P8191040633615679778.Spec : Prop :=
  ∀ n, P8191040633615679778.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P10559413017153413823

`A065133(A182986(n+2))`
-/

namespace A076241.P10559413017153413823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A182986 (n + 2)).toNat

end

end A076241.P10559413017153413823

namespace A076241

/-- `A065133(A182986(n+2))` -/
def P10559413017153413823.Spec : Prop :=
  ∀ n, P10559413017153413823.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P9376233120800742985

`A065133(record[A006530(n+2)])`
-/

namespace A076241.P9376233120800742985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076241.P9376233120800742985

namespace A076241

/-- `A065133(record[A006530(n+2)])` -/
def P9376233120800742985.Spec : Prop :=
  ∀ n, P9376233120800742985.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P10728533779727701499

`A065133(record[A014963(n+2)])`
-/

namespace A076241.P10728533779727701499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076241.P10728533779727701499

namespace A076241

/-- `A065133(record[A014963(n+2)])` -/
def P10728533779727701499.Spec : Prop :=
  ∀ n, P10728533779727701499.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P8948918699163975043

`A065133(record[A020639(n+2)])`
-/

namespace A076241.P8948918699163975043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076241.P8948918699163975043

namespace A076241

/-- `A065133(record[A020639(n+2)])` -/
def P8948918699163975043.Spec : Prop :=
  ∀ n, P8948918699163975043.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P9356788391969513308

`A000040(p?[A352844(n)])%(n+1)`
-/

namespace A076241.P9356788391969513308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (n + 1 : ℤ)

end

end A076241.P9356788391969513308

namespace A076241

/-- `A000040(p?[A352844(n)])%(n+1)` -/
def P9356788391969513308.Spec : Prop :=
  ∀ n, P9356788391969513308.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P6237513429269850274

`A006005(A006005(n+1))%(n+1)`
-/

namespace A076241.P6237513429269850274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (A006005 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076241.P6237513429269850274

namespace A076241

/-- `A006005(A006005(n+1))%(n+1)` -/
def P6237513429269850274.Spec : Prop :=
  ∀ n, P6237513429269850274.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P11734806126832384827

`A008578(A008864(n+1))%(n+1)`
-/

namespace A076241.P11734806126832384827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A008864 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076241.P11734806126832384827

namespace A076241

/-- `A008578(A008864(n+1))%(n+1)` -/
def P11734806126832384827.Spec : Prop :=
  ∀ n, P11734806126832384827.a n = A076241 (n + 1)

end A076241

/-! ## A076241.P1058526426128743489

`A008578(A055670(n+1))%(n+1)`
-/

namespace A076241.P1058526426128743489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A055670 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076241.P1058526426128743489

namespace A076241

/-- `A008578(A055670(n+1))%(n+1)` -/
def P1058526426128743489.Spec : Prop :=
  ∀ n, P1058526426128743489.a n = A076241 (n + 1)

end A076241

/-!
# A076242: Remainder when 3rd order prime A038580(n) is divided by n-th prime=A000040(n).

The programs for A076242, the canonical program `A076242.P9726685083958255532` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076242 has offset 1).

The definition of A076242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038580, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076242.P9726685083958255532

`A038580(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076242

/-- `A038580(n+1)%A000040(n+1)` -/
def P9726685083958255532.Spec : Prop :=
  ∀ n, P9726685083958255532.a n = A076242 (n + 1)

theorem P9726685083958255532.correct : P9726685083958255532.Spec := by
  intro n
  simp only [A076242, Nat.add_sub_cancel]

end A076242

/-! ## A076242.P4451730257595879070

`A006450(A000040(n+1))%A158611(n+3)`
-/

namespace A076242.P4451730257595879070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A000040 (n + 1)).toNat) (A158611 (n + 3))

end

end A076242.P4451730257595879070

namespace A076242

/-- `A006450(A000040(n+1))%A158611(n+3)` -/
def P4451730257595879070.Spec : Prop :=
  ∀ n, P4451730257595879070.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P6439583888425760492

`A006450(record[A006530(n+2)])%(A040976(n+1)+2)`
-/

namespace A076242.P6439583888425760492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A040976 (n + 1) + 2)

end

end A076242.P6439583888425760492

namespace A076242

/-- `A006450(record[A006530(n+2)])%(A040976(n+1)+2)` -/
def P6439583888425760492.Spec : Prop :=
  ∀ n, P6439583888425760492.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P9702748743652458790

`A076241(A000040(n+1))`
-/

namespace A076242.P9702748743652458790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (A000040 (n + 1)).toNat

end

end A076242.P9702748743652458790

namespace A076242

/-- `A076241(A000040(n+1))` -/
def P9702748743652458790.Spec : Prop :=
  ∀ n, P9702748743652458790.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P11795192761861992650

`A076241(A008578(n+2))`
-/

namespace A076242.P11795192761861992650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (A008578 (n + 2)).toNat

end

end A076242.P11795192761861992650

namespace A076242

/-- `A076241(A008578(n+2))` -/
def P11795192761861992650.Spec : Prop :=
  ∀ n, P11795192761861992650.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P14393720975558497978

`A076241(A182986(n+2))`
-/

namespace A076242.P14393720975558497978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (A182986 (n + 2)).toNat

end

end A076242.P14393720975558497978

namespace A076242

/-- `A076241(A182986(n+2))` -/
def P14393720975558497978.Spec : Prop :=
  ∀ n, P14393720975558497978.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P1516143847778078124

`A076241(record[A006530(n+2)])`
-/

namespace A076242.P1516143847778078124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076242.P1516143847778078124

namespace A076242

/-- `A076241(record[A006530(n+2)])` -/
def P1516143847778078124.Spec : Prop :=
  ∀ n, P1516143847778078124.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P698262560932828623

`A076241(record[A014963(n+2)])`
-/

namespace A076242.P698262560932828623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076242.P698262560932828623

namespace A076242

/-- `A076241(record[A014963(n+2)])` -/
def P698262560932828623.Spec : Prop :=
  ∀ n, P698262560932828623.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P6232517273480145983

`A076241(record[A020639(n+2)])`
-/

namespace A076242.P6232517273480145983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076242.P6232517273480145983

namespace A076242

/-- `A076241(record[A020639(n+2)])` -/
def P6232517273480145983.Spec : Prop :=
  ∀ n, P6232517273480145983.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P7751462364457077532

`A006450(A040976(n+1)+2)%record[A014963(n+2)]`
-/

namespace A076242.P7751462364457077532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A040976 (n + 1) + 2).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076242.P7751462364457077532

namespace A076242

/-- `A006450(A040976(n+1)+2)%record[A014963(n+2)]` -/
def P7751462364457077532.Spec : Prop :=
  ∀ n, P7751462364457077532.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P825416080146211458

`A065133(A006450(n+1))`
-/

namespace A076242.P825416080146211458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A006450 (n + 1)).toNat

end

end A076242.P825416080146211458

namespace A076242

/-- `A065133(A006450(n+1))` -/
def P825416080146211458.Spec : Prop :=
  ∀ n, P825416080146211458.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P3852155735365152600

`A065133(A175247(n+2))`
-/

namespace A076242.P3852155735365152600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A175247 (n + 2)).toNat

end

end A076242.P3852155735365152600

namespace A076242

/-- `A065133(A175247(n+2))` -/
def P3852155735365152600.Spec : Prop :=
  ∀ n, P3852155735365152600.a n = A076242 (n + 1)

end A076242

/-! ## A076242.P9528156569023413941

`A065133(A000040(p?[comp[n²]]))`
-/

namespace A076242.P9528156569023413941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A076242.P9528156569023413941

namespace A076242

/-- `A065133(A000040(p?[comp[n²]]))` -/
def P9528156569023413941.Spec : Prop :=
  ∀ n, P9528156569023413941.a n = A076242 (n + 1)

end A076242

/-!
# A076243: Remainder when 3rd-order prime ppp(n) = A038580(n) is divided by n.

The programs for A076243, the canonical program `A076243.P16034999221877447586` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076243 has offset 1).

The definition of A076243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076243.P16034999221877447586

`A038580(n+1)%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076243

/-- `A038580(n+1)%(n+1)` -/
def P16034999221877447586.Spec : Prop :=
  ∀ n, P16034999221877447586.a n = A076243 (n + 1)

theorem P16034999221877447586.correct : P16034999221877447586.Spec := by
  intro n
  simp only [A076243, Nat.add_sub_cancel]

end A076243

/-! ## A076243.P7520036636312143146

`A006450(p?[xor(1, n)])%(n+1)`
-/

namespace A076243.P7520036636312143146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (n + 1 : ℤ)

end

end A076243.P7520036636312143146

namespace A076243

/-- `A006450(p?[xor(1, n)])%(n+1)` -/
def P7520036636312143146.Spec : Prop :=
  ∀ n, P7520036636312143146.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P12600082744999518994

`A006450(Δ[A007504(n)])%(n+1)`
-/

namespace A076243.P12600082744999518994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (f1 (n + 1) - f1 n).toNat) (n + 1 : ℤ)

end

end A076243.P12600082744999518994

namespace A076243

/-- `A006450(Δ[A007504(n)])%(n+1)` -/
def P12600082744999518994.Spec : Prop :=
  ∀ n, P12600082744999518994.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P1695177748206766944

`A006450(A000040(n+1))%(n+1)`
-/

namespace A076243.P1695177748206766944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A000040 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076243.P1695177748206766944

namespace A076243

/-- `A006450(A000040(n+1))%(n+1)` -/
def P1695177748206766944.Spec : Prop :=
  ∀ n, P1695177748206766944.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P15020862240973673552

`A006450(A008578(n+2))%(n+1)`
-/

namespace A076243.P15020862240973673552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A008578 (n + 2)).toNat) (n + 1 : ℤ)

end

end A076243.P15020862240973673552

namespace A076243

/-- `A006450(A008578(n+2))%(n+1)` -/
def P15020862240973673552.Spec : Prop :=
  ∀ n, P15020862240973673552.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P14803365114096605270

`A006450(record[A006530(n+2)])%(n+1)`
-/

namespace A076243.P14803365114096605270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A076243.P14803365114096605270

namespace A076243

/-- `A006450(record[A006530(n+2)])%(n+1)` -/
def P14803365114096605270.Spec : Prop :=
  ∀ n, P14803365114096605270.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P16309173385714123804

`A006450(A040976(n+1)+2)%(n+1)`
-/

namespace A076243.P16309173385714123804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A040976 (n + 1) + 2).toNat) (n + 1 : ℤ)

end

end A076243.P16309173385714123804

namespace A076243

/-- `A006450(A040976(n+1)+2)%(n+1)` -/
def P16309173385714123804.Spec : Prop :=
  ∀ n, P16309173385714123804.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P8252888515511769955

`A006450(record[2*(n+1)/A000005(n+1)])%(n+1)`
-/

namespace A076243.P8252888515511769955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat) (n + 1 : ℤ)

end

end A076243.P8252888515511769955

namespace A076243

/-- `A006450(record[2*(n+1)/A000005(n+1)])%(n+1)` -/
def P8252888515511769955.Spec : Prop :=
  ∀ n, P8252888515511769955.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P10275496001141006176

`A006450(eq[2, ∑{d}[n, 2%(#+1)]])%(n+1)`
-/

namespace A076243.P10275496001141006176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 2 % (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)) (n + 1 : ℤ)

end

end A076243.P10275496001141006176

namespace A076243

/-- `A006450(eq[2, ∑{d}[n, 2%(#+1)]])%(n+1)` -/
def P10275496001141006176.Spec : Prop :=
  ∀ n, P10275496001141006176.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P6764529165264839539

`A006450(eq[0, A007920(n)])%(n+1)`
-/

namespace A076243.P6764529165264839539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (n + 1 : ℤ)

end

end A076243.P6764529165264839539

namespace A076243

/-- `A006450(eq[0, A007920(n)])%(n+1)` -/
def P6764529165264839539.Spec : Prop :=
  ∀ n, P6764529165264839539.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P9156483381351610687

`A006450(record[A014963(n+2)])%(n+1)`
-/

namespace A076243.P9156483381351610687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A076243.P9156483381351610687

namespace A076243

/-- `A006450(record[A014963(n+2)])%(n+1)` -/
def P9156483381351610687.Spec : Prop :=
  ∀ n, P9156483381351610687.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P5361023191331812133

`A064988(A006450(n+1))%(n+1)`
-/

namespace A076243.P5361023191331812133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (A006450 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076243.P5361023191331812133

namespace A076243

/-- `A064988(A006450(n+1))%(n+1)` -/
def P5361023191331812133.Spec : Prop :=
  ∀ n, P5361023191331812133.a n = A076243 (n + 1)

end A076243

/-! ## A076243.P5855450172750857170

`A000040(A008578(A008864(n+1)))%(n+1)`
-/

namespace A076243.P5855450172750857170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A008578 (A008864 (n + 1)).toNat).toNat) (n + 1 : ℤ)

end

end A076243.P5855450172750857170

namespace A076243

/-- `A000040(A008578(A008864(n+1)))%(n+1)` -/
def P5855450172750857170.Spec : Prop :=
  ∀ n, P5855450172750857170.a n = A076243 (n + 1)

end A076243

/-!
# A076244: Distinct values arising in A051547, sequence of a(n) = lcm(phi(1), ..., phi(n)).

The programs for A076244, there is no canonical definition to state claims against.
-/

/-! ## A076244.P17331175271386796516

`record[A051547(∏{p}[n, #])]`
-/

namespace A076244.P17331175271386796516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P17331175271386796516

/-! ## A076244.P8072223541392422784

`record[A051547(n+1)-and(1, n)]`
-/

namespace A076244.P8072223541392422784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (n + 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P8072223541392422784

/-! ## A076244.P8348837216561302016

`record[A051547((n+1)/and(n+1, -(n+1)))]`
-/

namespace A076244.P8348837216561302016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P8348837216561302016

/-! ## A076244.P14458107453475256680

`A051547(A076245(n+1))`
-/

namespace A076244.P14458107453475256680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (A076245 (n + 1)).toNat

end

end A076244.P14458107453475256680

/-! ## A076244.P10997004549490525603

`record[A051547(n+1)-A000035(n)]`
-/

namespace A076244.P10997004549490525603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P10997004549490525603

/-! ## A076244.P10005336537594178019

`record[A051547(n+1)-A096268(n)]`
-/

namespace A076244.P10005336537594178019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (n + 1) - A096268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P10005336537594178019

/-! ## A076244.P18050789898030040481

`record[A051547(gcd(n, A051547(n+1)))]`
-/

namespace A076244.P18050789898030040481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (Int.gcd (n : ℤ) (A051547 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P18050789898030040481

/-! ## A076244.P1641612890955096417

`record[A051547(n+1)-A051584(n+1)]`
-/

namespace A076244.P1641612890955096417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (n + 1) - A051584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P1641612890955096417

/-! ## A076244.P15092805278218571690

`record[A000035(n+1)*A051547(n+2)]`
-/

namespace A076244.P15092805278218571690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A051547 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P15092805278218571690

/-! ## A076244.P5858429793090676807

`record[A051547(n+2)*A096268(2*n+1)]`
-/

namespace A076244.P5858429793090676807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (n + 2) * A096268 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076244.P5858429793090676807

/-!
# A076245: Positions of records in A051547.

The programs for A076245, the canonical program `A076245.P14473671880369075709` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076245 has offset 1).

The definition of A076245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076245.P14473671880369075709

`eq[1, gcd(n, A001221(A265575(a(n-1)+1)))]` with `a(0)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076245

/-- `eq[1, gcd(n, A001221(A265575(a(n-1)+1)))]` -/
def P14473671880369075709.Spec : Prop :=
  ∀ n, (P14473671880369075709.a n : ℤ) = A076245 (n + 1)

theorem P14473671880369075709.correct : P14473671880369075709.Spec := by
  intro n
  simp only [A076245, Nat.add_sub_cancel]

end A076245

/-! ## A076245.P14037206407531924142

`record[(n+1)^A032741(A265575(n+1))]`
-/

namespace A076245.P14037206407531924142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A032741 (A265575 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076245.P14037206407531924142

namespace A076245

/-- `record[(n+1)^A032741(A265575(n+1))]` -/
def P14037206407531924142.Spec : Prop :=
  ∀ n, P14037206407531924142.a n = (A076245 (n + 1) : ℚ)

end A076245

/-! ## A076245.P16367783339909257024

`lt[A001222(n+1), n^A032741(A265575(n+1))]+1`
-/

namespace A076245.P16367783339909257024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A032741 (A265575 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A076245.P16367783339909257024

namespace A076245

/-- `lt[A001222(n+1), n^A032741(A265575(n+1))]+1` -/
def P16367783339909257024.Spec : Prop :=
  ∀ n, (P16367783339909257024.a n : ℤ) = A076245 (n + 1)

end A076245

/-! ## A076245.P4644557829877820719

`lt[n, A304840(n+1)^A032741(A265575(n+1))]+1`
-/

namespace A076245.P4644557829877820719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304840 (n + 1) : ℚ) ^ (A032741 (A265575 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A076245.P4644557829877820719

namespace A076245

/-- `lt[n, A304840(n+1)^A032741(A265575(n+1))]+1` -/
def P4644557829877820719.Spec : Prop :=
  ∀ n, (P4644557829877820719.a n : ℤ) = A076245 (n + 1)

end A076245

/-! ## A076245.P12792693045922355058

`lt[1, A265575(lcm(n, a(n-1)))]` with `a(0)=-11`
-/

namespace A076245.P12792693045922355058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-11] fun n f2 =>
  A265575 (Int.lcm (n : ℤ) (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076245.P12792693045922355058

namespace A076245

/-- `lt[1, A265575(lcm(n, a(n-1)))]` -/
def P12792693045922355058.Spec : Prop :=
  ∀ n, (P12792693045922355058.a n : ℤ) = A076245 (n + 1)

end A076245

/-!
# A076246: Totients of those numbers at which values of A051547 increase: in these consecutive terms new prime powers arise, i.e., which did not occur in neither of preceding terms.

The programs for A076246, the canonical program `A076246.P5818079948787332840` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076246 has offset 1).

The definition of A076246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076246.P5818079948787332840

`A000010(A076245(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076246

/-- `A000010(A076245(n+2))` -/
def P5818079948787332840.Spec : Prop :=
  ∀ n, P5818079948787332840.a n = A076246 (n + 1)

theorem P5818079948787332840.correct : P5818079948787332840.Spec := by
  intro n
  simp only [A076246, Nat.add_sub_cancel]

end A076246

/-! ## A076246.P16632379368720988918

`∑{d}[A076245(n+2), A076245(n+2)/#*A008683(#)]`
-/

namespace A076246.P16632379368720988918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076245 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A076245 (n + 2) : ℚ) / (d : ℚ) * (A008683 d : ℚ)

end

end A076246.P16632379368720988918

namespace A076246

/-- `∑{d}[A076245(n+2), A076245(n+2)/#*A008683(#)]` -/
def P16632379368720988918.Spec : Prop :=
  ∀ n, P16632379368720988918.a n = (A076246 (n + 1) : ℚ)

end A076246

/-! ## A076246.P14673500637032566639

`A000010(lt[A321908(n+1), A087869(n+1)])`
-/

namespace A076246.P14673500637032566639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076246.P14673500637032566639

namespace A076246

/-- `A000010(lt[A321908(n+1), A087869(n+1)])` -/
def P14673500637032566639.Spec : Prop :=
  ∀ n, P14673500637032566639.a n = A076246 (n + 1)

end A076246

/-!
# A076249: Distance between maxima of the cototient function.

The programs for A076249, there is no canonical definition to state claims against.
-/

/-! ## A076249.P10557311862112643882

`Δ[A065385(n+1)]`
-/

namespace A076249.P10557311862112643882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076249.P10557311862112643882

/-! ## A076249.P14154808180280277230

`Δ[record[A065385(A065648(n))]]`
-/

namespace A076249.P14154808180280277230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076249.P14154808180280277230

/-! ## A076249.P14843327617731500202

`Δ[record[A065385(A262519(n))]]`
-/

namespace A076249.P14843327617731500202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076249.P14843327617731500202

/-! ## A076249.P3202566991563100596

`Δ[record[A065385(A328764(n))]]`
-/

namespace A076249.P3202566991563100596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (A328764 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076249.P3202566991563100596

/-! ## A076249.P10281500824386282620

`A065385(n+2)-A065385(n+1)`
-/

namespace A076249.P10281500824386282620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (n + 2) - A065385 (n + 1)

end

end A076249.P10281500824386282620

/-!
# A076252: Integers k such that omega(k) = omega(k-1) + omega(k-2) + omega(k-3), where omega(n) is the number of distinct prime factors of n.

The programs for A076252, there is no canonical definition to state claims against.
-/

/-! ## A076252.P14987847689650909202

`A136154(lt[A058625(n), A050000(2*n+1)])`
-/

namespace A076252.P14987847689650909202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076252.P14987847689650909202

/-!
# A076256: Coefficients of the polynomials in the numerator of 1/(1+x^2) and its successive derivatives, starting with the constant term.

The programs for A076256, there is no canonical definition to state claims against.
-/

/-! ## A076256.P9007081253251735964

`A076257(∑[2*n]%comp[∑[n]])`
-/

namespace A076256.P9007081253251735964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A076256.P9007081253251735964

/-! ## A076256.P2484104919047702329

`A076257(∑[char[∑[n]]]²-n-1)`
-/

namespace A076256.P2484104919047702329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A076256.P2484104919047702329

/-! ## A076256.P599027335953276508

`A076257(A061579(n))*A097807(n)`
-/

namespace A076256.P599027335953276508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 (A061579 n).toNat * A097807 n

end

end A076256.P599027335953276508

/-! ## A076256.P10509260464616210448

`A076257(A061579(n))*A322993(A106911(n+1))`
-/

namespace A076256.P10509260464616210448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 (A061579 n).toNat * A322993 (A106911 (n + 1)).toNat

end

end A076256.P10509260464616210448

/-! ## A076256.P12813263381756046534

`A076257(A061579(n))*A132191(∑[n]+1)`
-/

namespace A076256.P12813263381756046534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 (A061579 n).toNat * A132191 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076256.P12813263381756046534

/-!
# A076257: Coefficients of the polynomials in the numerator of 1/(1+x^2) and its successive derivatives, starting with the coefficient of the highest power of x.

The programs for A076257, there is no canonical definition to state claims against.
-/

/-! ## A076257.P3333083760893227597

`A076256(∑[2*n]%comp[∑[n]])`
-/

namespace A076257.P3333083760893227597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076256 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A076257.P3333083760893227597

/-! ## A076257.P9828916802275123743

`A076256(∑[char[∑[n]]]²-n-1)`
-/

namespace A076257.P9828916802275123743
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076256 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A076257.P9828916802275123743

/-! ## A076257.P18371624860206168201

`or(A000007(n), A076256(A061579(n)))`
-/

namespace A076257.P18371624860206168201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A076256 (A061579 n).toNat)

end

end A076257.P18371624860206168201

/-!
# A076258: a(n) = 2 * Sum_{k=1..n} A076213(k) - n.

The programs for A076258, there is no canonical definition to state claims against.
-/

/-! ## A076258.P515180274849423299

`A064289(n+2)-1`
-/

namespace A076258.P515180274849423299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (n + 2) - 1

end

end A076258.P515180274849423299

/-! ## A076258.P9597425035531343459

`∑[1/Δ[A064289(n+1)]]`
-/

namespace A076258.P9597425035531343459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076258.P9597425035531343459

/-! ## A076258.P794754749622976013

`A171173(A064289(n+2)²)`
-/

namespace A076258.P794754749622976013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A064289 (n + 2) ^ 2).toNat

end

end A076258.P794754749622976013

/-! ## A076258.P18357715819548587552

`∑[A160357(n+2)]`
-/

namespace A076258.P18357715819548587552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076258.P18357715819548587552

/-! ## A076258.P3396872334039550232

`∑[Δ[A160356(n+1)]%2]`
-/

namespace A076258.P3396872334039550232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076258.P3396872334039550232

/-! ## A076258.P17847394402975019558

`∑[(n+2)/A160356(n+2)]`
-/

namespace A076258.P17847394402975019558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A160356 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076258.P17847394402975019558

/-! ## A076258.P176460601172603822

`A160357(A057166(n+1))+A064289(n+2)`
-/

namespace A076258.P176460601172603822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (A057166 (n + 1)).toNat + A064289 (n + 2)

end

end A076258.P176460601172603822

/-! ## A076258.P4038529123336237445

`∑[A014963(4*n+10)*Δ[A064289(n+1)]]`
-/

namespace A076258.P4038529123336237445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076258.P4038529123336237445

/-! ## A076258.P16971967964004261901

`A001222(A000244(A064289(n+2))/3)`
-/

namespace A076258.P16971967964004261901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000244 (A064289 (n + 2)).toNat : ℚ) / 3)).toNat

end

end A076258.P16971967964004261901

/-!
# A076259: Gaps between squarefree numbers: a(n) = A005117(n+1) - A005117(n).

The programs for A076259, the canonical program `A076259.P17974691457858298678` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076259 has offset 1).

The definition of A076259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076259.P17974691457858298678

`A005117(n+2)-A005117(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A076259

/-- `A005117(n+2)-A005117(n+1)` -/
def P17974691457858298678.Spec : Prop :=
  ∀ n, P17974691457858298678.a n = A076259 (n + 1)

theorem P17974691457858298678.correct : P17974691457858298678.Spec := by
  intro n
  simp only [A076259, Nat.add_sub_cancel]

end A076259

/-! ## A076259.P12558710110853933885

`Δ[A005117(n+1)]`
-/

namespace A076259.P12558710110853933885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P12558710110853933885

namespace A076259

/-- `Δ[A005117(n+1)]` -/
def P12558710110853933885.Spec : Prop :=
  ∀ n, P12558710110853933885.a n = A076259 (n + 1)

theorem P12558710110853933885.correct : P12558710110853933885.Spec := by
  intro n
  simp only [A076259, Nat.add_sub_cancel, A076259.P12558710110853933885.f1, A076259.P12558710110853933885.a, A076259.P17974691457858298678.a, SequenceMachineLib.memo_apply]

end A076259

/-! ## A076259.P4839478662507087608

`Δ[A243348(n+1)]+1`
-/

namespace A076259.P4839478662507087608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A076259.P4839478662507087608

namespace A076259

/-- `Δ[A243348(n+1)]+1` -/
def P4839478662507087608.Spec : Prop :=
  ∀ n, P4839478662507087608.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P10660365433190410675

`2-Δ[A243351(n+1)]`
-/

namespace A076259.P10660365433190410675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A076259.P10660365433190410675

namespace A076259

/-- `2-Δ[A243351(n+1)]` -/
def P10660365433190410675.Spec : Prop :=
  ∀ n, P10660365433190410675.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P2694475864706417040

`-Δ[-A005117(2*n-(n-1))]`
-/

namespace A076259.P2694475864706417040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A005117 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A076259.P2694475864706417040

namespace A076259

/-- `-Δ[-A005117(2*n-(n-1))]` -/
def P2694475864706417040.Spec : Prop :=
  ∀ n, P2694475864706417040.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P18430609935009122624

`A240603(n+1)-record[2*A007947(n+1)]`
-/

namespace A076259.P18430609935009122624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076259.P18430609935009122624

namespace A076259

/-- `A240603(n+1)-record[2*A007947(n+1)]` -/
def P18430609935009122624.Spec : Prop :=
  ∀ n, P18430609935009122624.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P9038268383255828410

`A144338(n+1)-∪[A144338(n+1), A001779(n)]`
-/

namespace A076259.P9038268383255828410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A076259.P9038268383255828410

namespace A076259

/-- `A144338(n+1)-∪[A144338(n+1), A001779(n)]` -/
def P9038268383255828410.Spec : Prop :=
  ∀ n, P9038268383255828410.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P8439604206448355135

`Δ[comp[A105570(n)]]`
-/

namespace A076259.P8439604206448355135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076259.P8439604206448355135

namespace A076259

/-- `Δ[comp[A105570(n)]]` -/
def P8439604206448355135.Spec : Prop :=
  ∀ n, P8439604206448355135.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P12031788415273985259

`Δ[record[A003967(n+1)]]`
-/

namespace A076259.P12031788415273985259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P12031788415273985259

namespace A076259

/-- `Δ[record[A003967(n+1)]]` -/
def P12031788415273985259.Spec : Prop :=
  ∀ n, P12031788415273985259.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P7642556107070642314

`Δ[record[A007913(n+1)]]`
-/

namespace A076259.P7642556107070642314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P7642556107070642314

namespace A076259

/-- `Δ[record[A007913(n+1)]]` -/
def P7642556107070642314.Spec : Prop :=
  ∀ n, P7642556107070642314.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P4114489422344466838

`Δ[record[A007947(n+1)]]`
-/

namespace A076259.P4114489422344466838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P4114489422344466838

namespace A076259

/-- `Δ[record[A007947(n+1)]]` -/
def P4114489422344466838.Spec : Prop :=
  ∀ n, P4114489422344466838.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P13360746827936812699

`Δ[record[A055231(n+1)]]`
-/

namespace A076259.P13360746827936812699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P13360746827936812699

namespace A076259

/-- `Δ[record[A055231(n+1)]]` -/
def P13360746827936812699.Spec : Prop :=
  ∀ n, P13360746827936812699.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P8282155788377142177

`Δ[record[A055653(n+1)]]`
-/

namespace A076259.P8282155788377142177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P8282155788377142177

namespace A076259

/-- `Δ[record[A055653(n+1)]]` -/
def P8282155788377142177.Spec : Prop :=
  ∀ n, P8282155788377142177.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P11910067393208580525

`Δ[record[A325814(n+1)]]`
-/

namespace A076259.P11910067393208580525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P11910067393208580525

namespace A076259

/-- `Δ[record[A325814(n+1)]]` -/
def P11910067393208580525.Spec : Prop :=
  ∀ n, P11910067393208580525.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P1847661919466007361

`Δ[A133466(n+1)/4]`
-/

namespace A076259.P1847661919466007361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P1847661919466007361

namespace A076259

/-- `Δ[A133466(n+1)/4]` -/
def P1847661919466007361.Spec : Prop :=
  ∀ n, P1847661919466007361.a n = (A076259 (n + 1) : ℚ)

end A076259

/-! ## A076259.P1608670959321462732

`Δ[eq[1, A005361(n+1)]]`
-/

namespace A076259.P1608670959321462732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076259.P1608670959321462732

namespace A076259

/-- `Δ[eq[1, A005361(n+1)]]` -/
def P1608670959321462732.Spec : Prop :=
  ∀ n, P1608670959321462732.a n = A076259 (n + 1)

end A076259

/-! ## A076259.P7902566200544022588

`Δ[record[A072775(n+1)]]`
-/

namespace A076259.P7902566200544022588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076259.P7902566200544022588

namespace A076259

/-- `Δ[record[A072775(n+1)]]` -/
def P7902566200544022588.Spec : Prop :=
  ∀ n, P7902566200544022588.a n = A076259 (n + 1)

end A076259

/-!
# A076260: a(n) = 0 if n is a squarefree number, otherwise the distance between the two nearest squarefree numbers around n: A067535(n)-A070321(n).

The programs for A076260, the canonical program `A076260.P4040486207589010762` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076260 has offset 1).

The definition of A076260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, A070321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076260.P4040486207589010762

`A067535(n+1)-A070321(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A076260

/-- `A067535(n+1)-A070321(n+1)` -/
def P4040486207589010762.Spec : Prop :=
  ∀ n, P4040486207589010762.a n = A076260 (n + 1)

theorem P4040486207589010762.correct : P4040486207589010762.Spec := by
  intro n
  simp only [A076260, Nat.add_sub_cancel]

end A076260

/-! ## A076260.P18376977386310823349

`A378619(n+1)+A081221(n+1)`
-/

namespace A076260.P18376977386310823349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1) + A081221 (n + 1)

end

end A076260.P18376977386310823349

namespace A076260

/-- `A378619(n+1)+A081221(n+1)` -/
def P18376977386310823349.Spec : Prop :=
  ∀ n, P18376977386310823349.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P11136690795106079593

`A378087(A070321(n+1))-A378087(n+1)`
-/

namespace A076260.P11136690795106079593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (A070321 (n + 1)).toNat - A378087 (n + 1)

end

end A076260.P11136690795106079593

namespace A076260

/-- `A378087(A070321(n+1))-A378087(n+1)` -/
def P11136690795106079593.Spec : Prop :=
  ∀ n, P11136690795106079593.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P15016090585594776776

`A067535(A000027(n+1))%A070321(n+1)`
-/

namespace A076260.P15016090585594776776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067535 (A000027 (n + 1)).toNat) (A070321 (n + 1))

end

end A076260.P15016090585594776776

namespace A076260

/-- `A067535(A000027(n+1))%A070321(n+1)` -/
def P15016090585594776776.Spec : Prop :=
  ∀ n, P15016090585594776776.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P16233437239514253725

`A004186(A067535(n+1)%A070321(n+1))`
-/

namespace A076260.P16233437239514253725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (Int.tmod (A067535 (n + 1)) (A070321 (n + 1))).toNat

end

end A076260.P16233437239514253725

namespace A076260

/-- `A004186(A067535(n+1)%A070321(n+1))` -/
def P16233437239514253725.Spec : Prop :=
  ∀ n, P16233437239514253725.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P17890263677673945175

`lcm(A067535(n+1), A070238(n+1))%A070321(n+1)`
-/

namespace A076260.P17890263677673945175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A067535 (n + 1)) (A070238 (n + 1)) : ℤ) (A070321 (n + 1))

end

end A076260.P17890263677673945175

namespace A076260

/-- `lcm(A067535(n+1), A070238(n+1))%A070321(n+1)` -/
def P17890263677673945175.Spec : Prop :=
  ∀ n, P17890263677673945175.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P18149574851833751430

`A067535(A065033(2*n+1))%A070321(n+1)`
-/

namespace A076260.P18149574851833751430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067535 (A065033 (2 * n + 1)).toNat) (A070321 (n + 1))

end

end A076260.P18149574851833751430

namespace A076260

/-- `A067535(A065033(2*n+1))%A070321(n+1)` -/
def P18149574851833751430.Spec : Prop :=
  ∀ n, P18149574851833751430.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P16938382901269255703

`A081221(n+1)+A081221(A119263(n+1))`
-/

namespace A076260.P16938382901269255703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1) + A081221 (A119263 (n + 1)).toNat

end

end A076260.P16938382901269255703

namespace A076260

/-- `A081221(n+1)+A081221(A119263(n+1))` -/
def P16938382901269255703.Spec : Prop :=
  ∀ n, P16938382901269255703.a n = A076260 (n + 1)

end A076260

/-! ## A076260.P3029517504308877226

`A378619(A119263(n+1))+A378619(n+1)`
-/

namespace A076260.P3029517504308877226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (A119263 (n + 1)).toNat + A378619 (n + 1)

end

end A076260.P3029517504308877226

namespace A076260

/-- `A378619(A119263(n+1))+A378619(n+1)` -/
def P3029517504308877226.Spec : Prop :=
  ∀ n, P3029517504308877226.a n = A076260 (n + 1)

end A076260

/-!
# A076263: Triangle read by rows: T(n,k) = number of nonisomorphic connected graphs with n vertices and k edges (n >= 1, n-1 <= k <= n(n-1)/2).

The programs for A076263, there is no canonical definition to state claims against.
-/

/-! ## A076263.P6810469078874441997

`A054924(record[(n+1)%(A054924(n+1)+n+1)])`
-/

namespace A076263.P6810469078874441997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A054924 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076263.P6810469078874441997

/-!
# A076264: Number of ternary (0,1,2) sequences without a consecutive '012'.

The programs for A076264, the canonical program `A076264.P7715427346347283912` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076264 has offset 0).

The definition of A076264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076264.P7715427346347283912

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076264

/-- `3*a(n-1)-a(n-3)` -/
def P7715427346347283912.Spec : Prop :=
  ∀ n, P7715427346347283912.a n = A076264 n

theorem P7715427346347283912.correct : P7715427346347283912.Spec := by
  intro n
  simp only [A076264]

end A076264

/-! ## A076264.P35237497464596206

`ogf(1/(1-3x+x^3))`
-/

namespace A076264.P35237497464596206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 0, 1] n

end

end A076264.P35237497464596206

namespace A076264

/-- `ogf(1/(1-3x+x^3))` -/
def P35237497464596206.Spec : Prop :=
  ∀ n, P35237497464596206.a n = A076264 n

end A076264

/-! ## A076264.P3966396126940939836

`∑[A052536(n)]`
-/

namespace A076264.P3966396126940939836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P3966396126940939836

namespace A076264

/-- `∑[A052536(n)]` -/
def P3966396126940939836.Spec : Prop :=
  ∀ n, P3966396126940939836.a n = A076264 n

end A076264

/-! ## A076264.P3678989947457964308

`Δ[A052963(n)]`
-/

namespace A076264.P3678989947457964308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076264.P3678989947457964308

namespace A076264

/-- `Δ[A052963(n)]` -/
def P3678989947457964308.Spec : Prop :=
  ∀ n, P3678989947457964308.a n = A076264 n

end A076264

/-! ## A076264.P10174669842758545289

`A123941(n+1)`
-/

namespace A076264.P10174669842758545289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 (n + 1)

end

end A076264.P10174669842758545289

namespace A076264

/-- `A123941(n+1)` -/
def P10174669842758545289.Spec : Prop :=
  ∀ n, P10174669842758545289.a n = A076264 n

end A076264

/-! ## A076264.P10037374730004380233

`∑[∑[A052545(n)]]`
-/

namespace A076264.P10037374730004380233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P10037374730004380233

namespace A076264

/-- `∑[∑[A052545(n)]]` -/
def P10037374730004380233.Spec : Prop :=
  ∀ n, P10037374730004380233.a n = A076264 n

end A076264

/-! ## A076264.P822088939300034381

`∑[abs(Δ[A123941(n)])]`
-/

namespace A076264.P822088939300034381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P822088939300034381

namespace A076264

/-- `∑[abs(Δ[A123941(n)])]` -/
def P822088939300034381.Spec : Prop :=
  ∀ n, P822088939300034381.a n = A076264 n

end A076264

/-! ## A076264.P8031156126103091580

`∑[record[abs(A122099(n))]]`
-/

namespace A076264.P8031156126103091580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P8031156126103091580

namespace A076264

/-- `∑[record[abs(A122099(n))]]` -/
def P8031156126103091580.Spec : Prop :=
  ∀ n, P8031156126103091580.a n = A076264 n

end A076264

/-! ## A076264.P6411067185675543579

`∑[record[abs(A122100(n))]]`
-/

namespace A076264.P6411067185675543579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122100 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P6411067185675543579

namespace A076264

/-- `∑[record[abs(A122100(n))]]` -/
def P6411067185675543579.Spec : Prop :=
  ∀ n, P6411067185675543579.a n = A076264 n

end A076264

/-! ## A076264.P8144126809671523430

`A038197(3*n+2)`
-/

namespace A076264.P8144126809671523430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (3 * n + 2)

end

end A076264.P8144126809671523430

namespace A076264

/-- `A038197(3*n+2)` -/
def P8144126809671523430.Spec : Prop :=
  ∀ n, P8144126809671523430.a n = A076264 n

end A076264

/-! ## A076264.P6200000406112669365

`A187503(3*n+7)`
-/

namespace A076264.P6200000406112669365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * n + 7)

end

end A076264.P6200000406112669365

namespace A076264

/-- `A187503(3*n+7)` -/
def P6200000406112669365.Spec : Prop :=
  ∀ n, P6200000406112669365.a n = A076264 n

end A076264

/-! ## A076264.P5701334802589182193

`∑[abs(A122099(n+3))]`
-/

namespace A076264.P5701334802589182193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P5701334802589182193

namespace A076264

/-- `∑[abs(A122099(n+3))]` -/
def P5701334802589182193.Spec : Prop :=
  ∀ n, P5701334802589182193.a n = A076264 n

end A076264

/-! ## A076264.P1232452081035760563

`∑[abs(A122100(n+3))]`
-/

namespace A076264.P1232452081035760563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122100 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P1232452081035760563

namespace A076264

/-- `∑[abs(A122100(n+3))]` -/
def P1232452081035760563.Spec : Prop :=
  ∀ n, P1232452081035760563.a n = A076264 n

end A076264

/-! ## A076264.P15911900716123790317

`record[A123941(abs(1-n))]`
-/

namespace A076264.P15911900716123790317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076264.P15911900716123790317

namespace A076264

/-- `record[A123941(abs(1-n))]` -/
def P15911900716123790317.Spec : Prop :=
  ∀ n, P15911900716123790317.a n = A076264 n

end A076264

/-! ## A076264.P17017713767747017217

`∑[A187505(3*(n+1))]`
-/

namespace A076264.P17017713767747017217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P17017713767747017217

namespace A076264

/-- `∑[A187505(3*(n+1))]` -/
def P17017713767747017217.Spec : Prop :=
  ∀ n, P17017713767747017217.a n = A076264 n

end A076264

/-! ## A076264.P3043899067792845785

`∑[A123891(n+1)/3]`
-/

namespace A076264.P3043899067792845785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123891 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P3043899067792845785

namespace A076264

/-- `∑[A123891(n+1)/3]` -/
def P3043899067792845785.Spec : Prop :=
  ∀ n, P3043899067792845785.a n = (A076264 n : ℚ)

end A076264

/-! ## A076264.P1073187440167923605

`∑[A187504(3*n+4)]`
-/

namespace A076264.P1073187440167923605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P1073187440167923605

namespace A076264

/-- `∑[A187504(3*n+4)]` -/
def P1073187440167923605.Spec : Prop :=
  ∀ n, P1073187440167923605.a n = A076264 n

end A076264

/-! ## A076264.P7331264898695763431

`∑[record[Δ[A187504(n+3)]]]`
-/

namespace A076264.P7331264898695763431
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076264.P7331264898695763431

namespace A076264

/-- `∑[record[Δ[A187504(n+3)]]]` -/
def P7331264898695763431.Spec : Prop :=
  ∀ n, P7331264898695763431.a n = A076264 n

end A076264

/-! ## A076264.P13958256096580102044

`A187506(3*(n+1)+1)`
-/

namespace A076264.P13958256096580102044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (3 * (n + 1) + 1)

end

end A076264.P13958256096580102044

namespace A076264

/-- `A187506(3*(n+1)+1)` -/
def P13958256096580102044.Spec : Prop :=
  ∀ n, P13958256096580102044.a n = A076264 n

end A076264

/-!
# A076265: 

The programs for A076265, there is no canonical definition to state claims against.
-/

/-! ## A076265.P12126140061036606149

`∏[A051674(n+1)]`
-/

namespace A076265.P12126140061036606149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076265.P12126140061036606149

/-! ## A076265.P5618836351154091805

`∏[∏{d}[A000040(n+1), #^#]]`
-/

namespace A076265.P5618836351154091805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076265.P5618836351154091805

/-! ## A076265.P14167211562796728729

`∏[record[(n+2)^A006530(n+2)]]`
-/

namespace A076265.P14167211562796728729
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076265.P14167211562796728729

/-! ## A076265.P4396393094618279829

`∏[record[(n+2)^A020639(n+2)]]`
-/

namespace A076265.P4396393094618279829
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076265.P4396393094618279829

/-!
# A076266: Largest k such that A005132(n+2*i) = A005132(n) - i for any 0<=i<=k.

The programs for A076266, there is no canonical definition to state claims against.
-/

/-! ## A076266.P739568543816794175

`(n*floor(3*n/2))%(6%A129124(n+1))`
-/

namespace A076266.P739568543816794175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ⌊3 * ((n : ℚ) / 2)⌋) (Int.tmod 6 (A129124 (n + 1)))

end

end A076266.P739568543816794175

/-! ## A076266.P8022114379854181788

`A171960(A000005(5^A057979(n)))`
-/

namespace A076266.P8022114379854181788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A057979 n : ℤ))).toNat).toNat

end

end A076266.P8022114379854181788

/-! ## A076266.P14368873537174525031

`A249127(n)%A040011(A347928(3*n+4))`
-/

namespace A076266.P14368873537174525031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249127 n) (A040011 (A347928 (3 * n + 4)).toNat)

end

end A076266.P14368873537174525031

/-! ## A076266.P7366017921699362574

`A212511(A117642(n))%6`
-/

namespace A076266.P7366017921699362574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212511 (A117642 n).toNat) 6

end

end A076266.P7366017921699362574

/-! ## A076266.P1604869911124826866

`A249127(n)%A040011(A000079(n))`
-/

namespace A076266.P1604869911124826866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249127 n) (A040011 (A000079 n).toNat)

end

end A076266.P1604869911124826866

/-!
# A076267: Numbers k such that A005185(k) divides k.

The programs for A076267, there is no canonical definition to state claims against.
-/

/-! ## A076267.P13528038580010147029

`A027619(A028310(n))-A000007(n)`
-/

namespace A076267.P13528038580010147029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027619 (A028310 n).toNat - A000007 n

end

end A076267.P13528038580010147029

/-! ## A076267.P16791743148226723200

`lt[(n+1)%A005185(n+1), 1]+1`
-/

namespace A076267.P16791743148226723200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A005185 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076267.P16791743148226723200

/-! ## A076267.P12474260207024689256

`eq[A005185(n+1), A152271(n)]+1`
-/

namespace A076267.P12474260207024689256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076267.P12474260207024689256

/-! ## A076267.P15079586932709904542

`eq[A005185(n+1), A038572(n+1)]+1`
-/

namespace A076267.P15079586932709904542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076267.P15079586932709904542

/-! ## A076267.P186863521472514896

`lt[(A005185(n+1)-A032742(n+1))², 1]+1`
-/

namespace A076267.P186863521472514896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005185 (n + 1) - A032742 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076267.P186863521472514896

/-! ## A076267.P16352823836694742875

`eq[A005185(n+1), A280498(n+1)]+1`
-/

namespace A076267.P16352823836694742875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076267.P16352823836694742875

/-!
# A076268: Sum(k=1,n, A005185(k)).

The programs for A076268, the canonical program `A076268.P1633902473855064170` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076268 has offset 1).

The definition of A076268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076268.P1633902473855064170

`∑[a(n-a(n-1))+a(n-a(n-2))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076268

/-- `∑[a(n-a(n-1))+a(n-a(n-2))]` -/
def P1633902473855064170.Spec : Prop :=
  ∀ n, (P1633902473855064170.a n : ℤ) = A076268 (n + 1)

theorem P1633902473855064170.correct : P1633902473855064170.Spec := by
  intro n
  simp only [A076268, Nat.add_sub_cancel]

end A076268

/-! ## A076268.P10369056339381746775

`∑[A005185(n+1)]`
-/

namespace A076268.P10369056339381746775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076268.P10369056339381746775

namespace A076268

/-- `∑[A005185(n+1)]` -/
def P10369056339381746775.Spec : Prop :=
  ∀ n, P10369056339381746775.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P13819545534474593750

`∑[n+1-A239913(n+1)]`
-/

namespace A076268.P13819545534474593750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A239913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076268.P13819545534474593750

namespace A076268

/-- `∑[n+1-A239913(n+1)]` -/
def P13819545534474593750.Spec : Prop :=
  ∀ n, P13819545534474593750.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P17868086399816737148

`∑[A081827(n)+a(n-1)]` with `a(0)=1`
-/

namespace A076268.P17868086399816737148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A081827 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076268.P17868086399816737148

namespace A076268

/-- `∑[A081827(n)+a(n-1)]` -/
def P17868086399816737148.Spec : Prop :=
  ∀ n, P17868086399816737148.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P12622507706451639695

`∑[∑[A081827(A028310(n))]+1]`
-/

namespace A076268.P12622507706451639695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076268.P12622507706451639695

namespace A076268

/-- `∑[∑[A081827(A028310(n))]+1]` -/
def P12622507706451639695.Spec : Prop :=
  ∀ n, P12622507706451639695.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P15907803384740136410

`A005185(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A076268.P15907803384740136410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005185 (n + 1) + a (A023443 n).toNat

end

end A076268.P15907803384740136410

namespace A076268

/-- `A005185(n+1)+a(A023443(n))` -/
def P15907803384740136410.Spec : Prop :=
  ∀ n, P15907803384740136410.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P12706075220112787437

`∑[A284478(n+1)+A055748(n+1)]`
-/

namespace A076268.P12706075220112787437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (n + 1) + A055748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076268.P12706075220112787437

namespace A076268

/-- `∑[A284478(n+1)+A055748(n+1)]` -/
def P12706075220112787437.Spec : Prop :=
  ∀ n, P12706075220112787437.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P7919924180332717689

`∑[A004001(n+1)-A284019(n+1)]`
-/

namespace A076268.P7919924180332717689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076268.P7919924180332717689

namespace A076268

/-- `∑[A004001(n+1)-A284019(n+1)]` -/
def P7919924180332717689.Spec : Prop :=
  ∀ n, P7919924180332717689.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P568072133523412555

`((-1)^A007318(n))²*∑[A005185(Δ[n²]-n)]`
-/

namespace A076268.P568072133523412555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A076268.P568072133523412555

namespace A076268

/-- `((-1)^A007318(n))²*∑[A005185(Δ[n²]-n)]` -/
def P568072133523412555.Spec : Prop :=
  ∀ n, P568072133523412555.a n = (A076268 (n + 1) : ℚ)

end A076268

/-! ## A076268.P14842843157901796083

`a(n-1)+A005185(n+1)^A007318(and(3, 1-n))` with `a(0)=1`
-/

namespace A076268.P14842843157901796083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005185 (n + 1) : ℚ) ^ (A007318 (Int.land 3 (1 - (n : ℤ))).toNat : ℤ)

end

end A076268.P14842843157901796083

namespace A076268

/-- `a(n-1)+A005185(n+1)^A007318(and(3, 1-n))` -/
def P14842843157901796083.Spec : Prop :=
  ∀ n, P14842843157901796083.a n = (A076268 (n + 1) : ℚ)

end A076268

/-! ## A076268.P2230771501777532068

`a(n-1)+A005185(n+1)/ceil(2/A000040(n+1))` with `a(0)=1`
-/

namespace A076268.P2230771501777532068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005185 (n + 1) : ℚ) / (⌈2 / (A000040 (n + 1) : ℚ)⌉ : ℚ)

end

end A076268.P2230771501777532068

namespace A076268

/-- `a(n-1)+A005185(n+1)/ceil(2/A000040(n+1))` -/
def P2230771501777532068.Spec : Prop :=
  ∀ n, P2230771501777532068.a n = (A076268 (n + 1) : ℚ)

end A076268

/-! ## A076268.P5050110739293977451

`A000027(∑[A005185(Δ[n²]-n)])`
-/

namespace A076268.P5050110739293977451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076268.P5050110739293977451

namespace A076268

/-- `A000027(∑[A005185(Δ[n²]-n)])` -/
def P5050110739293977451.Spec : Prop :=
  ∀ n, P5050110739293977451.a n = A076268 (n + 1)

end A076268

/-! ## A076268.P579764066084849502

`A028310(∑[A005185(Δ[n²]-n)])`
-/

namespace A076268.P579764066084849502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076268.P579764066084849502

namespace A076268

/-- `A028310(∑[A005185(Δ[n²]-n)])` -/
def P579764066084849502.Spec : Prop :=
  ∀ n, P579764066084849502.a n = A076268 (n + 1)

end A076268

/-!
# A076270: Numbers of the form (3^{mr}-1)/(3^r-1) for positive integers m, r.

The programs for A076270, there is no canonical definition to state claims against.
-/

/-! ## A076270.P3853303427679037565

`∩[A233010(n+1)+1, A233010(n+1)]`
-/

namespace A076270.P3853303427679037565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076270.P3853303427679037565

/-! ## A076270.P12895327978482070171

`A003278(A064896(n+1))`
-/

namespace A076270.P12895327978482070171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A064896 (n + 1)).toNat

end

end A076270.P12895327978482070171

/-! ## A076270.P2615649830704860889

`A005836(A064896(n+1)+1)`
-/

namespace A076270.P2615649830704860889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A064896 (n + 1) + 1).toNat

end

end A076270.P2615649830704860889

/-! ## A076270.P5578064523892484521

`A004793(or(1, A064896(n+1)))`
-/

namespace A076270.P5578064523892484521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (Int.lor 1 (A064896 (n + 1))).toNat

end

end A076270.P5578064523892484521

/-! ## A076270.P5322817496431375303

`A004793(lcm(2, A064896(n+1))/2)`
-/

namespace A076270.P5322817496431375303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (SequenceMachineLib.roundAway ((Int.lcm 2 (A064896 (n + 1)) : ℚ) / 2)).toNat

end

end A076270.P5322817496431375303

/-!
# A076271: a(1) = 1, a(2) = 2, and for n > 2, a(n) = a(n-1) + gpf(a(n-1)), where gpf = greatest prime factor = A006530.

The programs for A076271, the canonical program `A076271.P1844572753760684054` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076271 has offset 1).

The definition of A076271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076271.P9366796903265957094

`A076272(n)+a(n-1)` with `a(0)=1`
-/

namespace A076271.P9366796903265957094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076272 n + a (n - 1)

end

end A076271.P9366796903265957094

namespace A076271

/-- `A076272(n)+a(n-1)` -/
def P9366796903265957094.Spec : Prop :=
  ∀ n, P9366796903265957094.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P3785976653965669675

`A076973(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A076271.P3785976653965669675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A076973 n + a (n - 1)

end

end A076271.P3785976653965669675

namespace A076271

/-- `A076973(n)+a(n-1)` -/
def P3785976653965669675.Spec : Prop :=
  ∀ n, P3785976653965669675.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P13847715453014142059

`∑[A076272(floor(1/(n+1)+n))]`
-/

namespace A076271.P13847715453014142059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076271.P13847715453014142059

namespace A076271

/-- `∑[A076272(floor(1/(n+1)+n))]` -/
def P13847715453014142059.Spec : Prop :=
  ∀ n, P13847715453014142059.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P10663919746924175420

`A036441(n+1)-A076272(n+1)`
-/

namespace A076271.P10663919746924175420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1) - A076272 (n + 1)

end

end A076271.P10663919746924175420

namespace A076271

/-- `A036441(n+1)-A076272(n+1)` -/
def P10663919746924175420.Spec : Prop :=
  ∀ n, P10663919746924175420.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P1844572753760684054

`A180107(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076271

/-- `A180107(n+2)` -/
def P1844572753760684054.Spec : Prop :=
  ∀ n, P1844572753760684054.a n = A076271 (n + 1)

theorem P1844572753760684054.correct : P1844572753760684054.Spec := by
  intro n
  simp only [A076271, Nat.add_sub_cancel]

end A076271

/-! ## A076271.P12616934050191900692

`record[A180107(abs(1-n))]`
-/

namespace A076271.P12616934050191900692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076271.P12616934050191900692

namespace A076271

/-- `record[A180107(abs(1-n))]` -/
def P12616934050191900692.Spec : Prop :=
  ∀ n, P12616934050191900692.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P9817719232071673936

`A036441(n+1)-A036441(n+1)/A076918(n+2)`
-/

namespace A076271.P9817719232071673936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036441 (n + 1) : ℚ) - (A036441 (n + 1) : ℚ) / (A076918 (n + 2) : ℚ)

end

end A076271.P9817719232071673936

namespace A076271

/-- `A036441(n+1)-A036441(n+1)/A076918(n+2)` -/
def P9817719232071673936.Spec : Prop :=
  ∀ n, P9817719232071673936.a n = (A076271 (n + 1) : ℚ)

end A076271

/-! ## A076271.P15036073182541744797

`record[A291577(n)]`
-/

namespace A076271.P15036073182541744797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076271.P15036073182541744797

namespace A076271

/-- `record[A291577(n)]` -/
def P15036073182541744797.Spec : Prop :=
  ∀ n, P15036073182541744797.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P17739396340365844985

`A006530(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A076271.P17739396340365844985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1)).toNat + a (n - 1)

end

end A076271.P17739396340365844985

namespace A076271

/-- `A006530(a(n-1))+a(n-1)` -/
def P17739396340365844985.Spec : Prop :=
  ∀ n, P17739396340365844985.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P3350417666514233583

`record[A362015(n+1)]`
-/

namespace A076271.P3350417666514233583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076271.P3350417666514233583

namespace A076271

/-- `record[A362015(n+1)]` -/
def P3350417666514233583.Spec : Prop :=
  ∀ n, P3350417666514233583.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P9848848911196209033

`∩[A143145(n+1), A356438(n+1)]`
-/

namespace A076271.P9848848911196209033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076271.P9848848911196209033

namespace A076271

/-- `∩[A143145(n+1), A356438(n+1)]` -/
def P9848848911196209033.Spec : Prop :=
  ∀ n, (P9848848911196209033.a n : ℤ) = A076271 (n + 1)

end A076271

/-! ## A076271.P6975561964946889146

`A070229(a(n-1))` with `a(0)=1`
-/

namespace A076271.P6975561964946889146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070229 (a (n - 1)).toNat

end

end A076271.P6975561964946889146

namespace A076271

/-- `A070229(a(n-1))` -/
def P6975561964946889146.Spec : Prop :=
  ∀ n, P6975561964946889146.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P10509506667925485127

`A171462(a(n-1))+1+n` with `a(0)=1`
-/

namespace A076271.P10509506667925485127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171462 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A076271.P10509506667925485127

namespace A076271

/-- `A171462(a(n-1))+1+n` -/
def P10509506667925485127.Spec : Prop :=
  ∀ n, P10509506667925485127.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P5040933846552563319

`A284695(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A076271.P5040933846552563319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284695 (a (n - 1)).toNat + a (n - 1)

end

end A076271.P5040933846552563319

namespace A076271

/-- `A284695(a(n-1))+a(n-1)` -/
def P5040933846552563319.Spec : Prop :=
  ∀ n, P5040933846552563319.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P4841230146945917123

`lt[A331032(n+1), 1]+1`
-/

namespace A076271.P4841230146945917123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331032 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076271.P4841230146945917123

namespace A076271

/-- `lt[A331032(n+1), 1]+1` -/
def P4841230146945917123.Spec : Prop :=
  ∀ n, (P4841230146945917123.a n : ℤ) = A076271 (n + 1)

end A076271

/-! ## A076271.P14865027238889988621

`A085392(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A076271.P14865027238889988621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085392 (2 * a (n - 1)).toNat + a (n - 1)

end

end A076271.P14865027238889988621

namespace A076271

/-- `A085392(2*a(n-1))+a(n-1)` -/
def P14865027238889988621.Spec : Prop :=
  ∀ n, P14865027238889988621.a n = A076271 (n + 1)

end A076271

/-! ## A076271.P15085947022764622419

`A217581(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A076271.P15085947022764622419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217581 (2 * a (n - 1)).toNat + a (n - 1)

end

end A076271.P15085947022764622419

namespace A076271

/-- `A217581(2*a(n-1))+a(n-1)` -/
def P15085947022764622419.Spec : Prop :=
  ∀ n, P15085947022764622419.a n = A076271 (n + 1)

end A076271

/-!
# A076272: Largest prime factor of A076271(n): A006530(A076271(n)).

The programs for A076272, the canonical program `A076272.P7601863913326616952` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076272 has offset 1).

The definition of A076272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A076271, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076272.P17742753144962179633

`A076271(n+2)-A076271(n+1)`
-/

namespace A076272.P17742753144962179633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 2) - A076271 (n + 1)

end

end A076272.P17742753144962179633

namespace A076272

/-- `A076271(n+2)-A076271(n+1)` -/
def P17742753144962179633.Spec : Prop :=
  ∀ n, P17742753144962179633.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P7601863913326616952

`A006530(A076271(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A076272

/-- `A006530(A076271(n+1))` -/
def P7601863913326616952.Spec : Prop :=
  ∀ n, P7601863913326616952.a n = A076272 (n + 1)

theorem P7601863913326616952.correct : P7601863913326616952.Spec := by
  intro n
  simp only [A076272, Nat.add_sub_cancel]

end A076272

/-! ## A076272.P13049253169325565174

`A076973(n+1)-A000007(n)`
-/

namespace A076272.P13049253169325565174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (n + 1) - A000007 n

end

end A076272.P13049253169325565174

namespace A076272

/-- `A076973(n+1)-A000007(n)` -/
def P13049253169325565174.Spec : Prop :=
  ∀ n, P13049253169325565174.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P6929667638732578615

`A076973(n+1)/A054977(n)`
-/

namespace A076272.P6929667638732578615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076973 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A076272.P6929667638732578615

namespace A076272

/-- `A076973(n+1)/A054977(n)` -/
def P6929667638732578615.Spec : Prop :=
  ∀ n, P6929667638732578615.a n = (A076272 (n + 1) : ℚ)

end A076272

/-! ## A076272.P3231417714293875437

`gcd(A036441(n+1), A076271(n+1))`
-/

namespace A076272.P3231417714293875437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036441 (n + 1)) (A076271 (n + 1))

end

end A076272.P3231417714293875437

namespace A076272

/-- `gcd(A036441(n+1), A076271(n+1))` -/
def P3231417714293875437.Spec : Prop :=
  ∀ n, (P3231417714293875437.a n : ℤ) = A076272 (n + 1)

end A076272

/-! ## A076272.P1567809570496012167

`A076973(n+1)-A196389(A057944(n))`
-/

namespace A076272.P1567809570496012167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (n + 1) - A196389 (A057944 n).toNat

end

end A076272.P1567809570496012167

namespace A076272

/-- `A076973(n+1)-A196389(A057944(n))` -/
def P1567809570496012167.Spec : Prop :=
  ∀ n, P1567809570496012167.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P18401918253318964150

`n+3-A076918(n+2)`
-/

namespace A076272.P18401918253318964150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A076918 (n + 2)

end

end A076272.P18401918253318964150

namespace A076272

/-- `n+3-A076918(n+2)` -/
def P18401918253318964150.Spec : Prop :=
  ∀ n, P18401918253318964150.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P2222627477216713100

`A036441(n+1)-A180107(n+2)`
-/

namespace A076272.P2222627477216713100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1) - A180107 (n + 2)

end

end A076272.P2222627477216713100

namespace A076272

/-- `A036441(n+1)-A180107(n+2)` -/
def P2222627477216713100.Spec : Prop :=
  ∀ n, P2222627477216713100.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P8721352472901851450

`A036441(n+1)/A076918(n+2)`
-/

namespace A076272.P8721352472901851450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036441 (n + 1) : ℚ) / (A076918 (n + 2) : ℚ)

end

end A076272.P8721352472901851450

namespace A076272

/-- `A036441(n+1)/A076918(n+2)` -/
def P8721352472901851450.Spec : Prop :=
  ∀ n, P8721352472901851450.a n = (A076272 (n + 1) : ℚ)

end A076272

/-! ## A076272.P9150212204622183926

`A076271(n+2)/A076918(n+2)`
-/

namespace A076272.P9150212204622183926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076271 (n + 2) : ℚ) / (A076918 (n + 2) : ℚ)

end

end A076272.P9150212204622183926

namespace A076272

/-- `A076271(n+2)/A076918(n+2)` -/
def P9150212204622183926.Spec : Prop :=
  ∀ n, P9150212204622183926.a n = (A076272 (n + 1) : ℚ)

end A076272

/-! ## A076272.P5114680520368952229

`A076973(n+1)+A123581(n+1)-A036441(n+2)`
-/

namespace A076272.P5114680520368952229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (n + 1) + (A123581 (n + 1) - A036441 (n + 2))

end

end A076272.P5114680520368952229

namespace A076272

/-- `A076973(n+1)+A123581(n+1)-A036441(n+2)` -/
def P5114680520368952229.Spec : Prop :=
  ∀ n, P5114680520368952229.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P11578643616315834798

`Δ[A180107(n+2)]`
-/

namespace A076272.P11578643616315834798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076272.P11578643616315834798

namespace A076272

/-- `Δ[A180107(n+2)]` -/
def P11578643616315834798.Spec : Prop :=
  ∀ n, P11578643616315834798.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P9662275323325933484

`A180107(n+3)-A180107(n+2)`
-/

namespace A076272.P9662275323325933484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (n + 3) - A180107 (n + 2)

end

end A076272.P9662275323325933484

namespace A076272

/-- `A180107(n+3)-A180107(n+2)` -/
def P9662275323325933484.Spec : Prop :=
  ∀ n, P9662275323325933484.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P6649953681740903615

`A001222(A008578(n+1))+A076973(n+1)-1`
-/

namespace A076272.P6649953681740903615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat + (A076973 (n + 1) - 1)

end

end A076272.P6649953681740903615

namespace A076272

/-- `A001222(A008578(n+1))+A076973(n+1)-1` -/
def P6649953681740903615.Spec : Prop :=
  ∀ n, P6649953681740903615.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P12524196378484704093

`A155047(1-A185012(n)+n)`
-/

namespace A076272.P12524196378484704093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (1 - A185012 n + (n : ℤ)).toNat

end

end A076272.P12524196378484704093

namespace A076272

/-- `A155047(1-A185012(n)+n)` -/
def P12524196378484704093.Spec : Prop :=
  ∀ n, P12524196378484704093.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P13464477111866701146

`A155047(1-(A185012(n)-n))`
-/

namespace A076272.P13464477111866701146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (1 - (A185012 n - (n : ℤ))).toNat

end

end A076272.P13464477111866701146

namespace A076272

/-- `A155047(1-(A185012(n)-n))` -/
def P13464477111866701146.Spec : Prop :=
  ∀ n, P13464477111866701146.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P4076306047596383041

`A155047(xor(1, A185012(n))+n)`
-/

namespace A076272.P4076306047596383041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (Int.xor 1 (A185012 n) + (n : ℤ)).toNat

end

end A076272.P4076306047596383041

namespace A076272

/-- `A155047(xor(1, A185012(n))+n)` -/
def P4076306047596383041.Spec : Prop :=
  ∀ n, P4076306047596383041.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P14079770632090122904

`Δ[record[A291577(n)]]`
-/

namespace A076272.P14079770632090122904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076272.P14079770632090122904

namespace A076272

/-- `Δ[record[A291577(n)]]` -/
def P14079770632090122904.Spec : Prop :=
  ∀ n, P14079770632090122904.a n = A076272 (n + 1)

end A076272

/-! ## A076272.P15879360035395724296

`Δ[A006530(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A076272.P15879360035395724296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A006530 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076272.P15879360035395724296

namespace A076272

/-- `Δ[A006530(a(n-1))+a(n-1)]` -/
def P15879360035395724296.Spec : Prop :=
  ∀ n, P15879360035395724296.a n = A076272 (n + 1)

end A076272

/-!
# A076273: a(0) = 1, a(1) = 2; for n>1, a(n) = prime(n)+prime(n-1)-1.

The programs for A076273, the canonical program `A076273.P1350952103448014741` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076273 has offset 0).

The definition of A076273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076273.P4801280078913244400

`A134824(n)+A069102(n+1)`
-/

namespace A076273.P4801280078913244400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A069102 (n + 1)

end

end A076273.P4801280078913244400

namespace A076273

/-- `A134824(n)+A069102(n+1)` -/
def P4801280078913244400.Spec : Prop :=
  ∀ n, P4801280078913244400.a n = A076273 n

end A076273

/-! ## A076273.P1350952103448014741

`A164653(n+1)+A057428(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076273

/-- `A164653(n+1)+A057428(n)` -/
def P1350952103448014741.Spec : Prop :=
  ∀ n, P1350952103448014741.a n = A076273 n

theorem P1350952103448014741.correct : P1350952103448014741.Spec := by
  intro n
  simp only [A076273]

end A076273

/-! ## A076273.P12125358470826179980

`A164653(n+1)-A057427(n)`
-/

namespace A076273.P12125358470826179980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) - A057427 n

end

end A076273.P12125358470826179980

namespace A076273

/-- `A164653(n+1)-A057427(n)` -/
def P12125358470826179980.Spec : Prop :=
  ∀ n, P12125358470826179980.a n = A076273 n

end A076273

/-! ## A076273.P16850085543861352798

`A176099(n+1)-A076368(n+1)`
-/

namespace A076273.P16850085543861352798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1) - A076368 (n + 1)

end

end A076273.P16850085543861352798

namespace A076273

/-- `A176099(n+1)-A076368(n+1)` -/
def P16850085543861352798.Spec : Prop :=
  ∀ n, P16850085543861352798.a n = A076273 n

end A076273

/-! ## A076273.P13816635231035596093

`A164653(n+1)-A091247(4*n)`
-/

namespace A076273.P13816635231035596093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) - A091247 (4 * n)

end

end A076273.P13816635231035596093

namespace A076273

/-- `A164653(n+1)-A091247(4*n)` -/
def P13816635231035596093.Spec : Prop :=
  ∀ n, P13816635231035596093.a n = A076273 n

end A076273

/-! ## A076273.P2263343591044711330

`gcd(1-A164653(n+1), A130706(n))`
-/

namespace A076273.P2263343591044711330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A164653 (n + 1)) (A130706 n)

end

end A076273.P2263343591044711330

namespace A076273

/-- `gcd(1-A164653(n+1), A130706(n))` -/
def P2263343591044711330.Spec : Prop :=
  ∀ n, (P2263343591044711330.a n : ℤ) = A076273 n

end A076273

/-! ## A076273.P16979552544504976526

`A164653(n+1)-A001221(A034444(n+1))`
-/

namespace A076273.P16979552544504976526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) - A001221 (A034444 (n + 1)).toNat

end

end A076273.P16979552544504976526

namespace A076273

/-- `A164653(n+1)-A001221(A034444(n+1))` -/
def P16979552544504976526.Spec : Prop :=
  ∀ n, P16979552544504976526.a n = A076273 n

end A076273

/-! ## A076273.P6924311851042132400

`A158611(n+1)+A057237(A158611(n+2))`
-/

namespace A076273.P6924311851042132400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A057237 (A158611 (n + 2)).toNat

end

end A076273.P6924311851042132400

namespace A076273

/-- `A158611(n+1)+A057237(A158611(n+2))` -/
def P6924311851042132400.Spec : Prop :=
  ∀ n, P6924311851042132400.a n = A076273 n

end A076273

/-! ## A076273.P13174476954763034652

`A158611(n+1)+A000010(lt[A001222(n+1), 2]+1)`
-/

namespace A076273.P13174476954763034652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A076273.P13174476954763034652

namespace A076273

/-- `A158611(n+1)+A000010(lt[A001222(n+1), 2]+1)` -/
def P13174476954763034652.Spec : Prop :=
  ∀ n, P13174476954763034652.a n = A076273 n

end A076273

/-! ## A076273.P14243225917084432642

`A158611(n+1)+A000010(lt[A000005(n+1), 3]+1)`
-/

namespace A076273.P14243225917084432642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A076273.P14243225917084432642

namespace A076273

/-- `A158611(n+1)+A000010(lt[A000005(n+1), 3]+1)` -/
def P14243225917084432642.Spec : Prop :=
  ∀ n, P14243225917084432642.a n = A076273 n

end A076273

/-! ## A076273.P4881362230263667346

`A158611(n+1)+A000010(lt[n-1, A000010(n+1)]+1)`
-/

namespace A076273.P4881362230263667346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A000010 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A076273.P4881362230263667346

namespace A076273

/-- `A158611(n+1)+A000010(lt[n-1, A000010(n+1)]+1)` -/
def P4881362230263667346.Spec : Prop :=
  ∀ n, P4881362230263667346.a n = A076273 n

end A076273

/-! ## A076273.P9490508958333007741

`A013634(lt[A082023(n), 1])-1`
-/

namespace A076273.P9490508958333007741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - 1

end

end A076273.P9490508958333007741

namespace A076273

/-- `A013634(lt[A082023(n), 1])-1` -/
def P9490508958333007741.Spec : Prop :=
  ∀ n, P9490508958333007741.a n = A076273 n

end A076273

/-! ## A076273.P15171982810684886570

`record[A117365(n+1)+n]`
-/

namespace A076273.P15171982810684886570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076273.P15171982810684886570

namespace A076273

/-- `record[A117365(n+1)+n]` -/
def P15171982810684886570.Spec : Prop :=
  ∀ n, P15171982810684886570.a n = A076273 n

end A076273

/-! ## A076273.P14469760926789822967

`record[A331032(n+1)+1+n]`
-/

namespace A076273.P14469760926789822967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331032 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076273.P14469760926789822967

namespace A076273

/-- `record[A331032(n+1)+1+n]` -/
def P14469760926789822967.Spec : Prop :=
  ∀ n, P14469760926789822967.a n = A076273 n

end A076273

/-! ## A076273.P6948033237763729043

`record[A006530(n+1)+A064989(n+1)-1]`
-/

namespace A076273.P6948033237763729043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A064989 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076273.P6948033237763729043

namespace A076273

/-- `record[A006530(n+1)+A064989(n+1)-1]` -/
def P6948033237763729043.Spec : Prop :=
  ∀ n, P6948033237763729043.a n = A076273 n

end A076273

/-! ## A076273.P2022393551598583841

`A246165(A008578(n+1))`
-/

namespace A076273.P2022393551598583841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246165 (A008578 (n + 1)).toNat

end

end A076273.P2022393551598583841

namespace A076273

/-- `A246165(A008578(n+1))` -/
def P2022393551598583841.Spec : Prop :=
  ∀ n, P2022393551598583841.a n = A076273 n

end A076273

/-! ## A076273.P8459729166215446303

`A246165(A158611(n+2))`
-/

namespace A076273.P8459729166215446303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246165 (A158611 (n + 2)).toNat

end

end A076273.P8459729166215446303

namespace A076273

/-- `A246165(A158611(n+2))` -/
def P8459729166215446303.Spec : Prop :=
  ∀ n, P8459729166215446303.a n = A076273 n

end A076273

/-! ## A076273.P7316910864825433522

`record[A246165(A005117(n+1))]`
-/

namespace A076273.P7316910864825433522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246165 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076273.P7316910864825433522

namespace A076273

/-- `record[A246165(A005117(n+1))]` -/
def P7316910864825433522.Spec : Prop :=
  ∀ n, P7316910864825433522.a n = A076273 n

end A076273

/-! ## A076273.P12962895827545364203

`A246165(record[A006530(n+1)])`
-/

namespace A076273.P12962895827545364203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246165 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076273.P12962895827545364203

namespace A076273

/-- `A246165(record[A006530(n+1)])` -/
def P12962895827545364203.Spec : Prop :=
  ∀ n, P12962895827545364203.a n = A076273 n

end A076273

/-! ## A076273.P4885808284264557042

`A246165(record[A014963(n+1)])`
-/

namespace A076273.P4885808284264557042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246165 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076273.P4885808284264557042

namespace A076273

/-- `A246165(record[A014963(n+1)])` -/
def P4885808284264557042.Spec : Prop :=
  ∀ n, P4885808284264557042.a n = A076273 n

end A076273

/-!
# A076274: 2p-1 where p is 1 or a prime.

The programs for A076274, the canonical program `A076274.P12157437344970773243` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076274 has offset 1).

The definition of A076274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076274.P12157437344970773243

`2*A008578(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076274

/-- `2*A008578(n+1)-1` -/
def P12157437344970773243.Spec : Prop :=
  ∀ n, P12157437344970773243.a n = A076274 (n + 1)

theorem P12157437344970773243.correct : P12157437344970773243.Spec := by
  intro n
  simp only [A076274, Nat.add_sub_cancel]

end A076274

/-! ## A076274.P17884501867876395042

`A001747(n+1)-1`
-/

namespace A076274.P17884501867876395042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 1

end

end A076274.P17884501867876395042

namespace A076274

/-- `A001747(n+1)-1` -/
def P17884501867876395042.Spec : Prop :=
  ∀ n, P17884501867876395042.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P17306522267811467205

`2*A028815(n)-3`
-/

namespace A076274.P17306522267811467205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028815 n - 3

end

end A076274.P17306522267811467205

namespace A076274

/-- `2*A028815(n)-3` -/
def P17306522267811467205.Spec : Prop :=
  ∀ n, P17306522267811467205.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P2118390057870312655

`A112773(n+1)-A028815(n)`
-/

namespace A076274.P2118390057870312655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - A028815 n

end

end A076274.P2118390057870312655

namespace A076274

/-- `A112773(n+1)-A028815(n)` -/
def P2118390057870312655.Spec : Prop :=
  ∀ n, P2118390057870312655.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P17473716953142044718

`A167136(n+1)+A162177(n+1)`
-/

namespace A076274.P17473716953142044718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + A162177 (n + 1)

end

end A076274.P17473716953142044718

namespace A076274

/-- `A167136(n+1)+A162177(n+1)` -/
def P17473716953142044718.Spec : Prop :=
  ∀ n, P17473716953142044718.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P11715957698464143897

`A011974(n+1)-A076368(n+1)`
-/

namespace A076274.P11715957698464143897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) - A076368 (n + 1)

end

end A076274.P11715957698464143897

namespace A076274

/-- `A011974(n+1)-A076368(n+1)` -/
def P11715957698464143897.Spec : Prop :=
  ∀ n, P11715957698464143897.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P14535875426644318052

`A076273(n+1)-A075526(n)`
-/

namespace A076274.P14535875426644318052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 1) - A075526 n

end

end A076274.P14535875426644318052

namespace A076274

/-- `A076273(n+1)-A075526(n)` -/
def P14535875426644318052.Spec : Prop :=
  ∀ n, P14535875426644318052.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P5082466303525668359

`A008578(n+1)+A008578(n+1)-A057427(n+1)`
-/

namespace A076274.P5082466303525668359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A008578 (n + 1) - A057427 (n + 1))

end

end A076274.P5082466303525668359

namespace A076274

/-- `A008578(n+1)+A008578(n+1)-A057427(n+1)` -/
def P5082466303525668359.Spec : Prop :=
  ∀ n, P5082466303525668359.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P7497756927893412165

`A008578(n+1)+A076273(n+1)-A000040(n+1)`
-/

namespace A076274.P7497756927893412165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A076273 (n + 1) - A000040 (n + 1))

end

end A076274.P7497756927893412165

namespace A076274

/-- `A008578(n+1)+A076273(n+1)-A000040(n+1)` -/
def P7497756927893412165.Spec : Prop :=
  ∀ n, P7497756927893412165.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P16240445266773349826

`A008578(n+1)+A076273(n+1)-A008578(n+2)`
-/

namespace A076274.P16240445266773349826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A076273 (n + 1) - A008578 (n + 2))

end

end A076274.P16240445266773349826

namespace A076274

/-- `A008578(n+1)+A076273(n+1)-A008578(n+2)` -/
def P16240445266773349826.Spec : Prop :=
  ∀ n, P16240445266773349826.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P16905408147719201657

`A076273(n+1)+A158611(n+2)-A000040(n+1)`
-/

namespace A076274.P16905408147719201657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 1) + (A158611 (n + 2) - A000040 (n + 1))

end

end A076274.P16905408147719201657

namespace A076274

/-- `A076273(n+1)+A158611(n+2)-A000040(n+1)` -/
def P16905408147719201657.Spec : Prop :=
  ∀ n, P16905408147719201657.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P5211165894947854538

`A008578(n+1)+A008578(n+2)-A230846(n+1)`
-/

namespace A076274.P5211165894947854538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A008578 (n + 2) - A230846 (n + 1))

end

end A076274.P5211165894947854538

namespace A076274

/-- `A008578(n+1)+A008578(n+2)-A230846(n+1)` -/
def P5211165894947854538.Spec : Prop :=
  ∀ n, P5211165894947854538.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P16801078629930310314

`record[A020639(n+1)+n]`
-/

namespace A076274.P16801078629930310314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076274.P16801078629930310314

namespace A076274

/-- `record[A020639(n+1)+n]` -/
def P16801078629930310314.Spec : Prop :=
  ∀ n, P16801078629930310314.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P8742635807797912853

`record[A192133(n+1)+record[A008475(n+1)]]`
-/

namespace A076274.P8742635807797912853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076274.P8742635807797912853

namespace A076274

/-- `record[A192133(n+1)+record[A008475(n+1)]]` -/
def P8742635807797912853.Spec : Prop :=
  ∀ n, P8742635807797912853.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P3972651183732979224

`record[A283312(n+2)-1]`
-/

namespace A076274.P3972651183732979224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076274.P3972651183732979224

namespace A076274

/-- `record[A283312(n+2)-1]` -/
def P3972651183732979224.Spec : Prop :=
  ∀ n, P3972651183732979224.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P12054117307429813648

`A283312(A338356(n+2))-1`
-/

namespace A076274.P12054117307429813648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (A338356 (n + 2)).toNat - 1

end

end A076274.P12054117307429813648

namespace A076274

/-- `A283312(A338356(n+2))-1` -/
def P12054117307429813648.Spec : Prop :=
  ∀ n, P12054117307429813648.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P12511764891866058691

`record[A127202(n+2)-1]`
-/

namespace A076274.P12511764891866058691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076274.P12511764891866058691

namespace A076274

/-- `record[A127202(n+2)-1]` -/
def P12511764891866058691.Spec : Prop :=
  ∀ n, P12511764891866058691.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P15971096755616792395

`filter[A195896(n+1), A379952(#)]`
-/

namespace A076274.P15971096755616792395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A076274.P15971096755616792395

namespace A076274

/-- `filter[A195896(n+1), A379952(#)]` -/
def P15971096755616792395.Spec : Prop :=
  ∀ n, P15971096755616792395.a n = A076274 (n + 1)

end A076274

/-! ## A076274.P6451335053550586997

`record[A130008(n)-Δ[A130008(n)]]`
-/

namespace A076274.P6451335053550586997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076274.P6451335053550586997

namespace A076274

/-- `record[A130008(n)-Δ[A130008(n)]]` -/
def P6451335053550586997.Spec : Prop :=
  ∀ n, P6451335053550586997.a n = A076274 (n + 1)

end A076274

/-!
# A076275: Numbers of the form (4^{mr}-1)/(4^r-1) for positive integers m, r.

The programs for A076275, there is no canonical definition to state claims against.
-/

/-! ## A076275.P4965050006169550561

`A145818((A064896(n+1)+1)/2)`
-/

namespace A076275.P4965050006169550561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (SequenceMachineLib.roundAway ((A064896 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A076275.P4965050006169550561

/-! ## A076275.P16548850460060979171

`∩[A043003(n+1), A175020(n+1)]`
-/

namespace A076275.P16548850460060979171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076275.P16548850460060979171

/-! ## A076275.P2173851679340150317

`A000695(A064896(n+1))`
-/

namespace A076275.P2173851679340150317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A064896 (n + 1)).toNat

end

end A076275.P2173851679340150317

/-! ## A076275.P4169190315959727127

`A098871(A064896(n+1)-1)`
-/

namespace A076275.P4169190315959727127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (A064896 (n + 1) - 1).toNat

end

end A076275.P4169190315959727127

/-! ## A076275.P10934962105591417073

`A098871(xor(1, A064896(n+1)))`
-/

namespace A076275.P10934962105591417073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (Int.xor 1 (A064896 (n + 1))).toNat

end

end A076275.P10934962105591417073

/-!
# A076276: Number of + signs needed to write the partitions of n (A000041) as sums.

The programs for A076276, there is no canonical definition to state claims against.
-/

/-! ## A076276.P18109821163528435293

`A006128(n)+1-A052810(n)`
-/

namespace A076276.P18109821163528435293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (1 - A052810 n)

end

end A076276.P18109821163528435293

/-! ## A076276.P10843472550521267325

`A006128(n)-∑{d}[n, A000837(#)]`
-/

namespace A076276.P10843472550521267325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - ∑ d ∈ Nat.divisors (f1 n), A000837 d

end

end A076276.P10843472550521267325

/-! ## A076276.P803258601045713425

`A211978(n)%A093694(n)`
-/

namespace A076276.P803258601045713425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211978 n) (A093694 n)

end

end A076276.P803258601045713425

/-! ## A076276.P14411267537224038622

`(2*A006128(n))%A093694(n)`
-/

namespace A076276.P14411267537224038622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A006128 n) (A093694 n)

end

end A076276.P14411267537224038622

/-! ## A076276.P186782697177692974

`(A278355(n)/2)%A093694(n)`
-/

namespace A076276.P186782697177692974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A278355 n : ℚ) / 2)) (A093694 n)

end

end A076276.P186782697177692974

/-!
# A076277: Number of product signs needed to write all the factorizations of n with all factors > 1.

The programs for A076277, there is no canonical definition to state claims against.
-/

/-! ## A076277.P5482693790837303587

`A028310(A066637(n+1))-A001055(n+1)`
-/

namespace A076277.P5482693790837303587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A066637 (n + 1)).toNat - A001055 (n + 1)

end

end A076277.P5482693790837303587

/-! ## A076277.P18056617480527347089

`A066637(n+1)+A000007(n)-A001055(n+1)`
-/

namespace A076277.P18056617480527347089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (n + 1) + (A000007 n - A001055 (n + 1))

end

end A076277.P18056617480527347089

/-! ## A076277.P16809598978603281254

`(A066637(n+1)-A001055(n+1))%A000041(n)`
-/

namespace A076277.P16809598978603281254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066637 (n + 1) - A001055 (n + 1)) (A000041 n)

end

end A076277.P16809598978603281254

/-! ## A076277.P995011167858613002

`A066637(n+1)-A001055(n+1)%A000070(n)`
-/

namespace A076277.P995011167858613002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (n + 1) - Int.tmod (A001055 (n + 1)) (A000070 n)

end

end A076277.P995011167858613002

/-! ## A076277.P15248972509639130990

`A066637(n+1)-A349907(A045965(n+1))`
-/

namespace A076277.P15248972509639130990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (n + 1) - A349907 (A045965 (n + 1)).toNat

end

end A076277.P15248972509639130990

/-!
# A076278: Number of 2-chromatic (i.e., chromatic number equals 2) simple graphs on n nodes.

The programs for A076278, there is no canonical definition to state claims against.
-/

/-! ## A076278.P14072246373334740380

`A033995(n+1)-1`
-/

namespace A076278.P14072246373334740380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (n + 1) - 1

end

end A076278.P14072246373334740380

/-! ## A076278.P15541925582007015085

`∑[abs(Δ[A033995(n)])]`
-/

namespace A076278.P15541925582007015085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076278.P15541925582007015085

/-! ## A076278.P13696044566808009947

`record[A033995(A002262(n))-1]`
-/

namespace A076278.P13696044566808009947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (A002262 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076278.P13696044566808009947

/-! ## A076278.P6362350698789082183

`record[Δ[A033995(A055396(n+1))]]`
-/

namespace A076278.P6362350698789082183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (A055396 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076278.P6362350698789082183

/-! ## A076278.P11478356402666448092

`A004526(n+1)+A079571(n+1)-1`
-/

namespace A076278.P11478356402666448092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A079571 (n + 1) - 1)

end

end A076278.P11478356402666448092

/-!
# A076279: Number of 3-chromatic (i.e., chromatic number equals 3) simple graphs on n nodes.

The programs for A076279, there is no canonical definition to state claims against.
-/

/-! ## A076279.P3344314711053376973

`A076315(n+1)-A033995(n+1)`
-/

namespace A076279.P3344314711053376973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076315 (n + 1) - A033995 (n + 1)

end

end A076279.P3344314711053376973

/-! ## A076279.P13679344532266140825

`A076315(n+1)-(A076278(n+1)+1)`
-/

namespace A076279.P13679344532266140825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076315 (n + 1) - (A076278 (n + 1) + 1)

end

end A076279.P13679344532266140825

/-! ## A076279.P13094854327467512819

`A076315(n+1)+A287512(n+1)-A052431(n+1)`
-/

namespace A076279.P13094854327467512819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076315 (n + 1) + (A287512 (n + 1) - A052431 (n + 1))

end

end A076279.P13094854327467512819

/-! ## A076279.P12392760848422430058

`A023443(A076315(n+1)-A076278(n+1))`
-/

namespace A076279.P12392760848422430058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076315 (n + 1) - A076278 (n + 1)).toNat

end

end A076279.P12392760848422430058

/-!
# A076280: Number of 4-chromatic (i.e., chromatic number equals 4) simple graphs on n nodes.

The programs for A076280, there is no canonical definition to state claims against.
-/

/-! ## A076280.P10840990065149212345

`A076316(n+1)-A076315(n+1)`
-/

namespace A076280.P10840990065149212345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1) - A076315 (n + 1)

end

end A076280.P10840990065149212345

/-! ## A076280.P2835028407212122009

`A076316(n+1)-(A076279(n+1)+A033995(n+1))`
-/

namespace A076280.P2835028407212122009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1) - (A076279 (n + 1) + A033995 (n + 1))

end

end A076280.P2835028407212122009

/-! ## A076280.P12068774868720808010

`A076317(n+1)-(A076315(n+1)+A076281(n+1))`
-/

namespace A076280.P12068774868720808010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - (A076315 (n + 1) + A076281 (n + 1))

end

end A076280.P12068774868720808010

/-! ## A076280.P2395806142370556719

`A076317(n+1)-A076281(n+1)-A076315(A077168(n))`
-/

namespace A076280.P2395806142370556719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - A076281 (n + 1) - A076315 (A077168 n).toNat

end

end A076280.P2395806142370556719

/-! ## A076280.P1597597704830299610

`A076317(n+1)-A076281(n+1)-(A076279(n+1)+A033995(n+1))`
-/

namespace A076280.P1597597704830299610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - A076281 (n + 1) - (A076279 (n + 1) + A033995 (n + 1))

end

end A076280.P1597597704830299610

/-!
# A076281: Number of 5-chromatic (i.e., chromatic number equals 5) simple graphs on n nodes.

The programs for A076281, there is no canonical definition to state claims against.
-/

/-! ## A076281.P8252358465709572549

`A076317(n+1)-A076316(n+1)`
-/

namespace A076281.P8252358465709572549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - A076316 (n + 1)

end

end A076281.P8252358465709572549

/-! ## A076281.P2450257813788093825

`A076317(n+1)%A076316(A005555(n))`
-/

namespace A076281.P2450257813788093825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076317 (n + 1)) (A076316 (A005555 n).toNat)

end

end A076281.P2450257813788093825

/-! ## A076281.P13777097336296143290

`A076317(A000027(n+1))%A076316(n+1)`
-/

namespace A076281.P13777097336296143290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076317 (A000027 (n + 1)).toNat) (A076316 (n + 1))

end

end A076281.P13777097336296143290

/-! ## A076281.P11469934672762879385

`A076317(A048266(n+1))%A076316(n+1)`
-/

namespace A076281.P11469934672762879385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076317 (A048266 (n + 1)).toNat) (A076316 (n + 1))

end

end A076281.P11469934672762879385

/-! ## A076281.P6633831291124665206

`A076317(A061147(n+1))%A076316(n+1)`
-/

namespace A076281.P6633831291124665206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076317 (A061147 (n + 1)).toNat) (A076316 (n + 1))

end

end A076281.P6633831291124665206

/-!
# A076282: Number of 6-chromatic (i.e., chromatic number equals 6) simple graphs on n nodes.

The programs for A076282, there is no canonical definition to state claims against.
-/

/-! ## A076282.P7138929294518904154

`A076318(n+1)-A076317(n+1)`
-/

namespace A076282.P7138929294518904154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076318 (n + 1) - A076317 (n + 1)

end

end A076282.P7138929294518904154

/-! ## A076282.P13418931927284326819

`A076318(n+1)%A076317(A005555(n))`
-/

namespace A076282.P13418931927284326819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076318 (n + 1)) (A076317 (A005555 n).toNat)

end

end A076282.P13418931927284326819

/-! ## A076282.P18073250291413858127

`A076318(A291769(n))%A076317(n+1)`
-/

namespace A076282.P18073250291413858127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076318 (A291769 n).toNat) (A076317 (n + 1))

end

end A076282.P18073250291413858127

/-! ## A076282.P15136144450747980816

`A076318(A000027(n+1))%A076317(n+1)`
-/

namespace A076282.P15136144450747980816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076318 (A000027 (n + 1)).toNat) (A076317 (n + 1))

end

end A076282.P15136144450747980816

/-! ## A076282.P17506978209774636442

`A076318(A048266(n+1))%A076317(n+1)`
-/

namespace A076282.P17506978209774636442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076318 (A048266 (n + 1)).toNat) (A076317 (n + 1))

end

end A076282.P17506978209774636442

/-!
# A076283: Number of 7-chromatic (i.e., chromatic number equals 7) simple graphs on n nodes.

The programs for A076283, there is no canonical definition to state claims against.
-/

/-! ## A076283.P18327835292821934663

`A076319(n+1)-A076318(n+1)`
-/

namespace A076283.P18327835292821934663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076319 (n + 1) - A076318 (n + 1)

end

end A076283.P18327835292821934663

/-! ## A076283.P16318976097727189883

`A076319(n+1)%A076318(A331300(n))`
-/

namespace A076283.P16318976097727189883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076319 (n + 1)) (A076318 (A331300 n).toNat)

end

end A076283.P16318976097727189883

/-! ## A076283.P18404231580122105834

`A076319(A000027(n+1))%A076318(n+1)`
-/

namespace A076283.P18404231580122105834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076319 (A000027 (n + 1)).toNat) (A076318 (n + 1))

end

end A076283.P18404231580122105834

/-! ## A076283.P12551933370637255224

`A076319(A048266(n+1))%A076318(n+1)`
-/

namespace A076283.P12551933370637255224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076319 (A048266 (n + 1)).toNat) (A076318 (n + 1))

end

end A076283.P12551933370637255224

/-! ## A076283.P36359785200396930

`A076319(A093616(n+1))%A076318(n+1)`
-/

namespace A076283.P36359785200396930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076319 (A093616 (n + 1)).toNat) (A076318 (n + 1))

end

end A076283.P36359785200396930

/-!
# A076284: Numbers of the form (5^{mr}-1)/(5^r-1) for positive integers m, r.

The programs for A076284, there is no canonical definition to state claims against.
-/

/-! ## A076284.P10476521081057221612

`A033042(A064896(n+1))`
-/

namespace A076284.P10476521081057221612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A064896 (n + 1)).toNat

end

end A076284.P10476521081057221612

/-! ## A076284.P14710873987670088437

`A033042(eq[A124765(n), A178225(n)])`
-/

namespace A076284.P14710873987670088437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076284.P14710873987670088437

/-! ## A076284.P3447683987870957895

`A033042(∩[A235264(n+1), A114994(n)])`
-/

namespace A076284.P3447683987870957895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076284.P3447683987870957895

/-! ## A076284.P15162869642260602536

`A033042(∩[A235264(n+1), A295235(n+1)])`
-/

namespace A076284.P15162869642260602536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076284.P15162869642260602536

/-! ## A076284.P14644546316615139297

`A033042(∩[A295235(n+1), A305409(n+1)])`
-/

namespace A076284.P14644546316615139297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076284.P14644546316615139297

/-!
# A076285: Numbers of the form (6^{mr}-1)/(6^r-1) for positive integers m, r.

The programs for A076285, there is no canonical definition to state claims against.
-/

/-! ## A076285.P6345169433329166363

`A033043(A064896(n+1))`
-/

namespace A076285.P6345169433329166363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A064896 (n + 1)).toNat

end

end A076285.P6345169433329166363

/-! ## A076285.P394610181685450667

`A033043(eq[A124765(n), A178225(n)])`
-/

namespace A076285.P394610181685450667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076285.P394610181685450667

/-! ## A076285.P10422802715723068084

`A033043(∩[A235264(n+1), A114994(n)])`
-/

namespace A076285.P10422802715723068084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076285.P10422802715723068084

/-! ## A076285.P2925901000993840581

`A033043(∩[A235264(n+1), A295235(n+1)])`
-/

namespace A076285.P2925901000993840581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076285.P2925901000993840581

/-! ## A076285.P5718899695620576213

`A033043(∩[A295235(n+1), A305409(n+1)])`
-/

namespace A076285.P5718899695620576213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076285.P5718899695620576213

/-!
# A076286: Numbers of the form (7^{mr}-1)/(7^r-1) for positive integers m, r.

The programs for A076286, there is no canonical definition to state claims against.
-/

/-! ## A076286.P7605670196288200256

`A033044(A064896(n+1)+1)`
-/

namespace A076286.P7605670196288200256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A064896 (n + 1) + 1).toNat

end

end A076286.P7605670196288200256

/-! ## A076286.P9257252378644738855

`A033044(A014681(A064896(n+1)))`
-/

namespace A076286.P9257252378644738855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A014681 (A064896 (n + 1)).toNat).toNat

end

end A076286.P9257252378644738855

/-! ## A076286.P14309550371592152863

`A033044(eq[n, A302028(A093178(n))]+1)`
-/

namespace A076286.P14309550371592152863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302028 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076286.P14309550371592152863

/-! ## A076286.P17341644167499611767

`A033044(∩[A235264(n+1), A295235(n+1)]+1)`
-/

namespace A076286.P17341644167499611767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A076286.P17341644167499611767

/-! ## A076286.P4728460576068718457

`A033044(∩[A295235(n+1), A305409(n+1)]+1)`
-/

namespace A076286.P4728460576068718457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A076286.P4728460576068718457

/-!
# A076287: Numbers of the form (8^{mr}-1)/(8^r-1) for positive integers m, r.

The programs for A076287, there is no canonical definition to state claims against.
-/

/-! ## A076287.P16497983497822061055

`A033045(A064896(n+1))`
-/

namespace A076287.P16497983497822061055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A064896 (n + 1)).toNat

end

end A076287.P16497983497822061055

/-! ## A076287.P17433966035905850490

`A033045(eq[A124765(n), A178225(n)])`
-/

namespace A076287.P17433966035905850490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076287.P17433966035905850490

/-! ## A076287.P16853918155625001554

`A033045(eq[n, A302027(A093178(n))])`
-/

namespace A076287.P16853918155625001554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302027 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076287.P16853918155625001554

/-! ## A076287.P10687301540990167602

`A033045(eq[A257143(n), A302027(n)])`
-/

namespace A076287.P10687301540990167602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076287.P10687301540990167602

/-! ## A076287.P15126140948383214200

`A033045(∩[A235264(n+1), A295235(n+1)])`
-/

namespace A076287.P15126140948383214200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076287.P15126140948383214200

/-!
# A076288: Numbers of the form (9^{mr}-1)/(9^r-1) for positive integers m, r.

The programs for A076288, there is no canonical definition to state claims against.
-/

/-! ## A076288.P12802135485210806681

`A033046(A064896(n+1))`
-/

namespace A076288.P12802135485210806681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A064896 (n + 1)).toNat

end

end A076288.P12802135485210806681

/-! ## A076288.P16140736563050919514

`A033046(eq[A124765(n), A178225(n)])`
-/

namespace A076288.P16140736563050919514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076288.P16140736563050919514

/-! ## A076288.P10185211662634810342

`A033046(eq[n, A302027(A093178(n))])`
-/

namespace A076288.P10185211662634810342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302027 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076288.P10185211662634810342

/-! ## A076288.P16681873974352304819

`A033046(∩[A235264(n+1), A295235(n+1)])`
-/

namespace A076288.P16681873974352304819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076288.P16681873974352304819

/-! ## A076288.P4600507428625759563

`A033046(∩[A295235(n+1), A305409(n+1)])`
-/

namespace A076288.P4600507428625759563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076288.P4600507428625759563

/-!
# A076289: Numbers of the form (10^(m*r)-1)/(10^r-1) for positive integers m, r.

The programs for A076289, there is no canonical definition to state claims against.
-/

/-! ## A076289.P14336438175115918865

`A007088(A064896(n+1))`
-/

namespace A076289.P14336438175115918865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A064896 (n + 1)).toNat

end

end A076289.P14336438175115918865

/-! ## A076289.P9752293863535322448

`A007088(∩[A235264(n+1), A295235(n+1)])`
-/

namespace A076289.P9752293863535322448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076289.P9752293863535322448

/-! ## A076289.P9467450254206632133

`A007088(∩[A006995(n+1), A295235(n+2)])`
-/

namespace A076289.P9467450254206632133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076289.P9467450254206632133

/-! ## A076289.P2694583385430218727

`record[A215256(A114994(n))]`
-/

namespace A076289.P2694583385430218727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (A114994 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076289.P2694583385430218727

/-! ## A076289.P1883865727778183618

`record[A215256(A295235(n+1))]`
-/

namespace A076289.P1883865727778183618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (A295235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076289.P1883865727778183618

/-!
# A076290: Sum of the semiprime divisors of n.

The programs for A076290, the canonical program `A076290.P10407532045046765191` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076290 has offset 1).

The definition of A076290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076290.P10522932059125168412

`∑{d}[n+1, #*A064911(#)]`
-/

namespace A076290.P10522932059125168412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A064911 d

end

end A076290.P10522932059125168412

namespace A076290

/-- `∑{d}[n+1, #*A064911(#)]` -/
def P10522932059125168412.Spec : Prop :=
  ∀ n, P10522932059125168412.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P4745343120018791855

`A350337(n+1)-A008472(n+1)`
-/

namespace A076290.P4745343120018791855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350337 (n + 1) - A008472 (n + 1)

end

end A076290.P4745343120018791855

namespace A076290

/-- `A350337(n+1)-A008472(n+1)` -/
def P4745343120018791855.Spec : Prop :=
  ∀ n, P4745343120018791855.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P6563751095360704357

`A345315(n+1)-A262095(n+1)`
-/

namespace A076290.P6563751095360704357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345315 (n + 1) - A262095 (n + 1)

end

end A076290.P6563751095360704357

namespace A076290

/-- `A345315(n+1)-A262095(n+1)` -/
def P6563751095360704357.Spec : Prop :=
  ∀ n, P6563751095360704357.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P10616325884271097243

`∑{d}[n+1, #*A010051(A052126(#))]`
-/

namespace A076290.P10616325884271097243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010051 (A052126 d).toNat

end

end A076290.P10616325884271097243

namespace A076290

/-- `∑{d}[n+1, #*A010051(A052126(#))]` -/
def P10616325884271097243.Spec : Prop :=
  ∀ n, P10616325884271097243.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P16023589342814863096

`∑{d}[n+1, #*A101040(#)]-Δ[A024924(n)]`
-/

namespace A076290.P16023589342814863096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101040 d - (f2 (n + 1) - f2 n)

end

end A076290.P16023589342814863096

namespace A076290

/-- `∑{d}[n+1, #*A101040(#)]-Δ[A024924(n)]` -/
def P16023589342814863096.Spec : Prop :=
  ∀ n, P16023589342814863096.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P7173493404907662036

`∑{d}[n+1, #*A101040(#)]-A008472(n+1)`
-/

namespace A076290.P7173493404907662036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101040 d - A008472 (n + 1)

end

end A076290.P7173493404907662036

namespace A076290

/-- `∑{d}[n+1, #*A101040(#)]-A008472(n+1)` -/
def P7173493404907662036.Spec : Prop :=
  ∀ n, P7173493404907662036.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P2646805751952240837

`A163407(A007947(n+1))+A071327(n+1)`
-/

namespace A076290.P2646805751952240837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (A007947 (n + 1)).toNat + A071327 (n + 1)

end

end A076290.P2646805751952240837

namespace A076290

/-- `A163407(A007947(n+1))+A071327(n+1)` -/
def P2646805751952240837.Spec : Prop :=
  ∀ n, P2646805751952240837.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P12963017729746877270

`A086971(n+1)+A345315(n+1)-A000005(n+1)`
-/

namespace A076290.P12963017729746877270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) + (A345315 (n + 1) - A000005 (n + 1))

end

end A076290.P12963017729746877270

namespace A076290

/-- `A086971(n+1)+A345315(n+1)-A000005(n+1)` -/
def P12963017729746877270.Spec : Prop :=
  ∀ n, P12963017729746877270.a n = A076290 (n + 1)

end A076290

/-! ## A076290.P10407532045046765191

`∑{d}[n+1, #*A101605(2*#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076290

/-- `∑{d}[n+1, #*A101605(2*#)]` -/
def P10407532045046765191.Spec : Prop :=
  ∀ n, P10407532045046765191.a n = A076290 (n + 1)

theorem P10407532045046765191.correct : P10407532045046765191.Spec := by
  intro n
  simp only [A076290, Nat.add_sub_cancel]

end A076290

/-! ## A076290.P8506139777336864934

`∑{d}[n+1, #*A101637(#*#)]`
-/

namespace A076290.P8506139777336864934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101637 (d * d)

end

end A076290.P8506139777336864934

namespace A076290

/-- `∑{d}[n+1, #*A101637(#*#)]` -/
def P8506139777336864934.Spec : Prop :=
  ∀ n, P8506139777336864934.a n = A076290 (n + 1)

end A076290

/-!
# A076291: a(n) = A002977(n+1) - A002977(n).

The programs for A076291, there is no canonical definition to state claims against.
-/

/-! ## A076291.P13336623213732188547

`A002977(n+2)-A002977(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076291.P13336623213732188547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (n + 2) - A002977 (n + 1)

end

end A076291.P13336623213732188547

/-! ## A076291.P10538881699719860955

`Δ[A002977(n+1)]`
-/

namespace A076291.P10538881699719860955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P10538881699719860955

/-! ## A076291.P13606099711902262474

`Δ[A190807(n+2)]`
-/

namespace A076291.P13606099711902262474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P13606099711902262474

/-! ## A076291.P4862941544558036308

`Δ[A190811(n+2)/2]`
-/

namespace A076291.P4862941544558036308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190811 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P4862941544558036308

/-! ## A076291.P3915653774666625026

`A004524(Δ[A190811(n+2)]+1)`
-/

namespace A076291.P3915653774666625026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n + 1).toNat

end

end A076291.P3915653774666625026

/-! ## A076291.P12796343953292374483

`A255589(Δ[2*A190811(n+2)])`
-/

namespace A076291.P12796343953292374483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (f1 (n + 1) - f1 n).toNat

end

end A076291.P12796343953292374483

/-! ## A076291.P10266338442275665693

`A190807(n+3)-A190807(n+2)`
-/

namespace A076291.P10266338442275665693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 3) - A190807 (n + 2)

end

end A076291.P10266338442275665693

/-! ## A076291.P1552743757280844383

`Δ[A007448(a(n-1))]` with `a(0)=1`
-/

namespace A076291.P1552743757280844383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007448 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P1552743757280844383

/-! ## A076291.P4752610295081906681

`Δ[record[A007448(n)%A007429(n+5)]]`
-/

namespace A076291.P4752610295081906681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007448 n) (A007429 (n + 5))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P4752610295081906681

/-! ## A076291.P9744814408585709535

`Δ[eq[1, A007448(n)-n]]`
-/

namespace A076291.P9744814408585709535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076291.P9744814408585709535

/-! ## A076291.P16223093041901967585

`Δ[A007448(eq[1, A132138(n+1)])]`
-/

namespace A076291.P16223093041901967585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P16223093041901967585

/-! ## A076291.P11851515072908142112

`Δ[record[(n+1)*A132138(n+1)]]%A190859(n+3)`
-/

namespace A076291.P11851515072908142112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A132138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A190859 (n + 3))

end

end A076291.P11851515072908142112

/-! ## A076291.P424144454288169410

`Δ[A004524(A190811(n+2))]`
-/

namespace A076291.P424144454288169410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190811 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076291.P424144454288169410

/-!
# A076292: Perfect powers with squarefree root.

The programs for A076292, there is no canonical definition to state claims against.
-/

/-! ## A076292.P14030973376872746566

`∪[A072777(n+1), A016758(n)]`
-/

namespace A076292.P14030973376872746566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P14030973376872746566

/-! ## A076292.P14040586900152546832

`∪[A072777(n+1), A016759(n)]`
-/

namespace A076292.P14040586900152546832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P14040586900152546832

/-! ## A076292.P14920959631748565293

`∪[A072777(n+1), A016760(n)]`
-/

namespace A076292.P14920959631748565293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P14920959631748565293

/-! ## A076292.P18327203243340879099

`∪[A072777(n+1), A016782(n)]`
-/

namespace A076292.P18327203243340879099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P18327203243340879099

/-! ## A076292.P13884355746740198207

`∪[A072777(n+1), A016783(n)]`
-/

namespace A076292.P13884355746740198207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P13884355746740198207

/-! ## A076292.P2168146422984954731

`∪[A072777(n+1), A016924(n)]`
-/

namespace A076292.P2168146422984954731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P2168146422984954731

/-! ## A076292.P785760634533468692

`∪[A072777(n+1), A017080(n)]`
-/

namespace A076292.P785760634533468692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P785760634533468692

/-! ## A076292.P8013781739104767202

`∪[A067126(n+1)², A072777(n+1)]`
-/

namespace A076292.P8013781739104767202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P8013781739104767202

/-! ## A076292.P9004839776442816829

`gcd(A130706(n)², A072777(A028310(n)))`
-/

namespace A076292.P9004839776442816829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n ^ 2) (A072777 (A028310 n).toNat)

end

end A076292.P9004839776442816829

/-! ## A076292.P2779196568283418577

`A072777(A028310(n))^A001221(A181062(n+1)+1)`
-/

namespace A076292.P2779196568283418577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072777 (A028310 n).toNat : ℚ) ^ (A001221 (A181062 (n + 1) + 1).toNat : ℤ)

end

end A076292.P2779196568283418577

/-! ## A076292.P11963676440081479679

`A072777(A028310(n))^A001221(A008578(n+1))`
-/

namespace A076292.P11963676440081479679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072777 (A028310 n).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A076292.P11963676440081479679

/-! ## A076292.P8526574330678255089

`A072777(A028310(n))%A194279(n+1)`
-/

namespace A076292.P8526574330678255089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072777 (A028310 n).toNat) (A194279 (n + 1))

end

end A076292.P8526574330678255089

/-! ## A076292.P5171590156930295985

`A072777(A028310(n))^A129982(A104794(2*n))`
-/

namespace A076292.P5171590156930295985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072777 (A028310 n).toNat : ℚ) ^ (A129982 (A104794 (2 * n)).toNat : ℤ)

end

end A076292.P5171590156930295985

/-! ## A076292.P18181831748199419248

`A072777(A028310(n))^A129982(A104794(n)²)`
-/

namespace A076292.P18181831748199419248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072777 (A028310 n).toNat : ℚ) ^ (A129982 (A104794 n ^ 2).toNat : ℤ)

end

end A076292.P18181831748199419248

/-! ## A076292.P4773871062102830830

`record[A354090(n+1)²/A354090(A354090(n+1))]`
-/

namespace A076292.P4773871062102830830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354090 (n + 1) ^ 2 : ℚ) / (A354090 (A354090 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076292.P4773871062102830830

/-! ## A076292.P15254885159491603956

`A072777(C(3, 4^n)+n)%A072777(n+1)`
-/

namespace A076292.P15254885159491603956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072777 (Nat.choose 3 (4 ^ n) + n)) (A072777 (n + 1))

end

end A076292.P15254885159491603956

/-! ## A076292.P5474201314823868946

`A072777(A028310(n))%A001576(n)`
-/

namespace A076292.P5474201314823868946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072777 (A028310 n).toNat) (A001576 n)

end

end A076292.P5474201314823868946

/-! ## A076292.P15974245723504974231

`∩[A001597(n+1), A072774(n+1)]`
-/

namespace A076292.P15974245723504974231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P15974245723504974231

/-! ## A076292.P14704566295837512185

`∩[A001694(n+1), A072774(n+1)]`
-/

namespace A076292.P14704566295837512185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076292.P14704566295837512185

/-!
# A076293: Numbers k where the root mean square (RMS) of k and 7 is an integer, i.e., sqrt((k^2 + 7^2)/2) is an integer.

The programs for A076293, the canonical program `A076293.P18257046204921308333` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076293 has offset 0).

The definition of A076293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076293.P18257046204921308333

`6*a(n-3)-a(n-6)` with `a(0)=1, a(1)=7, a(2)=17, a(3)=23, a(4)=49, a(5)=103`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076293

/-- `6*a(n-3)-a(n-6)` -/
def P18257046204921308333.Spec : Prop :=
  ∀ n, P18257046204921308333.a n = A076293 n

theorem P18257046204921308333.correct : P18257046204921308333.Spec := by
  intro n
  simp only [A076293]

end A076293

/-! ## A076293.P17987293800012003797

`A076295(n)+A076296(n)`
-/

namespace A076293.P17987293800012003797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076295 n + A076296 n

end

end A076293.P17987293800012003797

namespace A076293

/-- `A076295(n)+A076296(n)` -/
def P17987293800012003797.Spec : Prop :=
  ∀ n, P17987293800012003797.a n = A076293 n

end A076293

/-! ## A076293.P5707054007091826632

`sqrt(2*A076294(n)²-49)`
-/

namespace A076293.P5707054007091826632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A076294 n ^ 2 - 49 : ℝ)

end

end A076293.P5707054007091826632

namespace A076293

/-- `sqrt(2*A076294(n)²-49)` -/
def P5707054007091826632.Spec : Prop :=
  ∀ n, P5707054007091826632.a n = (A076293 n : ℝ)

end A076293

/-! ## A076293.P16097737407994225209

`A106526(n+2)-A076294(n)`
-/

namespace A076293.P16097737407994225209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106526 (n + 2) - A076294 n

end

end A076293.P16097737407994225209

namespace A076293

/-- `A106526(n+2)-A076294(n)` -/
def P16097737407994225209.Spec : Prop :=
  ∀ n, P16097737407994225209.a n = A076293 n

end A076293

/-! ## A076293.P13752242785558085031

`A317336(A000118(n))+2*A076295(n)`
-/

namespace A076293.P13752242785558085031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A000118 n).toNat + 2 * A076295 n

end

end A076293.P13752242785558085031

namespace A076293

/-- `A317336(A000118(n))+2*A076295(n)` -/
def P13752242785558085031.Spec : Prop :=
  ∀ n, P13752242785558085031.a n = A076293 n

end A076293

/-! ## A076293.P13199392138662141332

`A317336(A008574(n))+2*A076295(n)`
-/

namespace A076293.P13199392138662141332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A008574 n).toNat + 2 * A076295 n

end

end A076293.P13199392138662141332

namespace A076293

/-- `A317336(A008574(n))+2*A076295(n)` -/
def P13199392138662141332.Spec : Prop :=
  ∀ n, P13199392138662141332.a n = A076293 n

end A076293

/-! ## A076293.P11672878244016164047

`A317336(A046109(n))+2*A076295(n)`
-/

namespace A076293.P11672878244016164047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A046109 n).toNat + 2 * A076295 n

end

end A076293.P11672878244016164047

namespace A076293

/-- `A317336(A046109(n))+2*A076295(n)` -/
def P11672878244016164047.Spec : Prop :=
  ∀ n, P11672878244016164047.a n = A076293 n

end A076293

/-! ## A076293.P13015811844853297273

`A317336(A059558(n+1))+2*A076295(n)`
-/

namespace A076293.P13015811844853297273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A059558 (n + 1)).toNat + 2 * A076295 n

end

end A076293.P13015811844853297273

namespace A076293

/-- `A317336(A059558(n+1))+2*A076295(n)` -/
def P13015811844853297273.Spec : Prop :=
  ∀ n, P13015811844853297273.a n = A076293 n

end A076293

/-! ## A076293.P8559160763591507828

`2*A106526(n+2)-A106525(n+2)`
-/

namespace A076293.P8559160763591507828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106526 (n + 2) - A106525 (n + 2)

end

end A076293.P8559160763591507828

namespace A076293

/-- `2*A106526(n+2)-A106525(n+2)` -/
def P8559160763591507828.Spec : Prop :=
  ∀ n, P8559160763591507828.a n = A076293 n

end A076293

/-!
# A076294: Consider all Pythagorean triples (X,X+7,Z); sequence gives Z values.

The programs for A076294, the canonical program `A076294.P5106934118800415370` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076294 has offset 0).

The definition of A076294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076294.P5106934118800415370

`6*a(n-3)-a(n-6)` with `a(0)=5, a(1)=7, a(2)=13, a(3)=17, a(4)=35, a(5)=73`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076294

/-- `6*a(n-3)-a(n-6)` -/
def P5106934118800415370.Spec : Prop :=
  ∀ n, P5106934118800415370.a n = A076294 n

theorem P5106934118800415370.correct : P5106934118800415370.Spec := by
  intro n
  simp only [A076294]

end A076294

/-! ## A076294.P14913455630004085195

`sqrt((A076293(n)²+49)/2)`
-/

namespace A076294.P14913455630004085195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A076293 n ^ 2 + 49 : ℚ) / 2 : ℝ)

end

end A076294.P14913455630004085195

namespace A076294

/-- `sqrt((A076293(n)²+49)/2)` -/
def P14913455630004085195.Spec : Prop :=
  ∀ n, P14913455630004085195.a n = (A076294 n : ℝ)

end A076294

/-! ## A076294.P14029105656711349571

`sqrt(A076295(n)²+A076296(n)²)`
-/

namespace A076294.P14029105656711349571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076295 n ^ 2 + A076296 n ^ 2 : ℝ)

end

end A076294.P14029105656711349571

namespace A076294

/-- `sqrt(A076295(n)²+A076296(n)²)` -/
def P14029105656711349571.Spec : Prop :=
  ∀ n, P14029105656711349571.a n = (A076294 n : ℝ)

end A076294

/-! ## A076294.P6072823290729064504

`A106526(n+2)-A076293(n)`
-/

namespace A076294.P6072823290729064504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106526 (n + 2) - A076293 n

end

end A076294.P6072823290729064504

namespace A076294

/-- `A106526(n+2)-A076293(n)` -/
def P6072823290729064504.Spec : Prop :=
  ∀ n, P6072823290729064504.a n = A076294 n

end A076294

/-! ## A076294.P509196628400133092

`A106525(n+2)-A106526(n+2)`
-/

namespace A076294.P509196628400133092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106525 (n + 2) - A106526 (n + 2)

end

end A076294.P509196628400133092

namespace A076294

/-- `A106525(n+2)-A106526(n+2)` -/
def P509196628400133092.Spec : Prop :=
  ∀ n, P509196628400133092.a n = A076294 n

end A076294

/-! ## A076294.P7618857354531318786

`record[gcd(A156650(n+1), A157247(n+1))]`
-/

namespace A076294.P7618857354531318786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156650 (n + 1)) (A157247 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076294.P7618857354531318786

namespace A076294

/-- `record[gcd(A156650(n+1), A157247(n+1))]` -/
def P7618857354531318786.Spec : Prop :=
  ∀ n, (P7618857354531318786.a n : ℤ) = A076294 n

end A076294

/-!
# A076295: Consider all Pythagorean triples (Y-7,Y,Z); sequence gives Y values.

The programs for A076295, the canonical program `A076295.P11606915202443750616` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076295 has offset 0).

The definition of A076295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076295.P11606915202443750616

`6*a(n-3)-a(n-6)-14` with `a(0)=4, a(1)=7, a(2)=12, a(3)=15, a(4)=28, a(5)=55`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076295

/-- `6*a(n-3)-a(n-6)-14` -/
def P11606915202443750616.Spec : Prop :=
  ∀ n, P11606915202443750616.a n = A076295 n

theorem P11606915202443750616.correct : P11606915202443750616.Spec := by
  intro n
  simp only [A076295]

end A076295

/-! ## A076295.P7619763739731164884

`A076296(n)+7`
-/

namespace A076295.P7619763739731164884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 n + 7

end

end A076295.P7619763739731164884

namespace A076295

/-- `A076296(n)+7` -/
def P7619763739731164884.Spec : Prop :=
  ∀ n, P7619763739731164884.a n = A076295 n

end A076295

/-! ## A076295.P862277745548777695

`(A076293(n)+7)/2`
-/

namespace A076295.P862277745548777695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076293 n + 7 : ℚ) / 2

end

end A076295.P862277745548777695

namespace A076295

/-- `(A076293(n)+7)/2` -/
def P862277745548777695.Spec : Prop :=
  ∀ n, P862277745548777695.a n = (A076295 n : ℚ)

end A076295

/-! ## A076295.P10565011605337164165

`sqrt(A076294(n)²-A076296(n)²)`
-/

namespace A076295.P10565011605337164165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076294 n ^ 2 - A076296 n ^ 2 : ℝ)

end

end A076295.P10565011605337164165

namespace A076295

/-- `sqrt(A076294(n)²-A076296(n)²)` -/
def P10565011605337164165.Spec : Prop :=
  ∀ n, P10565011605337164165.a n = (A076295 n : ℝ)

end A076295

/-! ## A076295.P8961099816664229267

`A076293(n)-A076296(n)`
-/

namespace A076295.P8961099816664229267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076293 n - A076296 n

end

end A076295.P8961099816664229267

namespace A076295

/-- `A076293(n)-A076296(n)` -/
def P8961099816664229267.Spec : Prop :=
  ∀ n, P8961099816664229267.a n = A076295 n

end A076295

/-! ## A076295.P1520333230800441957

`(A076293(n)-7)/2-A317336(A000118(n))`
-/

namespace A076295.P1520333230800441957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076293 n - 7 : ℚ) / 2 - (A317336 (A000118 n).toNat : ℚ)

end

end A076295.P1520333230800441957

namespace A076295

/-- `(A076293(n)-7)/2-A317336(A000118(n))` -/
def P1520333230800441957.Spec : Prop :=
  ∀ n, P1520333230800441957.a n = (A076295 n : ℚ)

end A076295

/-! ## A076295.P15334053150882863200

`(A076293(n)-7)/2-A317336(A008574(n))`
-/

namespace A076295.P15334053150882863200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076293 n - 7 : ℚ) / 2 - (A317336 (A008574 n).toNat : ℚ)

end

end A076295.P15334053150882863200

namespace A076295

/-- `(A076293(n)-7)/2-A317336(A008574(n))` -/
def P15334053150882863200.Spec : Prop :=
  ∀ n, P15334053150882863200.a n = (A076295 n : ℚ)

end A076295

/-!
# A076296: Consider all Pythagorean triples (X,X+7,Z); sequence gives X values.

The programs for A076296, the canonical program `A076296.P3503697303577703091` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076296 has offset 0).

The definition of A076296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076296.P3503697303577703091

`6*a(n-3)-a(n-6)+14` with `a(0)=-3, a(1)=0, a(2)=5, a(3)=8, a(4)=21, a(5)=48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076296

/-- `6*a(n-3)-a(n-6)+14` -/
def P3503697303577703091.Spec : Prop :=
  ∀ n, P3503697303577703091.a n = A076296 n

theorem P3503697303577703091.correct : P3503697303577703091.Spec := by
  intro n
  simp only [A076296]

end A076296

/-! ## A076296.P17390750180220270787

`A076295(n)-7`
-/

namespace A076296.P17390750180220270787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076295 n - 7

end

end A076296.P17390750180220270787

namespace A076296

/-- `A076295(n)-7` -/
def P17390750180220270787.Spec : Prop :=
  ∀ n, P17390750180220270787.a n = A076296 n

end A076296

/-! ## A076296.P12307237279067261907

`(A076293(n)-7)/2`
-/

namespace A076296.P12307237279067261907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076293 n - 7 : ℚ) / 2

end

end A076296.P12307237279067261907

namespace A076296

/-- `(A076293(n)-7)/2` -/
def P12307237279067261907.Spec : Prop :=
  ∀ n, P12307237279067261907.a n = (A076296 n : ℚ)

end A076296

/-! ## A076296.P16422707938953065413

`A317336(A000118(n))+A076295(n)`
-/

namespace A076296.P16422707938953065413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A000118 n).toNat + A076295 n

end

end A076296.P16422707938953065413

namespace A076296

/-- `A317336(A000118(n))+A076295(n)` -/
def P16422707938953065413.Spec : Prop :=
  ∀ n, P16422707938953065413.a n = A076296 n

end A076296

/-! ## A076296.P16164749916880968509

`A317336(A008574(n))+A076295(n)`
-/

namespace A076296.P16164749916880968509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A008574 n).toNat + A076295 n

end

end A076296.P16164749916880968509

namespace A076296

/-- `A317336(A008574(n))+A076295(n)` -/
def P16164749916880968509.Spec : Prop :=
  ∀ n, P16164749916880968509.a n = A076296 n

end A076296

/-! ## A076296.P708833762056865456

`A317336(A046109(n))+A076295(n)`
-/

namespace A076296.P708833762056865456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A046109 n).toNat + A076295 n

end

end A076296.P708833762056865456

namespace A076296

/-- `A317336(A046109(n))+A076295(n)` -/
def P708833762056865456.Spec : Prop :=
  ∀ n, P708833762056865456.a n = A076296 n

end A076296

/-! ## A076296.P5741887653556444720

`A317336(A059558(n+1))+A076295(n)`
-/

namespace A076296.P5741887653556444720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A059558 (n + 1)).toNat + A076295 n

end

end A076296.P5741887653556444720

namespace A076296

/-- `A317336(A059558(n+1))+A076295(n)` -/
def P5741887653556444720.Spec : Prop :=
  ∀ n, P5741887653556444720.a n = A076296 n

end A076296

/-! ## A076296.P5942500898043106043

`(A317336(A000118(n))+A076293(n))/2`
-/

namespace A076296.P5942500898043106043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317336 (A000118 n).toNat + A076293 n : ℚ) / 2

end

end A076296.P5942500898043106043

namespace A076296

/-- `(A317336(A000118(n))+A076293(n))/2` -/
def P5942500898043106043.Spec : Prop :=
  ∀ n, P5942500898043106043.a n = (A076296 n : ℚ)

end A076296

/-! ## A076296.P7778726619656316396

`(A317336(A008574(n))+A076293(n))/2`
-/

namespace A076296.P7778726619656316396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317336 (A008574 n).toNat + A076293 n : ℚ) / 2

end

end A076296.P7778726619656316396

namespace A076296

/-- `(A317336(A008574(n))+A076293(n))/2` -/
def P7778726619656316396.Spec : Prop :=
  ∀ n, P7778726619656316396.a n = (A076296 n : ℚ)

end A076296

/-!
# A076297: Numbers k such that prime(k) + s*k is prime, s=2.

The programs for A076297, the canonical program `A076297.P14984951635295313956` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076297 has offset 1).

The definition of A076297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076297.P14779754698367834330

`A000720(A231232(n+1))`
-/

namespace A076297.P14779754698367834330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231232 (n + 1)).toNat

end

end A076297.P14779754698367834330

namespace A076297

/-- `A000720(A231232(n+1))` -/
def P14779754698367834330.Spec : Prop :=
  ∀ n, P14779754698367834330.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P14984951635295313956

`eq[1, A001222(A008578(n+1)+2*n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A076297

/-- `eq[1, A001222(A008578(n+1)+2*n)]` -/
def P14984951635295313956.Spec : Prop :=
  ∀ n, (P14984951635295313956.a n : ℤ) = A076297 (n + 1)

theorem P14984951635295313956.correct : P14984951635295313956.Spec := by
  intro n
  simp only [A076297, Nat.add_sub_cancel]

end A076297

/-! ## A076297.P9498898829009849423

`eq[1, A001222(record[A006530(n+1)]+2*n)]`
-/

namespace A076297.P9498898829009849423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076297.P9498898829009849423

namespace A076297

/-- `eq[1, A001222(record[A006530(n+1)]+2*n)]` -/
def P9498898829009849423.Spec : Prop :=
  ∀ n, (P9498898829009849423.a n : ℤ) = A076297 (n + 1)

end A076297

/-! ## A076297.P10898945422308002700

`lt[A001222(A000040(n+1)+2*(n+1)), 2]+1`
-/

namespace A076297.P10898945422308002700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076297.P10898945422308002700

namespace A076297

/-- `lt[A001222(A000040(n+1)+2*(n+1)), 2]+1` -/
def P10898945422308002700.Spec : Prop :=
  ∀ n, (P10898945422308002700.a n : ℤ) = A076297 (n + 1)

end A076297

/-! ## A076297.P3189050178091967030

`lt[A001222(A008864(n+1)+2*n+1), 2]+1`
-/

namespace A076297.P3189050178091967030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1) + (2 * n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076297.P3189050178091967030

namespace A076297

/-- `lt[A001222(A008864(n+1)+2*n+1), 2]+1` -/
def P3189050178091967030.Spec : Prop :=
  ∀ n, (P3189050178091967030.a n : ℤ) = A076297 (n + 1)

end A076297

/-! ## A076297.P9429839603448793583

`lt[A000005(A000040(n+1)+2*(n+1)), 3]+1`
-/

namespace A076297.P9429839603448793583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076297.P9429839603448793583

namespace A076297

/-- `lt[A000005(A000040(n+1)+2*(n+1)), 3]+1` -/
def P9429839603448793583.Spec : Prop :=
  ∀ n, (P9429839603448793583.a n : ℤ) = A076297 (n + 1)

end A076297

/-! ## A076297.P15525331902447641023

`eq[2, A000005(A008578(n+1)+A005843(n))]`
-/

namespace A076297.P15525331902447641023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1) + A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076297.P15525331902447641023

namespace A076297

/-- `eq[2, A000005(A008578(n+1)+A005843(n))]` -/
def P15525331902447641023.Spec : Prop :=
  ∀ n, (P15525331902447641023.a n : ℤ) = A076297 (n + 1)

end A076297

/-! ## A076297.P8613684799863239768

`A058933(p?[A231232(n+1)])`
-/

namespace A076297.P8613684799863239768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076297.P8613684799863239768

namespace A076297

/-- `A058933(p?[A231232(n+1)])` -/
def P8613684799863239768.Spec : Prop :=
  ∀ n, P8613684799863239768.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P10929856637385912240

`A058933(2*A231232(n+1)-A231232(n+1))`
-/

namespace A076297.P10929856637385912240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A231232 (n + 1) - A231232 (n + 1)).toNat

end

end A076297.P10929856637385912240

namespace A076297

/-- `A058933(2*A231232(n+1)-A231232(n+1))` -/
def P10929856637385912240.Spec : Prop :=
  ∀ n, P10929856637385912240.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P11034835557576383471

`A049084(p?[A231232(n+1)])`
-/

namespace A076297.P11034835557576383471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076297.P11034835557576383471

namespace A076297

/-- `A049084(p?[A231232(n+1)])` -/
def P11034835557576383471.Spec : Prop :=
  ∀ n, P11034835557576383471.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P3652936460684070758

`∑{d}[A231232(n+1), A049084(#)]`
-/

namespace A076297.P3652936460684070758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A076297.P3652936460684070758

namespace A076297

/-- `∑{d}[A231232(n+1), A049084(#)]` -/
def P3652936460684070758.Spec : Prop :=
  ∀ n, P3652936460684070758.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P16974346080212902130

`∑{d}[A231232(n+1), A056239(#)]`
-/

namespace A076297.P16974346080212902130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A076297.P16974346080212902130

namespace A076297

/-- `∑{d}[A231232(n+1), A056239(#)]` -/
def P16974346080212902130.Spec : Prop :=
  ∀ n, P16974346080212902130.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P5046610440735495233

`record[(n+2)%A014963(A078916(n+2))]`
-/

namespace A076297.P5046610440735495233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (A078916 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076297.P5046610440735495233

namespace A076297

/-- `record[(n+2)%A014963(A078916(n+2))]` -/
def P5046610440735495233.Spec : Prop :=
  ∀ n, P5046610440735495233.a n = A076297 (n + 1)

end A076297

/-! ## A076297.P17320644595596636938

`lt[n+1, A014963(record[A014963(n+1)]+2*n)]`
-/

namespace A076297.P17320644595596636938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076297.P17320644595596636938

namespace A076297

/-- `lt[n+1, A014963(record[A014963(n+1)]+2*n)]` -/
def P17320644595596636938.Spec : Prop :=
  ∀ n, (P17320644595596636938.a n : ℤ) = A076297 (n + 1)

end A076297

/-!
# A076298: Numbers k such that prime(k) + s*k is prime, s=3.

The programs for A076298, the canonical program `A076298.P17034386488694455198` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076298 has offset 1).

The definition of A076298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076298.P4573970513377588262

`A000720(A231383(n+1))`
-/

namespace A076298.P4573970513377588262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231383 (n + 1)).toNat

end

end A076298.P4573970513377588262

namespace A076298

/-- `A000720(A231383(n+1))` -/
def P4573970513377588262.Spec : Prop :=
  ∀ n, P4573970513377588262.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P4965044560023483948

`A061395(p?[A231383(n+1)])`
-/

namespace A076298.P4965044560023483948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076298.P4965044560023483948

namespace A076298

/-- `A061395(p?[A231383(n+1)])` -/
def P4965044560023483948.Spec : Prop :=
  ∀ n, P4965044560023483948.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P10784863167992728435

`A061395(∑{p}[A231383(n+1), #])`
-/

namespace A076298.P10784863167992728435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076298.P10784863167992728435

namespace A076298

/-- `A061395(∑{p}[A231383(n+1), #])` -/
def P10784863167992728435.Spec : Prop :=
  ∀ n, P10784863167992728435.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P6240235720126176032

`A061395(A231383(n+1)%A016936(n))`
-/

namespace A076298.P6240235720126176032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A231383 (n + 1)) (A016936 n)).toNat

end

end A076298.P6240235720126176032

namespace A076298

/-- `A061395(A231383(n+1)%A016936(n))` -/
def P6240235720126176032.Spec : Prop :=
  ∀ n, P6240235720126176032.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P17465858970100494397

`A061395(A231383(n+1))%A027688(n)`
-/

namespace A076298.P17465858970100494397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A231383 (n + 1)).toNat) (A027688 n)

end

end A076298.P17465858970100494397

namespace A076298

/-- `A061395(A231383(n+1))%A027688(n)` -/
def P17465858970100494397.Spec : Prop :=
  ∀ n, P17465858970100494397.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P17034386488694455198

`lt[A001222(A040976(n+1)+3*n+5), 2]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A076298

/-- `lt[A001222(A040976(n+1)+3*n+5), 2]+1` -/
def P17034386488694455198.Spec : Prop :=
  ∀ n, (P17034386488694455198.a n : ℤ) = A076298 (n + 1)

theorem P17034386488694455198.correct : P17034386488694455198.Spec := by
  intro n
  simp only [A076298, Nat.add_sub_cancel]

end A076298

/-! ## A076298.P14152780237749525719

`A297109(p?[A231383(n+1)])`
-/

namespace A076298.P14152780237749525719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076298.P14152780237749525719

namespace A076298

/-- `A297109(p?[A231383(n+1)])` -/
def P14152780237749525719.Spec : Prop :=
  ∀ n, P14152780237749525719.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P15102649154916759040

`∑{d}[A231383(n+1), A297109(#)]`
-/

namespace A076298.P15102649154916759040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A076298.P15102649154916759040

namespace A076298

/-- `∑{d}[A231383(n+1), A297109(#)]` -/
def P15102649154916759040.Spec : Prop :=
  ∀ n, P15102649154916759040.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P12851272691373317195

`A297109(∏{p}[A231383(n+1), #])`
-/

namespace A076298.P12851272691373317195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076298.P12851272691373317195

namespace A076298

/-- `A297109(∏{p}[A231383(n+1), #])` -/
def P12851272691373317195.Spec : Prop :=
  ∀ n, P12851272691373317195.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P3052248642528504414

`A297109(2*A231383(n+1)-A231383(n+1))`
-/

namespace A076298.P3052248642528504414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (2 * A231383 (n + 1) - A231383 (n + 1)).toNat

end

end A076298.P3052248642528504414

namespace A076298

/-- `A297109(2*A231383(n+1)-A231383(n+1))` -/
def P3052248642528504414.Spec : Prop :=
  ∀ n, P3052248642528504414.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P2302548135502170683

`A061395(2*A231383(n+1))`
-/

namespace A076298.P2302548135502170683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A231383 (n + 1)).toNat

end

end A076298.P2302548135502170683

namespace A076298

/-- `A061395(2*A231383(n+1))` -/
def P2302548135502170683.Spec : Prop :=
  ∀ n, P2302548135502170683.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P7826890847693647898

`A061395(lcm(2, A231383(n+1)))`
-/

namespace A076298.P7826890847693647898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A231383 (n + 1)))

end

end A076298.P7826890847693647898

namespace A076298

/-- `A061395(lcm(2, A231383(n+1)))` -/
def P7826890847693647898.Spec : Prop :=
  ∀ n, P7826890847693647898.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P5494570441807083039

`A131742(A002144(n+1))+A061395(A231383(n+1))`
-/

namespace A076298.P5494570441807083039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 (A002144 (n + 1)).toNat + A061395 (A231383 (n + 1)).toNat

end

end A076298.P5494570441807083039

namespace A076298

/-- `A131742(A002144(n+1))+A061395(A231383(n+1))` -/
def P5494570441807083039.Spec : Prop :=
  ∀ n, P5494570441807083039.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P5474962944058855627

`A289508(p?[A231383(n+1)])`
-/

namespace A076298.P5474962944058855627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076298.P5474962944058855627

namespace A076298

/-- `A289508(p?[A231383(n+1)])` -/
def P5474962944058855627.Spec : Prop :=
  ∀ n, P5474962944058855627.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P13456782436940091814

`A289508(2*A231383(n+1)-A231383(n+1))`
-/

namespace A076298.P13456782436940091814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (2 * A231383 (n + 1) - A231383 (n + 1)).toNat

end

end A076298.P13456782436940091814

namespace A076298

/-- `A289508(2*A231383(n+1)-A231383(n+1))` -/
def P13456782436940091814.Spec : Prop :=
  ∀ n, P13456782436940091814.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P12194630866863785925

`A003963(p?[A231383(n+1)])`
-/

namespace A076298.P12194630866863785925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076298.P12194630866863785925

namespace A076298

/-- `A003963(p?[A231383(n+1)])` -/
def P12194630866863785925.Spec : Prop :=
  ∀ n, P12194630866863785925.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P8047127853479933544

`A049084(p?[A231383(n+1)])`
-/

namespace A076298.P8047127853479933544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076298.P8047127853479933544

namespace A076298

/-- `A049084(p?[A231383(n+1)])` -/
def P8047127853479933544.Spec : Prop :=
  ∀ n, P8047127853479933544.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P4643948274587887859

`A003963(∑{p}[A231383(n+1), #])`
-/

namespace A076298.P4643948274587887859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076298.P4643948274587887859

namespace A076298

/-- `A003963(∑{p}[A231383(n+1), #])` -/
def P4643948274587887859.Spec : Prop :=
  ∀ n, P4643948274587887859.a n = A076298 (n + 1)

end A076298

/-! ## A076298.P5846547466922174431

`A003963(∏{p}[A231383(n+1), #])`
-/

namespace A076298.P5846547466922174431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076298.P5846547466922174431

namespace A076298

/-- `A003963(∏{p}[A231383(n+1), #])` -/
def P5846547466922174431.Spec : Prop :=
  ∀ n, P5846547466922174431.a n = A076298 (n + 1)

end A076298

/-!
# A076299: Numbers k such that prime(k) + s*k is prime, s=4.

The programs for A076299, there is no canonical definition to state claims against.
-/

/-! ## A076299.P2478189896554923772

`A000720(A254673(n+1))`
-/

namespace A076299.P2478189896554923772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A254673 (n + 1)).toNat

end

end A076299.P2478189896554923772

/-! ## A076299.P3958066454114454137

`A003963(p?[A254673(n+1)])`
-/

namespace A076299.P3958066454114454137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076299.P3958066454114454137

/-! ## A076299.P3849055544385550763

`A026233(p?[A254673(n+1)])`
-/

namespace A076299.P3849055544385550763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076299.P3849055544385550763

/-! ## A076299.P7109076668249725740

`A049084(p?[A254673(n+1)])`
-/

namespace A076299.P7109076668249725740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076299.P7109076668249725740

/-! ## A076299.P3359205452817965915

`A056239(p?[A254673(n+1)])`
-/

namespace A076299.P3359205452817965915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076299.P3359205452817965915

/-! ## A076299.P4715685362063738568

`A064839(p?[A254673(n+1)])`
-/

namespace A076299.P4715685362063738568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076299.P4715685362063738568

/-! ## A076299.P4774487815657514215

`∑{d}[A254673(n+1), A056239(#)]`
-/

namespace A076299.P4774487815657514215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A076299.P4774487815657514215

/-! ## A076299.P3556112047052884801

`A003963(∑{p}[A254673(n+1), #])`
-/

namespace A076299.P3556112047052884801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076299.P3556112047052884801

/-! ## A076299.P6797152112816974243

`A003963(A254673(n+1))%A097803(n)`
-/

namespace A076299.P6797152112816974243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A254673 (n + 1)).toNat) (A097803 n)

end

end A076299.P6797152112816974243

/-! ## A076299.P10234947614448659870

`A003963(A254673(n+1)%A002046(n+1))`
-/

namespace A076299.P10234947614448659870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A254673 (n + 1)) (A002046 (n + 1))).toNat

end

end A076299.P10234947614448659870

/-! ## A076299.P1923322002832816009

`A254673(n+1)-A026233(A254673(n+1)-1)`
-/

namespace A076299.P1923322002832816009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254673 (n + 1) - A026233 (A254673 (n + 1) - 1).toNat

end

end A076299.P1923322002832816009

/-! ## A076299.P779064658589603184

`A049084(2*A254673(n+1)-A254673(n+1))`
-/

namespace A076299.P779064658589603184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A254673 (n + 1) - A254673 (n + 1)).toNat

end

end A076299.P779064658589603184

/-! ## A076299.P7932885988955381399

`A056239(2*A254673(n+1)-A254673(n+1))`
-/

namespace A076299.P7932885988955381399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A254673 (n + 1) - A254673 (n + 1)).toNat

end

end A076299.P7932885988955381399

/-! ## A076299.P9151160263696651165

`A064839(2*A254673(n+1)-A254673(n+1))`
-/

namespace A076299.P9151160263696651165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (2 * A254673 (n + 1) - A254673 (n + 1)).toNat

end

end A076299.P9151160263696651165

/-! ## A076299.P11656600268874429159

`A003963(2*A254673(n+1))`
-/

namespace A076299.P11656600268874429159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A254673 (n + 1)).toNat

end

end A076299.P11656600268874429159

/-! ## A076299.P14039489418136812502

`A003963(lcm(2, A254673(n+1)))`
-/

namespace A076299.P14039489418136812502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A254673 (n + 1)))

end

end A076299.P14039489418136812502

/-! ## A076299.P10128968057820230396

`A056239(2*A254673(n+1))-1`
-/

namespace A076299.P10128968057820230396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A254673 (n + 1)).toNat - 1

end

end A076299.P10128968057820230396

