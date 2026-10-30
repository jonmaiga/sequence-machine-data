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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199007: Related to number of cocyclic Hadamard matrices of order 4n.

The programs for A199007, there is no canonical definition to state claims against.
-/

/-! ## A199007.P8466211791767586736

`A199006(∑[A034839(n)])`
-/

namespace A199007.P8466211791767586736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199007.P8466211791767586736

/-!
# A199008: Number of cocyclic matrices D_{2n+2} of order 2n+2 with maximal determinant.

The programs for A199008, there is no canonical definition to state claims against.
-/

/-! ## A199008.P12508956552340819301

`A060681(A006002(2*(n+1)))*A194956(n+1)`
-/

namespace A199008.P12508956552340819301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A006002 (2 * (n + 1))).toNat * A194956 (n + 1)

end

end A199008.P12508956552340819301

/-!
# A199009: Composite numbers whose prime factors have an equal number of digits in decimal representation.

The programs for A199009, there is no canonical definition to state claims against.
-/

/-! ## A199009.P627820025713934006

`filter[A162421(n+1), A005171(#)]`
-/

namespace A199009.P627820025713934006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199009.P627820025713934006

/-! ## A199009.P4419456531467037730

`filter[A162421(n+1), A066247(#)]`
-/

namespace A199009.P4419456531467037730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199009.P4419456531467037730

/-! ## A199009.P15886563869887264901

`∩[A002808(n+1), A162421(n+1)]`
-/

namespace A199009.P15886563869887264901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199009.P15886563869887264901

/-! ## A199009.P10781971112491843636

`∩[A018252(n+1), A162421(n+1)]`
-/

namespace A199009.P10781971112491843636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199009.P10781971112491843636

/-! ## A199009.P8374571808712717239

`∩[A141468(n+1), A162421(n+1)]`
-/

namespace A199009.P8374571808712717239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199009.P8374571808712717239

/-!
# A199010: Arises in enumeration of Ehrhart polynomials for triangles.

The programs for A199010, there is no canonical definition to state claims against.
-/

/-! ## A199010.P15700765731200449613

`∏{e}[A125095(n), #+1]-char[1]`
-/

namespace A199010.P15700765731200449613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125095 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199010.P15700765731200449613

/-! ## A199010.P3979893301046086256

`A216278(char[1]+2*n+1)+1`
-/

namespace A199010.P3979893301046086256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 ((if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1)) + 1

end

end A199010.P3979893301046086256

/-! ## A199010.P9597772015819449513

`ceil((A113411(n)%(n+1)+1)/2)`
-/

namespace A199010.P9597772015819449513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A113411 n) (n + 1 : ℤ) + 1 : ℚ) / 2⌉

end

end A199010.P9597772015819449513

/-! ## A199010.P10625851061276562332

`runs[A091304(a(n-3)+n)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A199010.P10625851061276562332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  A091304 (f1 (n - 3) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A199010.P10625851061276562332

/-! ## A199010.P8331864234562936950

`round((A244543(2*n+1)%(n+1)+4)²/20)`
-/

namespace A199010.P8331864234562936950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.tmod (A244543 (2 * n + 1)) (n + 1 : ℤ) + 4) ^ 2 : ℚ) / 20)

end

end A199010.P8331864234562936950

/-!
# A199011: Triangle T(n,k), read by rows, given by (1,1,-1,1,0,0,0,0,0,0,0,...) DELTA (0,1,0,0,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A199011, the canonical program `A199011.P4524742312559770140` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199011 has offset 0).

The definition of A199011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199011.P4524742312559770140

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199011

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` -/
def P4524742312559770140.Spec : Prop :=
  ∀ n, P4524742312559770140.a n = A199011 n

theorem P4524742312559770140.correct : P4524742312559770140.Spec := by
  intro n
  simp only [A199011]

end A199011

/-! ## A199011.P9468355967116609130

`T(n-1,k)+C(row(n)-1, col(n))` with `a(0)=1, a(1)=1`
-/

namespace A199011.P9468355967116609130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp a n + Nat.choose ((SequenceMachineLib.triRow n : ℤ) - 1).toNat (SequenceMachineLib.triCol n)

end

end A199011.P9468355967116609130

namespace A199011

/-- `T(n-1,k)+C(row(n)-1, col(n))` -/
def P9468355967116609130.Spec : Prop :=
  ∀ n, (P9468355967116609130.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P16739642806465838716

`C(row(n), col(n)+col(n)^C(col(n), row(n)))`
-/

namespace A199011.P16739642806465838716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + SequenceMachineLib.triCol n ^ Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n))

end

end A199011.P16739642806465838716

namespace A199011

/-- `C(row(n), col(n)+col(n)^C(col(n), row(n)))` -/
def P16739642806465838716.Spec : Prop :=
  ∀ n, (P16739642806465838716.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P13036443841772091748

`C(row(n), col(n)+C(col(n), C(col(n), row(n))))`
-/

namespace A199011.P13036443841772091748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triCol n) (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)))

end

end A199011.P13036443841772091748

namespace A199011

/-- `C(row(n), col(n)+C(col(n), C(col(n), row(n))))` -/
def P13036443841772091748.Spec : Prop :=
  ∀ n, (P13036443841772091748.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P5537589895404371064

`C(A028310(row(n)), col(n)+1)`
-/

namespace A199011.P5537589895404371064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (SequenceMachineLib.triRow n)).toNat (SequenceMachineLib.triCol n + 1)

end

end A199011.P5537589895404371064

namespace A199011

/-- `C(A028310(row(n)), col(n)+1)` -/
def P5537589895404371064.Spec : Prop :=
  ∀ n, (P5537589895404371064.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P10695752317706914514

`A153861(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A199011.P10695752317706914514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A153861 n - a (n - 1)

end

end A199011.P10695752317706914514

namespace A199011

/-- `A153861(n)-a(n-1)` -/
def P10695752317706914514.Spec : Prop :=
  ∀ n, P10695752317706914514.a n = A199011 n

end A199011

/-! ## A199011.P12144902761630124548

`A007318(n+1)-char[∑[n+2]]`
-/

namespace A199011.P12144902761630124548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199011.P12144902761630124548

namespace A199011

/-- `A007318(n+1)-char[∑[n+2]]` -/
def P12144902761630124548.Spec : Prop :=
  ∀ n, P12144902761630124548.a n = A199011 n

end A199011

/-! ## A199011.P9984611017857552647

`A198321(A061579(n))`
-/

namespace A199011.P9984611017857552647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A061579 n).toNat

end

end A199011.P9984611017857552647

namespace A199011

/-- `A198321(A061579(n))` -/
def P9984611017857552647.Spec : Prop :=
  ∀ n, P9984611017857552647.a n = A199011 n

end A199011

/-! ## A199011.P2808789038065145315

`A214292(n)+A198321(n)`
-/

namespace A199011.P2808789038065145315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + A198321 n

end

end A199011.P2808789038065145315

namespace A199011

/-- `A214292(n)+A198321(n)` -/
def P2808789038065145315.Spec : Prop :=
  ∀ n, P2808789038065145315.a n = A199011 n

end A199011

/-! ## A199011.P16898982652638479412

`A198321(A038722(n+1)-1)`
-/

namespace A199011.P16898982652638479412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A038722 (n + 1) - 1).toNat

end

end A199011.P16898982652638479412

namespace A199011

/-- `A198321(A038722(n+1)-1)` -/
def P16898982652638479412.Spec : Prop :=
  ∀ n, P16898982652638479412.a n = A199011 n

end A199011

/-! ## A199011.P338995276450177067

`C(A007318(n+1), A051340(n))`
-/

namespace A199011.P338995276450177067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (n + 1)).toNat (A051340 n).toNat

end

end A199011.P338995276450177067

namespace A199011

/-- `C(A007318(n+1), A051340(n))` -/
def P338995276450177067.Spec : Prop :=
  ∀ n, (P338995276450177067.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P2035090300584412819

`A007318(n+1)%A118964(n+1)`
-/

namespace A199011.P2035090300584412819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (n + 1)) (A118964 (n + 1))

end

end A199011.P2035090300584412819

namespace A199011

/-- `A007318(n+1)%A118964(n+1)` -/
def P2035090300584412819.Spec : Prop :=
  ∀ n, P2035090300584412819.a n = A199011 n

end A199011

/-! ## A199011.P12553991189361275284

`floor(A124927(A004277(n)+1-n)/2)`
-/

namespace A199011.P12553991189361275284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124927 (A004277 n + (1 - (n : ℤ))).toNat : ℚ) / 2⌋

end

end A199011.P12553991189361275284

namespace A199011

/-- `floor(A124927(A004277(n)+1-n)/2)` -/
def P12553991189361275284.Spec : Prop :=
  ∀ n, P12553991189361275284.a n = A199011 n

end A199011

/-! ## A199011.P2719158993729648523

`C(A007318(n+1), A000108(C(2, a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A199011.P2719158993729648523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose (A007318 (n + 1)).toNat (A000108 (Nat.choose 2 (a (n - 1)))).toNat

end

end A199011.P2719158993729648523

namespace A199011

/-- `C(A007318(n+1), A000108(C(2, a(n-1))))` -/
def P2719158993729648523.Spec : Prop :=
  ∀ n, (P2719158993729648523.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P15791715834551641052

`C(A028310(A003056(n)), A002260(n+1))`
-/

namespace A199011.P15791715834551641052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A003056 n).toNat).toNat (A002260 (n + 1)).toNat

end

end A199011.P15791715834551641052

namespace A199011

/-- `C(A028310(A003056(n)), A002260(n+1))` -/
def P15791715834551641052.Spec : Prop :=
  ∀ n, (P15791715834551641052.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P12474566364539847854

`C(A028310(A003056(n)), A002262(n)+1)`
-/

namespace A199011.P12474566364539847854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A003056 n).toNat).toNat (A002262 n + 1).toNat

end

end A199011.P12474566364539847854

namespace A199011

/-- `C(A028310(A003056(n)), A002262(n)+1)` -/
def P12474566364539847854.Spec : Prop :=
  ∀ n, (P12474566364539847854.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P17648737056083969986

`C(A028310(A003056(n)), A103823(n+1))`
-/

namespace A199011.P17648737056083969986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A003056 n).toNat).toNat (A103823 (n + 1)).toNat

end

end A199011.P17648737056083969986

namespace A199011

/-- `C(A028310(A003056(n)), A103823(n+1))` -/
def P17648737056083969986.Spec : Prop :=
  ∀ n, (P17648737056083969986.a n : ℤ) = A199011 n

end A199011

/-! ## A199011.P14429336084094252237

`A135278(n)+A198321(n)-A074909(n)`
-/

namespace A199011.P14429336084094252237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + (A198321 n - A074909 n)

end

end A199011.P14429336084094252237

namespace A199011

/-- `A135278(n)+A198321(n)-A074909(n)` -/
def P14429336084094252237.Spec : Prop :=
  ∀ n, P14429336084094252237.a n = A199011 n

end A199011

/-! ## A199011.P3126257299044788558

`A074909(n+1)+A198321(n)-A074909(n)`
-/

namespace A199011.P3126257299044788558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A198321 n - A074909 n)

end

end A199011.P3126257299044788558

namespace A199011

/-- `A074909(n+1)+A198321(n)-A074909(n)` -/
def P3126257299044788558.Spec : Prop :=
  ∀ n, P3126257299044788558.a n = A199011 n

end A199011

/-! ## A199011.P12730080106775239532

`A074909(A028310(n)+1)-ceil(A134059(n)/3)`
-/

namespace A199011.P12730080106775239532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A028310 n + 1).toNat - ⌈(A134059 n : ℚ) / 3⌉

end

end A199011.P12730080106775239532

namespace A199011

/-- `A074909(A028310(n)+1)-ceil(A134059(n)/3)` -/
def P12730080106775239532.Spec : Prop :=
  ∀ n, P12730080106775239532.a n = A199011 n

end A199011

/-!
# A199012: The total number of edges in all unlabeled directed graphs (no self loops allowed) on n nodes.

The programs for A199012, there is no canonical definition to state claims against.
-/

/-! ## A199012.P1694805734188612666

`A000273(n+1)*(n+1)*n/2`
-/

namespace A199012.P1694805734188612666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000273 (n + 1) * (n + 1 : ℤ) * (n : ℤ) : ℚ) / 2

end

end A199012.P1694805734188612666

/-! ## A199012.P3292993816334350704

`∑[n]*Δ[A173313(n)]`
-/

namespace A199012.P3292993816334350704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A199012.P3292993816334350704

/-! ## A199012.P15466099947995041830

`∑[n]*A000273(n+1)`
-/

namespace A199012.P15466099947995041830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000273 (n + 1)

end

end A199012.P15466099947995041830

/-! ## A199012.P14697626168558629798

`∑[n]*∑[record[A053598(n)]]`
-/

namespace A199012.P14697626168558629798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A199012.P14697626168558629798

/-! ## A199012.P7340212356672155568

`Δ[A173313(n)]*A000217(n)`
-/

namespace A199012.P7340212356672155568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 n

end

end A199012.P7340212356672155568

/-!
# A199013: Numbers which, when divided by the sum of their prime factors, give a prime number.

The programs for A199013, there is no canonical definition to state claims against.
-/

/-! ## A199013.P11435018652296990676

`A050704(A032559(n+1))*A130006(n+1)`
-/

namespace A199013.P11435018652296990676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (A032559 (n + 1)).toNat * A130006 (n + 1)

end

end A199013.P11435018652296990676

/-! ## A199013.P13087324466705061717

`p?[A075255(n+1)]*A050704(A032559(n+1))`
-/

namespace A199013.P13087324466705061717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A050704 (A032559 (n + 1)).toNat

end

end A199013.P13087324466705061717

/-! ## A199013.P13982081673192110558

`p?[A145834(n+1)]*A050704(A032559(n+1))`
-/

namespace A199013.P13982081673192110558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A050704 (A032559 (n + 1)).toNat

end

end A199013.P13982081673192110558

/-! ## A199013.P5387340425973080554

`p?[1-A001414(n+1)+n]*A050704(A032559(n+1))`
-/

namespace A199013.P5387340425973080554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001414 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A050704 (A032559 (n + 1)).toNat

end

end A199013.P5387340425973080554

/-! ## A199013.P18263528472926984766

`p?[2-A036288(n+1)+n]*A050704(A032559(n+1))`
-/

namespace A199013.P18263528472926984766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036288 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A050704 (A032559 (n + 1)).toNat

end

end A199013.P18263528472926984766

/-!
# A199015: G.f.: 1/(1-x) * Product_{n>=1} (1 - x^(2*n))^2/(1 - x^(2*n-1))^2.

The programs for A199015, the canonical program `A199015.P4609584876450057430` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199015 has offset 0).

The definition of A199015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199015.P4609584876450057430

