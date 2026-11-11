import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C047
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
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
import SequenceMachineLib.Triangle

/-!
# A401306: Powerful numbers preceded and followed by 3 consecutive squarefree numbers.

The programs for A401306, there is no canonical definition to state claims against.
-/

/-! ## A401306.P17947192167194114379

`∩[A001694(n+1), A068088(n+1)]`
-/

namespace A401306.P17947192167194114379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P17947192167194114379

/-! ## A401306.P11347871149659827840

`∩[A068088(n+1), A140104(n+1)]`
-/

namespace A401306.P11347871149659827840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P11347871149659827840

/-! ## A401306.P7972910891726056463

`∩[A068088(n+1), A335851(n+1)]`
-/

namespace A401306.P7972910891726056463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P7972910891726056463

/-! ## A401306.P4142631352827685610

`∩[A068088(n+1), A359749(n+1)]`
-/

namespace A401306.P4142631352827685610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P4142631352827685610

/-! ## A401306.P10149008000527085903

`∩[A068088(n+1), A387528(n+1)]`
-/

namespace A401306.P10149008000527085903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P10149008000527085903

/-! ## A401306.P1389480701705491694

`∩[A068088(n+1), A390010(n+1)]`
-/

namespace A401306.P1389480701705491694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P1389480701705491694

/-!
# A401307: Triangle read by rows: T(n, k) = (2*n - k)! * [x^(n-k)] Laguerre(2*n - k, -x, -x).

The programs for A401307, there is no canonical definition to state claims against.
-/

/-! ## A401307.P109468899603863016

`A400988(C(2*row(n)-col(n)+1, 2)+row(n))`
-/

namespace A401307.P109468899603863016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400988 (Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat 2 + SequenceMachineLib.triRow n)

end

end A401307.P109468899603863016

/-!
# A401311: Prime staircase: a(n) is obtained by starting from n and iterating the prime-indexing map x -> prime(x) exactly n+1 times.

The programs for A401311, there is no canonical definition to state claims against.
-/

/-! ## A401311.P11019157122786408169

`A000040(A058009(n+1))`
-/

namespace A401311.P11019157122786408169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058009 (n + 1)).toNat

end

end A401311.P11019157122786408169

/-!
# A401315: Number of terms in A025487 not exceeding 10^n.

The programs for A401315, there is no canonical definition to state claims against.
-/

/-! ## A401315.P16516615767136734264

`A120836(A301206(n))`
-/

namespace A401315.P16516615767136734264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120836 (A301206 n).toNat

end

end A401315.P16516615767136734264

/-!
# A401319: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 132, 213, 321}.

The programs for A401319, the canonical program `A401319.P13611396181971625925` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401319 has offset 0).

The definition of A401319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401319.P13611396181971625925