`∑[A008441(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199015

/-- `∑[A008441(n)]` -/
def P4609584876450057430.Spec : Prop :=
  ∀ n, P4609584876450057430.a n = A199015 n

theorem P4609584876450057430.correct : P4609584876450057430.Spec := by
  intro n
  simp only [A199015]

end A199015

/-! ## A199015.P12413225217838534547

`A057656(n)/2`
-/

namespace A199015.P12413225217838534547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057656 n : ℚ) / 2

end

end A199015.P12413225217838534547

namespace A199015

/-- `A057656(n)/2` -/
def P12413225217838534547.Spec : Prop :=
  ∀ n, P12413225217838534547.a n = (A199015 n : ℚ)

end A199015

/-! ## A199015.P14557236737243697966

`∑[abs(A134343(n))]`
-/

namespace A199015.P14557236737243697966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P14557236737243697966

namespace A199015

/-- `∑[abs(A134343(n))]` -/
def P14557236737243697966.Spec : Prop :=
  ∀ n, P14557236737243697966.a n = A199015 n

end A199015

/-! ## A199015.P16921637002282338935

`∑[A004020(n)/2]`
-/

namespace A199015.P16921637002282338935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P16921637002282338935

namespace A199015

/-- `∑[A004020(n)/2]` -/
def P16921637002282338935.Spec : Prop :=
  ∀ n, P16921637002282338935.a n = (A199015 n : ℚ)

end A199015

/-! ## A199015.P5806200499724067882

`∑[A005883(n)/4]`
-/

namespace A199015.P5806200499724067882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P5806200499724067882

namespace A199015

/-- `∑[A005883(n)/4]` -/
def P5806200499724067882.Spec : Prop :=
  ∀ n, P5806200499724067882.a n = (A199015 n : ℚ)

end A199015

/-! ## A199015.P6520503651480952848

`A156229(n)+A156229(n)-A000194(n+1)`
-/

namespace A199015.P6520503651480952848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156229 n + (A156229 n - A000194 (n + 1))

end

end A199015.P6520503651480952848

namespace A199015

/-- `A156229(n)+A156229(n)-A000194(n+1)` -/
def P6520503651480952848.Spec : Prop :=
  ∀ n, P6520503651480952848.a n = A199015 n

end A199015

/-! ## A199015.P7449571114063831765

`∑[A125079(2*n)]`
-/

namespace A199015.P7449571114063831765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P7449571114063831765

namespace A199015

/-- `∑[A125079(2*n)]` -/
def P7449571114063831765.Spec : Prop :=
  ∀ n, P7449571114063831765.a n = A199015 n

end A199015

/-! ## A199015.P4019154555943965028

`∑[A116604(2*n)]`
-/

namespace A199015.P4019154555943965028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P4019154555943965028

namespace A199015

/-- `∑[A116604(2*n)]` -/
def P4019154555943965028.Spec : Prop :=
  ∀ n, P4019154555943965028.a n = A199015 n

end A199015

/-! ## A199015.P11380110531615065659

`∑[A129447(2*n)]`
-/

namespace A199015.P11380110531615065659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P11380110531615065659

namespace A199015

/-- `∑[A129447(2*n)]` -/
def P11380110531615065659.Spec : Prop :=
  ∀ n, P11380110531615065659.a n = A199015 n

end A199015

/-! ## A199015.P14625487662755673636

`∑[A138741(2*n)]`
-/

namespace A199015.P14625487662755673636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P14625487662755673636

namespace A199015

/-- `∑[A138741(2*n)]` -/
def P14625487662755673636.Spec : Prop :=
  ∀ n, P14625487662755673636.a n = A199015 n

end A199015

/-! ## A199015.P3962973225216071371

`A001281(A057656(n))`
-/

namespace A199015.P3962973225216071371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A057656 n).toNat

end

end A199015.P3962973225216071371

namespace A199015

/-- `A001281(A057656(n))` -/
def P3962973225216071371.Spec : Prop :=
  ∀ n, P3962973225216071371.a n = A199015 n

end A199015

/-! ## A199015.P7170784551913831820

`∑[A002654(4*n+1)]`
-/

namespace A199015.P7170784551913831820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P7170784551913831820

namespace A199015

/-- `∑[A002654(4*n+1)]` -/
def P7170784551913831820.Spec : Prop :=
  ∀ n, P7170784551913831820.a n = A199015 n

end A199015

/-! ## A199015.P9705037654851559895

`∑[A035181(4*n+1)]`
-/

namespace A199015.P9705037654851559895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P9705037654851559895

namespace A199015

/-- `∑[A035181(4*n+1)]` -/
def P9705037654851559895.Spec : Prop :=
  ∀ n, P9705037654851559895.a n = A199015 n

end A199015

/-! ## A199015.P5379787618962491516

`∑[A035184(4*n+1)]`
-/

namespace A199015.P5379787618962491516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P5379787618962491516

namespace A199015

/-- `∑[A035184(4*n+1)]` -/
def P5379787618962491516.Spec : Prop :=
  ∀ n, P5379787618962491516.a n = A199015 n

end A199015

/-! ## A199015.P11127502248820658451

`∑[A113446(4*n+1)]`
-/

namespace A199015.P11127502248820658451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P11127502248820658451

namespace A199015

/-- `∑[A113446(4*n+1)]` -/
def P11127502248820658451.Spec : Prop :=
  ∀ n, P11127502248820658451.a n = A199015 n

end A199015

/-! ## A199015.P262943610409924229

`∑[A163746(4*n+1)]`
-/

namespace A199015.P262943610409924229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P262943610409924229

namespace A199015

/-- `∑[A163746(4*n+1)]` -/
def P262943610409924229.Spec : Prop :=
  ∀ n, P262943610409924229.a n = A199015 n

end A199015

/-! ## A199015.P427482908000930285

`∑[A338690(4*n+1)]`
-/

namespace A199015.P427482908000930285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P427482908000930285

namespace A199015

/-- `∑[A338690(4*n+1)]` -/
def P427482908000930285.Spec : Prop :=
  ∀ n, P427482908000930285.a n = A199015 n

end A199015

/-! ## A199015.P17845241140229992250

`∑[A008442(2*n+2*n+1)]`
-/

namespace A199015.P17845241140229992250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P17845241140229992250

namespace A199015

/-- `∑[A008442(2*n+2*n+1)]` -/
def P17845241140229992250.Spec : Prop :=
  ∀ n, P17845241140229992250.a n = A199015 n

end A199015

/-! ## A199015.P476002590014651730

`∑[A035154(2*n+2*n+1)]`
-/

namespace A199015.P476002590014651730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P476002590014651730

namespace A199015

/-- `∑[A035154(2*n+2*n+1)]` -/
def P476002590014651730.Spec : Prop :=
  ∀ n, P476002590014651730.a n = A199015 n

end A199015

/-! ## A199015.P12914062765322620581

`∑[A112301(2*n+2*n+1)]`
-/

namespace A199015.P12914062765322620581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P12914062765322620581

namespace A199015

/-- `∑[A112301(2*n+2*n+1)]` -/
def P12914062765322620581.Spec : Prop :=
  ∀ n, P12914062765322620581.a n = A199015 n

end A199015

/-!
# A199016: Number of partitions of n into terms of (1,2)-Ulam sequence, cf. A002858.

The programs for A199016, there is no canonical definition to state claims against.
-/

/-! ## A199016.P10519548765505066958

`A088314(n)-∑[A107846(A187257(n))]`
-/

namespace A199016.P10519548765505066958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A187257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199016.P10519548765505066958

/-! ## A199016.P4893489878114392550

`A088314(n)-A107846(A187257(n)+n)`
-/

namespace A199016.P4893489878114392550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A107846 (A187257 n + (n : ℤ)).toNat

end

end A199016.P4893489878114392550

/-! ## A199016.P916926895111207907

`A195098(A088314(n))`
-/

namespace A199016.P916926895111207907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A088314 n).toNat

end

end A199016.P916926895111207907

/-! ## A199016.P11364273973466208249

`A195098(A088571(n)+A000009(n))`
-/

namespace A199016.P11364273973466208249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A088571 n + A000009 n).toNat

end

end A199016.P11364273973466208249

/-! ## A199016.P9336241063076906484

`A088314(n)-A102683(A000079(n))`
-/

namespace A199016.P9336241063076906484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A102683 (A000079 n).toNat

end

end A199016.P9336241063076906484

/-!
# A199017: Number of partitions of n into distinct terms of (1,2)-Ulam sequence, cf. A002858.

The programs for A199017, there is no canonical definition to state claims against.
-/

/-! ## A199017.P1935284281790446821

`floor(root(A280417(n), 5)²)`
-/

namespace A199017.P1935284281790446821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A280417 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2⌋

end

end A199017.P1935284281790446821

/-! ## A199017.P14412004457103466138

`round(root(A326498(2*n), 5))`
-/

namespace A199017.P14412004457103466138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326498 (2 * n) : ℝ) ^ (1 / (5 : ℝ)))

end

end A199017.P14412004457103466138

/-! ## A199017.P3510835640267641582

`floor(root(A324753(2*(n+2)), 4))`
-/

namespace A199017.P3510835640267641582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324753 (2 * (n + 2)) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A199017.P3510835640267641582

/-! ## A199017.P8571447235795759943

`floor(sqrt(sqrt(A340385(2*n+5))))`
-/

namespace A199017.P8571447235795759943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A340385 (2 * n + 5) : ℝ))⌋

end

end A199017.P8571447235795759943

/-! ## A199017.P13208776845408590435

`A196238(A008675(n))`
-/

namespace A199017.P13208776845408590435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A008675 n).toNat

end

end A199017.P13208776845408590435

/-!
# A199018: a(n) = (3*11^n - 1)/2.

The programs for A199018, the canonical program `A199018.P16560790949839899558` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199018 has offset 0).

The definition of A199018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*11^n-1)/2` (program `A199018.P6218921856776261209`, by `A199018.P6218921856776261209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199018.P7924944656429040084

`ogf((1+4x)/(1-12x+11x^2))`
-/

namespace A199018.P7924944656429040084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -12, 11] n

end

end A199018.P7924944656429040084

namespace A199018

/-- `ogf((1+4x)/(1-12x+11x^2))` -/
def P7924944656429040084.Spec : Prop :=
  ∀ n, P7924944656429040084.a n = A199018 n

end A199018

/-! ## A199018.P6218921856776261209

`(3*11^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199018.P6218921856776261209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ n : ℤ) - 1 : ℚ) / 2

end

end A199018.P6218921856776261209

namespace A199018

/-- `(3*11^n-1)/2` -/
def P6218921856776261209.Spec : Prop :=
  ∀ n, P6218921856776261209.a n = (A199018 n : ℚ)

theorem P6218921856776261209.correct : P6218921856776261209.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199018, Nat.add_sub_cancel, A199018.P6218921856776261209.a, A199018.P16560790949839899558.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199018, Nat.add_sub_cancel, A199018.P6218921856776261209.a, A199018.P16560790949839899558.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A199018

/-! ## A199018.P16560790949839899558

`11*a(n-1)+5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199018

/-- `11*a(n-1)+5` -/
def P16560790949839899558.Spec : Prop :=
  ∀ n, (P16560790949839899558.a n : ℤ) = A199018 n

theorem P16560790949839899558.correct : P16560790949839899558.Spec := by
  intro n
  simp only [A199018]

end A199018

/-! ## A199018.P2879149756733471077

`5+11*a(n-1)` with `a(0)=1`
-/

namespace A199018.P2879149756733471077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 + 11 * a (n - 1)

end

end A199018.P2879149756733471077

namespace A199018

/-- `5+11*a(n-1)` -/
def P2879149756733471077.Spec : Prop :=
  ∀ n, (P2879149756733471077.a n : ℤ) = A199018 n

theorem P2879149756733471077.correct : P2879149756733471077.Spec := by
  intro n
  simp only [A199018, Nat.add_sub_cancel, A199018.P2879149756733471077.a, A199018.P16560790949839899558.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199018

/-! ## A199018.P544079399749375267

`lcm(11, a(n-1))+5` with `a(0)=1`
-/

namespace A199018.P544079399749375267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 5

end

end A199018.P544079399749375267

namespace A199018

/-- `lcm(11, a(n-1))+5` -/
def P544079399749375267.Spec : Prop :=
  ∀ n, (P544079399749375267.a n : ℤ) = A199018 n

end A199018

/-! ## A199018.P776328408364299396

`∑[11*a(n-1)]` with `a(0)=1, a(1)=15`
-/

namespace A199018.P776328408364299396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199018.P776328408364299396

namespace A199018

/-- `∑[11*a(n-1)]` -/
def P776328408364299396.Spec : Prop :=
  ∀ n, (P776328408364299396.a n : ℤ) = A199018 n

end A199018

/-! ## A199018.P17923104316680567490

`16-11*(1-a(n-1))` with `a(0)=1`
-/

namespace A199018.P17923104316680567490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 - 11 * (1 - a (n - 1))

end

end A199018.P17923104316680567490

namespace A199018

/-- `16-11*(1-a(n-1))` -/
def P17923104316680567490.Spec : Prop :=
  ∀ n, P17923104316680567490.a n = A199018 n

end A199018

/-! ## A199018.P846111407876511799

`A199751(n)-1`
-/

namespace A199018.P846111407876511799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199751 n - 1

end

end A199018.P846111407876511799

namespace A199018

/-- `A199751(n)-1` -/
def P846111407876511799.Spec : Prop :=
  ∀ n, P846111407876511799.a n = A199018 n

end A199018

/-! ## A199018.P4019613291795934557

`A199752(n)/2-1`
-/

namespace A199018.P4019613291795934557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199752 n : ℚ) / 2 - 1

end

end A199018.P4019613291795934557

namespace A199018

/-- `A199752(n)/2-1` -/
def P4019613291795934557.Spec : Prop :=
  ∀ n, P4019613291795934557.a n = (A199018 n : ℚ)

theorem P4019613291795934557.correct : P4019613291795934557.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199018, Nat.add_sub_cancel, A199018.P4019613291795934557.a, A199018.P16560790949839899558.a, A199752, A199752.P7341861829474905545.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199018, Nat.add_sub_cancel, A199018.P4019613291795934557.a, A199018.P16560790949839899558.a, A199752, A199752.P7341861829474905545.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199018

/-! ## A199018.P12095244991656044997

`3*A034659(n)-2`
-/

namespace A199018.P12095244991656044997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034659 n - 2

end

end A199018.P12095244991656044997

namespace A199018

/-- `3*A034659(n)-2` -/
def P12095244991656044997.Spec : Prop :=
  ∀ n, P12095244991656044997.a n = A199018 n

end A199018

/-!
# A199019: a(n) = 3*11^n - 1.

The programs for A199019, the canonical program `A199019.P1876826134869723735` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199019 has offset 0).

The definition of A199019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*11^n-1` (program `A199019.P1876826134869723735`, by `A199019.P1876826134869723735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199019.P1876826134869723735

`3*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199019

/-- `3*11^n-1` -/
def P1876826134869723735.Spec : Prop :=
  ∀ n, P1876826134869723735.a n = A199019 n

theorem P1876826134869723735.correct : P1876826134869723735.Spec := by
  intro n
  simp only [A199019]

end A199019

/-! ## A199019.P18369966570639260075

`ogf((2+8x)/(1-12x+11x^2))`
-/

namespace A199019.P18369966570639260075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8] [1, -12, 11] n

end

end A199019.P18369966570639260075

namespace A199019

/-- `ogf((2+8x)/(1-12x+11x^2))` -/
def P18369966570639260075.Spec : Prop :=
  ∀ n, P18369966570639260075.a n = A199019 n

end A199019

/-! ## A199019.P1721832621829778633

`2*A199018(n)`
-/

namespace A199019.P1721832621829778633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199018 n

end

end A199019.P1721832621829778633

namespace A199019

/-- `2*A199018(n)` -/
def P1721832621829778633.Spec : Prop :=
  ∀ n, P1721832621829778633.a n = A199019 n

end A199019

/-! ## A199019.P9354126401811714645

`xor(1, 3*11^n)`
-/

namespace A199019.P9354126401811714645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * 11 ^ n)

end

end A199019.P9354126401811714645

namespace A199019

/-- `xor(1, 3*11^n)` -/
def P9354126401811714645.Spec : Prop :=
  ∀ n, (P9354126401811714645.a n : ℤ) = A199019 n

end A199019

/-! ## A199019.P2589720854300586878

`∑[11*a(n-1)]` with `a(0)=2, a(1)=30`
-/

namespace A199019.P2589720854300586878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 30] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199019.P2589720854300586878

namespace A199019

/-- `∑[11*a(n-1)]` -/
def P2589720854300586878.Spec : Prop :=
  ∀ n, (P2589720854300586878.a n : ℤ) = A199019 n

end A199019

/-! ## A199019.P16409674946669941952

`floor(A199024(n)/2)`
-/

namespace A199019.P16409674946669941952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199024 n : ℚ) / 2⌋

end

end A199019.P16409674946669941952

namespace A199019

/-- `floor(A199024(n)/2)` -/
def P16409674946669941952.Spec : Prop :=
  ∀ n, P16409674946669941952.a n = A199019 n

end A199019

/-! ## A199019.P10946796550143574693

`floor(A199029(n)/3)`
-/

namespace A199019.P10946796550143574693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199029 n : ℚ) / 3⌋

end

end A199019.P10946796550143574693

namespace A199019

/-- `floor(A199029(n)/3)` -/
def P10946796550143574693.Spec : Prop :=
  ∀ n, P10946796550143574693.a n = A199019 n

end A199019

/-! ## A199019.P3839188366775558055

`2*(A199751(n)-1)`
-/

namespace A199019.P3839188366775558055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199751 n - 1)

end

end A199019.P3839188366775558055

namespace A199019

/-- `2*(A199751(n)-1)` -/
def P3839188366775558055.Spec : Prop :=
  ∀ n, P3839188366775558055.a n = A199019 n

end A199019

/-! ## A199019.P445795402746154639

`(A199756(n)-3)/2`
-/

namespace A199019.P445795402746154639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199756 n - 3 : ℚ) / 2

end

end A199019.P445795402746154639

namespace A199019

/-- `(A199756(n)-3)/2` -/
def P445795402746154639.Spec : Prop :=
  ∀ n, P445795402746154639.a n = (A199019 n : ℚ)

theorem P445795402746154639.correct : P445795402746154639.Spec := by
  intro n
  simp only [A199019, Nat.add_sub_cancel, A199019.P445795402746154639.a, A199019.P1876826134869723735.a, A199756, A199756.P14785815373982145534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199019

/-! ## A199019.P1834996416964610200

`(A199763(n)-4)/3`
-/

namespace A199019.P1834996416964610200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199763 n - 4 : ℚ) / 3

end

end A199019.P1834996416964610200

namespace A199019

/-- `(A199763(n)-4)/3` -/
def P1834996416964610200.Spec : Prop :=
  ∀ n, P1834996416964610200.a n = (A199019 n : ℚ)

theorem P1834996416964610200.correct : P1834996416964610200.Spec := by
  intro n
  simp only [A199019, Nat.add_sub_cancel, A199019.P1834996416964610200.a, A199019.P1876826134869723735.a, A199763, A199763.P6771920329356579825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199019

/-!
# A199020: a(n) = 4*11^n-1.

The programs for A199020, the canonical program `A199020.P17105954108518898010` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199020 has offset 0).

The definition of A199020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*11^n-1` (program `A199020.P17105954108518898010`, by `A199020.P17105954108518898010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199020.P17105954108518898010

`4*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199020

/-- `4*11^n-1` -/
def P17105954108518898010.Spec : Prop :=
  ∀ n, P17105954108518898010.a n = A199020 n

theorem P17105954108518898010.correct : P17105954108518898010.Spec := by
  intro n
  simp only [A199020]

end A199020

/-! ## A199020.P211283439712335817

`ogf((3+7x)/(1-12x+11x^2))`
-/

namespace A199020.P211283439712335817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7] [1, -12, 11] n

end

end A199020.P211283439712335817

namespace A199020

/-- `ogf((3+7x)/(1-12x+11x^2))` -/
def P211283439712335817.Spec : Prop :=
  ∀ n, P211283439712335817.a n = A199020 n

end A199020

/-! ## A199020.P14560002008760788401

`xor(6, 4*11^n+1)`
-/

namespace A199020.P14560002008760788401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (4 * 11 ^ n + 1)

end

end A199020.P14560002008760788401

namespace A199020

/-- `xor(6, 4*11^n+1)` -/
def P14560002008760788401.Spec : Prop :=
  ∀ n, (P14560002008760788401.a n : ℤ) = A199020 n

end A199020

/-! ## A199020.P15313056293549366042

`∑[11*a(n-1)]` with `a(0)=3, a(1)=40`
-/

namespace A199020.P15313056293549366042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 40] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199020.P15313056293549366042

namespace A199020

/-- `∑[11*a(n-1)]` -/
def P15313056293549366042.Spec : Prop :=
  ∀ n, (P15313056293549366042.a n : ℤ) = A199020 n

end A199020

/-! ## A199020.P954162317318955639

`abs(11*(a(n-1)+1)-1)` with `a(0)=3`
-/

namespace A199020.P954162317318955639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |11 * (a (n - 1) + 1) - 1|

end

end A199020.P954162317318955639

namespace A199020

/-- `abs(11*(a(n-1)+1)-1)` -/
def P954162317318955639.Spec : Prop :=
  ∀ n, P954162317318955639.a n = A199020 n

end A199020

/-! ## A199020.P13264505857136395932

`or(1, 11*(a(n-1)+1)-2)` with `a(0)=3`
-/

namespace A199020.P13264505857136395932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 1 (11 * (a (n - 1) + 1) - 2)

end

end A199020.P13264505857136395932

namespace A199020

/-- `or(1, 11*(a(n-1)+1)-2)` -/
def P13264505857136395932.Spec : Prop :=
  ∀ n, P13264505857136395932.a n = A199020 n

end A199020

/-! ## A199020.P10587250234943245220

`abs(2-A199753(n))`
-/

namespace A199020.P10587250234943245220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199753 n|

end

end A199020.P10587250234943245220

namespace A199020

/-- `abs(2-A199753(n))` -/
def P10587250234943245220.Spec : Prop :=
  ∀ n, P10587250234943245220.a n = A199020 n

end A199020

/-! ## A199020.P2071538279876505593

`floor(A199027(n)/2)`
-/

namespace A199020.P2071538279876505593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199027 n : ℚ) / 2⌋

end

end A199020.P2071538279876505593

namespace A199020

/-- `floor(A199027(n)/2)` -/
def P2071538279876505593.Spec : Prop :=
  ∀ n, P2071538279876505593.a n = A199020 n

end A199020

/-! ## A199020.P1092124423169952528

`(A199759(n)-3)/2`
-/

namespace A199020.P1092124423169952528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199759 n - 3 : ℚ) / 2

end

end A199020.P1092124423169952528

namespace A199020

/-- `(A199759(n)-3)/2` -/
def P1092124423169952528.Spec : Prop :=
  ∀ n, P1092124423169952528.a n = (A199020 n : ℚ)

theorem P1092124423169952528.correct : P1092124423169952528.Spec := by
  intro n
  simp only [A199020, Nat.add_sub_cancel, A199020.P1092124423169952528.a, A199020.P17105954108518898010.a, A199759, A199759.P2206190039063985725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199020

/-! ## A199020.P11956987223490359791

`or(1, 2*A198974(n))`
-/

namespace A199020.P11956987223490359791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A198974 n)

end

end A199020.P11956987223490359791

namespace A199020

/-- `or(1, 2*A198974(n))` -/
def P11956987223490359791.Spec : Prop :=
  ∀ n, P11956987223490359791.a n = A199020 n

end A199020

/-!
# A199021: a(n) = (5*11^n - 1)/2.

The programs for A199021, the canonical program `A199021.P13169940333531914631` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199021 has offset 0).

The definition of A199021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*11^n-1)/2` (program `A199021.P16995708827196579334`, by `A199021.P16995708827196579334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199021.P16975233486129514173

`ogf((2+3x)/(1-12x+11x^2))`
-/

namespace A199021.P16975233486129514173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -12, 11] n

end

end A199021.P16975233486129514173

namespace A199021

/-- `ogf((2+3x)/(1-12x+11x^2))` -/
def P16975233486129514173.Spec : Prop :=
  ∀ n, P16975233486129514173.a n = A199021 n

end A199021

/-! ## A199021.P16995708827196579334

`(5*11^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199021.P16995708827196579334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 11 ^ n : ℤ) - 1 : ℚ) / 2

end

end A199021.P16995708827196579334

namespace A199021

/-- `(5*11^n-1)/2` -/
def P16995708827196579334.Spec : Prop :=
  ∀ n, P16995708827196579334.a n = (A199021 n : ℚ)

theorem P16995708827196579334.correct : P16995708827196579334.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199021, Nat.add_sub_cancel, A199021.P16995708827196579334.a, A199021.P13169940333531914631.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199021, Nat.add_sub_cancel, A199021.P16995708827196579334.a, A199021.P13169940333531914631.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A199021

/-! ## A199021.P13169940333531914631

`11*a(n-1)+5` with `a(0)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199021

/-- `11*a(n-1)+5` -/
def P13169940333531914631.Spec : Prop :=
  ∀ n, (P13169940333531914631.a n : ℤ) = A199021 n

theorem P13169940333531914631.correct : P13169940333531914631.Spec := by
  intro n
  simp only [A199021]

end A199021

/-! ## A199021.P1674685880711349952

`5+11*a(n-1)` with `a(0)=2`
-/

namespace A199021.P1674685880711349952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  5 + 11 * a (n - 1)

end

end A199021.P1674685880711349952

namespace A199021

/-- `5+11*a(n-1)` -/
def P1674685880711349952.Spec : Prop :=
  ∀ n, (P1674685880711349952.a n : ℤ) = A199021 n

theorem P1674685880711349952.correct : P1674685880711349952.Spec := by
  intro n
  simp only [A199021, Nat.add_sub_cancel, A199021.P1674685880711349952.a, A199021.P13169940333531914631.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199021

/-! ## A199021.P13899757511643781394

`lcm(11, a(n-1))+5` with `a(0)=2`
-/

namespace A199021.P13899757511643781394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 5

end

end A199021.P13899757511643781394

namespace A199021

/-- `lcm(11, a(n-1))+5` -/
def P13899757511643781394.Spec : Prop :=
  ∀ n, (P13899757511643781394.a n : ℤ) = A199021 n

end A199021

/-! ## A199021.P6441764383696193537

`∑[11*a(n-1)]` with `a(0)=2, a(1)=25`
-/

namespace A199021.P6441764383696193537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 25] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199021.P6441764383696193537

namespace A199021

/-- `∑[11*a(n-1)]` -/
def P6441764383696193537.Spec : Prop :=
  ∀ n, (P6441764383696193537.a n : ℤ) = A199021 n

end A199021

/-! ## A199021.P2743571666802388485

`16-11*(1-a(n-1))` with `a(0)=2`
-/

namespace A199021.P2743571666802388485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  16 - 11 * (1 - a (n - 1))

end

end A199021.P2743571666802388485

namespace A199021

/-- `16-11*(1-a(n-1))` -/
def P2743571666802388485.Spec : Prop :=
  ∀ n, P2743571666802388485.a n = A199021 n

end A199021

/-! ## A199021.P5534497431092204403

`A199754(n)-1`
-/

namespace A199021.P5534497431092204403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199754 n - 1

end

end A199021.P5534497431092204403

namespace A199021

/-- `A199754(n)-1` -/
def P5534497431092204403.Spec : Prop :=
  ∀ n, P5534497431092204403.a n = A199021 n

end A199021

/-! ## A199021.P10930823316932241267

`A199755(n)/2-1`
-/

namespace A199021.P10930823316932241267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199755 n : ℚ) / 2 - 1

end

end A199021.P10930823316932241267

namespace A199021

/-- `A199755(n)/2-1` -/
def P10930823316932241267.Spec : Prop :=
  ∀ n, P10930823316932241267.a n = (A199021 n : ℚ)

theorem P10930823316932241267.correct : P10930823316932241267.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199021, Nat.add_sub_cancel, A199021.P10930823316932241267.a, A199021.P13169940333531914631.a, A199755, A199755.P11771926122342622862.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199021, Nat.add_sub_cancel, A199021.P10930823316932241267.a, A199021.P13169940333531914631.a, A199755, A199755.P11771926122342622862.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199021

/-! ## A199021.P3299599898675907150

`5*A034659(n)-3`
-/

namespace A199021.P3299599898675907150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A034659 n - 3

end

end A199021.P3299599898675907150

namespace A199021

/-- `5*A034659(n)-3` -/
def P3299599898675907150.Spec : Prop :=
  ∀ n, P3299599898675907150.a n = A199021 n

end A199021

/-!
# A199022: a(n) = 5*11^n - 1.

The programs for A199022, the canonical program `A199022.P5366726337171221653` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199022 has offset 0).

The definition of A199022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*11^n-1` (program `A199022.P5366726337171221653`, by `A199022.P5366726337171221653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199022.P5366726337171221653

`5*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199022

/-- `5*11^n-1` -/
def P5366726337171221653.Spec : Prop :=
  ∀ n, P5366726337171221653.a n = A199022 n

theorem P5366726337171221653.correct : P5366726337171221653.Spec := by
  intro n
  simp only [A199022]

end A199022

/-! ## A199022.P1999045597682697993

`ogf((4+6x)/(1-12x+11x^2))`
-/

namespace A199022.P1999045597682697993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6] [1, -12, 11] n

end

end A199022.P1999045597682697993

namespace A199022

/-- `ogf((4+6x)/(1-12x+11x^2))` -/
def P1999045597682697993.Spec : Prop :=
  ∀ n, P1999045597682697993.a n = A199022 n

end A199022

/-! ## A199022.P3087805322331663201

`2*A199021(n)`
-/

namespace A199022.P3087805322331663201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199021 n

end

end A199022.P3087805322331663201

namespace A199022

/-- `2*A199021(n)` -/
def P3087805322331663201.Spec : Prop :=
  ∀ n, P3087805322331663201.a n = A199022 n

end A199022

/-! ## A199022.P9892368574071120310

`xor(1, 5*11^n)`
-/

namespace A199022.P9892368574071120310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * 11 ^ n)

end

end A199022.P9892368574071120310

namespace A199022

/-- `xor(1, 5*11^n)` -/
def P9892368574071120310.Spec : Prop :=
  ∀ n, (P9892368574071120310.a n : ℤ) = A199022 n

end A199022

/-! ## A199022.P468469149456630637

`∑[11*a(n-1)]` with `a(0)=4, a(1)=50`
-/

namespace A199022.P468469149456630637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 50] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199022.P468469149456630637

namespace A199022

/-- `∑[11*a(n-1)]` -/
def P468469149456630637.Spec : Prop :=
  ∀ n, (P468469149456630637.a n : ℤ) = A199022 n

end A199022

/-! ## A199022.P1421965885009798091

`xor(1, Δ[11^n]-1)/2`
-/

namespace A199022.P1421965885009798091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) : ℚ) / 2

end

end A199022.P1421965885009798091

namespace A199022

/-- `xor(1, Δ[11^n]-1)/2` -/
def P1421965885009798091.Spec : Prop :=
  ∀ n, P1421965885009798091.a n = (A199022 n : ℚ)

end A199022

/-! ## A199022.P1466233792037558577

`abs(2-A199755(n))`
-/