`ogf((1-2x-4x^2+x^3)/(1-3x-4x^2+3x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401319

/-- `ogf((1-2x-4x^2+x^3)/(1-3x-4x^2+3x^3))` -/
def P13611396181971625925.Spec : Prop :=
  ∀ n, P13611396181971625925.a n = A401319 n

theorem P13611396181971625925.correct : P13611396181971625925.Spec := by
  intro n
  simp only [A401319]

end A401319

/-! ## A401319.P16125367878566451839

`3*a(n-1)+4*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11`
-/

namespace A401319.P16125367878566451839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 11] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3)

end

end A401319.P16125367878566451839

namespace A401319

/-- `3*a(n-1)+4*a(n-2)-3*a(n-3)` -/
def P16125367878566451839.Spec : Prop :=
  ∀ n, P16125367878566451839.a n = A401319 n

end A401319

/-! ## A401319.P1813520730777221375

`A261226(A158761(n))`
-/

namespace A401319.P1813520730777221375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A158761 n).toNat

end

end A401319.P1813520730777221375

namespace A401319

/-- `A261226(A158761(n))` -/
def P1813520730777221375.Spec : Prop :=
  ∀ n, P1813520730777221375.a n = A401319 n

end A401319

/-!
# A401321: Number of strongly connected digraphs on n labeled nodes that are reducible as a flow graph rooted at some node.

The programs for A401321, there is no canonical definition to state claims against.
-/

/-! ## A401321.P8171924637322033182

`A003030(n+1)-A398815(n+1)`
-/

namespace A401321.P8171924637322033182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003030 (n + 1) - A398815 (n + 1)

end

end A401321.P8171924637322033182

/-!
# A401323: Antidiagonal sums of the array A144048.

The programs for A401323, there is no canonical definition to state claims against.
-/

/-! ## A401323.P1040876652900646369

`A305759(A026010(n))`
-/

namespace A401323.P1040876652900646369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (A026010 n).toNat

end

end A401323.P1040876652900646369

/-! ## A401323.P6397121545177602011

`∑[A002024(A199202(n))]`
-/

namespace A401323.P6397121545177602011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A199202 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401323.P6397121545177602011

/-! ## A401323.P12979718240964789071

`∑[∑[A000194(A003436(n))]]`
-/

namespace A401323.P12979718240964789071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A003436 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401323.P12979718240964789071

/-!
# A401326: a(n) = 10*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=5.

The programs for A401326, the canonical program `A401326.P10878083692373474108` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401326 has offset 0).

The definition of A401326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+10*a(n-2)` (program `A401326.P10878083692373474108`, by `A401326.P10878083692373474108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401326.P800286853215072055

`ogf((1-5x)/(1-10x-10x^2))`
-/

namespace A401326.P800286853215072055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, -10] n

end

end A401326.P800286853215072055

namespace A401326

/-- `ogf((1-5x)/(1-10x-10x^2))` -/
def P800286853215072055.Spec : Prop :=
  ∀ n, P800286853215072055.a n = A401326 n

end A401326

/-! ## A401326.P10878083692373474108

`10*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401326

/-- `10*a(n-1)+10*a(n-2)` -/
def P10878083692373474108.Spec : Prop :=
  ∀ n, (P10878083692373474108.a n : ℤ) = A401326 n

theorem P10878083692373474108.correct : P10878083692373474108.Spec := by
  intro n
  simp only [A401326]

end A401326

/-! ## A401326.P7432889113272787439

`10*(a(n-2)+a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A401326.P7432889113272787439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  10 * (a (n - 2) + a (n - 1))

end

end A401326.P7432889113272787439

namespace A401326

/-- `10*(a(n-2)+a(n-1))` -/
def P7432889113272787439.Spec : Prop :=
  ∀ n, (P7432889113272787439.a n : ℤ) = A401326 n

end A401326

/-!
# A401327: Folding polygons: a(n) is the maximum number of folds possible using the process described in the comments.

The programs for A401327, there is no canonical definition to state claims against.
-/

/-! ## A401327.P13307978824275445877

`A029308(A311944(n))`
-/

namespace A401327.P13307978824275445877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029308 (A311944 n).toNat

end

end A401327.P13307978824275445877

/-! ## A401327.P6345632392510622261

`A029308(A311945(n))`
-/

namespace A401327.P6345632392510622261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029308 (A311945 n).toNat

end

end A401327.P6345632392510622261

/-! ## A401327.P16708918645441448253

`A029308(A311958(n))`
-/

namespace A401327.P16708918645441448253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029308 (A311958 n).toNat

end

end A401327.P16708918645441448253

/-! ## A401327.P5005097479068123351

`A029291(A312117(n))`
-/

namespace A401327.P5005097479068123351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 (A312117 n).toNat

end

end A401327.P5005097479068123351

/-! ## A401327.P1321603178957056867

`A185711(A023867(n+1))`
-/

namespace A401327.P1321603178957056867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A023867 (n + 1)).toNat

end

end A401327.P1321603178957056867

/-!
# A401328: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where A(n,k) is the number of distinct values of s_k(n+1), ..., s_k(n+k), and s_k(m) is the largest divisor of m with all prime factors less than k.

The programs for A401328, there is no canonical definition to state claims against.
-/

/-! ## A401328.P6817466286396796782

`A343943(A038226(n+1))`
-/

namespace A401328.P6817466286396796782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343943 (A038226 (n + 1)).toNat

end

end A401328.P6817466286396796782

/-! ## A401328.P14378402412781186192

`A321476(A120258(n+1))`
-/

namespace A401328.P14378402412781186192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321476 (A120258 (n + 1)).toNat

end

end A401328.P14378402412781186192

/-! ## A401328.P10037648506321182462

`A232113(A084268(n+2))`
-/

namespace A401328.P10037648506321182462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232113 (A084268 (n + 2)).toNat

end

end A401328.P10037648506321182462

/-! ## A401328.P15039968750866570321

`A366563(A055106(n+3))`
-/

namespace A401328.P15039968750866570321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A055106 (n + 3)).toNat

end

end A401328.P15039968750866570321

/-! ## A401328.P7827373092023975632

`A103586(A215799(3*n+1)%A106268(n))`
-/

namespace A401328.P7827373092023975632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (Int.tmod (A215799 (3 * n + 1)) (A106268 n)).toNat

end

end A401328.P7827373092023975632

/-!
# A401333: Numbers k such that the units digit of 5*k equals the tens digit of k^5.

The programs for A401333, the canonical program `A401333.P17117519175383938811` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401333 has offset 1).

The definition of A401333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401333.P17117519175383938811

`ogf((10x+x^2+6x^3+3x^4)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401333

/-- `ogf((10x+x^2+6x^3+3x^4)/(1-x-x^4+x^5))` -/
def P17117519175383938811.Spec : Prop :=
  ∀ n, P17117519175383938811.a n = A401333 (n + 1)

theorem P17117519175383938811.correct : P17117519175383938811.Spec := by
  intro n
  simp only [A401333, Nat.add_sub_cancel]

end A401333

/-! ## A401333.P6486382539516073962

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=10, a(2)=11, a(3)=17, a(4)=20`
-/

namespace A401333.P6486382539516073962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 11, 17, 20] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A401333.P6486382539516073962

namespace A401333

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P6486382539516073962.Spec : Prop :=
  ∀ n, P6486382539516073962.a n = A401333 (n + 1)

end A401333

/-! ## A401333.P17808206322595177703

`a(n-4)+20` with `a(0)=0, a(1)=10, a(2)=11, a(3)=17`
-/

namespace A401333.P17808206322595177703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10, 11, 17] fun n a =>
  a (n - 4) + 20

end

end A401333.P17808206322595177703

namespace A401333

/-- `a(n-4)+20` -/
def P17808206322595177703.Spec : Prop :=
  ∀ n, (P17808206322595177703.a n : ℤ) = A401333 (n + 1)

end A401333

/-! ## A401333.P3228115888297579205

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=10, a(2)=1, a(3)=6, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A401333.P3228115888297579205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10, 1, 6, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401333.P3228115888297579205

namespace A401333

/-- `∑[floor(a(n-4))]` -/
def P3228115888297579205.Spec : Prop :=
  ∀ n, (P3228115888297579205.a n : ℤ) = A401333 (n + 1)

end A401333

/-! ## A401333.P391828339146856536

`A080412(n)+A047492(n+1)+A047492(n+1)`
-/

namespace A401333.P391828339146856536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n + A047492 (n + 1) + A047492 (n + 1)

end

end A401333.P391828339146856536

namespace A401333

/-- `A080412(n)+A047492(n+1)+A047492(n+1)` -/
def P391828339146856536.Spec : Prop :=
  ∀ n, P391828339146856536.a n = A401333 (n + 1)

end A401333

/-!
# A401334: Multi-arch perturbed Hofstadter Q-sequence: a(n) = a(n-a(n-1)) + a(n-a(n-2)) - (-1)^n for n >= 8, with (a(1),...,a(7)) = (1,1,3,3,3,3,5).

The programs for A401334, the canonical program `A401334.P3067401415217798496` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401334 has offset 1).

The definition of A401334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))-(-1)^(n+1)` (program `A401334.P3067401415217798496`, by `A401334.P3067401415217798496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401334.P3067401415217798496

`a(n-a(n-1))+a(n-a(n-2))-(-1)^(n+1)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=3, a(5)=3, a(6)=5`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401334

/-- `a(n-a(n-1))+a(n-a(n-2))-(-1)^(n+1)` -/
def P3067401415217798496.Spec : Prop :=
  ∀ n, P3067401415217798496.a n = A401334 (n + 1)

theorem P3067401415217798496.correct : P3067401415217798496.Spec := by
  intro n
  simp only [A401334, Nat.add_sub_cancel]

end A401334

/-!
# A401339: Primitive terms of A343550.

The programs for A401339, there is no canonical definition to state claims against.
-/

/-! ## A401339.P12451117345629868144

`∩[A295020(n+1), A343550(n+1)]`
-/

namespace A401339.P12451117345629868144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401339.P12451117345629868144

/-!
# A401342: Expansion of g.f. x*(1 - 2*x + x^2 - x^3)/((1 - x - x^2)*(1 - 2*x)).

The programs for A401342, the canonical program `A401342.P18093636600124100267` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401342 has offset 0).

The definition of A401342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` (program `A401342.P18093636600124100267`, by `A401342.P18093636600124100267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401342.P18093636600124100267

`ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401342

/-- `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` -/
def P18093636600124100267.Spec : Prop :=
  ∀ n, P18093636600124100267.a n = A401342 n

theorem P18093636600124100267.correct : P18093636600124100267.Spec := by
  intro n
  simp only [A401342]

end A401342

/-! ## A401342.P1133592228726139224

`A034008(n)-A152163(n)`
-/

namespace A401342.P1133592228726139224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n - A152163 n

end

end A401342.P1133592228726139224

namespace A401342

/-- `A034008(n)-A152163(n)` -/
def P1133592228726139224.Spec : Prop :=
  ∀ n, P1133592228726139224.a n = A401342 n

end A401342

/-! ## A401342.P14181771360708202537

`A034008(n)+Δ[Δ[A000045(n)]]`
-/

namespace A401342.P14181771360708202537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + (f1 (n + 1) - f1 n)

end

end A401342.P14181771360708202537

namespace A401342

/-- `A034008(n)+Δ[Δ[A000045(n)]]` -/
def P14181771360708202537.Spec : Prop :=
  ∀ n, P14181771360708202537.a n = A401342 n

end A401342

/-! ## A401342.P4819659677815299819

`A085141(A149923(n))`
-/

namespace A401342.P4819659677815299819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A149923 n).toNat

end

end A401342.P4819659677815299819

namespace A401342

/-- `A085141(A149923(n))` -/
def P4819659677815299819.Spec : Prop :=
  ∀ n, P4819659677815299819.a n = A401342 n

end A401342

/-! ## A401342.P12161898999083819080

`A085141(A149925(n))`
-/

namespace A401342.P12161898999083819080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A149925 n).toNat

end

end A401342.P12161898999083819080

namespace A401342

/-- `A085141(A149925(n))` -/
def P12161898999083819080.Spec : Prop :=
  ∀ n, P12161898999083819080.a n = A401342 n

end A401342

/-!
# A401351: Number of free polycubes with 2n cells that can be dissected into two congruent polycubes.

The programs for A401351, there is no canonical definition to state claims against.
-/

/-! ## A401351.P16231550994983226858

`A377042(n)+A250120(A161124(n))`
-/

namespace A401351.P16231550994983226858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377042 n + A250120 (A161124 n).toNat

end

end A401351.P16231550994983226858

/-!
# A401353: Period 6: repeat [1, 5, 3, 6, 2, 4].

The programs for A401353, the canonical program `A401353.P18396123081076887795` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401353 has offset 0).

The definition of A401353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401353.P18396123081076887795

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=6, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401353

/-- `a(n-6)` -/
def P18396123081076887795.Spec : Prop :=
  ∀ n, (P18396123081076887795.a n : ℤ) = A401353 n

theorem P18396123081076887795.correct : P18396123081076887795.Spec := by
  intro n
  simp only [A401353]

end A401353

/-!
# A401355: Denominators of convergents to log_2(9).

The programs for A401355, there is no canonical definition to state claims against.
-/

/-! ## A401355.P629054604949757623

`A028510(n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A401355.P629054604949757623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A028510 n * a (n - 1) + a (n - 2)

end

end A401355.P629054604949757623

/-!
# A401357: Hypotenuse of the unique primitive Pythagorean triangle whose legs sum to the n-th prime congruent to +-1 mod 8.

The programs for A401357, there is no canonical definition to state claims against.
-/

/-! ## A401357.P9291067168732912096

`(A002334(n+2)-A002335(n+2))²+A002335(n+2)²`
-/

namespace A401357.P9291067168732912096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002334 (n + 2) - A002335 (n + 2)) ^ 2 + A002335 (n + 2) ^ 2

end

end A401357.P9291067168732912096

/-!
# A401359: Records in A399581.

The programs for A401359, there is no canonical definition to state claims against.
-/

/-! ## A401359.P4035496928859026454

`record[A399581(n+1)]`
-/

namespace A401359.P4035496928859026454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401359.P4035496928859026454

/-!
# A401361: Numbers v such that the symmetric representation of sigma(v), SRS(v), consists of only unimodal parts.

The programs for A401361, there is no canonical definition to state claims against.
-/

/-! ## A401361.P7598483692037885340

`∪[A119605(n+1), A209638(n)]`
-/

namespace A401361.P7598483692037885340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401361.P7598483692037885340

/-! ## A401361.P680187381574265673

`∪[A119605(n+1), A243494(n)]`
-/

namespace A401361.P680187381574265673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401361.P680187381574265673

/-! ## A401361.P8577147398756824099

`∪[A029750(n+1), A119605(n+1)]`
-/

namespace A401361.P8577147398756824099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401361.P8577147398756824099

/-! ## A401361.P4649054088844640729

`∪[A082662(n+1), A119605(n+1)]`
-/

namespace A401361.P4649054088844640729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401361.P4649054088844640729

/-! ## A401361.P12659693979144206635

`∪[A093641(n+1), A119605(n+1)]`
-/

namespace A401361.P12659693979144206635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401361.P12659693979144206635

/-!
# A401365: Partial sums of A401407: a(n) = Sum_{k=1..n} lambda(k)*chi_{-4}(k), where lambda is Liouville's function A008836 and chi_{-4} = A101455 is the nonprincipal Dirichlet character modulo 4.

The programs for A401365, the canonical program `A401365.P4691483582034418607` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401365 has offset 0).

The definition of A401365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401408, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401365.P4691483582034418607

`A401408(n)-A401408(floor(n/2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A401365

/-- `A401408(n)-A401408(floor(n/2))` -/
def P4691483582034418607.Spec : Prop :=
  ∀ n, P4691483582034418607.a n = A401365 n

theorem P4691483582034418607.correct : P4691483582034418607.Spec := by
  intro n
  simp only [A401365]

end A401365

/-! ## A401365.P13966593995053965186

`∑[A401407(1+n)]-A401407(n+1)`
-/

namespace A401365.P13966593995053965186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401407 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A401407 (n + 1)

end

end A401365.P13966593995053965186

namespace A401365

/-- `∑[A401407(1+n)]-A401407(n+1)` -/
def P13966593995053965186.Spec : Prop :=
  ∀ n, P13966593995053965186.a n = A401365 n

end A401365

/-! ## A401365.P15439088413689799144

`∑[A209662(n+1)%2]-∑[(-1)^A258057(n)]`
-/

namespace A401365.P15439088413689799144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209662 (n + 1)) 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A258057 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A401365.P15439088413689799144

namespace A401365

/-- `∑[A209662(n+1)%2]-∑[(-1)^A258057(n)]` -/
def P15439088413689799144.Spec : Prop :=
  ∀ n, P15439088413689799144.a n = (A401365 n : ℚ)

end A401365

/-! ## A401365.P14733273550425114888

`∑[A101455(A003415(2*n))]`
-/

namespace A401365.P14733273550425114888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A003415 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401365.P14733273550425114888

namespace A401365

/-- `∑[A101455(A003415(2*n))]` -/
def P14733273550425114888.Spec : Prop :=
  ∀ n, P14733273550425114888.a n = A401365 n

end A401365

/-! ## A401365.P708766296208196837

`∑[A009531(A201473(n+1))%A009531(3*n+1)]`
-/

namespace A401365.P708766296208196837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009531 (A201473 (n + 1)).toNat) (A009531 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401365.P708766296208196837

namespace A401365

/-- `∑[A009531(A201473(n+1))%A009531(3*n+1)]` -/
def P708766296208196837.Spec : Prop :=
  ∀ n, P708766296208196837.a n = A401365 n

end A401365

/-!
# A401372: Numbers k such that with p = prime(1+k), there is at least one prime q < p such that ((p#/p) / (q#/q)) == +1 mod p, where p# = A034386(p).

The programs for A401372, there is no canonical definition to state claims against.
-/

/-! ## A401372.P685854675055177097

`A000720(A401373(n+1))-1`
-/

namespace A401372.P685854675055177097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A401373 (n + 1)).toNat - 1

end

end A401372.P685854675055177097

/-! ## A401372.P17982983001651684070

`A000720(A401373(n+1)-1)`
-/

namespace A401372.P17982983001651684070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A401373 (n + 1) - 1).toNat

end

end A401372.P17982983001651684070

/-! ## A401372.P9733637339615912699

`A033270(A401373(n+1))`
-/

namespace A401372.P9733637339615912699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A401373 (n + 1)).toNat

end

end A401372.P9733637339615912699

/-! ## A401372.P4558955390036611710

`eq[A358692(n+1), A401058(n)]`
-/

namespace A401372.P4558955390036611710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401372.P4558955390036611710

/-! ## A401372.P11879876296054699680

`eq[A139039(n+1), A401058(n)]`
-/

namespace A401372.P11879876296054699680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401372.P11879876296054699680

/-!
# A401373: Primes p for which there exists a prime q < p such that ((p#/p) / (q#/q)) == +1 mod p, where p# = A034386(p).

The programs for A401373, there is no canonical definition to state claims against.
-/

/-! ## A401373.P9789463274949632217

`A000040(1+A401372(n+1))`
-/

namespace A401373.P9789463274949632217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A401372 (n + 1)).toNat

end

end A401373.P9789463274949632217

/-! ## A401373.P9040062960636231120

`A045344(A401372(n+1))`
-/

namespace A401373.P9040062960636231120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A401372 (n + 1)).toNat

end

end A401373.P9040062960636231120

/-!
# A401375: Largest divisor of sigma(n) coprime with n, where sigma is the sum of divisors function.