namespace A199022.P1466233792037558577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199755 n|

end

end A199022.P1466233792037558577

namespace A199022

/-- `abs(2-A199755(n))` -/
def P1466233792037558577.Spec : Prop :=
  ∀ n, P1466233792037558577.a n = A199022 n

end A199022

/-! ## A199022.P1720852777639350497

`floor(A199030(n)/2)`
-/

namespace A199022.P1720852777639350497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199030 n : ℚ) / 2⌋

end

end A199022.P1720852777639350497

namespace A199022

/-- `floor(A199030(n)/2)` -/
def P1720852777639350497.Spec : Prop :=
  ∀ n, P1720852777639350497.a n = A199022 n

end A199022

/-! ## A199022.P7814539472190137677

`2*(A199754(n)-1)`
-/

namespace A199022.P7814539472190137677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199754 n - 1)

end

end A199022.P7814539472190137677

namespace A199022

/-- `2*(A199754(n)-1)` -/
def P7814539472190137677.Spec : Prop :=
  ∀ n, P7814539472190137677.a n = A199022 n

end A199022

/-! ## A199022.P7554375429087364877

`(A199764(n)-3)/2`
-/

namespace A199022.P7554375429087364877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199764 n - 3 : ℚ) / 2

end

end A199022.P7554375429087364877

namespace A199022

/-- `(A199764(n)-3)/2` -/
def P7554375429087364877.Spec : Prop :=
  ∀ n, P7554375429087364877.a n = (A199022 n : ℚ)

theorem P7554375429087364877.correct : P7554375429087364877.Spec := by
  intro n
  simp only [A199022, Nat.add_sub_cancel, A199022.P7554375429087364877.a, A199022.P5366726337171221653.a, A199764, A199764.P5667583440997340111.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199022

/-!
# A199023: a(n) = (6*11^n - 1)/5.

The programs for A199023, the canonical program `A199023.P16288718336310605238` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199023 has offset 0).

The definition of A199023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*11^n-1)/5` (program `A199023.P15724319649290751988`, by `A199023.P15724319649290751988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199023.P11481891070131901985

`ogf((1+x)/(1-12x+11x^2))`
-/

namespace A199023.P11481891070131901985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -12, 11] n

end

end A199023.P11481891070131901985

namespace A199023

/-- `ogf((1+x)/(1-12x+11x^2))` -/
def P11481891070131901985.Spec : Prop :=
  ∀ n, P11481891070131901985.a n = A199023 n

end A199023

/-! ## A199023.P15724319649290751988

`(6*11^n-1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199023.P15724319649290751988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 11 ^ n : ℤ) - 1 : ℚ) / 5

end

end A199023.P15724319649290751988

namespace A199023

/-- `(6*11^n-1)/5` -/
def P15724319649290751988.Spec : Prop :=
  ∀ n, P15724319649290751988.a n = (A199023 n : ℚ)

theorem P15724319649290751988.correct : P15724319649290751988.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199023, Nat.add_sub_cancel, A199023.P15724319649290751988.a, A199023.P16288718336310605238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199023, Nat.add_sub_cancel, A199023.P15724319649290751988.a, A199023.P16288718336310605238.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A199023

/-! ## A199023.P16288718336310605238

`11*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199023

/-- `11*a(n-1)+2` -/
def P16288718336310605238.Spec : Prop :=
  ∀ n, (P16288718336310605238.a n : ℤ) = A199023 n

theorem P16288718336310605238.correct : P16288718336310605238.Spec := by
  intro n
  simp only [A199023]

end A199023

/-! ## A199023.P11539713475674436444

`∑{#}[n, A112468(C(n+1, 2)+#)*12^#]`
-/

namespace A199023.P11539713475674436444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112468 (Nat.choose (n + 1) 2 + k) * (12 ^ k : ℤ)

end

end A199023.P11539713475674436444

namespace A199023

/-- `∑{#}[n, A112468(C(n+1, 2)+#)*12^#]` -/
def P11539713475674436444.Spec : Prop :=
  ∀ n, P11539713475674436444.a n = A199023 n

end A199023

/-! ## A199023.P12561355389435322872

`2+11*a(n-1)` with `a(0)=1`
-/

namespace A199023.P12561355389435322872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + 11 * a (n - 1)

end

end A199023.P12561355389435322872

namespace A199023

/-- `2+11*a(n-1)` -/
def P12561355389435322872.Spec : Prop :=
  ∀ n, (P12561355389435322872.a n : ℤ) = A199023 n

theorem P12561355389435322872.correct : P12561355389435322872.Spec := by
  intro n
  simp only [A199023, Nat.add_sub_cancel, A199023.P12561355389435322872.a, A199023.P16288718336310605238.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199023

/-! ## A199023.P6880527072305347002

`2+lcm(11, a(n-1))` with `a(0)=1`
-/

namespace A199023.P6880527072305347002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + Nat.lcm 11 (a (n - 1))

end

end A199023.P6880527072305347002

namespace A199023

/-- `2+lcm(11, a(n-1))` -/
def P6880527072305347002.Spec : Prop :=
  ∀ n, (P6880527072305347002.a n : ℤ) = A199023 n

end A199023

/-! ## A199023.P5202162049822248711

`∑[11*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A199023.P5202162049822248711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199023.P5202162049822248711

namespace A199023

/-- `∑[11*a(n-1)]` -/
def P5202162049822248711.Spec : Prop :=
  ∀ n, (P5202162049822248711.a n : ℤ) = A199023 n

end A199023

/-! ## A199023.P6950400470094838022

`2-(a(n-1)-12*a(n-1))` with `a(0)=1`
-/

namespace A199023.P6950400470094838022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - 12 * a (n - 1))

end

end A199023.P6950400470094838022

namespace A199023

/-- `2-(a(n-1)-12*a(n-1))` -/
def P6950400470094838022.Spec : Prop :=
  ∀ n, P6950400470094838022.a n = A199023 n

end A199023

/-! ## A199023.P12611330901341238566

`∑[A003954(n)]`
-/

namespace A199023.P12611330901341238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199023.P12611330901341238566

namespace A199023

/-- `∑[A003954(n)]` -/
def P12611330901341238566.Spec : Prop :=
  ∀ n, P12611330901341238566.a n = A199023 n

end A199023

/-! ## A199023.P17475633476433014977

`2*A016123(n)-A001020(n)`
-/

namespace A199023.P17475633476433014977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016123 n - A001020 n

end

end A199023.P17475633476433014977

namespace A199023

/-- `2*A016123(n)-A001020(n)` -/
def P17475633476433014977.Spec : Prop :=
  ∀ n, P17475633476433014977.a n = A199023 n

end A199023

/-!
# A199024: a(n) = 6*11^n - 1.

The programs for A199024, the canonical program `A199024.P15306623222728880314` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199024 has offset 0).

The definition of A199024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*11^n-1` (program `A199024.P15306623222728880314`, by `A199024.P15306623222728880314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199024.P15306623222728880314

`6*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199024

/-- `6*11^n-1` -/
def P15306623222728880314.Spec : Prop :=
  ∀ n, P15306623222728880314.a n = A199024 n

theorem P15306623222728880314.correct : P15306623222728880314.Spec := by
  intro n
  simp only [A199024]

end A199024

/-! ## A199024.P13670442175547149072

`ogf((5+5x)/(1-12x+11x^2))`
-/

namespace A199024.P13670442175547149072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5] [1, -12, 11] n

end

end A199024.P13670442175547149072

namespace A199024

/-- `ogf((5+5x)/(1-12x+11x^2))` -/
def P13670442175547149072.Spec : Prop :=
  ∀ n, P13670442175547149072.a n = A199024 n

end A199024

/-! ## A199024.P17892244455682784414

`5*A199023(n)`
-/

namespace A199024.P17892244455682784414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A199023 n

end

end A199024.P17892244455682784414

namespace A199024

/-- `5*A199023(n)` -/
def P17892244455682784414.Spec : Prop :=
  ∀ n, P17892244455682784414.a n = A199024 n

end A199024

/-! ## A199024.P4833651663411445048

`xor(2, 6*11^n+1)`
-/

namespace A199024.P4833651663411445048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * 11 ^ n + 1)

end

end A199024.P4833651663411445048

namespace A199024

/-- `xor(2, 6*11^n+1)` -/
def P4833651663411445048.Spec : Prop :=
  ∀ n, (P4833651663411445048.a n : ℤ) = A199024 n

end A199024

/-! ## A199024.P13438037749836607953

`5*∑[11*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A199024.P13438037749836607953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199024.P13438037749836607953

namespace A199024

/-- `5*∑[11*a(n-1)]` -/
def P13438037749836607953.Spec : Prop :=
  ∀ n, (P13438037749836607953.a n : ℤ) = A199024 n

end A199024

/-! ## A199024.P12727033504222587306

`abs(2-A199756(n))`
-/

namespace A199024.P12727033504222587306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199756 n|

end

end A199024.P12727033504222587306

namespace A199024

/-- `abs(2-A199756(n))` -/
def P12727033504222587306.Spec : Prop :=
  ∀ n, P12727033504222587306.a n = A199024 n

end A199024

/-! ## A199024.P597745245166061258

`∑[5*A003954(n)]`
-/

namespace A199024.P597745245166061258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199024.P597745245166061258

namespace A199024

/-- `∑[5*A003954(n)]` -/
def P597745245166061258.Spec : Prop :=
  ∀ n, P597745245166061258.a n = A199024 n

end A199024

/-! ## A199024.P11335928473569998244

`ceil(A199020(n)+A199020(n)/2)`
-/

namespace A199024.P11335928473569998244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199020 n : ℚ) + (A199020 n : ℚ) / 2⌉

end

end A199024.P11335928473569998244

namespace A199024

/-- `ceil(A199020(n)+A199020(n)/2)` -/
def P11335928473569998244.Spec : Prop :=
  ∀ n, P11335928473569998244.a n = A199024 n

end A199024

/-!
# A199025: a(n) = (7*11^n-1)/2.

The programs for A199025, the canonical program `A199025.P6767102841774528459` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199025 has offset 0).

The definition of A199025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*11^n-1)/2` (program `A199025.P8370845471951112682`, by `A199025.P8370845471951112682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199025.P17454196410923621439

`ogf((3+2x)/(1-12x+11x^2))`
-/

namespace A199025.P17454196410923621439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -12, 11] n

end

end A199025.P17454196410923621439

namespace A199025

/-- `ogf((3+2x)/(1-12x+11x^2))` -/
def P17454196410923621439.Spec : Prop :=
  ∀ n, P17454196410923621439.a n = A199025 n

end A199025

/-! ## A199025.P8370845471951112682

`(7*11^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199025.P8370845471951112682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 11 ^ n : ℤ) - 1 : ℚ) / 2

end

end A199025.P8370845471951112682

namespace A199025

/-- `(7*11^n-1)/2` -/
def P8370845471951112682.Spec : Prop :=
  ∀ n, P8370845471951112682.a n = (A199025 n : ℚ)

theorem P8370845471951112682.correct : P8370845471951112682.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199025, Nat.add_sub_cancel, A199025.P8370845471951112682.a, A199025.P6767102841774528459.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199025, Nat.add_sub_cancel, A199025.P8370845471951112682.a, A199025.P6767102841774528459.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A199025

/-! ## A199025.P6767102841774528459

`11*a(n-1)+5` with `a(0)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199025

/-- `11*a(n-1)+5` -/
def P6767102841774528459.Spec : Prop :=
  ∀ n, (P6767102841774528459.a n : ℤ) = A199025 n

theorem P6767102841774528459.correct : P6767102841774528459.Spec := by
  intro n
  simp only [A199025]

end A199025

/-! ## A199025.P770668474720295817

`lcm(11, a(n-1))+5` with `a(0)=3`
-/

namespace A199025.P770668474720295817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 5

end

end A199025.P770668474720295817

namespace A199025

/-- `lcm(11, a(n-1))+5` -/
def P770668474720295817.Spec : Prop :=
  ∀ n, (P770668474720295817.a n : ℤ) = A199025 n

end A199025

/-! ## A199025.P1763180020220334651

`∑[11*a(n-1)]` with `a(0)=3, a(1)=35`
-/

namespace A199025.P1763180020220334651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 35] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199025.P1763180020220334651

namespace A199025

/-- `∑[11*a(n-1)]` -/
def P1763180020220334651.Spec : Prop :=
  ∀ n, (P1763180020220334651.a n : ℤ) = A199025 n

end A199025

/-! ## A199025.P3182435333588114675

`16-11*(1-a(n-1))` with `a(0)=3`
-/

namespace A199025.P3182435333588114675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  16 - 11 * (1 - a (n - 1))

end

end A199025.P3182435333588114675

namespace A199025

/-- `16-11*(1-a(n-1))` -/
def P3182435333588114675.Spec : Prop :=
  ∀ n, P3182435333588114675.a n = A199025 n

end A199025

/-! ## A199025.P6831849584795198183

`A199757(n)-1`
-/

namespace A199025.P6831849584795198183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199757 n - 1

end

end A199025.P6831849584795198183

namespace A199025

/-- `A199757(n)-1` -/
def P6831849584795198183.Spec : Prop :=
  ∀ n, P6831849584795198183.a n = A199025 n

end A199025

/-! ## A199025.P7251530861275126221

`A199758(n)/2-1`
-/

namespace A199025.P7251530861275126221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199758 n : ℚ) / 2 - 1

end

end A199025.P7251530861275126221

namespace A199025

/-- `A199758(n)/2-1` -/
def P7251530861275126221.Spec : Prop :=
  ∀ n, P7251530861275126221.a n = (A199025 n : ℚ)

theorem P7251530861275126221.correct : P7251530861275126221.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199025, Nat.add_sub_cancel, A199025.P7251530861275126221.a, A199025.P6767102841774528459.a, A199758, A199758.P7657953075516208428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199025, Nat.add_sub_cancel, A199025.P7251530861275126221.a, A199025.P6767102841774528459.a, A199758, A199758.P7657953075516208428.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199025

/-! ## A199025.P13142205509434640295

`A297181(A016885(n)+1)-1`
-/

namespace A199025.P13142205509434640295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297181 (A016885 n + 1).toNat - 1

end

end A199025.P13142205509434640295

namespace A199025

/-- `A297181(A016885(n)+1)-1` -/
def P13142205509434640295.Spec : Prop :=
  ∀ n, P13142205509434640295.a n = A199025 n

end A199025

/-!
# A199026: a(n) = 7*11^n-1.

The programs for A199026, the canonical program `A199026.P1951204772399247785` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199026 has offset 0).

The definition of A199026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*11^n-1` (program `A199026.P1951204772399247785`, by `A199026.P1951204772399247785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199026.P1951204772399247785

`7*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199026

/-- `7*11^n-1` -/
def P1951204772399247785.Spec : Prop :=
  ∀ n, P1951204772399247785.a n = A199026 n

theorem P1951204772399247785.correct : P1951204772399247785.Spec := by
  intro n
  simp only [A199026]

end A199026

/-! ## A199026.P13805393308312330428

`ogf((6+4x)/(1-12x+11x^2))`
-/

namespace A199026.P13805393308312330428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4] [1, -12, 11] n

end

end A199026.P13805393308312330428

namespace A199026

/-- `ogf((6+4x)/(1-12x+11x^2))` -/
def P13805393308312330428.Spec : Prop :=
  ∀ n, P13805393308312330428.a n = A199026 n

end A199026

/-! ## A199026.P12874032867081613953

`xor(1, 7*11^n)`
-/

namespace A199026.P12874032867081613953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * 11 ^ n)

end

end A199026.P12874032867081613953

namespace A199026

/-- `xor(1, 7*11^n)` -/
def P12874032867081613953.Spec : Prop :=
  ∀ n, (P12874032867081613953.a n : ℤ) = A199026 n

end A199026

/-! ## A199026.P1181179677417333561

`and(7*11^n, -2)`
-/

namespace A199026.P1181179677417333561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (7 * 11 ^ n : ℤ) (-2)

end

end A199026.P1181179677417333561

namespace A199026

/-- `and(7*11^n, -2)` -/
def P1181179677417333561.Spec : Prop :=
  ∀ n, P1181179677417333561.a n = A199026 n

end A199026

/-! ## A199026.P15068313576862815897

`∑[floor(Δ[11*a(n-1)])]` with `a(0)=1, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199026.P15068313576862815897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  11 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199026.P15068313576862815897

namespace A199026

/-- `∑[floor(Δ[11*a(n-1)])]` -/
def P15068313576862815897.Spec : Prop :=
  ∀ n, P15068313576862815897.a n = A199026 n

end A199026

/-! ## A199026.P5335126688541358571

`2*A199025(n)`
-/

namespace A199026.P5335126688541358571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199025 n

end

end A199026.P5335126688541358571

namespace A199026

/-- `2*A199025(n)` -/
def P5335126688541358571.Spec : Prop :=
  ∀ n, P5335126688541358571.a n = A199026 n

end A199026

/-! ## A199026.P917565785713439664

`abs(2-A199758(n))`
-/

namespace A199026.P917565785713439664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199758 n|

end

end A199026.P917565785713439664

namespace A199026

/-- `abs(2-A199758(n))` -/
def P917565785713439664.Spec : Prop :=
  ∀ n, P917565785713439664.a n = A199026 n

end A199026

/-! ## A199026.P12689205900001619276

`2*(A199757(n)-1)`
-/

namespace A199026.P12689205900001619276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199757 n - 1)

end

end A199026.P12689205900001619276

namespace A199026

/-- `2*(A199757(n)-1)` -/
def P12689205900001619276.Spec : Prop :=
  ∀ n, P12689205900001619276.a n = A199026 n

end A199026

/-! ## A199026.P11716255448698898334

`Δ[A199751(n)]%A199759(n)`
-/

namespace A199026.P11716255448698898334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A199759 n)

end

end A199026.P11716255448698898334

namespace A199026

/-- `Δ[A199751(n)]%A199759(n)` -/
def P11716255448698898334.Spec : Prop :=
  ∀ n, P11716255448698898334.a n = A199026 n

end A199026

/-!
# A199027: a(n) = 8*11^n-1.

The programs for A199027, the canonical program `A199027.P3945229730653344754` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199027 has offset 0).

The definition of A199027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*11^n-1` (program `A199027.P3945229730653344754`, by `A199027.P3945229730653344754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199027.P3945229730653344754

`8*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199027

/-- `8*11^n-1` -/
def P3945229730653344754.Spec : Prop :=
  ∀ n, P3945229730653344754.a n = A199027 n

theorem P3945229730653344754.correct : P3945229730653344754.Spec := by
  intro n
  simp only [A199027]

end A199027

/-! ## A199027.P8433579675505852990

`ogf((7+3x)/(1-12x+11x^2))`
-/

namespace A199027.P8433579675505852990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 3] [1, -12, 11] n

end

end A199027.P8433579675505852990

namespace A199027

/-- `ogf((7+3x)/(1-12x+11x^2))` -/
def P8433579675505852990.Spec : Prop :=
  ∀ n, P8433579675505852990.a n = A199027 n

end A199027

/-! ## A199027.P11728867873469767522

`xor(15, 8*11^n)`
-/

namespace A199027.P11728867873469767522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 15 (8 * 11 ^ n)

end

end A199027.P11728867873469767522

namespace A199027

/-- `xor(15, 8*11^n)` -/
def P11728867873469767522.Spec : Prop :=
  ∀ n, (P11728867873469767522.a n : ℤ) = A199027 n

end A199027

/-! ## A199027.P73523563424781906

`abs(1-lcm(8, 11^n))`
-/

namespace A199027.P73523563424781906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 8 (11 ^ n) : ℤ)|

end

end A199027.P73523563424781906

namespace A199027

/-- `abs(1-lcm(8, 11^n))` -/
def P73523563424781906.Spec : Prop :=
  ∀ n, P73523563424781906.a n = A199027 n

end A199027

/-! ## A199027.P6680135734528261020

`abs(11*(a(n-1)+1)-1)` with `a(0)=7`
-/

namespace A199027.P6680135734528261020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |11 * (a (n - 1) + 1) - 1|

end

end A199027.P6680135734528261020

namespace A199027

/-- `abs(11*(a(n-1)+1)-1)` -/
def P6680135734528261020.Spec : Prop :=
  ∀ n, P6680135734528261020.a n = A199027 n

end A199027

/-! ## A199027.P13804389264158259172

`abs(2-A199759(n))`
-/

namespace A199027.P13804389264158259172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199759 n|

end

end A199027.P13804389264158259172

namespace A199027

/-- `abs(2-A199759(n))` -/
def P13804389264158259172.Spec : Prop :=
  ∀ n, P13804389264158259172.a n = A199027 n

end A199027

/-! ## A199027.P7660640666225081059

`Δ[A083077(n)-n]`
-/

namespace A199027.P7660640666225081059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083077 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199027.P7660640666225081059

namespace A199027

/-- `Δ[A083077(n)-n]` -/
def P7660640666225081059.Spec : Prop :=
  ∀ n, P7660640666225081059.a n = A199027 n

end A199027

/-! ## A199027.P5993774398870532978

`(A199759(n)-2)%A199763(n)`
-/

namespace A199027.P5993774398870532978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199759 n - 2) (A199763 n)

end

end A199027.P5993774398870532978

namespace A199027

/-- `(A199759(n)-2)%A199763(n)` -/
def P5993774398870532978.Spec : Prop :=
  ∀ n, P5993774398870532978.a n = A199027 n

end A199027

/-! ## A199027.P2828646940340151587

`or(1, A199028(n)+A199025(n))`
-/

namespace A199027.P2828646940340151587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A199028 n + A199025 n)

end

end A199027.P2828646940340151587

namespace A199027

/-- `or(1, A199028(n)+A199025(n))` -/
def P2828646940340151587.Spec : Prop :=
  ∀ n, P2828646940340151587.a n = A199027 n

end A199027

/-! ## A199027.P11676824520204526793

`Δ[A156341(n)/2-n]`
-/

namespace A199027.P11676824520204526793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156341 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199027.P11676824520204526793

namespace A199027

/-- `Δ[A156341(n)/2-n]` -/
def P11676824520204526793.Spec : Prop :=
  ∀ n, P11676824520204526793.a n = (A199027 n : ℚ)

end A199027

/-!
# A199028: a(n) = (9*11^n - 1)/2.

The programs for A199028, the canonical program `A199028.P13307752810657814062` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199028 has offset 0).

The definition of A199028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*11^n-1)/2` (program `A199028.P16169589421700679767`, by `A199028.P16169589421700679767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199028.P17758985263918088989

`ogf((4+x)/(1-12x+11x^2))`
-/

namespace A199028.P17758985263918088989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -12, 11] n

end

end A199028.P17758985263918088989

namespace A199028

/-- `ogf((4+x)/(1-12x+11x^2))` -/
def P17758985263918088989.Spec : Prop :=
  ∀ n, P17758985263918088989.a n = A199028 n

end A199028

/-! ## A199028.P16169589421700679767

`(9*11^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199028.P16169589421700679767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 11 ^ n : ℤ) - 1 : ℚ) / 2

end

end A199028.P16169589421700679767

namespace A199028

/-- `(9*11^n-1)/2` -/
def P16169589421700679767.Spec : Prop :=
  ∀ n, P16169589421700679767.a n = (A199028 n : ℚ)

theorem P16169589421700679767.correct : P16169589421700679767.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199028, Nat.add_sub_cancel, A199028.P16169589421700679767.a, A199028.P13307752810657814062.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199028, Nat.add_sub_cancel, A199028.P16169589421700679767.a, A199028.P13307752810657814062.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A199028

/-! ## A199028.P13307752810657814062

`11*a(n-1)+5` with `a(0)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199028

/-- `11*a(n-1)+5` -/
def P13307752810657814062.Spec : Prop :=
  ∀ n, (P13307752810657814062.a n : ℤ) = A199028 n

theorem P13307752810657814062.correct : P13307752810657814062.Spec := by
  intro n
  simp only [A199028]

end A199028

/-! ## A199028.P14880529108464482444

`lcm(11, a(n-1))+5` with `a(0)=4`
-/

namespace A199028.P14880529108464482444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 5

end

end A199028.P14880529108464482444

namespace A199028

/-- `lcm(11, a(n-1))+5` -/
def P14880529108464482444.Spec : Prop :=
  ∀ n, (P14880529108464482444.a n : ℤ) = A199028 n

end A199028

/-! ## A199028.P9376658715974498482

`∑[11*a(n-1)]` with `a(0)=4, a(1)=45`
-/

namespace A199028.P9376658715974498482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 45] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199028.P9376658715974498482

namespace A199028

/-- `∑[11*a(n-1)]` -/
def P9376658715974498482.Spec : Prop :=
  ∀ n, (P9376658715974498482.a n : ℤ) = A199028 n

end A199028

/-! ## A199028.P4737734967857488122

`5-(a(n-1)-12*a(n-1))` with `a(0)=4`
-/

namespace A199028.P4737734967857488122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  5 - (a (n - 1) - 12 * a (n - 1))

end

end A199028.P4737734967857488122

namespace A199028

/-- `5-(a(n-1)-12*a(n-1))` -/
def P4737734967857488122.Spec : Prop :=
  ∀ n, P4737734967857488122.a n = A199028 n

end A199028

/-! ## A199028.P6726357455266343083

`A199762(n)-1`
-/

namespace A199028.P6726357455266343083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199762 n - 1

end

end A199028.P6726357455266343083

namespace A199028

/-- `A199762(n)-1` -/
def P6726357455266343083.Spec : Prop :=
  ∀ n, P6726357455266343083.a n = A199028 n

end A199028

/-! ## A199028.P9672183098684463757

`3*A199018(n)+1`
-/

namespace A199028.P9672183098684463757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199018 n + 1

end

end A199028.P9672183098684463757

namespace A199028

/-- `3*A199018(n)+1` -/
def P9672183098684463757.Spec : Prop :=
  ∀ n, P9672183098684463757.a n = A199028 n

end A199028

/-! ## A199028.P2000138974748984108

`A199763(n)/2-1`
-/

namespace A199028.P2000138974748984108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199763 n : ℚ) / 2 - 1

end

end A199028.P2000138974748984108

namespace A199028

/-- `A199763(n)/2-1` -/
def P2000138974748984108.Spec : Prop :=
  ∀ n, P2000138974748984108.a n = (A199028 n : ℚ)

theorem P2000138974748984108.correct : P2000138974748984108.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199028, Nat.add_sub_cancel, A199028.P2000138974748984108.a, A199028.P13307752810657814062.a, A199763, A199763.P6771920329356579825.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199028, Nat.add_sub_cancel, A199028.P2000138974748984108.a, A199028.P13307752810657814062.a, A199763, A199763.P6771920329356579825.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199028

/-! ## A199028.P9640164057641861897

`3*A199751(n)-2`
-/

namespace A199028.P9640164057641861897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199751 n - 2

end

end A199028.P9640164057641861897

namespace A199028

/-- `3*A199751(n)-2` -/
def P9640164057641861897.Spec : Prop :=
  ∀ n, P9640164057641861897.a n = A199028 n

end A199028

/-!
# A199029: a(n) = 9*11^n - 1.

The programs for A199029, the canonical program `A199029.P10690101604887470321` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199029 has offset 0).

The definition of A199029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*11^n-1` (program `A199029.P10690101604887470321`, by `A199029.P10690101604887470321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199029.P10690101604887470321

`9*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199029

/-- `9*11^n-1` -/
def P10690101604887470321.Spec : Prop :=
  ∀ n, P10690101604887470321.a n = A199029 n

theorem P10690101604887470321.correct : P10690101604887470321.Spec := by
  intro n
  simp only [A199029]

end A199029

/-! ## A199029.P7479704622497097890

`ogf((8+2x)/(1-12x+11x^2))`
-/

namespace A199029.P7479704622497097890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 2] [1, -12, 11] n

end

end A199029.P7479704622497097890

namespace A199029

/-- `ogf((8+2x)/(1-12x+11x^2))` -/
def P7479704622497097890.Spec : Prop :=
  ∀ n, P7479704622497097890.a n = A199029 n

end A199029

/-! ## A199029.P16198773191980973692

`2*A199028(n)`
-/

namespace A199029.P16198773191980973692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199028 n

end

end A199029.P16198773191980973692

namespace A199029

/-- `2*A199028(n)` -/
def P16198773191980973692.Spec : Prop :=
  ∀ n, P16198773191980973692.a n = A199029 n

end A199029

/-! ## A199029.P9023785793205209027

`xor(1, 9*11^n)`
-/

namespace A199029.P9023785793205209027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (9 * 11 ^ n)

end

end A199029.P9023785793205209027

namespace A199029

/-- `xor(1, 9*11^n)` -/
def P9023785793205209027.Spec : Prop :=
  ∀ n, (P9023785793205209027.a n : ℤ) = A199029 n

end A199029

/-! ## A199029.P956086377996822153

`∑[or(2, 11*a(n-1))]` with `a(0)=8`
-/

namespace A199029.P956086377996822153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  Nat.lor 2 (11 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199029.P956086377996822153

namespace A199029

/-- `∑[or(2, 11*a(n-1))]` -/
def P956086377996822153.Spec : Prop :=
  ∀ n, (P956086377996822153.a n : ℤ) = A199029 n

end A199029

/-! ## A199029.P11185588202825997236

`abs(2-A199763(n))`
-/

namespace A199029.P11185588202825997236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199763 n|

end

end A199029.P11185588202825997236

namespace A199029

/-- `abs(2-A199763(n))` -/
def P11185588202825997236.Spec : Prop :=
  ∀ n, P11185588202825997236.a n = A199029 n

end A199029

/-! ## A199029.P17783912872710183016

`Δ[A199760(n)-n]`
-/

namespace A199029.P17783912872710183016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199760 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199029.P17783912872710183016

namespace A199029

/-- `Δ[A199760(n)-n]` -/
def P17783912872710183016.Spec : Prop :=
  ∀ n, P17783912872710183016.a n = A199029 n

end A199029

/-! ## A199029.P7798191288156376347

`2*(A199762(n)-1)`
-/

namespace A199029.P7798191288156376347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199762 n - 1)

end

end A199029.P7798191288156376347

namespace A199029

/-- `2*(A199762(n)-1)` -/
def P7798191288156376347.Spec : Prop :=
  ∀ n, P7798191288156376347.a n = A199029 n

end A199029

/-! ## A199029.P8426097750406353582

`round(3/2*A199024(n))`
-/

namespace A199029.P8426097750406353582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (A199024 n : ℚ))

end

end A199029.P8426097750406353582

namespace A199029

/-- `round(3/2*A199024(n))` -/
def P8426097750406353582.Spec : Prop :=
  ∀ n, P8426097750406353582.a n = A199029 n

end A199029

/-!
# A199030: a(n) = 10*11^n-1.

The programs for A199030, the canonical program `A199030.P3461858790821088743` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199030 has offset 0).

The definition of A199030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*11^n-1` (program `A199030.P3461858790821088743`, by `A199030.P3461858790821088743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199030.P3461858790821088743

`10*11^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199030

/-- `10*11^n-1` -/
def P3461858790821088743.Spec : Prop :=
  ∀ n, P3461858790821088743.a n = A199030 n

theorem P3461858790821088743.correct : P3461858790821088743.Spec := by
  intro n
  simp only [A199030]

end A199030

/-! ## A199030.P2436143830916790128

`ogf((9+x)/(1-12x+11x^2))`
-/

namespace A199030.P2436143830916790128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 1] [1, -12, 11] n