The programs for A401375, the canonical program `A401375.P4355950383220751313` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401375 has offset 1).

The definition of A401375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401375.P4355950383220751313

`A000203(n+1)/A401709(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401375

/-- `A000203(n+1)/A401709(n+1)` -/
def P4355950383220751313.Spec : Prop :=
  ∀ n, P4355950383220751313.a n = (A401375 (n + 1) : ℚ)

end A401375

/-! ## A401375.P4975299829361738618

`A017665(n+1)/A401710(n+1)`
-/

namespace A401375.P4975299829361738618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) : ℚ) / (A401710 (n + 1) : ℚ)

end

end A401375.P4975299829361738618

namespace A401375

/-- `A017665(n+1)/A401710(n+1)` -/
def P4975299829361738618.Spec : Prop :=
  ∀ n, P4975299829361738618.a n = (A401375 (n + 1) : ℚ)

end A401375

/-! ## A401375.P17974254121612641362

`A009194(n+1)*A017665(n+1)/A401709(n+1)`
-/

namespace A401375.P17974254121612641362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) * A017665 (n + 1) : ℚ) / (A401709 (n + 1) : ℚ)

end

end A401375.P17974254121612641362

namespace A401375

/-- `A009194(n+1)*A017665(n+1)/A401709(n+1)` -/
def P17974254121612641362.Spec : Prop :=
  ∀ n, P17974254121612641362.a n = (A401375 (n + 1) : ℚ)

end A401375

/-!
# A401376: Numbers k such that A328572(k) is a divisor of k and A342002(k) is an unitary divisor of k.

The programs for A401376, there is no canonical definition to state claims against.
-/

/-! ## A401376.P12884641468718240418

`filter[A380527(n+2), A120529(#)]`
-/

namespace A401376.P12884641468718240418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120529 (f1 j).toNat = 1) n)

end

end A401376.P12884641468718240418

/-! ## A401376.P9942161367653593178

`filter[A380527(n+1), A168182(#)]`
-/

namespace A401376.P9942161367653593178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A401376.P9942161367653593178

/-! ## A401376.P8954688887835535503

`filter[A380527(n+2), A307421(#)]`
-/

namespace A401376.P8954688887835535503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A401376.P8954688887835535503

/-! ## A401376.P13808768985461006802

`eq[A005451(n+1), A348950(n)]`
-/

namespace A401376.P13808768985461006802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401376.P13808768985461006802

/-!
# A401377: Square numbers having exactly two distinct prime factors, which are also adjacent prime numbers.

The programs for A401377, there is no canonical definition to state claims against.
-/

/-! ## A401377.P12345497413875662965

`A256617(n+1)²`
-/

namespace A401377.P12345497413875662965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1) ^ 2

end

end A401377.P12345497413875662965

/-! ## A401377.P3204329115749653424

`∩[A256617(n+1), A401378(n+1)]`
-/

namespace A401377.P3204329115749653424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P3204329115749653424

/-! ## A401377.P11198788829760568587

`∩[A355462(n+1), A401378(n+1)]`
-/

namespace A401377.P11198788829760568587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P11198788829760568587

/-! ## A401377.P16864966859237044392

`∩[A062312(n+1), A256617(n+1)]`
-/

namespace A401377.P16864966859237044392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P16864966859237044392

/-! ## A401377.P4634213396288254326

`∩[A161753(n+1), A256617(n+1)]`
-/

namespace A401377.P4634213396288254326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P4634213396288254326

/-! ## A401377.P10571356841028455505

`∩[A000290(n), A256617(n+1)]`
-/

namespace A401377.P10571356841028455505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P10571356841028455505

/-! ## A401377.P2813965817325441900

`∩[A188915(n), A256617(n+1)]`
-/

namespace A401377.P2813965817325441900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P2813965817325441900

/-! ## A401377.P6207528265753046602

`∩[A256617(n+1), A400197(n)]`
-/

namespace A401377.P6207528265753046602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P6207528265753046602

/-! ## A401377.P1819249321421964353

`∩[A169580(n+1), A256617(n+1)]`
-/

namespace A401377.P1819249321421964353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P1819249321421964353

/-! ## A401377.P14778457720872756395

`∩[A256617(n+1), A319388(n+1)]`
-/

namespace A401377.P14778457720872756395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P14778457720872756395

/-! ## A401377.P12780084790362804681

`A000290(A256617(A000290(n+1)/(n+1)))`
-/

namespace A401377.P12780084790362804681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A256617 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A401377.P12780084790362804681

/-! ## A401377.P10260442445149904631

`∩[A256617(n+1), A363284(n+1)]`
-/

namespace A401377.P10260442445149904631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401377.P10260442445149904631

/-!
# A401378: Square numbers, other than prime powers, whose distinct prime factors are consecutive primes.

The programs for A401378, there is no canonical definition to state claims against.
-/

/-! ## A401378.P5853989185594811522

`A066312(n+1)²`
-/

namespace A401378.P5853989185594811522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1) ^ 2

end

end A401378.P5853989185594811522

/-! ## A401378.P3185749257781856456

`∩[A062312(n+1), A066312(n+1)]`
-/

namespace A401378.P3185749257781856456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P3185749257781856456