end

end A199030.P2436143830916790128

namespace A199030

/-- `ogf((9+x)/(1-12x+11x^2))` -/
def P2436143830916790128.Spec : Prop :=
  ∀ n, P2436143830916790128.a n = A199030 n

end A199030

/-! ## A199030.P8258227741511078859

`xor(3, Δ[11^n])`
-/

namespace A199030.P8258227741511078859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199030.P8258227741511078859

namespace A199030

/-- `xor(3, Δ[11^n])` -/
def P8258227741511078859.Spec : Prop :=
  ∀ n, P8258227741511078859.a n = A199030 n

end A199030

/-! ## A199030.P16244453191719806161

`Δ[A024128(n)]`
-/

namespace A199030.P16244453191719806161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199030.P16244453191719806161

namespace A199030

/-- `Δ[A024128(n)]` -/
def P16244453191719806161.Spec : Prop :=
  ∀ n, P16244453191719806161.a n = A199030 n

theorem P16244453191719806161.correct : P16244453191719806161.Spec := by
  intro n
  simp only [A199030, Nat.add_sub_cancel, A199030.P16244453191719806161.f1, A199030.P16244453191719806161.a, A199030.P3461858790821088743.a, A024128, A024128.P11402012561748999173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199030

/-! ## A199030.P6909210105883530870

`abs(2-A199764(n))`
-/

namespace A199030.P6909210105883530870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199764 n|

end

end A199030.P6909210105883530870

namespace A199030

/-- `abs(2-A199764(n))` -/
def P6909210105883530870.Spec : Prop :=
  ∀ n, P6909210105883530870.a n = A199030 n

end A199030

/-! ## A199030.P10170231972072449112

`∑[A056002(n+1)]`
-/

namespace A199030.P10170231972072449112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199030.P10170231972072449112

namespace A199030

/-- `∑[A056002(n+1)]` -/
def P10170231972072449112.Spec : Prop :=
  ∀ n, P10170231972072449112.a n = A199030 n

end A199030

/-! ## A199030.P11733645345692322550

`Δ[A001020(n)-n]`
-/

namespace A199030.P11733645345692322550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199030.P11733645345692322550

namespace A199030

/-- `Δ[A001020(n)-n]` -/
def P11733645345692322550.Spec : Prop :=
  ∀ n, P11733645345692322550.a n = A199030 n

theorem P11733645345692322550.correct : P11733645345692322550.Spec := by
  intro n
  simp only [A199030, Nat.add_sub_cancel, A199030.P11733645345692322550.f1, A199030.P11733645345692322550.a, A199030.P3461858790821088743.a, A001020, A001020.P6110418391945528251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199030

/-! ## A199030.P1771472434684234227

`Δ[A024127(n)-n]`
-/

namespace A199030.P1771472434684234227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024127 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199030.P1771472434684234227

namespace A199030

/-- `Δ[A024127(n)-n]` -/
def P1771472434684234227.Spec : Prop :=
  ∀ n, P1771472434684234227.a n = A199030 n

theorem P1771472434684234227.correct : P1771472434684234227.Spec := by
  intro n
  simp only [A199030, Nat.add_sub_cancel, A199030.P1771472434684234227.f1, A199030.P1771472434684234227.a, A199030.P3461858790821088743.a, A024127, A024127.P11041693200226580728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199030

/-! ## A199030.P10289370860083813444

`Δ[A034524(n)-n]`
-/

namespace A199030.P10289370860083813444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199030.P10289370860083813444

namespace A199030

/-- `Δ[A034524(n)-n]` -/
def P10289370860083813444.Spec : Prop :=
  ∀ n, P10289370860083813444.a n = A199030 n

theorem P10289370860083813444.correct : P10289370860083813444.Spec := by
  intro n
  simp only [A199030, Nat.add_sub_cancel, A199030.P10289370860083813444.f1, A199030.P10289370860083813444.a, A199030.P3461858790821088743.a, A034524, A034524.P14152157889491239874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199030

/-!
# A199031: a(n) = 2*12^n-1.

The programs for A199031, the canonical program `A199031.P10853823824336899399` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199031 has offset 0).

The definition of A199031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*12^n-1` (program `A199031.P10853823824336899399`, by `A199031.P10853823824336899399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199031.P10853823824336899399

`2*12^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199031

/-- `2*12^n-1` -/
def P10853823824336899399.Spec : Prop :=
  ∀ n, P10853823824336899399.a n = A199031 n

theorem P10853823824336899399.correct : P10853823824336899399.Spec := by
  intro n
  simp only [A199031]

end A199031

/-! ## A199031.P7157249574093254512

`ogf((1+10x)/(1-13x+12x^2))`
-/

namespace A199031.P7157249574093254512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -13, 12] n

end

end A199031.P7157249574093254512

namespace A199031

/-- `ogf((1+10x)/(1-13x+12x^2))` -/
def P7157249574093254512.Spec : Prop :=
  ∀ n, P7157249574093254512.a n = A199031 n

end A199031

/-! ## A199031.P18191711704053324938

`record[12*T(n-1,k-1)+11]` with `a(0)=1, a(1)=1`
-/

namespace A199031.P18191711704053324938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  12 * SequenceMachineLib.triUpLeft f1 n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199031.P18191711704053324938

namespace A199031

/-- `record[12*T(n-1,k-1)+11]` -/
def P18191711704053324938.Spec : Prop :=
  ∀ n, (P18191711704053324938.a n : ℤ) = A199031 n

end A199031

/-! ## A199031.P18175753585581915990

`∑[12*a(n-1)]` with `a(0)=1, a(1)=22`
-/

namespace A199031.P18175753585581915990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199031.P18175753585581915990

namespace A199031

/-- `∑[12*a(n-1)]` -/
def P18175753585581915990.Spec : Prop :=
  ∀ n, (P18175753585581915990.a n : ℤ) = A199031 n

end A199031

/-! ## A199031.P4639561572124322469

`-xor(1, -(2*12^n))`
-/

namespace A199031.P4639561572124322469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(2 * 12 ^ n : ℤ))

end

end A199031.P4639561572124322469

namespace A199031

/-- `-xor(1, -(2*12^n))` -/
def P4639561572124322469.Spec : Prop :=
  ∀ n, P4639561572124322469.a n = A199031 n

end A199031

/-! ## A199031.P3389143901818913898

`or(15, 12*a(n-1))` with `a(0)=1, a(1)=23`
-/

namespace A199031.P3389143901818913898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n a =>
  Nat.lor 15 (12 * a (n - 1))

end

end A199031.P3389143901818913898

namespace A199031

/-- `or(15, 12*a(n-1))` -/
def P3389143901818913898.Spec : Prop :=
  ∀ n, (P3389143901818913898.a n : ℤ) = A199031 n

end A199031

/-! ## A199031.P16160696989293115033

`abs(12*(a(n-1)+1)-1)` with `a(0)=1`
-/

namespace A199031.P16160696989293115033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |12 * (a (n - 1) + 1) - 1|

end

end A199031.P16160696989293115033

namespace A199031

/-- `abs(12*(a(n-1)+1)-1)` -/
def P16160696989293115033.Spec : Prop :=
  ∀ n, P16160696989293115033.a n = A199031 n

end A199031

/-! ## A199031.P7667470450006258341

`floor(A199106(n)/2)`
-/

namespace A199031.P7667470450006258341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199106 n : ℚ) / 2⌋

end

end A199031.P7667470450006258341

namespace A199031

/-- `floor(A199106(n)/2)` -/
def P7667470450006258341.Spec : Prop :=
  ∀ n, P7667470450006258341.a n = A199031 n

end A199031

/-! ## A199031.P7662608035339385437

`xor(1, 2*A024140(n))`
-/

namespace A199031.P7662608035339385437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A024140 n)

end

end A199031.P7662608035339385437

namespace A199031

/-- `xor(1, 2*A024140(n))` -/
def P7662608035339385437.Spec : Prop :=
  ∀ n, P7662608035339385437.a n = A199031 n

end A199031

/-! ## A199031.P8391944167328075988

`abs(1-A176710(2*n+1))`
-/

namespace A199031.P8391944167328075988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A176710 (2 * n + 1)|

end

end A199031.P8391944167328075988

namespace A199031

/-- `abs(1-A176710(2*n+1))` -/
def P8391944167328075988.Spec : Prop :=
  ∀ n, P8391944167328075988.a n = A199031 n

end A199031

/-!
# A199032: a(n) = 3*12^n-1.

The programs for A199032, the canonical program `A199032.P16529300865655891925` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199032 has offset 0).

The definition of A199032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*12^n-1` (program `A199032.P16529300865655891925`, by `A199032.P16529300865655891925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199032.P16529300865655891925

`3*12^n-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199032

/-- `3*12^n-1` -/
def P16529300865655891925.Spec : Prop :=
  ∀ n, P16529300865655891925.a n = A199032 n

theorem P16529300865655891925.correct : P16529300865655891925.Spec := by
  intro n
  simp only [A199032]

end A199032

/-! ## A199032.P6082606285730480639

`ogf((2+9x)/(1-13x+12x^2))`
-/

namespace A199032.P6082606285730480639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9] [1, -13, 12] n

end

end A199032.P6082606285730480639

namespace A199032

/-- `ogf((2+9x)/(1-13x+12x^2))` -/
def P6082606285730480639.Spec : Prop :=
  ∀ n, P6082606285730480639.a n = A199032 n

end A199032

/-! ## A199032.P1628579553417618030

`record[12*T(n-1,k-1)+11]` with `a(0)=2, a(1)=1`
-/

namespace A199032.P1628579553417618030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  12 * SequenceMachineLib.triUpLeft f1 n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199032.P1628579553417618030

namespace A199032

/-- `record[12*T(n-1,k-1)+11]` -/
def P1628579553417618030.Spec : Prop :=
  ∀ n, (P1628579553417618030.a n : ℤ) = A199032 n

end A199032

/-! ## A199032.P8893555707531579962

`∑[12*a(n-1)]` with `a(0)=2, a(1)=33`
-/

namespace A199032.P8893555707531579962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 33] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199032.P8893555707531579962

namespace A199032

/-- `∑[12*a(n-1)]` -/
def P8893555707531579962.Spec : Prop :=
  ∀ n, (P8893555707531579962.a n : ℤ) = A199032 n

end A199032

/-! ## A199032.P5654579572935552904

`abs(12*(a(n-1)+1)-1)` with `a(0)=2`
-/

namespace A199032.P5654579572935552904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |12 * (a (n - 1) + 1) - 1|

end

end A199032.P5654579572935552904

namespace A199032

/-- `abs(12*(a(n-1)+1)-1)` -/
def P5654579572935552904.Spec : Prop :=
  ∀ n, P5654579572935552904.a n = A199032 n

end A199032

/-! ## A199032.P554695265916209784

`abs(3*A001021(n)-1)`
-/

namespace A199032.P554695265916209784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A001021 n - 1|

end

end A199032.P554695265916209784

namespace A199032

/-- `abs(3*A001021(n)-1)` -/
def P554695265916209784.Spec : Prop :=
  ∀ n, P554695265916209784.a n = A199032 n

end A199032

/-! ## A199032.P11461665432710425248

`record[Δ[A282022(n*and(1, n))]]`
-/

namespace A199032.P11461665432710425248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282022 (n * Nat.land 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199032.P11461665432710425248

namespace A199032

/-- `record[Δ[A282022(n*and(1, n))]]` -/
def P11461665432710425248.Spec : Prop :=
  ∀ n, P11461665432710425248.a n = A199032 n

end A199032

/-! ## A199032.P15458833444876441109

`abs(1-A282022(2*n+1))`
-/

namespace A199032.P15458833444876441109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A282022 (2 * n + 1)|

end

end A199032.P15458833444876441109

namespace A199032

/-- `abs(1-A282022(2*n+1))` -/
def P15458833444876441109.Spec : Prop :=
  ∀ n, P15458833444876441109.a n = A199032 n

end A199032

/-! ## A199032.P17605709550655462527

`abs(1-3*sqrt(A001019(n))*A000302(n))`
-/

namespace A199032.P17605709550655462527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |1 - 3 * Real.sqrt (A001019 n : ℝ) * (A000302 n : ℝ)|

end

end A199032.P17605709550655462527

namespace A199032

/-- `abs(1-3*sqrt(A001019(n))*A000302(n))` -/
def P17605709550655462527.Spec : Prop :=
  ∀ n, P17605709550655462527.a n = (A199032 n : ℝ)

end A199032

/-!
# A199033: Number of ways to place n non-attacking bishops on a 2 X 2n board.

The programs for A199033, the canonical program `A199033.P7946031187990716657` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199033 has offset 0).

The definition of A199033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199033.P7946031187990716657

`∑{#}[n, C(2*n-#+1, #)*C(n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199033

/-- `∑{#}[n, C(2*n-#+1, #)*C(n+#+1, n-#)]` -/
def P7946031187990716657.Spec : Prop :=
  ∀ n, (P7946031187990716657.a n : ℤ) = A199033 n

theorem P7946031187990716657.correct : P7946031187990716657.Spec := by
  intro n
  simp only [A199033]

end A199033

/-! ## A199033.P7188265600348845754

`∑{#}[n, (-2)^#*C(3*n+3, n-#)]`
-/

namespace A199033.P7188265600348845754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * (Nat.choose (3 * n + 3) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A199033.P7188265600348845754

namespace A199033

/-- `∑{#}[n, (-2)^#*C(3*n+3, n-#)]` -/
def P7188265600348845754.Spec : Prop :=
  ∀ n, P7188265600348845754.a n = A199033 n

end A199033

/-! ## A199033.P16125008588496727098

`∑{#}[floor(n/2), C(3*n-2*#+1, n-2*#)]`
-/

namespace A199033.P16125008588496727098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((3 * n : ℤ) - (2 * k : ℤ) + 1).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A199033.P16125008588496727098

namespace A199033

/-- `∑{#}[floor(n/2), C(3*n-2*#+1, n-2*#)]` -/
def P16125008588496727098.Spec : Prop :=
  ∀ n, (P16125008588496727098.a n : ℤ) = A199033 n

end A199033

/-! ## A199033.P16801493813178042790

`A005809(n+1)-A183160(n+1)`
-/

namespace A199033.P16801493813178042790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n + 1) - A183160 (n + 1)

end

end A199033.P16801493813178042790

namespace A199033

/-- `A005809(n+1)-A183160(n+1)` -/
def P16801493813178042790.Spec : Prop :=
  ∀ n, P16801493813178042790.a n = A199033 n

end A199033

/-! ## A199033.P18037904425445358483

`∑{#}[n, A219197(#)*A219197(n-#)]`
-/

namespace A199033.P18037904425445358483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A219197 k * A219197 (n - k)

end

end A199033.P18037904425445358483

namespace A199033

/-- `∑{#}[n, A219197(#)*A219197(n-#)]` -/
def P18037904425445358483.Spec : Prop :=
  ∀ n, P18037904425445358483.a n = A199033 n

end A199033

/-! ## A199033.P17125105355205404180

`A109244((n+1)²+(n+2)²)`
-/

namespace A199033.P17125105355205404180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A199033.P17125105355205404180

namespace A199033

/-- `A109244((n+1)²+(n+2)²)` -/
def P17125105355205404180.Spec : Prop :=
  ∀ n, P17125105355205404180.a n = A199033 n

end A199033

/-! ## A199033.P1355519844591776155

`abs(A158454(∑[A016825(n)]))`
-/

namespace A199033.P1355519844591776155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158454 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A199033.P1355519844591776155

namespace A199033

/-- `abs(A158454(∑[A016825(n)]))` -/
def P1355519844591776155.Spec : Prop :=
  ∀ n, P1355519844591776155.a n = A199033 n

end A199033

/-! ## A199033.P6818255444201723937

`record[gcd(A051777(n+1), A158454(n))]`
-/

namespace A199033.P6818255444201723937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051777 (n + 1)) (A158454 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199033.P6818255444201723937

namespace A199033

/-- `record[gcd(A051777(n+1), A158454(n))]` -/
def P6818255444201723937.Spec : Prop :=
  ∀ n, (P6818255444201723937.a n : ℤ) = A199033 n

end A199033

/-! ## A199033.P5732008731900571659

`A123521((n+1)*Δ[n²])`
-/

namespace A199033.P5732008731900571659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A199033.P5732008731900571659

namespace A199033

/-- `A123521((n+1)*Δ[n²])` -/
def P5732008731900571659.Spec : Prop :=
  ∀ n, P5732008731900571659.a n = A199033 n

end A199033

/-!
# A199035: Number of nX2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199035, there is no canonical definition to state claims against.
-/

/-! ## A199035.P11308741325941611507

`A199041(∑[n+1]+2)`
-/

namespace A199035.P11308741325941611507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199035.P11308741325941611507

/-! ## A199035.P17786400865322033434

`A199041(A238531(n+2))+A025443(n)`
-/

namespace A199035.P17786400865322033434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A238531 (n + 2)).toNat + A025443 n

end

end A199035.P17786400865322033434

/-! ## A199035.P7196521444205037514

`A199041(A238531(n+2))*A242784(n)`
-/

namespace A199035.P7196521444205037514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A238531 (n + 2)).toNat * A242784 n

end

end A199035.P7196521444205037514

/-!
# A199036: Number of nX3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199036, there is no canonical definition to state claims against.
-/

/-! ## A199036.P1724396933551270491

`A199041(∑[n+2]+4)`
-/

namespace A199036.P1724396933551270491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199036.P1724396933551270491

/-! ## A199036.P3847158512979436943

`record[A117362(n)*A199041(n+4)]`
-/

namespace A199036.P3847158512979436943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 n * A199041 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199036.P3847158512979436943

/-! ## A199036.P4518455034325104830

`record[A199041(n+5)/A171567(n+1)]`
-/

namespace A199036.P4518455034325104830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199041 (n + 5) : ℚ) / (A171567 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199036.P4518455034325104830

/-! ## A199036.P12948854657133318262

`lcm((-1)^∑{e}[n+1, #], A199041(A167614(n+1)))`
-/

namespace A199036.P12948854657133318262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A199041 (A167614 (n + 1)).toNat)