/-! ## A401378.P4889720761604305757

`∩[A066312(n+1), A161753(n+1)]`
-/

namespace A401378.P4889720761604305757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P4889720761604305757

/-! ## A401378.P10229361543610126170

`∩[A000290(n), A066312(n+1)]`
-/

namespace A401378.P10229361543610126170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P10229361543610126170

/-! ## A401378.P13695599521279637695

`∩[A066312(n+1), A188915(n)]`
-/

namespace A401378.P13695599521279637695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P13695599521279637695

/-! ## A401378.P6027359216650428843

`∩[A066312(n+1), A400197(n)]`
-/

namespace A401378.P6027359216650428843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P6027359216650428843

/-! ## A401378.P527819082665184279

`∩[A066312(n+1), A169580(n+1)]`
-/

namespace A401378.P527819082665184279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P527819082665184279

/-! ## A401378.P10000933781402622468

`A000290(A066312(A000290(n+1)/(n+1)))`
-/

namespace A401378.P10000933781402622468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A066312 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A401378.P10000933781402622468

/-! ## A401378.P14491741754507010336

`∩[A034793(n+1), A066312(n+1)]`
-/

namespace A401378.P14491741754507010336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P14491741754507010336

/-! ## A401378.P11138064479700291486

`∩[A066312(n+1), A181385(n)]`
-/

namespace A401378.P11138064479700291486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P11138064479700291486

/-! ## A401378.P1990161154887037183

`∩[A066312(n+1), A363283(n+1)]`
-/

namespace A401378.P1990161154887037183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P1990161154887037183

/-! ## A401378.P8665491770564247269

`∩[A066312(n+1), A274583(n)]`
-/

namespace A401378.P8665491770564247269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401378.P8665491770564247269

/-!
# A401379: Number of distinct prime factors in the largest divisor of sigma(n) coprime with n, where sigma is the sum of divisors function.

The programs for A401379, the canonical program `A401379.P13567719274114165428` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401379 has offset 1).

The definition of A401379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401379.P5390416657126428905

`A001221(A401375(n+1))`
-/

namespace A401379.P5390416657126428905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A401375 (n + 1)).toNat

end

end A401379.P5390416657126428905

namespace A401379

/-- `A001221(A401375(n+1))` -/
def P5390416657126428905.Spec : Prop :=
  ∀ n, P5390416657126428905.a n = A401379 (n + 1)

end A401379

/-! ## A401379.P13567719274114165428

`A058062(n+1)-A336388(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A401379

/-- `A058062(n+1)-A336388(n+1)` -/
def P13567719274114165428.Spec : Prop :=
  ∀ n, P13567719274114165428.a n = A401379 (n + 1)

theorem P13567719274114165428.correct : P13567719274114165428.Spec := by
  intro n
  simp only [A401379, Nat.add_sub_cancel]

end A401379

/-! ## A401379.P7769693490240321295

`A198068(A000549(n+1))`
-/

namespace A401379.P7769693490240321295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198068 (A000549 (n + 1)).toNat

end

end A401379.P7769693490240321295

namespace A401379

/-- `A198068(A000549(n+1))` -/
def P7769693490240321295.Spec : Prop :=
  ∀ n, P7769693490240321295.a n = A401379 (n + 1)

end A401379

/-! ## A401379.P4272984169556519841

`A143792(A143792(A007088(n+1))+n+1)`
-/

namespace A401379.P4272984169556519841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143792 (A143792 (A007088 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A401379.P4272984169556519841

namespace A401379

/-- `A143792(A143792(A007088(n+1))+n+1)` -/
def P4272984169556519841.Spec : Prop :=
  ∀ n, P4272984169556519841.a n = A401379 (n + 1)

end A401379

/-! ## A401379.P13588397940205304145

`A140083(A221949(n))`
-/

namespace A401379.P13588397940205304145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (A221949 n).toNat

end

end A401379.P13588397940205304145

namespace A401379

/-- `A140083(A221949(n))` -/
def P13588397940205304145.Spec : Prop :=
  ∀ n, P13588397940205304145.a n = A401379 (n + 1)

end A401379

/-!
# A401380: Number of distinct prime factors in the largest divisor of sigma(n^2) that are coprime with n^2, where sigma is the sum of divisors function.

The programs for A401380, the canonical program `A401380.P625096873618411014` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401380 has offset 1).

The definition of A401380 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401379, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401380.P625096873618411014

`A401379((n+1)²)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401380

/-- `A401379((n+1)²)` -/
def P625096873618411014.Spec : Prop :=
  ∀ n, P625096873618411014.a n = A401380 (n + 1)

theorem P625096873618411014.correct : P625096873618411014.Spec := by
  intro n
  simp only [A401380, Nat.add_sub_cancel]

end A401380

/-! ## A401380.P7287184569444963764

`dr(A401379(∑[2*n+1]))`
-/

namespace A401380.P7287184569444963764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A401379 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A401380.P7287184569444963764

namespace A401380

/-- `dr(A401379(∑[2*n+1]))` -/
def P7287184569444963764.Spec : Prop :=
  ∀ n, (P7287184569444963764.a n : ℤ) = A401380 (n + 1)

end A401380

/-! ## A401380.P17147932582583459244

`A001221(A017665((n+1)²))`
-/

namespace A401380.P17147932582583459244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017665 ((n + 1) ^ 2)).toNat

end

end A401380.P17147932582583459244

namespace A401380

/-- `A001221(A017665((n+1)²))` -/
def P17147932582583459244.Spec : Prop :=
  ∀ n, P17147932582583459244.a n = A401380 (n + 1)

end A401380