end

end A199036.P12948854657133318262

/-! ## A199036.P883955578202967757

`A199041(A167614(n+1))+A011745(n)`
-/

namespace A199036.P883955578202967757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A167614 (n + 1)).toNat + A011745 n

end

end A199036.P883955578202967757

/-!
# A199037: Number of nX4 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199037, there is no canonical definition to state claims against.
-/

/-! ## A199037.P8362419851053029334

`A199041(A141214(n)+7)`
-/

namespace A199037.P8362419851053029334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A141214 n + 7).toNat

end

end A199037.P8362419851053029334

/-! ## A199037.P14366631418209294758

`A199041(A052905(n)+9)`
-/

namespace A199037.P14366631418209294758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A052905 n + 9).toNat

end

end A199037.P14366631418209294758

/-! ## A199037.P13684649962969054400

`A199041(A055999(n)+10)`
-/

namespace A199037.P13684649962969054400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A055999 n + 10).toNat

end

end A199037.P13684649962969054400

/-! ## A199037.P4068785838884222925

`A199041(eq[5, A066657(n)])`
-/

namespace A199037.P4068785838884222925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199037.P4068785838884222925

/-! ## A199037.P7020845765265064307

`record[A199041(Δ[A175822(n)])]`
-/

namespace A199037.P7020845765265064307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199037.P7020845765265064307

/-!
# A199038: Number of nX5 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199038, there is no canonical definition to state claims against.
-/

/-! ## A199038.P1708256504065458956

`A199041(A167499(n+3))`
-/

namespace A199038.P1708256504065458956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A167499 (n + 3)).toNat

end

end A199038.P1708256504065458956

/-! ## A199038.P1386254984226324898

`A199041(A155212(n)+13)`
-/

namespace A199038.P1386254984226324898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A155212 n + 13).toNat

end

end A199038.P1386254984226324898

/-! ## A199038.P14027947547760704967

`A199041(A056000(n)+15)`
-/

namespace A199038.P14027947547760704967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A056000 n + 15).toNat

end

end A199038.P14027947547760704967

/-! ## A199038.P2268424515521131324

`A199041(eq[7, A066657(n)])`
-/

namespace A199038.P2268424515521131324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199038.P2268424515521131324

/-!
# A199039: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199039, there is no canonical definition to state claims against.
-/

/-! ## A199039.P2007027595664280675

`A199041(A374007(n+1))`
-/

namespace A199039.P2007027595664280675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A374007 (n + 1)).toNat

end

end A199039.P2007027595664280675

/-!
# A199040: Number of nX7 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199040, there is no canonical definition to state claims against.
-/

/-! ## A199040.P15865149632121446707

`A199041(A374008(1+n))`
-/

namespace A199040.P15865149632121446707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (A374008 (1 + n)).toNat

end

end A199040.P15865149632121446707

/-!
# A199045: Smallest multiple of 2^n having in decimal representation exactly n digits <= 2.

The programs for A199045, there is no canonical definition to state claims against.
-/

/-! ## A199045.P15441684143394575344

`A181060(2^A002957(n+1))`
-/

namespace A199045.P15441684143394575344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181060 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002957 (n + 1) : ℤ))).toNat

end

end A199045.P15441684143394575344

/-!
# A199084: a(n) = Sum_{k=1..n} (-1)^(k+1) gcd(k,n).

The programs for A199084, the canonical program `A199084.P13059449136352788046` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199084 has offset 1).

The definition of A199084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^(#+2)*gcd(#+1, n+1)]` (program `A199084.P13059449136352788046`, by `A199084.P13059449136352788046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199084.P825160791405201045

`(-1)^(n+2)*A344371(n+1)`
-/

namespace A199084.P825160791405201045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A344371 (n + 1)

end

end A199084.P825160791405201045

namespace A199084

/-- `(-1)^(n+2)*A344371(n+1)` -/
def P825160791405201045.Spec : Prop :=
  ∀ n, P825160791405201045.a n = A199084 (n + 1)

end A199084

/-! ## A199084.P13059449136352788046

`∑{#}[n, (-1)^(#+2)*gcd(#+1, n+1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199084

/-- `∑{#}[n, (-1)^(#+2)*gcd(#+1, n+1)]` -/
def P13059449136352788046.Spec : Prop :=
  ∀ n, P13059449136352788046.a n = A199084 (n + 1)

theorem P13059449136352788046.correct : P13059449136352788046.Spec := by
  intro n
  simp only [A199084, Nat.add_sub_cancel]

end A199084

/-! ## A199084.P2635825150110410535

`A344371(n+1)/(-1)^n`
-/

namespace A199084.P2635825150110410535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344371 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A199084.P2635825150110410535

namespace A199084

/-- `A344371(n+1)/(-1)^n` -/
def P2635825150110410535.Spec : Prop :=
  ∀ n, P2635825150110410535.a n = (A199084 (n + 1) : ℚ)

end A199084

/-! ## A199084.P6700998896668001716

`A018804(n+1)+A193356(n+1)-A344372(n+1)`
-/

namespace A199084.P6700998896668001716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A193356 (n + 1) - A344372 (n + 1))

end

end A199084.P6700998896668001716

namespace A199084

/-- `A018804(n+1)+A193356(n+1)-A344372(n+1)` -/
def P6700998896668001716.Spec : Prop :=
  ∀ n, P6700998896668001716.a n = A199084 (n + 1)

end A199084

/-! ## A199084.P9298422154962543782

`Δ[A001057(n)]-A344373(n+1)`
-/

namespace A199084.P9298422154962543782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A344373 (n + 1)

end

end A199084.P9298422154962543782

namespace A199084

/-- `Δ[A001057(n)]-A344373(n+1)` -/
def P9298422154962543782.Spec : Prop :=
  ∀ n, P9298422154962543782.a n = A199084 (n + 1)

end A199084

/-! ## A199084.P11838965363602056153

`A181983(n+1)-A344373(n+1)`
-/

namespace A199084.P11838965363602056153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1) - A344373 (n + 1)

end

end A199084.P11838965363602056153

namespace A199084

/-- `A181983(n+1)-A344373(n+1)` -/
def P11838965363602056153.Spec : Prop :=
  ∀ n, P11838965363602056153.a n = A199084 (n + 1)

end A199084

/-! ## A199084.P12989319010443317783

`∑{#}[n, gcd(#+1, n+1)/cos(π*#)]`
-/

namespace A199084.P12989319010443317783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) : ℝ) / Real.cos (Real.pi * (k : ℝ))

end

end A199084.P12989319010443317783

namespace A199084

/-- `∑{#}[n, gcd(#+1, n+1)/cos(π*#)]` -/
def P12989319010443317783.Spec : Prop :=
  ∀ n, P12989319010443317783.a n = (A199084 (n + 1) : ℝ)

end A199084

/-! ## A199084.P12951207533265667832

`n+1-(A344371(n+1)+A274093(∑[n+1]))`
-/

namespace A199084.P12951207533265667832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A344371 (n + 1) + A274093 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A199084.P12951207533265667832

namespace A199084

/-- `n+1-(A344371(n+1)+A274093(∑[n+1]))` -/
def P12951207533265667832.Spec : Prop :=
  ∀ n, P12951207533265667832.a n = A199084 (n + 1)

end A199084

/-!
# A199085: Number of distinct values taken by 3rd derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A199085, the canonical program `A199085.P15800722594958209619` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199085 has offset 1).

The definition of A199085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199085.P15800722594958209619

`round((abs(2-n²)+2*n)/3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199085

/-- `round((abs(2-n²)+2*n)/3)` -/
def P15800722594958209619.Spec : Prop :=
  ∀ n, P15800722594958209619.a n = A199085 (n + 1)

theorem P15800722594958209619.correct : P15800722594958209619.Spec := by
  intro n
  simp only [A199085, Nat.add_sub_cancel]

end A199085

/-! ## A199085.P8752611282658511809

`floor(((n+1)²+2)/3-atan(n))`
-/

namespace A199085.P8752611282658511809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 + 2 : ℚ) / 3 : ℝ) - Real.arctan (n : ℝ)⌋

end

end A199085.P8752611282658511809

namespace A199085

/-- `floor(((n+1)²+2)/3-atan(n))` -/
def P8752611282658511809.Spec : Prop :=
  ∀ n, P8752611282658511809.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P9477121983523019019

`∑[∑[n²%3]]+1-ceil(atan(n))`
-/

namespace A199085.P9477121983523019019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ⌈Real.arctan (n : ℝ)⌉

end

end A199085.P9477121983523019019

namespace A199085

/-- `∑[∑[n²%3]]+1-ceil(atan(n))` -/
def P9477121983523019019.Spec : Prop :=
  ∀ n, P9477121983523019019.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P9269002185911628603

`∑[a(n-3)+2]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A199085.P9269002185911628603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 3, 4] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199085.P9269002185911628603

namespace A199085

/-- `∑[a(n-3)+2]` -/
def P9269002185911628603.Spec : Prop :=
  ∀ n, (P9269002185911628603.a n : ℤ) = A199085 (n + 1)

end A199085

/-! ## A199085.P8834396499088444551

`floor(((n+1)²-a(2%n))/3)` with `a(0)=1`
-/

namespace A199085.P8834396499088444551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((n + 1) ^ 2 : ℤ) - a (2 % n) : ℚ) / 3⌋

end

end A199085.P8834396499088444551

namespace A199085

/-- `floor(((n+1)²-a(2%n))/3)` -/
def P8834396499088444551.Spec : Prop :=
  ∀ n, P8834396499088444551.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P9249827726388133595

`ceil((abs((n+1)²-3)-atan(n))/3)`
-/

namespace A199085.P9249827726388133595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((|((n + 1) ^ 2 : ℤ) - 3| : ℝ) - Real.arctan (n : ℝ)) / 3⌉

end

end A199085.P9249827726388133595

namespace A199085

/-- `ceil((abs((n+1)²-3)-atan(n))/3)` -/
def P9249827726388133595.Spec : Prop :=
  ∀ n, P9249827726388133595.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P9633693386531941755