/-!
# A401384: a(n) is the position of the first occurrence of n in A401379.

The programs for A401384, there is no canonical definition to state claims against.
-/

/-! ## A401384.P9424689420491170419

`A169693(A005317(n))`
-/

namespace A401384.P9424689420491170419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169693 (A005317 n).toNat

end

end A401384.P9424689420491170419

/-!
# A401385: Numbers k for which {the largest divisor of sigma(k^2) that is coprime with k^2} is a prime power.

The programs for A401385, there is no canonical definition to state claims against.
-/

/-! ## A401385.P7114438233003666962

`sqrt(A401387(n+1))`
-/

namespace A401385.P7114438233003666962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A401387 (n + 1) : ℝ)

end

end A401385.P7114438233003666962

/-!
# A401386: Numbers k, not powers of primes, for which {the largest divisor of sigma(k^2) that is coprime with k^2} is a prime power.

The programs for A401386, there is no canonical definition to state claims against.
-/

/-! ## A401386.P10463079058627824407

`sqrt(A401388(n+1))`
-/

namespace A401386.P10463079058627824407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A401388 (n + 1) : ℝ)

end

end A401386.P10463079058627824407

/-! ## A401386.P4739588326670326605

`filter[A401385(n+1), A143731(#)]`
-/

namespace A401386.P4739588326670326605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A401386.P4739588326670326605

/-!
# A401387: Squares k for which {the largest divisor of sigma(k) that is coprime with k} is a prime power.

The programs for A401387, there is no canonical definition to state claims against.
-/

/-! ## A401387.P10965032372334475588

`A401385(n+1)²`
-/

namespace A401387.P10965032372334475588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401385 (n + 1) ^ 2

end

end A401387.P10965032372334475588

/-! ## A401387.P14102399298547409282

`A000290(A401385(A000290(n+1)/(n+1)))`
-/

namespace A401387.P14102399298547409282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A401385 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A401387.P14102399298547409282

/-! ## A401387.P10415557424070247546

`∩[n², A401381(n+1)]`
-/

namespace A401387.P10415557424070247546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401387.P10415557424070247546

/-! ## A401387.P7526455271117226170

`filter[A401381(n+1), A010052(#)]`
-/

namespace A401387.P7526455271117226170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A401387.P7526455271117226170

/-! ## A401387.P15795136725448337801

`filter[A401381(n+1), A214284(#)]`
-/

namespace A401387.P15795136725448337801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214284 (f1 j).toNat = 1) n)

end

end A401387.P15795136725448337801

/-!
# A401388: Squares k, not powers of primes, for which {the largest divisor of sigma(k) that is coprime with k} is a prime power.

The programs for A401388, there is no canonical definition to state claims against.
-/

/-! ## A401388.P13734000519705372659

`A401386(n+1)²`
-/

namespace A401388.P13734000519705372659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401386 (n + 1) ^ 2

end

end A401388.P13734000519705372659

/-!
# A401389: Numbers k such that {the largest divisor of sigma(k) coprime with k} is a power of 2 larger than 1.

The programs for A401389, there is no canonical definition to state claims against.
-/

/-! ## A401389.P12264212410132172280

`filter[A401381(n+1), A353638(#)]`
-/

namespace A401389.P12264212410132172280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A401389.P12264212410132172280

/-! ## A401389.P6203488887312952130

`filter[A401381(n+2), A374474(#)]`
-/

namespace A401389.P6203488887312952130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A401389.P6203488887312952130

/-! ## A401389.P15110276685512593589

`filter[A401381(n+1), A324908(#)]`
-/

namespace A401389.P15110276685512593589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A401389.P15110276685512593589

/-! ## A401389.P2236491924058097110

`∩[A348741(n+1), A401381(n+1)]`
-/

namespace A401389.P2236491924058097110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401389.P2236491924058097110

/-! ## A401389.P11288822632061100082

`∩[A124981(n+1), A401381(n+1)]`
-/

namespace A401389.P11288822632061100082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401389.P11288822632061100082

/-! ## A401389.P7583413625525954979

`∩[A305635(n+1), A401381(n+1)]`
-/

namespace A401389.P7583413625525954979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401389.P7583413625525954979

/-! ## A401389.P16699616002365468308

`∩[A088828(n+1), A401381(n+1)]`
-/

namespace A401389.P16699616002365468308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401389.P16699616002365468308

/-!
# A401390: a(n) = n * A401375(n^2), where A401375 is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

The programs for A401390, the canonical program `A401390.P6643161535037238982` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401390 has offset 1).

The definition of A401390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401375, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401390.P6643161535037238982

`(n+1)*A401375((n+1)²)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401390

/-- `(n+1)*A401375((n+1)²)` -/
def P6643161535037238982.Spec : Prop :=
  ∀ n, P6643161535037238982.a n = A401390 (n + 1)

theorem P6643161535037238982.correct : P6643161535037238982.Spec := by
  intro n
  simp only [A401390, Nat.add_sub_cancel]

end A401390

/-! ## A401390.P17175871467584920428

`(n+1)*A017665((n+1)²)`
-/

namespace A401390.P17175871467584920428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017665 ((n + 1) ^ 2)

end

end A401390.P17175871467584920428

namespace A401390

/-- `(n+1)*A017665((n+1)²)` -/
def P17175871467584920428.Spec : Prop :=
  ∀ n, P17175871467584920428.a n = A401390 (n + 1)

end A401390

/-! ## A401390.P14265041377721057286

`(n+1)*A244669((n+1)²)`
-/

namespace A401390.P14265041377721057286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A244669 ((n + 1) ^ 2)

end

end A401390.P14265041377721057286

namespace A401390

/-- `(n+1)*A244669((n+1)²)` -/
def P14265041377721057286.Spec : Prop :=
  ∀ n, P14265041377721057286.a n = A401390 (n + 1)

end A401390

/-! ## A401390.P7579186836252139043

`A009242((n+1)²)/(n+1)`
-/

namespace A401390.P7579186836252139043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A401390.P7579186836252139043

namespace A401390

/-- `A009242((n+1)²)/(n+1)` -/
def P7579186836252139043.Spec : Prop :=
  ∀ n, P7579186836252139043.a n = (A401390 (n + 1) : ℚ)

end A401390

/-! ## A401390.P1175410381433330441

`A340774((n+1)²²)/(n+1)`
-/

namespace A401390.P1175410381433330441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340774 (((n + 1) ^ 2) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A401390.P1175410381433330441

namespace A401390

/-- `A340774((n+1)²²)/(n+1)` -/
def P1175410381433330441.Spec : Prop :=
  ∀ n, P1175410381433330441.a n = (A401390 (n + 1) : ℚ)

end A401390

/-!
# A401392: Iterates of map k -> k * A401375(k^2), starting from k=3, where A401375 is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

The programs for A401392, there is no canonical definition to state claims against.
-/

/-! ## A401392.P14274251910803332040

`∏[A081257(a(n-1))]` with `a(0)=3`
-/

namespace A401392.P14274251910803332040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A081257 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A401392.P14274251910803332040

/-!
# A401393: a(n) = n / A305007(n), where A305007 are the denominators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

The programs for A401393, the canonical program `A401393.P699306461951382071` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401393 has offset 1).

The definition of A401393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305007, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401393.P699306461951382071

`(n+1)/A305007(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401393

/-- `(n+1)/A305007(n+1)` -/
def P699306461951382071.Spec : Prop :=
  ∀ n, P699306461951382071.a n = (A401393 (n + 1) : ℚ)

end A401393

/-! ## A401393.P7928252377037094168

`gcd(n+1, A002129(n+1))`
-/

namespace A401393.P7928252377037094168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002129 (n + 1))

end

end A401393.P7928252377037094168

namespace A401393

/-- `gcd(n+1, A002129(n+1))` -/
def P7928252377037094168.Spec : Prop :=
  ∀ n, (P7928252377037094168.a n : ℤ) = A401393 (n + 1)

end A401393

/-! ## A401393.P15230164798794688296

`A002129(n+1)/A305006(n+1)`
-/

namespace A401393.P15230164798794688296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) / (A305006 (n + 1) : ℚ)

end

end A401393.P15230164798794688296

namespace A401393

/-- `A002129(n+1)/A305006(n+1)` -/
def P15230164798794688296.Spec : Prop :=
  ∀ n, P15230164798794688296.a n = (A401393 (n + 1) : ℚ)

end A401393

/-! ## A401393.P8061787842324644072

`gcd(A005451(n+1), A113184(n+1))`
-/

namespace A401393.P8061787842324644072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A113184 (n + 1))

end

end A401393.P8061787842324644072

namespace A401393

/-- `gcd(A005451(n+1), A113184(n+1))` -/
def P8061787842324644072.Spec : Prop :=
  ∀ n, (P8061787842324644072.a n : ℤ) = A401393 (n + 1)

end A401393

/-! ## A401393.P17404321242180270777

`gcd(A002129(n+1), A131209(n))`
-/

namespace A401393.P17404321242180270777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002129 (n + 1)) (A131209 n)

end

end A401393.P17404321242180270777

namespace A401393

/-- `gcd(A002129(n+1), A131209(n))` -/
def P17404321242180270777.Spec : Prop :=
  ∀ n, (P17404321242180270777.a n : ℤ) = A401393 (n + 1)

end A401393

/-!
# A401394: Number of labeled graphs on n vertices that are both chordal and claw-free.

The programs for A401394, there is no canonical definition to state claims against.
-/

/-! ## A401394.P8507357395910558828

`A073092(n^n)/2`
-/

namespace A401394.P8507357395910558828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073092 (n ^ n) : ℚ) / 2

end

end A401394.P8507357395910558828

/-! ## A401394.P15289684500922335105

`A225087(A300042(n))`
-/

namespace A401394.P15289684500922335105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225087 (A300042 n).toNat

end

end A401394.P15289684500922335105

/-!
# A401398: Array read by antidiagonals: T(n,k) is the number of free k-celled polyominoes that do not contain a copy of the free polyomino with binary code A246521(n), n >= 2, k >= 1.

The programs for A401398, there is no canonical definition to state claims against.
-/

/-! ## A401398.P12571463439014866991

`A378387(A261763(n))`
-/

namespace A401398.P12571463439014866991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378387 (A261763 n).toNat

end

end A401398.P12571463439014866991

/-! ## A401398.P10466955109036378316

`A357722(A294212(n))`
-/

namespace A401398.P10466955109036378316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((A294212 n).toNat + 11)

end

end A401398.P10466955109036378316

/-! ## A401398.P4034537064328671062

`and(A095178(n), A269129(n))`
-/

namespace A401398.P4034537064328671062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095178 n) (A269129 n)

end

end A401398.P4034537064328671062

/-! ## A401398.P8808311501188405754

`and(A269129(n), A280997(n+1))`
-/

namespace A401398.P8808311501188405754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269129 n) (A280997 (n + 1))

end

end A401398.P8808311501188405754

/-! ## A401398.P1342117576834776549

`A104121(A257563(n))`
-/

namespace A401398.P1342117576834776549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104121 (A257563 n).toNat

end

end A401398.P1342117576834776549