`ceil(a(n-1)+2*n/3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A199085.P9633693386531941755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌈(a (n - 1) : ℚ) + 2 * ((n : ℚ) / 3)⌉

end

end A199085.P9633693386531941755

namespace A199085

/-- `ceil(a(n-1)+2*n/3)` -/
def P9633693386531941755.Spec : Prop :=
  ∀ n, P9633693386531941755.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P7876878219017057877

`∑[n-floor(a(n-1)/2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A199085.P7876878219017057877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  (n : ℤ) - ⌊(f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199085.P7876878219017057877

namespace A199085

/-- `∑[n-floor(a(n-1)/2)]` -/
def P7876878219017057877.Spec : Prop :=
  ∀ n, P7876878219017057877.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P8756864426738160856

`a(n-1)-floor(n/3)+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A199085.P8756864426738160856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A199085.P8756864426738160856

namespace A199085

/-- `a(n-1)-floor(n/3)+n` -/
def P8756864426738160856.Spec : Prop :=
  ∀ n, P8756864426738160856.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P3225645146522500594

`a(n-1)-floor(n/3-n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A199085.P3225645146522500594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - ⌊(n : ℚ) / 3 - (n : ℚ)⌋

end

end A199085.P3225645146522500594

namespace A199085

/-- `a(n-1)-floor(n/3-n)` -/
def P3225645146522500594.Spec : Prop :=
  ∀ n, P3225645146522500594.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P92312015799795533

`ogf((1-x+x^2+2x^4-x^6)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A199085.P92312015799795533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 0, 2, 0, -1] [1, -2, 1, -1, 2, -1] n

end

end A199085.P92312015799795533

namespace A199085

/-- `ogf((1-x+x^2+2x^4-x^6)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P92312015799795533.Spec : Prop :=
  ∀ n, P92312015799795533.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P5597766046941742617

`A087483(n)-A130130(n)`
-/

namespace A199085.P5597766046941742617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 n - A130130 n

end

end A199085.P5597766046941742617

namespace A199085

/-- `A087483(n)-A130130(n)` -/
def P5597766046941742617.Spec : Prop :=
  ∀ n, P5597766046941742617.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P14349695990091169121

`A212342(n)-A130518(n)`
-/

namespace A199085.P14349695990091169121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n - A130518 n

end

end A199085.P14349695990091169121

namespace A199085

/-- `A212342(n)-A130518(n)` -/
def P14349695990091169121.Spec : Prop :=
  ∀ n, P14349695990091169121.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P9828354821080678903

`A183861(n+1)-A184985(n+1)`
-/

namespace A199085.P9828354821080678903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183861 (n + 1) - A184985 (n + 1)

end

end A199085.P9828354821080678903

namespace A199085

/-- `A183861(n+1)-A184985(n+1)` -/
def P9828354821080678903.Spec : Prop :=
  ∀ n, P9828354821080678903.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P14921925331957711436

`A319371(A076921(n+1))`
-/

namespace A199085.P14921925331957711436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319371 (A076921 (n + 1)).toNat

end

end A199085.P14921925331957711436

namespace A199085

/-- `A319371(A076921(n+1))` -/
def P14921925331957711436.Spec : Prop :=
  ∀ n, P14921925331957711436.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P10515160858209073430

`A173633(A033438(n+1))`
-/

namespace A199085.P10515160858209073430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173633 (A033438 (n + 1)).toNat

end

end A199085.P10515160858209073430

namespace A199085

/-- `A173633(A033438(n+1))` -/
def P10515160858209073430.Spec : Prop :=
  ∀ n, P10515160858209073430.a n = A199085 (n + 1)

end A199085

/-! ## A199085.P14947633708118038442

`A008620(A267882(n))`
-/

namespace A199085.P14947633708118038442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A267882 n).toNat

end

end A199085.P14947633708118038442

namespace A199085

/-- `A008620(A267882(n))` -/
def P14947633708118038442.Spec : Prop :=
  ∀ n, P14947633708118038442.a n = A199085 (n + 1)

end A199085

/-!
# A199086: T(n,k) = Number of partitions of n+2k-2 into parts >= k.

The programs for A199086, there is no canonical definition to state claims against.
-/

/-! ## A199086.P6785114801898343473

`A000523(p?[A167966(n+1)]*A129116(n+1))`
-/

namespace A199086.P6785114801898343473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A129116 (n + 1)).toNat

end

end A199086.P6785114801898343473

/-! ## A199086.P52314003078213702

`A000523((A167966(n+1)+1)*A129116(n+1))`
-/

namespace A199086.P52314003078213702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ((A167966 (n + 1) + 1) * A129116 (n + 1)).toNat

end

end A199086.P52314003078213702

/-! ## A199086.P11843928075902705945

`∑{e}[A001444(A292477(n)), #]`
-/

namespace A199086.P11843928075902705945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (A292477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A199086.P11843928075902705945

/-! ## A199086.P7753520439990617226

`A253557(13*A129116(n+1))`
-/

namespace A199086.P7753520439990617226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (13 * A129116 (n + 1)).toNat

end

end A199086.P7753520439990617226

/-! ## A199086.P8004969344378312641

`A070941(A129116(n+1))-A057427(A089187(2*n+3))`
-/

namespace A199086.P8004969344378312641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A129116 (n + 1)).toNat - A057427 (A089187 (2 * n + 3)).toNat

end

end A199086.P8004969344378312641

/-!
# A199087: The smallest row index of a row in A160271 (the monotonic justified array of generalized Fibonacci sequences) which contains n.

The programs for A199087, there is no canonical definition to state claims against.
-/

/-! ## A199087.P13184223254838554415

`∑{e}[or(A192928(3*n+1), A205840(n+1)), #]`
-/

namespace A199087.P13184223254838554415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A192928 (3 * n + 1)) (A205840 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A199087.P13184223254838554415

/-! ## A199087.P8450128991421236412

`A001222(or(A124124(n+1), A125127(n+1)))`
-/

namespace A199087.P8450128991421236412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A124124 (n + 1)) (A125127 (n + 1))).toNat

end

end A199087.P8450128991421236412

/-! ## A199087.P8691044082637650066

`A211097(A330659(n))%(lt[2*n, ∑{d}[n+1, #]]+1)`
-/

namespace A199087.P8691044082637650066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211097 (A330659 n).toNat) (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ)

end

end A199087.P8691044082637650066

/-! ## A199087.P10378840721379489681

`A134024(A055010(n)-A007954(n))`
-/

namespace A199087.P10378840721379489681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A055010 n - A007954 n).toNat

end

end A199087.P10378840721379489681

/-! ## A199087.P11577624943671011476

`A211097(A330659(n))%A005153(n+1)`
-/

namespace A199087.P11577624943671011476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211097 (A330659 n).toNat) (A005153 (n + 1))

end

end A199087.P11577624943671011476

/-!
# A199088: Excluding the two leftmost columns - the seeds - in the monotonic justified array of all positive Fibonacci sequences (A160271), the lowest column index which contains n in the smallest row which contains n (A199087).

The programs for A199088, there is no canonical definition to state claims against.
-/

/-! ## A199088.P13994500000005331955

`A134299(A028310(n))-A054977(A060143(n))`
-/

namespace A199088.P13994500000005331955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134299 (A028310 n).toNat - A054977 (A060143 n).toNat

end

end A199088.P13994500000005331955

/-! ## A199088.P10074793318368568030

`A278043(A181795(n+1)+A176328(n))`
-/

namespace A199088.P10074793318368568030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 (A181795 (n + 1) + A176328 n).toNat

end

end A199088.P10074793318368568030

/-! ## A199088.P1727098012506972648

`A169819(xor(A045542(n+1), A163529(n)))`
-/

namespace A199088.P1727098012506972648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (Int.xor (A045542 (n + 1)) (A163529 n)).toNat

end

end A199088.P1727098012506972648

/-!
# A199091: Number of n X 8 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to exactly one horizontal or vertical neighbor.

The programs for A199091, there is no canonical definition to state claims against.
-/

/-! ## A199091.P5716339113053508522

`A199092(A374009(n+1))`
-/

namespace A199091.P5716339113053508522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199092 (A374009 (n + 1)).toNat

end

end A199091.P5716339113053508522

/-!
# A199093: Number of n X n 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199093, there is no canonical definition to state claims against.
-/

/-! ## A199093.P12395935532514467856

`A199101(∑[4*n]+1)`
-/

namespace A199093.P12395935532514467856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199093.P12395935532514467856

/-!
# A199094: Number of nX1 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199094, the canonical program `A199094.P4555990867240067515` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199094 has offset 1).

The definition of A199094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199094.P2015575735210315611

`ceil(A199127(n+1)/2)`
-/

namespace A199094.P2015575735210315611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199127 (n + 1) : ℚ) / 2⌉

end

end A199094.P2015575735210315611

namespace A199094

/-- `ceil(A199127(n+1)/2)` -/
def P2015575735210315611.Spec : Prop :=
  ∀ n, P2015575735210315611.a n = A199094 (n + 1)

end A199094

/-! ## A199094.P2109559943831947615

`A199127(abs(1-n)+2)/2`
-/

namespace A199094.P2109559943831947615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199127 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A199094.P2109559943831947615

namespace A199094

/-- `A199127(abs(1-n)+2)/2` -/
def P2109559943831947615.Spec : Prop :=
  ∀ n, P2109559943831947615.a n = (A199094 (n + 1) : ℚ)

end A199094

/-! ## A199094.P4555990867240067515

`ceil(A022916(A335129(n+4))/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A199094

/-- `ceil(A022916(A335129(n+4))/2)` -/
def P4555990867240067515.Spec : Prop :=
  ∀ n, P4555990867240067515.a n = A199094 (n + 1)

theorem P4555990867240067515.correct : P4555990867240067515.Spec := by
  intro n
  simp only [A199094, Nat.add_sub_cancel]

end A199094

/-! ## A199094.P17515472876847546778

`floor(A199127(n+1)/A040000(n))`
-/

namespace A199094.P17515472876847546778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199127 (n + 1) : ℚ) / (A040000 n : ℚ)⌋

end

end A199094.P17515472876847546778

namespace A199094

/-- `floor(A199127(n+1)/A040000(n))` -/
def P17515472876847546778.Spec : Prop :=
  ∀ n, P17515472876847546778.a n = A199094 (n + 1)

end A199094

/-! ## A199094.P4007126047632006466

`floor(A199127(n+1)/A036453(n+1))`
-/

namespace A199094.P4007126047632006466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199127 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)⌋

end

end A199094.P4007126047632006466

namespace A199094

/-- `floor(A199127(n+1)/A036453(n+1))` -/
def P4007126047632006466.Spec : Prop :=
  ∀ n, P4007126047632006466.a n = A199094 (n + 1)

end A199094

/-! ## A199094.P1837478893734709690

`round(A199127(n+1)/A040000(3*n+2))`
-/

namespace A199094.P1837478893734709690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199127 (n + 1) : ℚ) / (A040000 (3 * n + 2) : ℚ))

end

end A199094.P1837478893734709690

namespace A199094

/-- `round(A199127(n+1)/A040000(3*n+2))` -/
def P1837478893734709690.Spec : Prop :=
  ∀ n, P1837478893734709690.a n = A199094 (n + 1)

end A199094

/-! ## A199094.P7212025192471867356

`round(A199127(n+1)/A036453(3*n+5))`
-/

namespace A199094.P7212025192471867356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199127 (n + 1) : ℚ) / (A036453 (3 * n + 5) : ℚ))

end

end A199094.P7212025192471867356

namespace A199094

/-- `round(A199127(n+1)/A036453(3*n+5))` -/
def P7212025192471867356.Spec : Prop :=
  ∀ n, P7212025192471867356.a n = A199094 (n + 1)

end A199094

/-! ## A199094.P722630507570680658

`A022916(A335129(n+4))/A040000(n)`
-/

namespace A199094.P722630507570680658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022916 (A335129 (n + 4)).toNat : ℚ) / (A040000 n : ℚ)

end

end A199094.P722630507570680658

namespace A199094

/-- `A022916(A335129(n+4))/A040000(n)` -/
def P722630507570680658.Spec : Prop :=
  ∀ n, P722630507570680658.a n = (A199094 (n + 1) : ℚ)

end A199094

/-! ## A199094.P10484141682306158164

`A308624(∑[n]+3)`
-/

namespace A199094.P10484141682306158164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A199094.P10484141682306158164

namespace A199094

/-- `A308624(∑[n]+3)` -/
def P10484141682306158164.Spec : Prop :=
  ∀ n, P10484141682306158164.a n = A199094 (n + 1)

end A199094

/-!
# A199095: Number of nX2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199095, there is no canonical definition to state claims against.
-/

/-! ## A199095.P16296972224824569111

`A199101(∑[n+1]+2)`
-/

namespace A199095.P16296972224824569111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199095.P16296972224824569111

/-! ## A199095.P16195523618129260464

`record[A199101(A252460(n+1))]`
-/

namespace A199095.P16195523618129260464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199095.P16195523618129260464

/-! ## A199095.P11582457643143104206

`record[A199101(record[A091995(n+1)])]`
-/

namespace A199095.P11582457643143104206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199095.P11582457643143104206

/-! ## A199095.P7190217371056363348

`record[root(A199101(n+1), A119963(n))]`
-/

namespace A199095.P7190217371056363348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199101 (n + 1) : ℝ) ^ (1 / (A119963 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199095.P7190217371056363348

/-! ## A199095.P442170347991639630

`record[root(A199101(n+1), A143632(n))]`
-/

namespace A199095.P442170347991639630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199101 (n + 1) : ℝ) ^ (1 / (A143632 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199095.P442170347991639630

/-!
# A199096: Number of nX3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199096, there is no canonical definition to state claims against.
-/

/-! ## A199096.P1666067648467329716

`A199101(∑[n+2]+4)`
-/

namespace A199096.P1666067648467329716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199096.P1666067648467329716

/-! ## A199096.P13918461753871568310

`record[A199101(A252460(2*n+1)+2)]`
-/

namespace A199096.P13918461753871568310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A252460 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199096.P13918461753871568310

/-! ## A199096.P18009149505535955917

`lcm((-1)^n, A199101(A167614(n+1)))`
-/

namespace A199096.P18009149505535955917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A199101 (A167614 (n + 1)).toNat)

end

end A199096.P18009149505535955917

/-! ## A199096.P15479445667269434447

`record[root(A199101(n+1), A143632(n)-2)]`
-/

namespace A199096.P15479445667269434447
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199101 (n + 1) : ℝ) ^ (1 / (A143632 n - 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199096.P15479445667269434447

/-! ## A199096.P6052375665117451403

`A119963(n)*A199101(A167614(n+1))`
-/

namespace A199096.P6052375665117451403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A199101 (A167614 (n + 1)).toNat

end

end A199096.P6052375665117451403

/-!
# A199097: Number of nX4 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199097, there is no canonical definition to state claims against.
-/

/-! ## A199097.P17219249655598178307

`A199101(A374004(n+1))`
-/

namespace A199097.P17219249655598178307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A374004 (n + 1)).toNat

end

end A199097.P17219249655598178307

/-! ## A199097.P7589804188600106850

`A199101(A141214(n)+7)`
-/

namespace A199097.P7589804188600106850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A141214 n + 7).toNat

end

end A199097.P7589804188600106850

/-! ## A199097.P16494159236439729182

`A199101(A052905(n)+9)`
-/

namespace A199097.P16494159236439729182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A052905 n + 9).toNat

end

end A199097.P16494159236439729182

/-! ## A199097.P12081437588394811212

`A199101(eq[5, A066657(n)])`
-/

namespace A199097.P12081437588394811212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199097.P12081437588394811212

/-! ## A199097.P17947666315296445895

`A199101(A167614(n+2)+1)`
-/

namespace A199097.P17947666315296445895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A167614 (n + 2) + 1).toNat

end

end A199097.P17947666315296445895

/-!
# A199098: Number of nX5 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199098, there is no canonical definition to state claims against.
-/

/-! ## A199098.P8361824840562552169

`A199101(A374005(n+1))`
-/

namespace A199098.P8361824840562552169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A374005 (n + 1)).toNat

end

end A199098.P8361824840562552169

/-! ## A199098.P9223961819171001007

`A199101(A167499(n+3))`
-/

namespace A199098.P9223961819171001007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A167499 (n + 3)).toNat

end

end A199098.P9223961819171001007

/-! ## A199098.P5008150181478657130

`A199101(A155212(n)+13)`
-/

namespace A199098.P5008150181478657130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A155212 n + 13).toNat

end

end A199098.P5008150181478657130

/-! ## A199098.P11725132496275197045

`A199101(A056000(n)+15)`
-/

namespace A199098.P11725132496275197045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A056000 n + 15).toNat

end

end A199098.P11725132496275197045

/-! ## A199098.P16901515308959201052

`A199101(eq[7, A066657(n)])`
-/

namespace A199098.P16901515308959201052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199098.P16901515308959201052

/-!
# A199099: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199099, there is no canonical definition to state claims against.
-/

/-! ## A199099.P16984429450711976860

`A199101(A374007(n+1))`
-/

namespace A199099.P16984429450711976860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A374007 (n + 1)).toNat

end

end A199099.P16984429450711976860

/-! ## A199099.P8389228831769969918

`A199101(A168104(n)+6)`
-/

namespace A199099.P8389228831769969918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A168104 n + 6).toNat

end

end A199099.P8389228831769969918

/-! ## A199099.P6169737473000558144

`A199101(eq[3, A219347(n)])`
-/

namespace A199099.P6169737473000558144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199099.P6169737473000558144

